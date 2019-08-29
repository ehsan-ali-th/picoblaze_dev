----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/20/2018 08:29:55 AM
-- Design Name: 
-- Module Name: test_pBlaze - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_pBlaze is
--  Port ( );
end test_pBlaze;

architecture Behavioral of test_pBlaze is

component pBlaze is
    port (
    clk          : in std_logic;
    reset_in     : in std_logic;

    uart_top_tx : out std_logic;
    uart_top_rx :  in std_logic;

    -- external bram interface
    external_mem_ena     : out STD_LOGIC;
    external_mem_wea     : out STD_LOGIC_VECTOR(0 DOWNTO 0); 
    external_mem_addra   : out STD_LOGIC_VECTOR(11 DOWNTO 0);
    external_mem_dina    : out STD_LOGIC_VECTOR(7 DOWNTO 0);
    external_mem_douta   : in STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
end component;

component extra_mem_0
  port (
    clka : IN STD_LOGIC := '0';
    ena : IN STD_LOGIC := '0';
    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0) := B"00_0000_0000";
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0) := B"00000000_00000000_00000000_00000000";
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
end component;


    -- inputs
    signal clk100Mhz: std_logic := '0';
    signal reset: std_logic := '0';
    signal uart_top_rx: std_logic;

    -- outputs
    signal uart_top_tx: std_logic;

    constant half_period100 : time := 5 ns; -- produce 100Mhz clock  
    
    -- bram signals
    signal enb : STD_LOGIC;
    signal web : STD_LOGIC_VECTOR(0 DOWNTO 0);
    signal addrb : STD_LOGIC_VECTOR(11 DOWNTO 0);
    signal dinb : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal doutb : STD_LOGIC_VECTOR(7 DOWNTO 0);
    
begin

    clk100Mhz <= not clk100Mhz after half_period100;


 tb: process begin
        wait for 100ns;
        reset <= '0';
        wait for 200ns;
        reset <= '1';
        wait for 100ns;
        reset <= '0';
        wait; -- wait forever
    end process;
    
    -- Instantiate UUT
    uut: pBlaze port map (
        clk => clk100Mhz,
        reset_in => reset,
        uart_top_tx => uart_top_tx,
        uart_top_rx => uart_top_rx,
        external_mem_ena => enb,
        external_mem_wea => web, 
        external_mem_addra => addrb,
        external_mem_dina => dinb,
        external_mem_douta => doutb
    );

    extra_mem : extra_mem_0 port map (
        clka => open,
        ena => open,
        wea => open,
        addra => open,
        dina => open,
        douta => open,
        clkb => clk100Mhz,
        enb => enb,
        web => web,
        addrb => addrb,
        dinb => dinb,
        doutb => doutb
    );


end Behavioral;
