----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2018 07:05:19 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pBlaze is
    Port (
    clk          : in std_logic;
    reset_in     : in std_logic;

    uart_top_tx : out std_logic;
    uart_top_rx :  in std_logic;

    -- external bram interface
    external_mem_ena     : out STD_LOGIC;
    external_mem_wea     : out STD_LOGIC_VECTOR(0 DOWNTO 0); 
    external_mem_addra   : out STD_LOGIC_VECTOR(11 DOWNTO 0);
    external_mem_dina    : out STD_LOGIC_VECTOR(7 DOWNTO 0);
    external_mem_douta   : in STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    -- external program memory
    address : out std_logic_vector(11 downto 0);
    instruction : in std_logic_vector(17 downto 0) := B"00_0000_0000_0000_0000";
    bram_enable : out std_logic;
    
    -- PL-PS interrupt: Calculation is done signal.
    irqs       : out STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    
    
end pBlaze;

architecture Behavioral of pBlaze is

-- Declare the attributes in the architecture section
ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_INFO of irqs : SIGNAL  is "xilinx.com:signal:interrupt:1.0 irqs INTERRUPT";
-- Supported parameter: SENSITIVITY { LEVEL_HIGH, LEVEL_LOW, EDGE_RISING, EDGE_FALLING }
-- Normally LEVEL_HIGH is assumed.  Use this parameter to force the level
ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of irqs  : SIGNAL is "SENSITIVITY EDGE_RISING";
			
-------------------------------------------------------------------------------------------
-- Components
-------------------------------------------------------------------------------------------
--

--
-- Declaration of the KCPSM6 component including default values for generics.
--
    component kcpsm6 
    generic(                 hwbuild : std_logic_vector(7 downto 0) := X"41"; -- 41 hex is ASCII Character "A"
                    interrupt_vector : std_logic_vector(11 downto 0) := X"3FF";
             scratch_pad_memory_size : integer := 256);
    port (                   address : out std_logic_vector(11 downto 0);
                         instruction : in std_logic_vector(17 downto 0);
                         bram_enable : out std_logic;
                             in_port : in std_logic_vector(7 downto 0);
                            out_port : out std_logic_vector(7 downto 0);
                             port_id : out std_logic_vector(7 downto 0);
                        write_strobe : out std_logic;
                      k_write_strobe : out std_logic;
                         read_strobe : out std_logic;
                           interrupt : in std_logic;
                       interrupt_ack : out std_logic;
                               sleep : in std_logic;
                               reset : in std_logic;
                                 clk : in std_logic);
  end component;
  
  --
  -- Declaration of the default Program Memory recommended for development.
  --
  -- The name of this component should match the name of your PSM file.
  --
--    component pBlaze_prog                             
--    generic(          C_FAMILY : string := "US"; 
--                      C_RAM_SIZE_KWORDS : integer := 4;
--                      C_JTAG_LOADER_ENABLE : integer := 1);
--    Port (      
--            address : in std_logic_vector(11 downto 0);
--            instruction : out std_logic_vector(17 downto 0);
--            enable : in std_logic;
--            rdl : out std_logic;
--            clk : in std_logic);
--    end component;

    component uart_tx6 is
    Port (             data_in : in std_logic_vector(7 downto 0);
                  en_16_x_baud : in std_logic;
                    serial_out : out std_logic;
                  buffer_write : in std_logic;
           buffer_data_present : out std_logic;
              buffer_half_full : out std_logic;
                   buffer_full : out std_logic;
                  buffer_reset : in std_logic;
                           clk : in std_logic);
    end component;
    
     component uart_rx6 is
       Port (           serial_in : in std_logic;
                     en_16_x_baud : in std_logic;
                         data_out : out std_logic_vector(7 downto 0);
                      buffer_read : in std_logic;
              buffer_data_present : out std_logic;
                 buffer_half_full : out std_logic;
                      buffer_full : out std_logic;
                     buffer_reset : in std_logic;
                              clk : in std_logic);
     end component;

    --
    -------------------------------------------------------------------------------------------
    -- Signals
    -------------------------------------------------------------------------------------------
    --

    -- OOC I/O buffers inside the module

    --signal reset_status  : std_logic;
    --signal uart_top_tx   : std_logic;
    --signal uart_top_rx   : std_logic;
    
    --
    -- Signals for connection of KCPSM6 and Program Memory.
    --
    
    signal         port_id : std_logic_vector(7 downto 0);
    signal    write_strobe : std_logic;
    signal  k_write_strobe : std_logic;
    signal        out_port : std_logic_vector(7 downto 0);
    signal     read_strobe : std_logic;
    signal         in_port : std_logic_vector(7 downto 0)  := X"00";
    signal   interrupt_ack : std_logic;
    signal    kcpsm6_reset : std_logic;
    
    --signal    address       : std_logic_vector(11 downto 0);
    --signal    instruction   : std_logic_vector(17 downto 0);
    --signal    bram_enable   : std_logic;
    --signal    rdl           : std_logic;
    

    --  UART common signal
    signal en_16_x_baud             : std_logic := '0';

    -- UART TX Signals
    signal tx_data_in                   : std_logic_vector(7 downto 0);
    signal tx_buffer_write              : std_logic := '0';
    signal buffer_data_present_tx       : std_logic;
    signal buffer_half_full_tx          : std_logic;
    signal buffer_full_tx               : std_logic;
    signal buffer_reset_tx              : std_logic := '0';   
	
    -- -- UART RX Signals
    signal data_out_rx                  : std_logic_vector(7 downto 0);
    signal buffer_read                  : std_logic := '0';
    signal buffer_data_present_rx       : std_logic;
    signal buffer_half_full_rx          : std_logic;
    signal buffer_full_rx               : std_logic;
    signal buffer_reset_rx              : std_logic := '0';
    
   -- Baud Rate
   -- System Clock = 100 MHz , Required Baur rate = 115200
   -- 'en_16_x_baud' signal must therefore have a pulse rate of 16 * 115200 = 1,843,200 pulses per second.
   -- 100MHz / 1,843,200 = 54 clock cycles;
       
   -- System Clock = 100 MHz , Required Baur rate = 9600
   -- 'en_16_x_baud' signal must therefore have a pulse rate of 16 * 9600 = 153,600 pulses per second.
   -- 100MHz / 153,600 = 651 clock cycles; 

   signal baud_count : integer range 0 to 53 := 0;
   

    -- signals for clock wizard divider
    --signal    locked : std_logic;
    --

    signal clk_counter : integer range 0 to 15 := 0;
    signal clk_temporal: STD_LOGIC;
    -- signal clk : STD_LOGIC;

    -- Extra memory signals
    signal extra_mem_lo : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal extra_mem_hi : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal extra_mem_addr : STD_LOGIC_VECTOR(11 DOWNTO 0);
    
    --clka : IN STD_LOGIC;                        -- Port A clock
    --ena : IN STD_LOGIC;                         -- Port A clock Enable: Enables Read, Write, and reset
                                                -- operations through port A. Optional in all configurations.
    --wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);      -- Port A Write Enable
    --addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);   -- Port A Address
    signal dina : STD_LOGIC_VECTOR(7 DOWNTO 0);     -- Port A Data Input
    signal douta : STD_LOGIC_VECTOR(7 DOWNTO 0);   -- Port A Data Output

    signal out_port_ideal: std_logic_vector(7 downto 0);

    -- Outgoing interupts
    signal         irqs_reg : std_logic_vector(7 downto 0);





