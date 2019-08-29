--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Mar 29 16:54:38 2019
--Host        : LAPTOP-N4P8E4G3 running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    dip_switch_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pb_uart_cts : out STD_LOGIC_VECTOR ( 0 to 0 );
    pb_uart_rx : in STD_LOGIC;
    pb_uart_tx : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    reset : in STD_LOGIC;
    pb_uart_rx : in STD_LOGIC;
    pb_uart_cts : out STD_LOGIC_VECTOR ( 0 to 0 );
    pb_uart_tx : out STD_LOGIC;
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dip_switch_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system;
begin
system_i: component system
     port map (
      dip_switch_4bits_tri_i(3 downto 0) => dip_switch_4bits_tri_i(3 downto 0),
      led_4bits_tri_o(3 downto 0) => led_4bits_tri_o(3 downto 0),
      pb_uart_cts(0) => pb_uart_cts(0),
      pb_uart_rx => pb_uart_rx,
      pb_uart_tx => pb_uart_tx,
      reset => reset
    );
end STRUCTURE;