begin



  -- Instantiate IO Buffers in module for HD OOC flow - Better QoR
  --IBUFG_uart_top_rx : IBUF
  --  port map (
  --    O => uart_top_rx, 
  --    I => uart_top_rx_i  
  -- );


  --OBUFG_reset_status : OBUF
  --  port map (
  --    O => reset_status, 
  --    I => reset_status_o
  -- );

  --  OBUFG_uart_top_tx : OBUF
  --  port map (
  --    O => uart_top_tx, 
  --    I => uart_top_tx_o
  -- );

--
-----------------------------------------------------------------------------------------
-- Generate 20Mhz Clock
-----------------------------------------------------------------------------------------
--
    --clk_gen : clk_wiz_0
    --   port map ( 
    --  -- Clock out ports = 20Mhz  
    --   clk_out1 => clk,
    --  -- Status and control signals                
    --   reset => reset_in,
    --   locked => locked,
    --   -- Clock in ports
    --   clk_in1 => clk_in
    -- );


	-- generate baud rate                  
    baud_rate: process(clk) begin
        if clk'event and clk = '1' then
            --if locked = '1' then
                if baud_count = 53 then
                    baud_count <= 0;
                    en_16_x_baud <= '1';
                else
                    baud_count <= baud_count + 1;
                    en_16_x_baud <= '0';
                end if;
            --end if;    
        end if;
    end process baud_rate;
    

  -- en16_out <= en_16_x_baud;


     
  --
  -----------------------------------------------------------------------------------------
  -- Instantiate KCPSM6 and connect to Program Memory
  -----------------------------------------------------------------------------------------
  --
  -- The KCPSM6 generics can be defined as required but the default values are shown below
  -- and these would be adequate for most designs.
  --

  processor: kcpsm6
    generic map (                 hwbuild => X"41",  -- 41 hex is ASCII Character "A"
                         interrupt_vector => X"3FF",
                  scratch_pad_memory_size => 256)
    port map(      address => address,
               instruction => instruction,
               bram_enable => bram_enable,
                   port_id => port_id,
              write_strobe => write_strobe,
            k_write_strobe => k_write_strobe,
                  out_port => out_port,
               read_strobe => read_strobe,
                   in_port => in_port,
                 interrupt => '0',
             interrupt_ack => interrupt_ack,
                     sleep => '0',
                     reset => kcpsm6_reset,
                       clk => clk);
					   
  -- The default Program Memory recommended for development.
  -- 
  -- The generics should be set to define the family, program size and enable the JTAG
  -- Loader. As described in the documentation the initial recommended values are.  
  --    'S6', '1' and '1' for a Spartan-6 design.
  --    'V6', '2' and '1' for a Virtex-6 design.
  --    '7S', '2' and '1' for a Artix-7, Kintex-7 or Virtex-7 design.
  -- Note that all 12-bits of the address are connected regardless of the program size
  -- specified by the generic. Within the program memory only the appropriate address bits
  -- will be used (e.g. 10 bits for 1K memory). This means it that you only need to modify 
  -- the generic when changing the size of your program.   
  --
  -- When JTAG Loader updates the contents of the program memory KCPSM6 should be reset 
  -- so that the new program executes from address zero. The Reset During Load port 'rdl' 
  -- is therefore connected to the reset input of KCPSM6.
  --
  --program_rom: pBlaze_prog                    --Name to match your PSM file
--    generic map(             C_FAMILY => "US",   --Family 'S6', 'V6' or '7S', 'US' for Ultrascale
--                    C_RAM_SIZE_KWORDS => 4,      --Program size '1', '2' or '4'
--                 C_JTAG_LOADER_ENABLE => 1)      --Include JTAG Loader when set to '1' 
--    port map(      address => address,      
--               instruction => instruction,
--                    enable => bram_enable,
--                    rdl    => rdl,
--                       clk => clk);
                       
    tx: uart_tx6
       port map (
           data_in                 => tx_data_in,
           en_16_x_baud            => en_16_x_baud,
           serial_out              => uart_top_tx,
           buffer_write            => tx_buffer_write,
           buffer_data_present     => buffer_data_present_tx,
           buffer_half_full        => buffer_half_full_tx,
           buffer_full             => buffer_full_tx,
           buffer_reset            => buffer_reset_tx,
           clk                     => clk);
           
   rx: uart_rx6
       port map (
           serial_in               => uart_top_rx, 
           en_16_x_baud            => en_16_x_baud,
           data_out                => data_out_rx,
           buffer_read             => buffer_read,
           buffer_data_present     => buffer_data_present_rx,
           buffer_half_full        => buffer_half_full_rx,
           buffer_full             => buffer_full_rx,
           buffer_reset            => buffer_reset_rx,
           clk                     => clk);

    -- reset 
    --kcpsm6_reset <= reset_in or rdl or (not(locked));
    --kcpsm6_reset <= reset_in or rdl;
    --kcpsm6_reset <= reset_in or (not rdl);
    kcpsm6_reset <= reset_in;
        
  --
  -----------------------------------------------------------------------------------------
  -- General Purpose Input Ports 
  -----------------------------------------------------------------------------------------
  --
  --
  --    INPUT PORT 00:        UART Status
  --    INPUT PORT 01:        UART RX Data 
  --    INPUT PORT 02:        
  --    
   input_ports: process(clk)
   begin
     if clk'event and clk = '1' then
       case port_id is
         -- Read UART status at port address 00 hex
         when x"00" =>    in_port(0) <= buffer_data_present_tx;
                        in_port(1) <= buffer_half_full_tx;
                        in_port(2) <= buffer_full_tx; 
                        in_port(3) <= buffer_data_present_rx;
                        in_port(4) <= buffer_half_full_rx;
                        in_port(5) <= buffer_full_rx;
                        in_port(6) <= '0';
                        in_port(7) <= '0';

         -- Read UART_RX6 data at port address 01 hex
         -- (see 'buffer_read' pulse generation below) 
         when x"01" =>      in_port <= data_out_rx;
         when x"02" =>      in_port <= external_mem_douta;
                           
 
         -- Specify don't care for all other inputs to obtain optimum implementation
         when others =>    in_port <= "XXXXXXXX";  
       end case;

       -- Generate 'buffer_read' pulse following read from port address 01

       if (read_strobe = '1') and (port_id(0) = '1') then
         buffer_read <= '1';
        else
         buffer_read <= '0';
       end if;
 
     end if;
   end process input_ports;

    tx_buffer_write  <= '1' when (write_strobe = '1') and (port_id(1 downto 0) = "00")
                           else '0';

  --
  -----------------------------------------------------------------------------------------
  -- General Purpose Output Ports 
  -----------------------------------------------------------------------------------------
  --
  --    OUTPUT PORT 00:        UART TX
  --    OUTPUT PORT 01:        Extra BRAM - Low Byte
  --    OUTPUT PORT 02:        Extra BRAM - High Byte
  --            EW00_AAAA_AAAA_AAAA
  --            E: Clock Enable
  --            W: Write Enable
  --            A: Address   
  --    OUTPUT PORT 03:        Extra BRAM - Data IN
  --    OUTPUT PORT 04:        PL-PS Interrupt: Signals to PS that Calculation is done.
  --
  --        
        
    output_ports: process(clk)  begin
        if clk'event and clk = '1' then
        
          -- 'write_strobe' is used to qualify all writes to general output ports.
          if write_strobe = '1' then
        
            case port_id is
              when x"00"  => tx_data_in          <= out_port;
              when x"01"  => extra_mem_lo        <= out_port;
              when x"02"  => extra_mem_hi        <= out_port;
              when x"03"  => external_mem_dina   <= out_port;
              when x"04"  => irqs_reg            <= out_port;
              when others => out_port_ideal      <= out_port;
            end case;  
        
          end if;
        
        end if; 
    end process output_ports;
 
    constant_output_ports: process(clk)
      begin
        if clk'event and clk = '1' then
          if k_write_strobe = '1' then
             if port_id(0) = '1' then
                    buffer_reset_tx <= out_port(0);
                    buffer_reset_rx <= out_port(1);
              end if;
          end if;
        end if; 
      end process constant_output_ports;


      extra_mem_addr <= extra_mem_hi(3 downto 0) & extra_mem_lo;
      
      --extra_memory : pBlaze_extra_mem
      --  PORT MAP (
      --    clka => clk,
      --    ena => extra_mem_hi(7),
      --    wea => extra_mem_hi(6 downto 6),
      --    addra => extra_mem_addr,
      --    dina => "00000000",
      --    douta => douta
      --    );

    external_mem_ena <= extra_mem_hi(7);
    external_mem_wea <= extra_mem_hi(6 downto 6);
    external_mem_addra <= extra_mem_addr;
    --external_mem_dina <= "00000000";

    -- outgoing interrupts
    irqs(0 downto 0) <= irqs_reg(0 downto 0);
      
end Behavioral;
