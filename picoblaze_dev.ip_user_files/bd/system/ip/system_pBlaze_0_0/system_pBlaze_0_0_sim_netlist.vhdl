-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 11 02:14:02 2019
-- Host        : LAPTOP-N4P8E4G3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/workspace/Vivado_2018.3/zcu104/fft2/fft2.srcs/sources_1/bd/system/ip/system_pBlaze_0_0/system_pBlaze_0_0_sim_netlist.vhdl
-- Design      : system_pBlaze_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pBlaze_0_0_kcpsm6 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    port_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    write_strobe_flop_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_strobe_flop_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_strobe_flop_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    buffer_reset_tx : out STD_LOGIC;
    buffer_read0 : out STD_LOGIC;
    tx_buffer_write : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    write_strobe_flop_3 : out STD_LOGIC;
    out_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_enable : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    external_mem_douta : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_out : in STD_LOGIC_VECTOR ( 4 downto 0 );
    buffer_data_present : in STD_LOGIC;
    buffer_half_full : in STD_LOGIC;
    buffer_full : in STD_LOGIC;
    irqs : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_pBlaze_0_0_kcpsm6 : entity is "kcpsm6";
end system_pBlaze_0_0_kcpsm6;

architecture STRUCTURE of system_pBlaze_0_0_kcpsm6 is
  signal ADDRA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ADDRB : STD_LOGIC_VECTOR ( 4 to 4 );
  signal CI : STD_LOGIC;
  signal DIC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DOA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DOC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal I0 : STD_LOGIC;
  signal I00_in : STD_LOGIC;
  signal I014_in : STD_LOGIC;
  signal I015_in : STD_LOGIC;
  signal I019_in : STD_LOGIC;
  signal I022_in : STD_LOGIC;
  signal I06_in : STD_LOGIC;
  signal I07_in : STD_LOGIC;
  signal I1 : STD_LOGIC;
  signal I2 : STD_LOGIC;
  signal I3 : STD_LOGIC;
  signal I4 : STD_LOGIC;
  signal I5 : STD_LOGIC;
  signal active_interrupt : STD_LOGIC;
  signal active_interrupt_value : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal alu_mux_sel_0 : STD_LOGIC;
  signal alu_mux_sel_1 : STD_LOGIC;
  signal alu_mux_sel_value_0 : STD_LOGIC;
  signal alu_mux_sel_value_1 : STD_LOGIC;
  signal alu_result_0 : STD_LOGIC;
  signal alu_result_1 : STD_LOGIC;
  signal alu_result_4 : STD_LOGIC;
  signal alu_result_5 : STD_LOGIC;
  signal alu_result_6 : STD_LOGIC;
  signal alu_result_7 : STD_LOGIC;
  signal arith_carry : STD_LOGIC;
  signal arith_carry_in : STD_LOGIC;
  signal arith_carry_value : STD_LOGIC;
  signal arith_logical_sel_0 : STD_LOGIC;
  signal arith_logical_sel_1 : STD_LOGIC;
  signal arith_logical_sel_2 : STD_LOGIC;
  signal arith_logical_value_0 : STD_LOGIC;
  signal arith_logical_value_1 : STD_LOGIC;
  signal arith_logical_value_2 : STD_LOGIC;
  signal arith_logical_value_3 : STD_LOGIC;
  signal arith_logical_value_4 : STD_LOGIC;
  signal arith_logical_value_5 : STD_LOGIC;
  signal arith_logical_value_6 : STD_LOGIC;
  signal arith_logical_value_7 : STD_LOGIC;
  signal bank_value : STD_LOGIC;
  signal \^bram_enable\ : STD_LOGIC;
  signal carry_arith_logical_0 : STD_LOGIC;
  signal carry_arith_logical_1 : STD_LOGIC;
  signal carry_arith_logical_2 : STD_LOGIC;
  signal carry_arith_logical_3 : STD_LOGIC;
  signal carry_arith_logical_4 : STD_LOGIC;
  signal carry_arith_logical_5 : STD_LOGIC;
  signal carry_arith_logical_6 : STD_LOGIC;
  signal carry_flag : STD_LOGIC;
  signal carry_flag_value : STD_LOGIC;
  signal carry_in_zero : STD_LOGIC;
  signal carry_lower_parity : STD_LOGIC;
  signal carry_lower_zero : STD_LOGIC;
  signal carry_middle_zero : STD_LOGIC;
  signal carry_pc_0 : STD_LOGIC;
  signal carry_pc_1 : STD_LOGIC;
  signal carry_pc_10 : STD_LOGIC;
  signal carry_pc_2 : STD_LOGIC;
  signal carry_pc_3 : STD_LOGIC;
  signal carry_pc_4 : STD_LOGIC;
  signal carry_pc_5 : STD_LOGIC;
  signal carry_pc_6 : STD_LOGIC;
  signal carry_pc_7 : STD_LOGIC;
  signal carry_pc_8 : STD_LOGIC;
  signal carry_pc_9 : STD_LOGIC;
  signal \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\ : STD_LOGIC;
  signal \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\ : STD_LOGIC;
  signal \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\ : STD_LOGIC;
  signal \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\ : STD_LOGIC;
  signal \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\ : STD_LOGIC;
  signal \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\ : STD_LOGIC;
  signal drive_carry_in_zero : STD_LOGIC;
  signal \extra_mem_hi[7]_i_2_n_0\ : STD_LOGIC;
  signal feed_pointer_value_0 : STD_LOGIC;
  signal feed_pointer_value_1 : STD_LOGIC;
  signal feed_pointer_value_2 : STD_LOGIC;
  signal feed_pointer_value_3 : STD_LOGIC;
  signal feed_pointer_value_4 : STD_LOGIC;
  signal flag_enable : STD_LOGIC;
  signal flag_enable_type : STD_LOGIC;
  signal flag_enable_value : STD_LOGIC;
  signal half_arith_logical_0 : STD_LOGIC;
  signal half_arith_logical_1 : STD_LOGIC;
  signal half_arith_logical_2 : STD_LOGIC;
  signal half_arith_logical_3 : STD_LOGIC;
  signal half_arith_logical_4 : STD_LOGIC;
  signal half_arith_logical_5 : STD_LOGIC;
  signal half_arith_logical_6 : STD_LOGIC;
  signal half_arith_logical_7 : STD_LOGIC;
  signal half_pc_0 : STD_LOGIC;
  signal half_pc_1 : STD_LOGIC;
  signal half_pc_10 : STD_LOGIC;
  signal half_pc_11 : STD_LOGIC;
  signal half_pc_2 : STD_LOGIC;
  signal half_pc_3 : STD_LOGIC;
  signal half_pc_4 : STD_LOGIC;
  signal half_pc_5 : STD_LOGIC;
  signal half_pc_6 : STD_LOGIC;
  signal half_pc_7 : STD_LOGIC;
  signal half_pc_8 : STD_LOGIC;
  signal half_pc_9 : STD_LOGIC;
  signal half_pointer_value_0 : STD_LOGIC;
  signal half_pointer_value_1 : STD_LOGIC;
  signal half_pointer_value_2 : STD_LOGIC;
  signal half_pointer_value_3 : STD_LOGIC;
  signal half_pointer_value_4 : STD_LOGIC;
  signal int_enable_type : STD_LOGIC;
  signal internal_reset_value : STD_LOGIC;
  signal interrupt_enable : STD_LOGIC;
  signal interrupt_enable_value : STD_LOGIC;
  signal \irqs_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal k_write_strobe : STD_LOGIC;
  signal k_write_strobe_value : STD_LOGIC;
  signal loadstar_type : STD_LOGIC;
  signal logical_carry_mask_0 : STD_LOGIC;
  signal logical_carry_mask_1 : STD_LOGIC;
  signal logical_carry_mask_2 : STD_LOGIC;
  signal logical_carry_mask_3 : STD_LOGIC;
  signal logical_carry_mask_4 : STD_LOGIC;
  signal logical_carry_mask_5 : STD_LOGIC;
  signal logical_carry_mask_6 : STD_LOGIC;
  signal logical_carry_mask_7 : STD_LOGIC;
  signal lower_parity : STD_LOGIC;
  signal lower_parity_sel : STD_LOGIC;
  signal lower_reg_banks_n_0 : STD_LOGIC;
  signal lower_reg_banks_n_1 : STD_LOGIC;
  signal lower_reg_banks_n_4 : STD_LOGIC;
  signal lower_reg_banks_n_5 : STD_LOGIC;
  signal lower_zero : STD_LOGIC;
  signal lower_zero_sel : STD_LOGIC;
  signal middle_zero : STD_LOGIC;
  signal middle_zero_sel : STD_LOGIC;
  signal move_type : STD_LOGIC;
  signal \^out_port\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal parity : STD_LOGIC;
  signal pc_mode_0 : STD_LOGIC;
  signal pc_mode_1 : STD_LOGIC;
  signal pc_mode_2 : STD_LOGIC;
  signal pc_move_is_valid : STD_LOGIC;
  signal pc_value_0 : STD_LOGIC;
  signal pc_value_1 : STD_LOGIC;
  signal pc_value_10 : STD_LOGIC;
  signal pc_value_11 : STD_LOGIC;
  signal pc_value_2 : STD_LOGIC;
  signal pc_value_3 : STD_LOGIC;
  signal pc_value_4 : STD_LOGIC;
  signal pc_value_5 : STD_LOGIC;
  signal pc_value_6 : STD_LOGIC;
  signal pc_value_7 : STD_LOGIC;
  signal pc_value_8 : STD_LOGIC;
  signal pc_value_9 : STD_LOGIC;
  signal pc_vector_0 : STD_LOGIC;
  signal pc_vector_1 : STD_LOGIC;
  signal pc_vector_10 : STD_LOGIC;
  signal pc_vector_11 : STD_LOGIC;
  signal pc_vector_2 : STD_LOGIC;
  signal pc_vector_3 : STD_LOGIC;
  signal pc_vector_4 : STD_LOGIC;
  signal pc_vector_5 : STD_LOGIC;
  signal pc_vector_6 : STD_LOGIC;
  signal pc_vector_7 : STD_LOGIC;
  signal pc_vector_8 : STD_LOGIC;
  signal pc_vector_9 : STD_LOGIC;
  signal pop_stack : STD_LOGIC;
  signal \^port_id\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal push_stack : STD_LOGIC;
  signal read_strobe : STD_LOGIC;
  signal read_strobe_value : STD_LOGIC;
  signal regbank_type : STD_LOGIC;
  signal register_enable : STD_LOGIC;
  signal register_enable_type : STD_LOGIC;
  signal register_enable_value : STD_LOGIC;
  signal return_vector_0 : STD_LOGIC;
  signal return_vector_1 : STD_LOGIC;
  signal return_vector_10 : STD_LOGIC;
  signal return_vector_11 : STD_LOGIC;
  signal return_vector_2 : STD_LOGIC;
  signal return_vector_3 : STD_LOGIC;
  signal return_vector_4 : STD_LOGIC;
  signal return_vector_5 : STD_LOGIC;
  signal return_vector_6 : STD_LOGIC;
  signal return_vector_7 : STD_LOGIC;
  signal return_vector_8 : STD_LOGIC;
  signal return_vector_9 : STD_LOGIC;
  signal returni_type : STD_LOGIC;
  signal run_value : STD_LOGIC;
  signal shadow_bank : STD_LOGIC;
  signal shadow_carry_flag : STD_LOGIC;
  signal shadow_zero_flag : STD_LOGIC;
  signal shadow_zero_value : STD_LOGIC;
  signal shift_carry : STD_LOGIC;
  signal shift_carry_value : STD_LOGIC;
  signal shift_in_bit : STD_LOGIC;
  signal shift_rotate_result_0 : STD_LOGIC;
  signal shift_rotate_result_1 : STD_LOGIC;
  signal shift_rotate_result_2 : STD_LOGIC;
  signal shift_rotate_result_3 : STD_LOGIC;
  signal shift_rotate_result_4 : STD_LOGIC;
  signal shift_rotate_result_5 : STD_LOGIC;
  signal shift_rotate_result_6 : STD_LOGIC;
  signal shift_rotate_result_7 : STD_LOGIC;
  signal shift_rotate_value_0 : STD_LOGIC;
  signal shift_rotate_value_1 : STD_LOGIC;
  signal shift_rotate_value_2 : STD_LOGIC;
  signal shift_rotate_value_3 : STD_LOGIC;
  signal shift_rotate_value_4 : STD_LOGIC;
  signal shift_rotate_value_5 : STD_LOGIC;
  signal shift_rotate_value_6 : STD_LOGIC;
  signal shift_rotate_value_7 : STD_LOGIC;
  signal spm_data_0 : STD_LOGIC;
  signal spm_data_1 : STD_LOGIC;
  signal spm_data_2 : STD_LOGIC;
  signal spm_data_3 : STD_LOGIC;
  signal spm_data_4 : STD_LOGIC;
  signal spm_data_5 : STD_LOGIC;
  signal spm_data_6 : STD_LOGIC;
  signal spm_data_7 : STD_LOGIC;
  signal spm_enable : STD_LOGIC;
  signal spm_enable_value : STD_LOGIC;
  signal spm_ram_data_0 : STD_LOGIC;
  signal spm_ram_data_1 : STD_LOGIC;
  signal spm_ram_data_2 : STD_LOGIC;
  signal spm_ram_data_3 : STD_LOGIC;
  signal spm_ram_data_4 : STD_LOGIC;
  signal spm_ram_data_5 : STD_LOGIC;
  signal spm_ram_data_6 : STD_LOGIC;
  signal spm_ram_data_7 : STD_LOGIC;
  signal stack_pointer_carry_0 : STD_LOGIC;
  signal stack_pointer_carry_1 : STD_LOGIC;
  signal stack_pointer_carry_2 : STD_LOGIC;
  signal stack_pointer_carry_3 : STD_LOGIC;
  signal stack_pointer_value_0 : STD_LOGIC;
  signal stack_pointer_value_1 : STD_LOGIC;
  signal stack_pointer_value_2 : STD_LOGIC;
  signal stack_pointer_value_3 : STD_LOGIC;
  signal stack_pointer_value_4 : STD_LOGIC;
  signal stack_ram_high_n_0 : STD_LOGIC;
  signal stack_ram_high_n_1 : STD_LOGIC;
  signal stack_ram_high_n_2 : STD_LOGIC;
  signal stack_ram_high_n_3 : STD_LOGIC;
  signal stack_ram_high_n_4 : STD_LOGIC;
  signal stack_ram_high_n_5 : STD_LOGIC;
  signal stack_ram_high_n_6 : STD_LOGIC;
  signal stack_ram_high_n_7 : STD_LOGIC;
  signal stack_ram_low_n_0 : STD_LOGIC;
  signal stack_ram_low_n_1 : STD_LOGIC;
  signal stack_ram_low_n_2 : STD_LOGIC;
  signal stack_ram_low_n_3 : STD_LOGIC;
  signal stack_ram_low_n_4 : STD_LOGIC;
  signal stack_ram_low_n_5 : STD_LOGIC;
  signal stack_ram_low_n_6 : STD_LOGIC;
  signal stack_ram_low_n_7 : STD_LOGIC;
  signal strobe_type : STD_LOGIC;
  signal sx : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sx_addr4_value : STD_LOGIC;
  signal t_state_0 : STD_LOGIC;
  signal t_state_value_0 : STD_LOGIC;
  signal t_state_value_1 : STD_LOGIC;
  signal upper_parity : STD_LOGIC;
  signal upper_zero_sel : STD_LOGIC;
  signal use_zero_flag : STD_LOGIC;
  signal use_zero_flag_value : STD_LOGIC;
  signal write_strobe : STD_LOGIC;
  signal write_strobe_value : STD_LOGIC;
  signal zero_flag : STD_LOGIC;
  signal zero_flag_value : STD_LOGIC;
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_arith_carry_xorcy_CARRY4_CARRY8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_arith_carry_xorcy_CARRY4_CARRY8_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_arith_carry_xorcy_CARRY4_CARRY8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_arith_carry_xorcy_CARRY4_CARRY8_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute HBLKNM : string;
  attribute HBLKNM of active_interrupt_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of active_interrupt_flop : label is "FD";
  attribute box_type : string;
  attribute box_type of active_interrupt_flop : label is "PRIMITIVE";
  attribute HBLKNM of active_interrupt_lut : label is "kcpsm6_control";
  attribute box_type of active_interrupt_lut : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].lsb_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[0].lsb_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "kcpsm6_pc0";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type of \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[0].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[0].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[0].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[0].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector1";
  attribute box_type of \address_loop[10].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[10].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[10].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[10].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].upper_pc.low_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[10].upper_pc.low_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[11].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[11].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[11].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[11].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[11].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[11].upper_pc.low_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[11].upper_pc.low_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[1].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[1].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[1].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[1].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[1].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[1].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[1].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[2].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[2].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[2].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[2].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[2].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[3].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[3].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[3].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[3].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[3].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[3].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[3].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[4].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[4].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[4].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[4].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[4].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[5].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[5].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[5].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[5].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[5].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[5].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[5].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[6].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[6].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[6].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[6].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[6].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[7].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[7].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[7].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[7].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[7].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[7].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[7].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector1";
  attribute box_type of \address_loop[8].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[8].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[8].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[8].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[8].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "kcpsm6_pc2";
  attribute OPT_MODIFIED of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[9].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[9].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[9].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[9].return_vector_flop\ : label is "FD";
  attribute box_type of \address_loop[9].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[9].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[9].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of alu_decode0_lut : label is "kcpsm6_decode2";
  attribute box_type of alu_decode0_lut : label is "PRIMITIVE";
  attribute HBLKNM of alu_decode1_lut : label is "kcpsm6_decode1";
  attribute box_type of alu_decode1_lut : label is "PRIMITIVE";
  attribute HBLKNM of alu_decode2_lut : label is "kcpsm6_decode2";
  attribute box_type of alu_decode2_lut : label is "PRIMITIVE";
  attribute HBLKNM of alu_mux_sel0_flop : label is "kcpsm6_decode2";
  attribute XILINX_LEGACY_PRIM of alu_mux_sel0_flop : label is "FD";
  attribute box_type of alu_mux_sel0_flop : label is "PRIMITIVE";
  attribute HBLKNM of alu_mux_sel1_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of alu_mux_sel1_flop : label is "FD";
  attribute box_type of alu_mux_sel1_flop : label is "PRIMITIVE";
  attribute HBLKNM of arith_carry_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of arith_carry_flop : label is "FD";
  attribute box_type of arith_carry_flop : label is "PRIMITIVE";
  attribute HBLKNM of arith_carry_xorcy_CARRY4_CARRY8 : label is "kcpsm6_control";
  attribute OPT_MODIFIED of arith_carry_xorcy_CARRY4_CARRY8 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of arith_carry_xorcy_CARRY4_CARRY8 : label is "(CARRY4)";
  attribute box_type of arith_carry_xorcy_CARRY4_CARRY8 : label is "PRIMITIVE";
  attribute HBLKNM of bank_flop : label is "kcpsm6_stack1";
  attribute XILINX_LEGACY_PRIM of bank_flop : label is "FDR";
  attribute box_type of bank_flop : label is "PRIMITIVE";
  attribute HBLKNM of bank_lut : label is "kcpsm6_stack1";
  attribute box_type of bank_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of buffer_read_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of buffer_reset_tx_i_1 : label is "soft_lutpair4";
  attribute HBLKNM of carry_flag_flop : label is "kcpsm6_flags";
  attribute box_type of carry_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of carry_flag_lut : label is "kcpsm6_flags";
  attribute box_type of carry_flag_lut : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[0].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[0].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[0].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].high_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].high_hwbuild.shift_rotate_flop\ : label is "FDS";
  attribute box_type of \data_path_loop[0].high_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].large_spm.spm_flop\ : label is "kcpsm6_spm0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[0].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].large_spm.spm_ram\ : label is "kcpsm6_spm0";
  attribute box_type of \data_path_loop[0].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "kcpsm6_add0";
  attribute OPT_MODIFIED of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].lsb_shift_rotate.shift_bit_lut\ : label is "kcpsm6_decode1";
  attribute box_type of \data_path_loop[0].lsb_shift_rotate.shift_bit_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[0].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[0].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[1].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[1].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[1].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].large_spm.spm_flop\ : label is "kcpsm6_spm1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[1].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].large_spm.spm_ram\ : label is "kcpsm6_spm1";
  attribute box_type of \data_path_loop[1].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute box_type of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[2].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[2].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[2].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].large_spm.spm_flop\ : label is "kcpsm6_spm2";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[2].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].large_spm.spm_ram\ : label is "kcpsm6_spm2";
  attribute box_type of \data_path_loop[2].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute box_type of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].mid_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[2].mid_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[2].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[2].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[3].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[3].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[3].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].large_spm.spm_flop\ : label is "kcpsm6_spm3";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[3].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].large_spm.spm_ram\ : label is "kcpsm6_spm3";
  attribute box_type of \data_path_loop[3].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute box_type of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[4].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[4].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[4].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].large_spm.spm_flop\ : label is "kcpsm6_spm4";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[4].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].large_spm.spm_ram\ : label is "kcpsm6_spm4";
  attribute box_type of \data_path_loop[4].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute box_type of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].mid_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[4].mid_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[4].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[4].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[5].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[5].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[5].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].large_spm.spm_flop\ : label is "kcpsm6_spm5";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[5].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].large_spm.spm_ram\ : label is "kcpsm6_spm5";
  attribute box_type of \data_path_loop[5].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute box_type of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[6].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[6].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[6].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].high_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].high_hwbuild.shift_rotate_flop\ : label is "FDS";
  attribute box_type of \data_path_loop[6].high_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].large_spm.spm_flop\ : label is "kcpsm6_spm6";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[6].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].large_spm.spm_ram\ : label is "kcpsm6_spm6";
  attribute box_type of \data_path_loop[6].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].msb_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[6].msb_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[6].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[6].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[7].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].arith_logical_flop\ : label is "FD";
  attribute box_type of \data_path_loop[7].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[7].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].large_spm.spm_flop\ : label is "kcpsm6_spm7";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].large_spm.spm_flop\ : label is "FD";
  attribute box_type of \data_path_loop[7].large_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].large_spm.spm_ram\ : label is "kcpsm6_spm7";
  attribute box_type of \data_path_loop[7].large_spm.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute box_type of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \external_mem_dina[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \extra_mem_hi[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \extra_mem_lo[7]_i_1\ : label is "soft_lutpair0";
  attribute HBLKNM of flag_enable_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of flag_enable_flop : label is "FDR";
  attribute box_type of flag_enable_flop : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \in_port[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \in_port[7]_i_1\ : label is "soft_lutpair2";
  attribute HBLKNM of init_zero_muxcy_CARRY4_CARRY8 : label is "kcpsm6_flags";
  attribute OPT_MODIFIED of init_zero_muxcy_CARRY4_CARRY8 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of init_zero_muxcy_CARRY4_CARRY8 : label is "(CARRY4)";
  attribute box_type of init_zero_muxcy_CARRY4_CARRY8 : label is "PRIMITIVE";
  attribute HBLKNM of int_enable_type_lut : label is "kcpsm6_decode0";
  attribute box_type of int_enable_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of internal_reset_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of internal_reset_flop : label is "FD";
  attribute box_type of internal_reset_flop : label is "PRIMITIVE";
  attribute HBLKNM of interrupt_enable_flop : label is "kcpsm6_decode0";
  attribute XILINX_LEGACY_PRIM of interrupt_enable_flop : label is "FD";
  attribute box_type of interrupt_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of interrupt_enable_lut : label is "kcpsm6_decode0";
  attribute box_type of interrupt_enable_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \irqs_reg[0]_i_2\ : label is "soft_lutpair2";
  attribute HBLKNM of k_write_strobe_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of k_write_strobe_flop : label is "FDR";
  attribute box_type of k_write_strobe_flop : label is "PRIMITIVE";
  attribute HBLKNM of lower_parity_lut : label is "kcpsm6_decode2";
  attribute box_type of lower_parity_lut : label is "PRIMITIVE";
  attribute HBLKNM of lower_reg_banks : label is "kcpsm6_reg0";
  attribute box_type of lower_reg_banks : label is "PRIMITIVE";
  attribute HBLKNM of lower_zero_lut : label is "kcpsm6_flags";
  attribute box_type of lower_zero_lut : label is "PRIMITIVE";
  attribute HBLKNM of middle_zero_lut : label is "kcpsm6_flags";
  attribute box_type of middle_zero_lut : label is "PRIMITIVE";
  attribute HBLKNM of move_type_lut : label is "kcpsm6_decode0";
  attribute box_type of move_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of parity_muxcy_CARRY4_CARRY8 : label is "kcpsm6_decode2";
  attribute OPT_MODIFIED of parity_muxcy_CARRY4_CARRY8 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of parity_muxcy_CARRY4_CARRY8 : label is "(CARRY4)";
  attribute box_type of parity_muxcy_CARRY4_CARRY8 : label is "PRIMITIVE";
  attribute HBLKNM of pc_mode1_lut : label is "kcpsm6_vector1";
  attribute box_type of pc_mode1_lut : label is "PRIMITIVE";
  attribute HBLKNM of pc_mode2_lut : label is "kcpsm6_vector1";
  attribute box_type of pc_mode2_lut : label is "PRIMITIVE";
  attribute HBLKNM of pc_move_is_valid_lut : label is "kcpsm6_decode0";
  attribute box_type of pc_move_is_valid_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of pointer3_lut_i_1 : label is "soft_lutpair3";
  attribute HBLKNM of push_pop_lut : label is "kcpsm6_stack1";
  attribute box_type of push_pop_lut : label is "PRIMITIVE";
  attribute HBLKNM of read_strobe_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of read_strobe_flop : label is "FDR";
  attribute box_type of read_strobe_flop : label is "PRIMITIVE";
  attribute HBLKNM of read_strobe_lut : label is "kcpsm6_strobes";
  attribute box_type of read_strobe_lut : label is "PRIMITIVE";
  attribute HBLKNM of regbank_type_lut : label is "kcpsm6_stack1";
  attribute box_type of regbank_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of register_enable_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of register_enable_flop : label is "FDR";
  attribute box_type of register_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of register_enable_lut : label is "kcpsm6_strobes";
  attribute box_type of register_enable_lut : label is "PRIMITIVE";
  attribute HBLKNM of register_enable_type_lut : label is "kcpsm6_strobes";
  attribute box_type of register_enable_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of reset_lut : label is "kcpsm6_control";
  attribute box_type of reset_lut : label is "PRIMITIVE";
  attribute HBLKNM of run_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of run_flop : label is "FD";
  attribute box_type of run_flop : label is "PRIMITIVE";
  attribute HBLKNM of shadow_bank_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of shadow_bank_flop : label is "FD";
  attribute box_type of shadow_bank_flop : label is "PRIMITIVE";
  attribute HBLKNM of shadow_carry_flag_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of shadow_carry_flag_flop : label is "FD";
  attribute box_type of shadow_carry_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of shadow_zero_flag_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of shadow_zero_flag_flop : label is "FD";
  attribute box_type of shadow_zero_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of shift_carry_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of shift_carry_flop : label is "FD";
  attribute box_type of shift_carry_flop : label is "PRIMITIVE";
  attribute HBLKNM of shift_carry_lut : label is "kcpsm6_decode1";
  attribute box_type of shift_carry_lut : label is "PRIMITIVE";
  attribute HBLKNM of spm_enable_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of spm_enable_flop : label is "FDR";
  attribute box_type of spm_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of spm_enable_lut : label is "kcpsm6_strobes";
  attribute box_type of spm_enable_lut : label is "PRIMITIVE";
  attribute HBLKNM of stack_bit_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of stack_bit_flop : label is "FD";
  attribute box_type of stack_bit_flop : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[0].lsb_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[0].lsb_stack.pointer_flop\ : label is "FDR";
  attribute box_type of \stack_loop[0].lsb_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "kcpsm6_stack0";
  attribute OPT_MODIFIED of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[0].lsb_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[0].lsb_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[1].upper_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[1].upper_stack.pointer_flop\ : label is "FDR";
  attribute box_type of \stack_loop[1].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[1].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[1].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[2].upper_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[2].upper_stack.pointer_flop\ : label is "FDR";
  attribute box_type of \stack_loop[2].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[2].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[2].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[3].upper_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[3].upper_stack.pointer_flop\ : label is "FDR";
  attribute box_type of \stack_loop[3].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[3].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[3].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[4].upper_stack.pointer_flop\ : label is "kcpsm6_stack1";
  attribute XILINX_LEGACY_PRIM of \stack_loop[4].upper_stack.pointer_flop\ : label is "FDR";
  attribute box_type of \stack_loop[4].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[4].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack1";
  attribute box_type of \stack_loop[4].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of stack_ram_high : label is "kcpsm6_stack_ram1";
  attribute box_type of stack_ram_high : label is "PRIMITIVE";
  attribute HBLKNM of stack_ram_low : label is "kcpsm6_stack_ram0";
  attribute box_type of stack_ram_low : label is "PRIMITIVE";
  attribute HBLKNM of stack_zero_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of stack_zero_flop : label is "FD";
  attribute box_type of stack_zero_flop : label is "PRIMITIVE";
  attribute HBLKNM of sx_addr4_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of sx_addr4_flop : label is "FD";
  attribute box_type of sx_addr4_flop : label is "PRIMITIVE";
  attribute HBLKNM of t_state1_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of t_state1_flop : label is "FD";
  attribute box_type of t_state1_flop : label is "PRIMITIVE";
  attribute HBLKNM of t_state2_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of t_state2_flop : label is "FD";
  attribute box_type of t_state2_flop : label is "PRIMITIVE";
  attribute HBLKNM of t_state_lut : label is "kcpsm6_control";
  attribute box_type of t_state_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \tx_data_in[7]_i_1\ : label is "soft_lutpair1";
  attribute HBLKNM of upper_parity_lut : label is "kcpsm6_decode2";
  attribute box_type of upper_parity_lut : label is "PRIMITIVE";
  attribute HBLKNM of upper_reg_banks : label is "kcpsm6_reg1";
  attribute box_type of upper_reg_banks : label is "PRIMITIVE";
  attribute HBLKNM of upper_zero_lut : label is "kcpsm6_flags";
  attribute box_type of upper_zero_lut : label is "PRIMITIVE";
  attribute HBLKNM of use_zero_flag_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of use_zero_flag_flop : label is "FD";
  attribute box_type of use_zero_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of use_zero_flag_lut : label is "kcpsm6_decode1";
  attribute box_type of use_zero_flag_lut : label is "PRIMITIVE";
  attribute HBLKNM of write_strobe_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of write_strobe_flop : label is "FDR";
  attribute box_type of write_strobe_flop : label is "PRIMITIVE";
  attribute HBLKNM of zero_flag_flop : label is "kcpsm6_flags";
  attribute box_type of zero_flag_flop : label is "PRIMITIVE";
begin
  address(11 downto 0) <= \^address\(11 downto 0);
  bram_enable <= \^bram_enable\;
  out_port(7 downto 0) <= \^out_port\(7 downto 0);
  port_id(1 downto 0) <= \^port_id\(1 downto 0);
active_interrupt_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => active_interrupt_value,
      Q => active_interrupt,
      R => '0'
    );
active_interrupt_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CC33FF0080808080"
    )
        port map (
      I0 => interrupt_enable,
      I1 => \^bram_enable\,
      I2 => '0',
      I3 => I3,
      I4 => loadstar_type,
      I5 => '1',
      O5 => active_interrupt_value,
      O6 => sx_addr4_value
    );
\address_loop[0].lsb_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FF33CC0F00"
    )
        port map (
      I0 => lower_reg_banks_n_1,
      I1 => pc_vector_0,
      I2 => \^address\(0),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_0
    );
\address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => carry_pc_7,
      CO(6) => carry_pc_6,
      CO(5) => carry_pc_5,
      CO(4) => carry_pc_4,
      CO(3) => carry_pc_3,
      CO(2) => carry_pc_2,
      CO(1) => carry_pc_1,
      CO(0) => carry_pc_0,
      DI(7 downto 1) => B"0000000",
      DI(0) => pc_mode_0,
      O(7) => pc_value_7,
      O(6) => pc_value_6,
      O(5) => pc_value_5,
      O(4) => pc_value_4,
      O(3) => pc_value_3,
      O(2) => pc_value_2,
      O(1) => pc_value_1,
      O(0) => pc_value_0,
      S(7) => half_pc_7,
      S(6) => half_pc_6,
      S(5) => half_pc_5,
      S(4) => half_pc_4,
      S(3) => half_pc_3,
      S(2) => half_pc_2,
      S(1) => half_pc_1,
      S(0) => half_pc_0
    );
\address_loop[0].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(0),
      I1 => return_vector_0,
      I2 => instruction(1),
      I3 => return_vector_1,
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector_0,
      O6 => pc_vector_1
    );
\address_loop[0].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_0,
      Q => \^address\(0),
      R => I1
    );
\address_loop[0].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_5,
      Q => return_vector_0,
      R => '0'
    );
\address_loop[10].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(10),
      I1 => return_vector_10,
      I2 => instruction(11),
      I3 => return_vector_11,
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector_10,
      O6 => pc_vector_11
    );
\address_loop[10].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_10,
      Q => \^address\(10),
      R => I1
    );
\address_loop[10].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_7,
      Q => return_vector_10,
      R => '0'
    );
\address_loop[10].upper_pc.low_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sx(2),
      I1 => pc_vector_10,
      I2 => \^address\(10),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_10
    );
\address_loop[11].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_11,
      Q => \^address\(11),
      R => I1
    );
\address_loop[11].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_6,
      Q => return_vector_11,
      R => '0'
    );
\address_loop[11].upper_pc.low_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => sx(3),
      I1 => pc_vector_11,
      I2 => \^address\(11),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_11
    );
\address_loop[1].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_1,
      Q => \^address\(1),
      R => I1
    );
\address_loop[1].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_4,
      Q => return_vector_1,
      R => '0'
    );
\address_loop[1].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => lower_reg_banks_n_0,
      I1 => pc_vector_1,
      I2 => \^address\(1),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_1
    );
\address_loop[2].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(2),
      I1 => return_vector_2,
      I2 => instruction(3),
      I3 => return_vector_3,
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector_2,
      O6 => pc_vector_3
    );
\address_loop[2].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_2,
      Q => \^address\(2),
      R => I1
    );
\address_loop[2].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_7,
      Q => return_vector_2,
      R => '0'
    );
\address_loop[2].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => lower_reg_banks_n_5,
      I1 => pc_vector_2,
      I2 => \^address\(2),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_2
    );
\address_loop[3].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_3,
      Q => \^address\(3),
      R => I1
    );
\address_loop[3].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_6,
      Q => return_vector_3,
      R => '0'
    );
\address_loop[3].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => lower_reg_banks_n_4,
      I1 => pc_vector_3,
      I2 => \^address\(3),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_3
    );
\address_loop[4].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(4),
      I1 => return_vector_4,
      I2 => instruction(5),
      I3 => return_vector_5,
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector_4,
      O6 => pc_vector_5
    );
\address_loop[4].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_4,
      Q => \^address\(4),
      R => I1
    );
\address_loop[4].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_1,
      Q => return_vector_4,
      R => '0'
    );
\address_loop[4].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => DOA(0),
      I1 => pc_vector_4,
      I2 => \^address\(4),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_4
    );
\address_loop[5].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_5,
      Q => \^address\(5),
      R => I1
    );
\address_loop[5].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_0,
      Q => return_vector_5,
      R => '0'
    );
\address_loop[5].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => DOA(1),
      I1 => pc_vector_5,
      I2 => \^address\(5),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_5
    );
\address_loop[6].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(6),
      I1 => return_vector_6,
      I2 => instruction(7),
      I3 => return_vector_7,
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector_6,
      O6 => pc_vector_7
    );
\address_loop[6].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_6,
      Q => \^address\(6),
      R => I1
    );
\address_loop[6].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_3,
      Q => return_vector_6,
      R => '0'
    );
\address_loop[6].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => DOC(0),
      I1 => pc_vector_6,
      I2 => \^address\(6),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_6
    );
\address_loop[7].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_7,
      Q => \^address\(7),
      R => I1
    );
\address_loop[7].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_2,
      Q => return_vector_7,
      R => '0'
    );
\address_loop[7].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => DOC(1),
      I1 => pc_vector_7,
      I2 => \^address\(7),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_7
    );
\address_loop[8].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(8),
      I1 => return_vector_8,
      I2 => instruction(9),
      I3 => return_vector_9,
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector_8,
      O6 => pc_vector_9
    );
\address_loop[8].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_8,
      Q => \^address\(8),
      R => I1
    );
\address_loop[8].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_5,
      Q => return_vector_8,
      R => '0'
    );
\address_loop[8].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => sx(0),
      I1 => pc_vector_8,
      I2 => \^address\(8),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_8
    );
\address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => carry_pc_7,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => carry_pc_10,
      CO(1) => carry_pc_9,
      CO(0) => carry_pc_8,
      DI(7 downto 3) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2 downto 0) => B"000",
      O(7 downto 4) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => pc_value_11,
      O(2) => pc_value_10,
      O(1) => pc_value_9,
      O(0) => pc_value_8,
      S(7 downto 4) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => half_pc_11,
      S(2) => half_pc_10,
      S(1) => half_pc_9,
      S(0) => half_pc_8
    );
\address_loop[9].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => t_state_0,
      D => pc_value_9,
      Q => \^address\(9),
      R => I1
    );
\address_loop[9].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_4,
      Q => return_vector_9,
      R => '0'
    );
\address_loop[9].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => sx(1),
      I1 => pc_vector_9,
      I2 => \^address\(9),
      I3 => pc_mode_0,
      I4 => pc_mode_1,
      I5 => pc_mode_2,
      O => half_pc_9
    );
alu_decode0_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"03CA000004200000"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => '1',
      I5 => '1',
      O5 => alu_mux_sel_value_0,
      O6 => arith_logical_sel_0
    );
alu_decode1_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7708000000000F00"
    )
        port map (
      I0 => carry_flag,
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => '1',
      O5 => alu_mux_sel_value_1,
      O6 => arith_carry_in
    );
alu_decode2_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"D000000002000000"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O5 => arith_logical_sel_1,
      O6 => arith_logical_sel_2
    );
alu_mux_sel0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => alu_mux_sel_value_0,
      Q => alu_mux_sel_0,
      R => '0'
    );
alu_mux_sel1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => alu_mux_sel_value_1,
      Q => alu_mux_sel_1,
      R => '0'
    );
arith_carry_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_carry_value,
      Q => arith_carry,
      R => '0'
    );
arith_carry_xorcy_CARRY4_CARRY8: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 0) => NLW_arith_carry_xorcy_CARRY4_CARRY8_CO_UNCONNECTED(7 downto 0),
      DI(7 downto 0) => NLW_arith_carry_xorcy_CARRY4_CARRY8_DI_UNCONNECTED(7 downto 0),
      O(7 downto 1) => NLW_arith_carry_xorcy_CARRY4_CARRY8_O_UNCONNECTED(7 downto 1),
      O(0) => arith_carry_value,
      S(7 downto 1) => NLW_arith_carry_xorcy_CARRY4_CARRY8_S_UNCONNECTED(7 downto 1),
      S(0) => '0'
    );
bank_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => bank_value,
      Q => I3,
      R => I1
    );
bank_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACFF00FF00FF00"
    )
        port map (
      I0 => instruction(0),
      I1 => shadow_bank,
      I2 => instruction(16),
      I3 => I3,
      I4 => regbank_type,
      I5 => t_state_0,
      O => bank_value
    );
buffer_read_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_strobe,
      I1 => \^port_id\(0),
      O => buffer_read0
    );
buffer_reset_tx_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => k_write_strobe,
      I1 => \^port_id\(0),
      O => buffer_reset_tx
    );
carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => flag_enable,
      D => carry_flag_value,
      Q => carry_flag,
      R => I1
    );
carry_flag_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"3333AACCF0AA0000"
    )
        port map (
      I0 => shift_carry,
      I1 => arith_carry,
      I2 => parity,
      I3 => instruction(14),
      I4 => instruction(15),
      I5 => instruction(16),
      O5 => drive_carry_in_zero,
      O6 => carry_flag_value
    );
\data_path_loop[0].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I022_in,
      I1 => shift_rotate_result_0,
      I2 => Q(0),
      I3 => spm_data_0,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => alu_result_0
    );
\data_path_loop[0].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_0,
      Q => I022_in,
      R => '0'
    );
\data_path_loop[0].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(0),
      I1 => sx(0),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_0,
      O6 => half_arith_logical_0
    );
\data_path_loop[0].high_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_0,
      Q => shift_rotate_result_0,
      S => instruction(7)
    );
\data_path_loop[0].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_0,
      Q => spm_data_0,
      R => '0'
    );
\data_path_loop[0].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(0),
      O => spm_ram_data_0,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => arith_carry_in,
      CI_TOP => '0',
      CO(7) => CI,
      CO(6) => carry_arith_logical_6,
      CO(5) => carry_arith_logical_5,
      CO(4) => carry_arith_logical_4,
      CO(3) => carry_arith_logical_3,
      CO(2) => carry_arith_logical_2,
      CO(1) => carry_arith_logical_1,
      CO(0) => carry_arith_logical_0,
      DI(7) => logical_carry_mask_7,
      DI(6) => logical_carry_mask_6,
      DI(5) => logical_carry_mask_5,
      DI(4) => logical_carry_mask_4,
      DI(3) => logical_carry_mask_3,
      DI(2) => logical_carry_mask_2,
      DI(1) => logical_carry_mask_1,
      DI(0) => logical_carry_mask_0,
      O(7) => arith_logical_value_7,
      O(6) => arith_logical_value_6,
      O(5) => arith_logical_value_5,
      O(4) => arith_logical_value_4,
      O(3) => arith_logical_value_3,
      O(2) => arith_logical_value_2,
      O(1) => arith_logical_value_1,
      O(0) => arith_logical_value_0,
      S(7) => half_arith_logical_7,
      S(6) => half_arith_logical_6,
      S(5) => half_arith_logical_5,
      S(4) => half_arith_logical_4,
      S(3) => half_arith_logical_3,
      S(2) => half_arith_logical_2,
      S(1) => half_arith_logical_1,
      S(0) => half_arith_logical_0
    );
\data_path_loop[0].lsb_shift_rotate.shift_bit_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => instruction(0),
      I1 => instruction(1),
      I2 => instruction(2),
      I3 => carry_flag,
      I4 => sx(0),
      I5 => sx(7),
      O => shift_in_bit
    );
\data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => shift_in_bit,
      I1 => sx(1),
      I2 => sx(0),
      I3 => sx(2),
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value_0,
      O6 => shift_rotate_value_1
    );
\data_path_loop[0].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => lower_reg_banks_n_1,
      I1 => instruction(0),
      I2 => lower_reg_banks_n_0,
      I3 => instruction(1),
      I4 => instruction(12),
      I5 => '1',
      O5 => \^port_id\(0),
      O6 => \^port_id\(1)
    );
\data_path_loop[0].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(0),
      I1 => instruction(4),
      I2 => sx(1),
      I3 => instruction(5),
      I4 => instruction(13),
      I5 => '1',
      O5 => \^out_port\(0),
      O6 => \^out_port\(1)
    );
\data_path_loop[1].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I019_in,
      I1 => shift_rotate_result_1,
      I2 => Q(1),
      I3 => spm_data_1,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => alu_result_1
    );
\data_path_loop[1].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_1,
      Q => I019_in,
      R => '0'
    );
\data_path_loop[1].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(1),
      I1 => sx(1),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_1,
      O6 => half_arith_logical_1
    );
\data_path_loop[1].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_1,
      Q => spm_data_1,
      R => '0'
    );
\data_path_loop[1].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(1),
      O => spm_ram_data_1,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[1].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_1,
      Q => shift_rotate_result_1,
      R => instruction(7)
    );
\data_path_loop[2].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I015_in,
      I1 => shift_rotate_result_2,
      I2 => Q(2),
      I3 => spm_data_2,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => DIC(0)
    );
\data_path_loop[2].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_2,
      Q => I015_in,
      R => '0'
    );
\data_path_loop[2].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      I1 => sx(2),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_2,
      O6 => half_arith_logical_2
    );
\data_path_loop[2].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_2,
      Q => spm_data_2,
      R => '0'
    );
\data_path_loop[2].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(2),
      O => spm_ram_data_2,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[2].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_2,
      Q => shift_rotate_result_2,
      R => instruction(7)
    );
\data_path_loop[2].mid_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(1),
      I1 => sx(3),
      I2 => sx(2),
      I3 => sx(4),
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value_2,
      O6 => shift_rotate_value_3
    );
\data_path_loop[2].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => lower_reg_banks_n_5,
      I1 => instruction(2),
      I2 => lower_reg_banks_n_4,
      I3 => instruction(3),
      I4 => instruction(12),
      I5 => '1',
      O5 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      O6 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\
    );
\data_path_loop[2].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(2),
      I1 => instruction(6),
      I2 => sx(3),
      I3 => instruction(7),
      I4 => instruction(13),
      I5 => '1',
      O5 => \^out_port\(2),
      O6 => \^out_port\(3)
    );
\data_path_loop[3].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I014_in,
      I1 => shift_rotate_result_3,
      I2 => Q(3),
      I3 => spm_data_3,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => DIC(1)
    );
\data_path_loop[3].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_3,
      Q => I014_in,
      R => '0'
    );
\data_path_loop[3].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      I1 => sx(3),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_3,
      O6 => half_arith_logical_3
    );
\data_path_loop[3].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_3,
      Q => spm_data_3,
      R => '0'
    );
\data_path_loop[3].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(3),
      O => spm_ram_data_3,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[3].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_3,
      Q => shift_rotate_result_3,
      R => instruction(7)
    );
\data_path_loop[4].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I07_in,
      I1 => shift_rotate_result_4,
      I2 => Q(4),
      I3 => spm_data_4,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => alu_result_4
    );
\data_path_loop[4].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_4,
      Q => I07_in,
      R => '0'
    );
\data_path_loop[4].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      I1 => sx(4),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_4,
      O6 => half_arith_logical_4
    );
\data_path_loop[4].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_4,
      Q => spm_data_4,
      R => '0'
    );
\data_path_loop[4].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(4),
      O => spm_ram_data_4,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[4].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_4,
      Q => shift_rotate_result_4,
      R => instruction(7)
    );
\data_path_loop[4].mid_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(3),
      I1 => sx(5),
      I2 => sx(4),
      I3 => sx(6),
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value_4,
      O6 => shift_rotate_value_5
    );
\data_path_loop[4].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => DOA(0),
      I1 => instruction(4),
      I2 => DOA(1),
      I3 => instruction(5),
      I4 => instruction(12),
      I5 => '1',
      O5 => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      O6 => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\
    );
\data_path_loop[4].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(4),
      I1 => instruction(8),
      I2 => sx(5),
      I3 => instruction(9),
      I4 => instruction(13),
      I5 => '1',
      O5 => \^out_port\(4),
      O6 => \^out_port\(5)
    );
\data_path_loop[5].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I06_in,
      I1 => shift_rotate_result_5,
      I2 => Q(5),
      I3 => spm_data_5,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => alu_result_5
    );
\data_path_loop[5].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_5,
      Q => I06_in,
      R => '0'
    );
\data_path_loop[5].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      I1 => sx(5),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_5,
      O6 => half_arith_logical_5
    );
\data_path_loop[5].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_5,
      Q => spm_data_5,
      R => '0'
    );
\data_path_loop[5].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(5),
      O => spm_ram_data_5,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[5].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_5,
      Q => shift_rotate_result_5,
      R => instruction(7)
    );
\data_path_loop[6].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I00_in,
      I1 => shift_rotate_result_6,
      I2 => Q(6),
      I3 => spm_data_6,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => alu_result_6
    );
\data_path_loop[6].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_6,
      Q => I00_in,
      R => '0'
    );
\data_path_loop[6].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      I1 => sx(6),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_6,
      O6 => half_arith_logical_6
    );
\data_path_loop[6].high_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_6,
      Q => shift_rotate_result_6,
      S => instruction(7)
    );
\data_path_loop[6].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_6,
      Q => spm_data_6,
      R => '0'
    );
\data_path_loop[6].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(6),
      O => spm_ram_data_6,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[6].msb_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(5),
      I1 => sx(7),
      I2 => sx(6),
      I3 => shift_in_bit,
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value_6,
      O6 => shift_rotate_value_7
    );
\data_path_loop[6].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => DOC(0),
      I1 => instruction(6),
      I2 => DOC(1),
      I3 => instruction(7),
      I4 => instruction(12),
      I5 => '1',
      O5 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      O6 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\
    );
\data_path_loop[6].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => sx(6),
      I1 => instruction(10),
      I2 => sx(7),
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => '1',
      O5 => \^out_port\(6),
      O6 => \^out_port\(7)
    );
\data_path_loop[7].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => I5,
      I1 => shift_rotate_result_7,
      I2 => Q(7),
      I3 => spm_data_7,
      I4 => alu_mux_sel_0,
      I5 => alu_mux_sel_1,
      O => alu_result_7
    );
\data_path_loop[7].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value_7,
      Q => I5,
      R => '0'
    );
\data_path_loop[7].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      I1 => sx(7),
      I2 => arith_logical_sel_0,
      I3 => arith_logical_sel_1,
      I4 => arith_logical_sel_2,
      I5 => '1',
      O5 => logical_carry_mask_7,
      O6 => half_arith_logical_7
    );
\data_path_loop[7].large_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data_7,
      Q => spm_data_7,
      R => '0'
    );
\data_path_loop[7].large_spm.spm_ram\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A(7) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      A(6) => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      A(5) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      A(4) => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      A(3) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      A(2) => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      A(1 downto 0) => \^port_id\(1 downto 0),
      D => sx(7),
      O => spm_ram_data_7,
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[7].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value_7,
      Q => shift_rotate_result_7,
      R => instruction(7)
    );
\external_mem_dina[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => write_strobe,
      I1 => \extra_mem_hi[7]_i_2_n_0\,
      I2 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      I3 => \^port_id\(0),
      I4 => \^port_id\(1),
      O => write_strobe_flop_1(0)
    );
\extra_mem_hi[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => write_strobe,
      I1 => \extra_mem_hi[7]_i_2_n_0\,
      I2 => \^port_id\(1),
      I3 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      I4 => \^port_id\(0),
      O => E(0)
    );
\extra_mem_hi[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_1\,
      I1 => \data_path_loop[4].output_data.sy_kk_mux_lut_n_0\,
      I2 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_1\,
      I3 => \data_path_loop[6].output_data.sy_kk_mux_lut_n_0\,
      I4 => \data_path_loop[4].output_data.sy_kk_mux_lut_n_1\,
      O => \extra_mem_hi[7]_i_2_n_0\
    );
\extra_mem_lo[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => write_strobe,
      I1 => \extra_mem_hi[7]_i_2_n_0\,
      I2 => \^port_id\(0),
      I3 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      I4 => \^port_id\(1),
      O => write_strobe_flop_0(0)
    );
flag_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => flag_enable_value,
      Q => flag_enable,
      R => active_interrupt
    );
\in_port[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => external_mem_douta(0),
      I1 => data_out(0),
      I2 => \^port_id\(0),
      I3 => buffer_data_present,
      I4 => \^port_id\(1),
      O => D(0)
    );
\in_port[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => external_mem_douta(1),
      I1 => data_out(1),
      I2 => \^port_id\(0),
      I3 => buffer_half_full,
      I4 => \^port_id\(1),
      O => D(1)
    );
\in_port[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => external_mem_douta(2),
      I1 => data_out(2),
      I2 => \^port_id\(0),
      I3 => buffer_full,
      I4 => \^port_id\(1),
      O => D(2)
    );
\in_port[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^port_id\(1),
      I1 => external_mem_douta(3),
      I2 => \^port_id\(0),
      I3 => data_out(3),
      O => D(3)
    );
\in_port[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^port_id\(1),
      I1 => external_mem_douta(4),
      I2 => \^port_id\(0),
      I3 => data_out(4),
      O => D(4)
    );
init_zero_muxcy_CARRY4_CARRY8: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED(7 downto 4),
      CO(3) => zero_flag_value,
      CO(2) => carry_middle_zero,
      CO(1) => carry_lower_zero,
      CO(0) => carry_in_zero,
      DI(7 downto 4) => NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED(7 downto 4),
      DI(3) => shadow_zero_flag,
      DI(2) => middle_zero,
      DI(1) => lower_zero,
      DI(0) => drive_carry_in_zero,
      O(7 downto 0) => NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED(7 downto 4),
      S(3) => upper_zero_sel,
      S(2) => middle_zero_sel,
      S(1) => lower_zero_sel,
      S(0) => carry_flag_value
    );
int_enable_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0010000000000800"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => '1',
      O5 => loadstar_type,
      O6 => int_enable_type
    );
internal_reset_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => internal_reset_value,
      Q => I1,
      R => '0'
    );
interrupt_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => interrupt_enable_value,
      Q => interrupt_enable,
      R => '0'
    );
interrupt_enable_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CAAA"
    )
        port map (
      I0 => interrupt_enable,
      I1 => instruction(0),
      I2 => int_enable_type,
      I3 => t_state_0,
      I4 => active_interrupt,
      I5 => I1,
      O => interrupt_enable_value
    );
\irqs_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => \^out_port\(0),
      I1 => write_strobe,
      I2 => \extra_mem_hi[7]_i_2_n_0\,
      I3 => \irqs_reg[0]_i_2_n_0\,
      I4 => irqs(0),
      O => write_strobe_flop_3
    );
\irqs_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      I1 => \^port_id\(0),
      I2 => \^port_id\(1),
      O => \irqs_reg[0]_i_2_n_0\
    );
k_write_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => k_write_strobe_value,
      Q => k_write_strobe,
      R => active_interrupt
    );
lower_parity_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000087780000"
    )
        port map (
      I0 => instruction(13),
      I1 => carry_flag,
      I2 => I022_in,
      I3 => I019_in,
      I4 => '1',
      I5 => '1',
      O5 => lower_parity,
      O6 => lower_parity_sel
    );
lower_reg_banks: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => I3,
      ADDRA(3 downto 0) => instruction(7 downto 4),
      ADDRB(4) => ADDRB(4),
      ADDRB(3 downto 0) => instruction(11 downto 8),
      ADDRC(4) => I3,
      ADDRC(3 downto 0) => instruction(7 downto 4),
      ADDRD(4) => ADDRB(4),
      ADDRD(3 downto 0) => instruction(11 downto 8),
      DIA(1) => alu_result_1,
      DIA(0) => alu_result_0,
      DIB(1) => alu_result_1,
      DIB(0) => alu_result_0,
      DIC(1 downto 0) => DIC(1 downto 0),
      DID(1 downto 0) => DIC(1 downto 0),
      DOA(1) => lower_reg_banks_n_0,
      DOA(0) => lower_reg_banks_n_1,
      DOB(1 downto 0) => sx(1 downto 0),
      DOC(1) => lower_reg_banks_n_4,
      DOC(0) => lower_reg_banks_n_5,
      DOD(1 downto 0) => sx(3 downto 2),
      WCLK => clk,
      WE => register_enable
    );
lower_zero_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_result_0,
      I1 => alu_result_1,
      I2 => DIC(0),
      I3 => DIC(1),
      I4 => alu_result_4,
      I5 => '1',
      O5 => lower_zero,
      O6 => lower_zero_sel
    );
middle_zero_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000D00000000"
    )
        port map (
      I0 => use_zero_flag,
      I1 => zero_flag,
      I2 => alu_result_5,
      I3 => alu_result_6,
      I4 => alu_result_7,
      I5 => '1',
      O5 => middle_zero,
      O6 => middle_zero_sel
    );
move_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7777027700000200"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => '1',
      O5 => returni_type,
      O6 => move_type
    );
parity_muxcy_CARRY4_CARRY8: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 1) => NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED(7 downto 1),
      CO(0) => carry_lower_parity,
      DI(7 downto 1) => NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED(7 downto 1),
      DI(0) => lower_parity,
      O(7 downto 2) => NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED(7 downto 2),
      O(1) => parity,
      O(0) => NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED(0),
      S(7 downto 2) => NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED(7 downto 2),
      S(1) => upper_parity,
      S(0) => lower_parity_sel
    );
pc_mode1_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000F000000023FF"
    )
        port map (
      I0 => instruction(12),
      I1 => returni_type,
      I2 => move_type,
      I3 => pc_move_is_valid,
      I4 => active_interrupt,
      I5 => '1',
      O5 => pc_mode_0,
      O6 => pc_mode_1
    );
pc_mode2_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => active_interrupt,
      O => pc_mode_2
    );
pc_move_is_valid_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A3CFFFF00000000"
    )
        port map (
      I0 => carry_flag,
      I1 => zero_flag,
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => instruction(17),
      O => pc_move_is_valid
    );
pointer3_lut_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => write_strobe,
      I1 => \^port_id\(1),
      I2 => \^port_id\(0),
      O => tx_buffer_write
    );
push_pop_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FFFF100000002000"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => move_type,
      I3 => pc_move_is_valid,
      I4 => active_interrupt,
      I5 => '1',
      O5 => pop_stack,
      O6 => push_stack
    );
read_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_strobe_value,
      Q => read_strobe,
      R => active_interrupt
    );
read_strobe_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"4000000001000000"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(17),
      I3 => strobe_type,
      I4 => t_state_0,
      I5 => '1',
      O5 => read_strobe_value,
      O6 => write_strobe_value
    );
regbank_type_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080020000000000"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => instruction(17),
      O => regbank_type
    );
register_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => register_enable_value,
      Q => register_enable,
      R => active_interrupt
    );
register_enable_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"C0CC0000A0AA0000"
    )
        port map (
      I0 => flag_enable_type,
      I1 => register_enable_type,
      I2 => instruction(12),
      I3 => instruction(17),
      I4 => t_state_0,
      I5 => '1',
      O5 => flag_enable_value,
      O6 => register_enable_value
    );
register_enable_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"00013F3F0010F7CE"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => '1',
      O5 => flag_enable_type,
      O6 => register_enable_type
    );
reset_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FFFFF55500000EEE"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => \^bram_enable\,
      I4 => reset_in,
      I5 => '1',
      O5 => run_value,
      O6 => internal_reset_value
    );
run_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => run_value,
      Q => I0,
      R => '0'
    );
shadow_bank_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_3,
      Q => shadow_bank,
      R => '0'
    );
shadow_carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_1,
      Q => shadow_carry_flag,
      R => '0'
    );
shadow_zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shadow_zero_value,
      Q => shadow_zero_flag,
      R => '0'
    );
shift_carry_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_carry_value,
      Q => shift_carry,
      R => '0'
    );
shift_carry_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAACCF0F0F0F0"
    )
        port map (
      I0 => sx(0),
      I1 => sx(7),
      I2 => shadow_carry_flag,
      I3 => instruction(3),
      I4 => instruction(7),
      I5 => instruction(16),
      O => shift_carry_value
    );
spm_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_enable_value,
      Q => spm_enable,
      R => active_interrupt
    );
spm_enable_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"8000000020000000"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(17),
      I3 => strobe_type,
      I4 => t_state_0,
      I5 => '1',
      O5 => k_write_strobe_value,
      O6 => spm_enable_value
    );
stack_bit_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_2,
      Q => I4,
      R => '0'
    );
\stack_loop[0].lsb_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value_0,
      Q => ADDRA(0),
      R => I1
    );
\stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 5),
      CO(4) => I2,
      CO(3) => stack_pointer_carry_3,
      CO(2) => stack_pointer_carry_2,
      CO(1) => stack_pointer_carry_1,
      CO(0) => stack_pointer_carry_0,
      DI(7 downto 5) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 5),
      DI(4) => feed_pointer_value_4,
      DI(3) => feed_pointer_value_3,
      DI(2) => feed_pointer_value_2,
      DI(1) => feed_pointer_value_1,
      DI(0) => feed_pointer_value_0,
      O(7 downto 5) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 5),
      O(4) => stack_pointer_value_4,
      O(3) => stack_pointer_value_3,
      O(2) => stack_pointer_value_2,
      O(1) => stack_pointer_value_1,
      O(0) => stack_pointer_value_0,
      S(7 downto 5) => \NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 5),
      S(4) => half_pointer_value_4,
      S(3) => half_pointer_value_3,
      S(2) => half_pointer_value_2,
      S(1) => half_pointer_value_1,
      S(0) => half_pointer_value_0
    );
\stack_loop[0].lsb_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"001529AAAAAAAAAA"
    )
        port map (
      I0 => ADDRA(0),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state_0,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value_0,
      O6 => half_pointer_value_0
    );
\stack_loop[1].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value_1,
      Q => ADDRA(1),
      R => I1
    );
\stack_loop[1].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(1),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state_0,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value_1,
      O6 => half_pointer_value_1
    );
\stack_loop[2].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value_2,
      Q => ADDRA(2),
      R => I1
    );
\stack_loop[2].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(2),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state_0,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value_2,
      O6 => half_pointer_value_2
    );
\stack_loop[3].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value_3,
      Q => ADDRA(3),
      R => I1
    );
\stack_loop[3].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(3),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state_0,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value_3,
      O6 => half_pointer_value_3
    );
\stack_loop[4].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value_4,
      Q => ADDRA(4),
      R => I1
    );
\stack_loop[4].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(4),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => t_state_0,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value_4,
      O6 => half_pointer_value_4
    );
stack_ram_high: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4 downto 0) => ADDRA(4 downto 0),
      ADDRB(4 downto 0) => ADDRA(4 downto 0),
      ADDRC(4 downto 0) => ADDRA(4 downto 0),
      ADDRD(4 downto 0) => ADDRA(4 downto 0),
      DIA(1 downto 0) => \^address\(5 downto 4),
      DIB(1 downto 0) => \^address\(7 downto 6),
      DIC(1 downto 0) => \^address\(9 downto 8),
      DID(1 downto 0) => \^address\(11 downto 10),
      DOA(1) => stack_ram_high_n_0,
      DOA(0) => stack_ram_high_n_1,
      DOB(1) => stack_ram_high_n_2,
      DOB(0) => stack_ram_high_n_3,
      DOC(1) => stack_ram_high_n_4,
      DOC(0) => stack_ram_high_n_5,
      DOD(1) => stack_ram_high_n_6,
      DOD(0) => stack_ram_high_n_7,
      WCLK => clk,
      WE => t_state_0
    );
stack_ram_low: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4 downto 0) => ADDRA(4 downto 0),
      ADDRB(4 downto 0) => ADDRA(4 downto 0),
      ADDRC(4 downto 0) => ADDRA(4 downto 0),
      ADDRD(4 downto 0) => ADDRA(4 downto 0),
      DIA(1) => zero_flag,
      DIA(0) => carry_flag,
      DIB(1) => I0,
      DIB(0) => I3,
      DIC(1 downto 0) => \^address\(1 downto 0),
      DID(1 downto 0) => \^address\(3 downto 2),
      DOA(1) => stack_ram_low_n_0,
      DOA(0) => stack_ram_low_n_1,
      DOB(1) => stack_ram_low_n_2,
      DOB(0) => stack_ram_low_n_3,
      DOC(1) => stack_ram_low_n_4,
      DOC(0) => stack_ram_low_n_5,
      DOD(1) => stack_ram_low_n_6,
      DOD(0) => stack_ram_low_n_7,
      WCLK => clk,
      WE => t_state_0
    );
stack_zero_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_low_n_0,
      Q => shadow_zero_value,
      R => '0'
    );
sx_addr4_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sx_addr4_value,
      Q => ADDRB(4),
      R => '0'
    );
t_state1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => t_state_value_0,
      Q => t_state_0,
      R => '0'
    );
t_state2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => t_state_value_1,
      Q => \^bram_enable\,
      R => '0'
    );
t_state_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0083000B00C4004C"
    )
        port map (
      I0 => t_state_0,
      I1 => \^bram_enable\,
      I2 => '0',
      I3 => I1,
      I4 => I4,
      I5 => '1',
      O5 => t_state_value_0,
      O6 => t_state_value_1
    );
\tx_data_in[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => write_strobe,
      I1 => \extra_mem_hi[7]_i_2_n_0\,
      I2 => \data_path_loop[2].output_data.sy_kk_mux_lut_n_0\,
      I3 => \^port_id\(0),
      I4 => \^port_id\(1),
      O => write_strobe_flop_2(0)
    );
upper_parity_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => I015_in,
      I1 => I014_in,
      I2 => I07_in,
      I3 => I06_in,
      I4 => I00_in,
      I5 => I5,
      O => upper_parity
    );
upper_reg_banks: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => I3,
      ADDRA(3 downto 0) => instruction(7 downto 4),
      ADDRB(4) => ADDRB(4),
      ADDRB(3 downto 0) => instruction(11 downto 8),
      ADDRC(4) => I3,
      ADDRC(3 downto 0) => instruction(7 downto 4),
      ADDRD(4) => ADDRB(4),
      ADDRD(3 downto 0) => instruction(11 downto 8),
      DIA(1) => alu_result_5,
      DIA(0) => alu_result_4,
      DIB(1) => alu_result_5,
      DIB(0) => alu_result_4,
      DIC(1) => alu_result_7,
      DIC(0) => alu_result_6,
      DID(1) => alu_result_7,
      DID(0) => alu_result_6,
      DOA(1 downto 0) => DOA(1 downto 0),
      DOB(1 downto 0) => sx(5 downto 4),
      DOC(1 downto 0) => DOC(1 downto 0),
      DOD(1 downto 0) => sx(7 downto 6),
      WCLK => clk,
      WE => register_enable
    );
upper_zero_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF000000000000"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => upper_zero_sel
    );
use_zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => use_zero_flag_value,
      Q => use_zero_flag,
      R => '0'
    );
use_zero_flag_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"A280000000F000F0"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => '1',
      I5 => '1',
      O5 => strobe_type,
      O6 => use_zero_flag_value
    );
write_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => write_strobe_value,
      Q => write_strobe,
      R => active_interrupt
    );
zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => flag_enable,
      D => zero_flag_value,
      Q => zero_flag,
      R => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pBlaze_0_0_uart_rx6 is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    buffer_write_flop_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    external_mem_douta : in STD_LOGIC_VECTOR ( 2 downto 0 );
    port_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_read : in STD_LOGIC;
    buffer_reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    uart_top_rx : in STD_LOGIC;
    en_16_x_baud : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_pBlaze_0_0_uart_rx6 : entity is "uart_rx6";
end system_pBlaze_0_0_uart_rx6;

architecture STRUCTURE of system_pBlaze_0_0_uart_rx6 is
  signal I0 : STD_LOGIC;
  signal I1 : STD_LOGIC;
  signal I2 : STD_LOGIC;
  signal I3 : STD_LOGIC;
  signal I4 : STD_LOGIC;
  signal buffer_data_present_rx : STD_LOGIC;
  signal buffer_full_rx : STD_LOGIC;
  signal buffer_half_full_rx : STD_LOGIC;
  signal buffer_write_value : STD_LOGIC;
  signal data_0 : STD_LOGIC;
  signal data_1 : STD_LOGIC;
  signal data_2 : STD_LOGIC;
  signal data_3 : STD_LOGIC;
  signal data_4 : STD_LOGIC;
  signal data_5 : STD_LOGIC;
  signal data_6 : STD_LOGIC;
  signal data_7 : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal data_present_value : STD_LOGIC;
  signal data_value_0 : STD_LOGIC;
  signal data_value_1 : STD_LOGIC;
  signal data_value_2 : STD_LOGIC;
  signal data_value_3 : STD_LOGIC;
  signal data_value_4 : STD_LOGIC;
  signal data_value_5 : STD_LOGIC;
  signal data_value_6 : STD_LOGIC;
  signal data_value_7 : STD_LOGIC;
  signal div_0 : STD_LOGIC;
  signal div_1 : STD_LOGIC;
  signal div_2 : STD_LOGIC;
  signal div_3 : STD_LOGIC;
  signal div_carry : STD_LOGIC;
  signal div_value_0 : STD_LOGIC;
  signal div_value_1 : STD_LOGIC;
  signal div_value_2 : STD_LOGIC;
  signal div_value_3 : STD_LOGIC;
  signal en_pointer : STD_LOGIC;
  signal pointer_value_0 : STD_LOGIC;
  signal pointer_value_1 : STD_LOGIC;
  signal pointer_value_2 : STD_LOGIC;
  signal pointer_value_3 : STD_LOGIC;
  signal run_value : STD_LOGIC;
  signal sample : STD_LOGIC;
  signal sample_dly : STD_LOGIC;
  signal sample_dly_value : STD_LOGIC;
  signal sample_input : STD_LOGIC;
  signal sample_input_value : STD_LOGIC;
  signal sample_value : STD_LOGIC;
  signal start_bit : STD_LOGIC;
  signal start_bit_value : STD_LOGIC;
  signal stop_bit : STD_LOGIC;
  signal stop_bit_value : STD_LOGIC;
  signal zero : STD_LOGIC;
  attribute HBLKNM : string;
  attribute HBLKNM of buffer_write_flop : label is "uart_rx6_4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of buffer_write_flop : label is "FD";
  attribute box_type : string;
  attribute box_type of buffer_write_flop : label is "PRIMITIVE";
  attribute HBLKNM of data01_lut : label is "uart_rx6_2";
  attribute box_type of data01_lut : label is "PRIMITIVE";
  attribute HBLKNM of data0_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data0_flop : label is "FD";
  attribute box_type of data0_flop : label is "PRIMITIVE";
  attribute HBLKNM of data1_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data1_flop : label is "FD";
  attribute box_type of data1_flop : label is "PRIMITIVE";
  attribute HBLKNM of data23_lut : label is "uart_rx6_2";
  attribute box_type of data23_lut : label is "PRIMITIVE";
  attribute HBLKNM of data2_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data2_flop : label is "FD";
  attribute box_type of data2_flop : label is "PRIMITIVE";
  attribute HBLKNM of data3_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data3_flop : label is "FD";
  attribute box_type of data3_flop : label is "PRIMITIVE";
  attribute HBLKNM of data45_lut : label is "uart_rx6_2";
  attribute box_type of data45_lut : label is "PRIMITIVE";
  attribute HBLKNM of data4_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data4_flop : label is "FD";
  attribute box_type of data4_flop : label is "PRIMITIVE";
  attribute HBLKNM of data5_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data5_flop : label is "FD";
  attribute box_type of data5_flop : label is "PRIMITIVE";
  attribute HBLKNM of data67_lut : label is "uart_rx6_2";
  attribute box_type of data67_lut : label is "PRIMITIVE";
  attribute HBLKNM of data6_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data6_flop : label is "FD";
  attribute box_type of data6_flop : label is "PRIMITIVE";
  attribute HBLKNM of data7_flop : label is "uart_rx6_2";
  attribute XILINX_LEGACY_PRIM of data7_flop : label is "FD";
  attribute box_type of data7_flop : label is "PRIMITIVE";
  attribute HBLKNM of data_present_flop : label is "uart_rx6_1";
  attribute XILINX_LEGACY_PRIM of data_present_flop : label is "FDR";
  attribute box_type of data_present_flop : label is "PRIMITIVE";
  attribute HBLKNM of data_present_lut : label is "uart_rx6_1";
  attribute box_type of data_present_lut : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[0].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[0].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_width_loop[0].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name : string;
  attribute srl_name of \data_width_loop[0].storage_srl\ : label is "\U0/rx/data_width_loop[0].storage_srl ";
  attribute HBLKNM of \data_width_loop[1].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[1].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[1].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[1].storage_srl\ : label is "\U0/rx/data_width_loop[1].storage_srl ";
  attribute HBLKNM of \data_width_loop[2].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[2].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[2].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[2].storage_srl\ : label is "\U0/rx/data_width_loop[2].storage_srl ";
  attribute HBLKNM of \data_width_loop[3].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[3].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[3].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[3].storage_srl\ : label is "\U0/rx/data_width_loop[3].storage_srl ";
  attribute HBLKNM of \data_width_loop[4].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[4].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[4].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[4].storage_srl\ : label is "\U0/rx/data_width_loop[4].storage_srl ";
  attribute HBLKNM of \data_width_loop[5].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[5].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[5].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[5].storage_srl\ : label is "\U0/rx/data_width_loop[5].storage_srl ";
  attribute HBLKNM of \data_width_loop[6].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[6].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[6].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[6].storage_srl\ : label is "\U0/rx/data_width_loop[6].storage_srl ";
  attribute HBLKNM of \data_width_loop[7].storage_srl\ : label is "uart_rx6_5";
  attribute box_type of \data_width_loop[7].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[7].storage_srl\ : label is "\U0/rx/data_width_loop ";
  attribute srl_name of \data_width_loop[7].storage_srl\ : label is "\U0/rx/data_width_loop[7].storage_srl ";
  attribute HBLKNM of div01_lut : label is "uart_rx6_3";
  attribute box_type of div01_lut : label is "PRIMITIVE";
  attribute HBLKNM of div0_flop : label is "uart_rx6_3";
  attribute XILINX_LEGACY_PRIM of div0_flop : label is "FD";
  attribute box_type of div0_flop : label is "PRIMITIVE";
  attribute HBLKNM of div1_flop : label is "uart_rx6_3";
  attribute XILINX_LEGACY_PRIM of div1_flop : label is "FD";
  attribute box_type of div1_flop : label is "PRIMITIVE";
  attribute HBLKNM of div23_lut : label is "uart_rx6_3";
  attribute box_type of div23_lut : label is "PRIMITIVE";
  attribute HBLKNM of div2_flop : label is "uart_rx6_3";
  attribute XILINX_LEGACY_PRIM of div2_flop : label is "FD";
  attribute box_type of div2_flop : label is "PRIMITIVE";
  attribute HBLKNM of div3_flop : label is "uart_rx6_3";
  attribute XILINX_LEGACY_PRIM of div3_flop : label is "FD";
  attribute box_type of div3_flop : label is "PRIMITIVE";
  attribute HBLKNM of full_lut : label is "uart_rx6_3";
  attribute box_type of full_lut : label is "PRIMITIVE";
  attribute HBLKNM of pointer01_lut : label is "uart_rx6_1";
  attribute box_type of pointer01_lut : label is "PRIMITIVE";
  attribute HBLKNM of pointer0_flop : label is "uart_rx6_1";
  attribute XILINX_LEGACY_PRIM of pointer0_flop : label is "FDR";
  attribute box_type of pointer0_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer1_flop : label is "uart_rx6_1";
  attribute XILINX_LEGACY_PRIM of pointer1_flop : label is "FDR";
  attribute box_type of pointer1_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer2_flop : label is "uart_rx6_1";
  attribute XILINX_LEGACY_PRIM of pointer2_flop : label is "FDR";
  attribute box_type of pointer2_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer2_lut : label is "uart_rx6_1";
  attribute box_type of pointer2_lut : label is "PRIMITIVE";
  attribute HBLKNM of pointer3_flop : label is "uart_rx6_1";
  attribute XILINX_LEGACY_PRIM of pointer3_flop : label is "FDR";
  attribute box_type of pointer3_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer3_lut : label is "uart_rx6_1";
  attribute box_type of pointer3_lut : label is "PRIMITIVE";
  attribute HBLKNM of run_flop : label is "uart_rx6_4";
  attribute XILINX_LEGACY_PRIM of run_flop : label is "FD";
  attribute box_type of run_flop : label is "PRIMITIVE";
  attribute HBLKNM of run_lut : label is "uart_rx6_4";
  attribute box_type of run_lut : label is "PRIMITIVE";
  attribute HBLKNM of sample_dly_flop : label is "uart_rx6_4";
  attribute XILINX_LEGACY_PRIM of sample_dly_flop : label is "FD";
  attribute box_type of sample_dly_flop : label is "PRIMITIVE";
  attribute HBLKNM of sample_flop : label is "uart_rx6_4";
  attribute XILINX_LEGACY_PRIM of sample_flop : label is "FD";
  attribute box_type of sample_flop : label is "PRIMITIVE";
  attribute HBLKNM of sample_input_flop : label is "uart_rx6_3";
  attribute XILINX_LEGACY_PRIM of sample_input_flop : label is "FD";
  attribute box_type of sample_input_flop : label is "PRIMITIVE";
  attribute HBLKNM of sample_input_lut : label is "uart_rx6_3";
  attribute box_type of sample_input_lut : label is "PRIMITIVE";
  attribute HBLKNM of sample_lut : label is "uart_rx6_4";
  attribute box_type of sample_lut : label is "PRIMITIVE";
  attribute HBLKNM of start_bit_flop : label is "uart_rx6_4";
  attribute XILINX_LEGACY_PRIM of start_bit_flop : label is "FD";
  attribute box_type of start_bit_flop : label is "PRIMITIVE";
  attribute HBLKNM of start_bit_lut : label is "uart_rx6_4";
  attribute box_type of start_bit_lut : label is "PRIMITIVE";
  attribute HBLKNM of stop_bit_flop : label is "uart_rx6_4";
  attribute XILINX_LEGACY_PRIM of stop_bit_flop : label is "FD";
  attribute box_type of stop_bit_flop : label is "PRIMITIVE";
  attribute HBLKNM of stop_bit_lut : label is "uart_rx6_4";
  attribute box_type of stop_bit_lut : label is "PRIMITIVE";
begin
buffer_write_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => buffer_write_value,
      Q => I4,
      R => '0'
    );
data01_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"F0CCFFFFCCAAFFFF"
    )
        port map (
      I0 => data_0,
      I1 => data_1,
      I2 => data_2,
      I3 => sample_input,
      I4 => I3,
      I5 => '1',
      O5 => data_value_0,
      O6 => data_value_1
    );
data0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_0,
      Q => data_0,
      R => '0'
    );
data1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_1,
      Q => data_1,
      R => '0'
    );
data23_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"F0CCFFFFCCAAFFFF"
    )
        port map (
      I0 => data_2,
      I1 => data_3,
      I2 => data_4,
      I3 => sample_input,
      I4 => I3,
      I5 => '1',
      O5 => data_value_2,
      O6 => data_value_3
    );
data2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_2,
      Q => data_2,
      R => '0'
    );
data3_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_3,
      Q => data_3,
      R => '0'
    );
data45_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"F0CCFFFFCCAAFFFF"
    )
        port map (
      I0 => data_4,
      I1 => data_5,
      I2 => data_6,
      I3 => sample_input,
      I4 => I3,
      I5 => '1',
      O5 => data_value_4,
      O6 => data_value_5
    );
data4_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_4,
      Q => data_4,
      R => '0'
    );
data5_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_5,
      Q => data_5,
      R => '0'
    );
data67_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"F0CCFFFFCCAAFFFF"
    )
        port map (
      I0 => data_6,
      I1 => data_7,
      I2 => stop_bit,
      I3 => sample_input,
      I4 => I3,
      I5 => '1',
      O5 => data_value_6,
      O6 => data_value_7
    );
data6_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_6,
      Q => data_6,
      R => '0'
    );
data7_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_value_7,
      Q => data_7,
      R => '0'
    );
data_present_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_present_value,
      Q => buffer_data_present_rx,
      R => buffer_reset
    );
data_present_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"F4FCF4FC040004C0"
    )
        port map (
      I0 => zero,
      I1 => buffer_data_present_rx,
      I2 => I4,
      I3 => buffer_read,
      I4 => buffer_full_rx,
      I5 => '1',
      O5 => en_pointer,
      O6 => data_present_value
    );
\data_width_loop[0].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_0,
      Q => buffer_write_flop_0(0)
    );
\data_width_loop[1].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_1,
      Q => buffer_write_flop_0(1)
    );
\data_width_loop[2].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_2,
      Q => buffer_write_flop_0(2)
    );
\data_width_loop[3].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_3,
      Q => data_out(3)
    );
\data_width_loop[4].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_4,
      Q => data_out(4)
    );
\data_width_loop[5].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_5,
      Q => data_out(5)
    );
\data_width_loop[6].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_6,
      Q => buffer_write_flop_0(3)
    );
\data_width_loop[7].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => buffer_half_full_rx,
      CE => I4,
      CLK => clk,
      D => data_7,
      Q => buffer_write_flop_0(4)
    );
div01_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"6C0000005A000000"
    )
        port map (
      I0 => div_0,
      I1 => div_1,
      I2 => en_16_x_baud,
      I3 => I3,
      I4 => '1',
      I5 => '1',
      O5 => div_value_0,
      O6 => div_value_1
    );
div0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_0,
      Q => div_0,
      R => '0'
    );
div1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_1,
      Q => div_1,
      R => '0'
    );
div23_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"6CCC00005AAA0000"
    )
        port map (
      I0 => div_2,
      I1 => div_3,
      I2 => div_carry,
      I3 => en_16_x_baud,
      I4 => I3,
      I5 => '1',
      O5 => div_value_2,
      O6 => div_value_3
    );
div2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_2,
      Q => div_2,
      R => '0'
    );
div3_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_3,
      Q => div_3,
      R => '0'
    );
full_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0001000080000000"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => buffer_half_full_rx,
      I4 => '1',
      I5 => '1',
      O5 => buffer_full_rx,
      O6 => zero
    );
\in_port[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => external_mem_douta(0),
      I1 => data_out(3),
      I2 => port_id(0),
      I3 => buffer_data_present_rx,
      I4 => port_id(1),
      O => D(0)
    );
\in_port[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => external_mem_douta(1),
      I1 => data_out(4),
      I2 => port_id(0),
      I3 => buffer_half_full_rx,
      I4 => port_id(1),
      O => D(1)
    );
\in_port[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => external_mem_douta(2),
      I1 => data_out(5),
      I2 => port_id(0),
      I3 => buffer_full_rx,
      I4 => port_id(1),
      O => D(2)
    );
pointer01_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CC9060CCAA5050AA"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => en_pointer,
      I3 => I4,
      I4 => buffer_read,
      I5 => '1',
      O5 => pointer_value_0,
      O6 => pointer_value_1
    );
pointer0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_0,
      Q => I0,
      R => buffer_reset
    );
pointer1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_1,
      Q => I1,
      R => buffer_reset
    );
pointer2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_2,
      Q => I2,
      R => buffer_reset
    );
pointer2_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E1E0F878F0F0"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => buffer_half_full_rx,
      I4 => I4,
      I5 => buffer_read,
      O => pointer_value_2
    );
pointer3_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_3,
      Q => buffer_half_full_rx,
      R => buffer_reset
    );
pointer3_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF80FF00"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => buffer_half_full_rx,
      I4 => I4,
      I5 => buffer_read,
      O => pointer_value_3
    );
run_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => run_value,
      Q => I3,
      R => '0'
    );
run_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2FAFAF0000FF00"
    )
        port map (
      I0 => data_0,
      I1 => start_bit,
      I2 => sample_input,
      I3 => sample_dly,
      I4 => sample,
      I5 => I3,
      O => run_value
    );
sample_dly_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sample_dly_value,
      Q => sample_dly,
      R => '0'
    );
sample_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sample_value,
      Q => sample,
      R => '0'
    );
sample_input_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sample_input_value,
      Q => sample_input,
      R => '0'
    );
sample_input_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0080000088888888"
    )
        port map (
      I0 => div_0,
      I1 => div_1,
      I2 => div_2,
      I3 => div_3,
      I4 => en_16_x_baud,
      I5 => '1',
      O5 => div_carry,
      O6 => sample_input_value
    );
sample_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CCF00000AACC0000"
    )
        port map (
      I0 => uart_top_rx,
      I1 => sample,
      I2 => sample_dly,
      I3 => en_16_x_baud,
      I4 => '1',
      I5 => '1',
      O5 => sample_value,
      O6 => sample_dly_value
    );
start_bit_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_bit_value,
      Q => start_bit,
      R => '0'
    );
start_bit_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222200F000000000"
    )
        port map (
      I0 => start_bit,
      I1 => sample_input,
      I2 => sample_dly,
      I3 => sample,
      I4 => I3,
      I5 => '1',
      O => start_bit_value
    );
stop_bit_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stop_bit_value,
      Q => stop_bit,
      R => '0'
    );
stop_bit_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CAFFCAFF0000C0C0"
    )
        port map (
      I0 => stop_bit,
      I1 => sample,
      I2 => sample_input,
      I3 => I3,
      I4 => data_0,
      I5 => '1',
      O5 => buffer_write_value,
      O6 => stop_bit_value
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pBlaze_0_0_uart_tx6 is
  port (
    buffer_half_full : out STD_LOGIC;
    buffer_data_present : out STD_LOGIC;
    buffer_full : out STD_LOGIC;
    uart_top_tx : out STD_LOGIC;
    tx_buffer_write : in STD_LOGIC;
    buffer_reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    en_16_x_baud : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_pBlaze_0_0_uart_tx6 : entity is "uart_tx6";
end system_pBlaze_0_0_uart_tx6;

architecture STRUCTURE of system_pBlaze_0_0_uart_tx6 is
  signal I0 : STD_LOGIC;
  signal I1 : STD_LOGIC;
  signal I2 : STD_LOGIC;
  signal I3 : STD_LOGIC;
  signal I4 : STD_LOGIC;
  signal I5 : STD_LOGIC;
  signal \^buffer_data_present\ : STD_LOGIC;
  signal \^buffer_full\ : STD_LOGIC;
  signal \^buffer_half_full\ : STD_LOGIC;
  signal buffer_read_value : STD_LOGIC;
  signal data_0 : STD_LOGIC;
  signal data_1 : STD_LOGIC;
  signal data_2 : STD_LOGIC;
  signal data_4 : STD_LOGIC;
  signal data_5 : STD_LOGIC;
  signal data_6 : STD_LOGIC;
  signal data_7 : STD_LOGIC;
  signal data_present_value : STD_LOGIC;
  signal div_0 : STD_LOGIC;
  signal div_1 : STD_LOGIC;
  signal div_2 : STD_LOGIC;
  signal div_3 : STD_LOGIC;
  signal div_value_0 : STD_LOGIC;
  signal div_value_1 : STD_LOGIC;
  signal div_value_2 : STD_LOGIC;
  signal div_value_3 : STD_LOGIC;
  signal en_pointer : STD_LOGIC;
  signal last_bit : STD_LOGIC;
  signal lsb_data : STD_LOGIC;
  signal msb_data : STD_LOGIC;
  signal next_bit : STD_LOGIC;
  signal next_value : STD_LOGIC;
  signal pointer_value_0 : STD_LOGIC;
  signal pointer_value_1 : STD_LOGIC;
  signal pointer_value_2 : STD_LOGIC;
  signal pointer_value_3 : STD_LOGIC;
  signal serial_data : STD_LOGIC;
  signal sm_1 : STD_LOGIC;
  signal sm_2 : STD_LOGIC;
  signal sm_3 : STD_LOGIC;
  signal sm_value_0 : STD_LOGIC;
  signal sm_value_1 : STD_LOGIC;
  signal sm_value_2 : STD_LOGIC;
  signal sm_value_3 : STD_LOGIC;
  signal store_data_0 : STD_LOGIC;
  signal store_data_1 : STD_LOGIC;
  signal store_data_2 : STD_LOGIC;
  signal store_data_3 : STD_LOGIC;
  signal store_data_4 : STD_LOGIC;
  signal store_data_5 : STD_LOGIC;
  signal store_data_6 : STD_LOGIC;
  signal store_data_7 : STD_LOGIC;
  signal zero : STD_LOGIC;
  attribute HBLKNM : string;
  attribute HBLKNM of data_present_flop : label is "uart_tx6_1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_present_flop : label is "FDR";
  attribute box_type : string;
  attribute box_type of data_present_flop : label is "PRIMITIVE";
  attribute HBLKNM of data_present_lut : label is "uart_tx6_1";
  attribute box_type of data_present_lut : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[0].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[0].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[0].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[0].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[0].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_width_loop[0].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name : string;
  attribute srl_name of \data_width_loop[0].storage_srl\ : label is "\U0/tx/data_width_loop[0].storage_srl ";
  attribute HBLKNM of \data_width_loop[1].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[1].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[1].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[1].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[1].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[1].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[1].storage_srl\ : label is "\U0/tx/data_width_loop[1].storage_srl ";
  attribute HBLKNM of \data_width_loop[2].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[2].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[2].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[2].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[2].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[2].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[2].storage_srl\ : label is "\U0/tx/data_width_loop[2].storage_srl ";
  attribute HBLKNM of \data_width_loop[3].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[3].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[3].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[3].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[3].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[3].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[3].storage_srl\ : label is "\U0/tx/data_width_loop[3].storage_srl ";
  attribute HBLKNM of \data_width_loop[4].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[4].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[4].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[4].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[4].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[4].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[4].storage_srl\ : label is "\U0/tx/data_width_loop[4].storage_srl ";
  attribute HBLKNM of \data_width_loop[5].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[5].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[5].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[5].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[5].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[5].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[5].storage_srl\ : label is "\U0/tx/data_width_loop[5].storage_srl ";
  attribute HBLKNM of \data_width_loop[6].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[6].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[6].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[6].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[6].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[6].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[6].storage_srl\ : label is "\U0/tx/data_width_loop[6].storage_srl ";
  attribute HBLKNM of \data_width_loop[7].storage_flop\ : label is "uart_tx6_5";
  attribute XILINX_LEGACY_PRIM of \data_width_loop[7].storage_flop\ : label is "FD";
  attribute box_type of \data_width_loop[7].storage_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_width_loop[7].storage_srl\ : label is "uart_tx6_5";
  attribute box_type of \data_width_loop[7].storage_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[7].storage_srl\ : label is "\U0/tx/data_width_loop ";
  attribute srl_name of \data_width_loop[7].storage_srl\ : label is "\U0/tx/data_width_loop[7].storage_srl ";
  attribute HBLKNM of div01_lut : label is "uart_tx6_3";
  attribute box_type of div01_lut : label is "PRIMITIVE";
  attribute HBLKNM of div0_flop : label is "uart_tx6_3";
  attribute XILINX_LEGACY_PRIM of div0_flop : label is "FD";
  attribute box_type of div0_flop : label is "PRIMITIVE";
  attribute HBLKNM of div1_flop : label is "uart_tx6_3";
  attribute XILINX_LEGACY_PRIM of div1_flop : label is "FD";
  attribute box_type of div1_flop : label is "PRIMITIVE";
  attribute HBLKNM of div23_lut : label is "uart_tx6_3";
  attribute box_type of div23_lut : label is "PRIMITIVE";
  attribute HBLKNM of div2_flop : label is "uart_tx6_3";
  attribute XILINX_LEGACY_PRIM of div2_flop : label is "FD";
  attribute box_type of div2_flop : label is "PRIMITIVE";
  attribute HBLKNM of div3_flop : label is "uart_tx6_3";
  attribute XILINX_LEGACY_PRIM of div3_flop : label is "FD";
  attribute box_type of div3_flop : label is "PRIMITIVE";
  attribute HBLKNM of full_lut : label is "uart_tx6_4";
  attribute box_type of full_lut : label is "PRIMITIVE";
  attribute HBLKNM of lsb_data_lut : label is "uart_tx6_4";
  attribute box_type of lsb_data_lut : label is "PRIMITIVE";
  attribute HBLKNM of msb_data_lut : label is "uart_tx6_4";
  attribute box_type of msb_data_lut : label is "PRIMITIVE";
  attribute HBLKNM of next_flop : label is "uart_tx6_3";
  attribute XILINX_LEGACY_PRIM of next_flop : label is "FD";
  attribute box_type of next_flop : label is "PRIMITIVE";
  attribute HBLKNM of next_lut : label is "uart_tx6_3";
  attribute box_type of next_lut : label is "PRIMITIVE";
  attribute HBLKNM of pointer01_lut : label is "uart_tx6_1";
  attribute box_type of pointer01_lut : label is "PRIMITIVE";
  attribute HBLKNM of pointer0_flop : label is "uart_tx6_1";
  attribute XILINX_LEGACY_PRIM of pointer0_flop : label is "FDR";
  attribute box_type of pointer0_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer1_flop : label is "uart_tx6_1";
  attribute XILINX_LEGACY_PRIM of pointer1_flop : label is "FDR";
  attribute box_type of pointer1_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer2_flop : label is "uart_tx6_1";
  attribute XILINX_LEGACY_PRIM of pointer2_flop : label is "FDR";
  attribute box_type of pointer2_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer2_lut : label is "uart_tx6_1";
  attribute box_type of pointer2_lut : label is "PRIMITIVE";
  attribute HBLKNM of pointer3_flop : label is "uart_tx6_1";
  attribute XILINX_LEGACY_PRIM of pointer3_flop : label is "FDR";
  attribute box_type of pointer3_flop : label is "PRIMITIVE";
  attribute HBLKNM of pointer3_lut : label is "uart_tx6_1";
  attribute box_type of pointer3_lut : label is "PRIMITIVE";
  attribute HBLKNM of read_flop : label is "uart_tx6_3";
  attribute XILINX_LEGACY_PRIM of read_flop : label is "FD";
  attribute box_type of read_flop : label is "PRIMITIVE";
  attribute HBLKNM of serial_flop : label is "uart_tx6_4";
  attribute XILINX_LEGACY_PRIM of serial_flop : label is "FD";
  attribute box_type of serial_flop : label is "PRIMITIVE";
  attribute HBLKNM of serial_lut : label is "uart_tx6_4";
  attribute box_type of serial_lut : label is "PRIMITIVE";
  attribute HBLKNM of sm0_flop : label is "uart_tx6_2";
  attribute XILINX_LEGACY_PRIM of sm0_flop : label is "FD";
  attribute box_type of sm0_flop : label is "PRIMITIVE";
  attribute HBLKNM of sm0_lut : label is "uart_tx6_2";
  attribute box_type of sm0_lut : label is "PRIMITIVE";
  attribute HBLKNM of sm1_flop : label is "uart_tx6_2";
  attribute XILINX_LEGACY_PRIM of sm1_flop : label is "FD";
  attribute box_type of sm1_flop : label is "PRIMITIVE";
  attribute HBLKNM of sm1_lut : label is "uart_tx6_2";
  attribute box_type of sm1_lut : label is "PRIMITIVE";
  attribute HBLKNM of sm2_flop : label is "uart_tx6_2";
  attribute XILINX_LEGACY_PRIM of sm2_flop : label is "FD";
  attribute box_type of sm2_flop : label is "PRIMITIVE";
  attribute HBLKNM of sm2_lut : label is "uart_tx6_2";
  attribute box_type of sm2_lut : label is "PRIMITIVE";
  attribute HBLKNM of sm3_flop : label is "uart_tx6_2";
  attribute XILINX_LEGACY_PRIM of sm3_flop : label is "FD";
  attribute box_type of sm3_flop : label is "PRIMITIVE";
  attribute HBLKNM of sm3_lut : label is "uart_tx6_2";
  attribute box_type of sm3_lut : label is "PRIMITIVE";
begin
  buffer_data_present <= \^buffer_data_present\;
  buffer_full <= \^buffer_full\;
  buffer_half_full <= \^buffer_half_full\;
data_present_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_present_value,
      Q => \^buffer_data_present\,
      R => buffer_reset
    );
data_present_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"F4FCF4FC040004C0"
    )
        port map (
      I0 => zero,
      I1 => \^buffer_data_present\,
      I2 => tx_buffer_write,
      I3 => I5,
      I4 => \^buffer_full\,
      I5 => '1',
      O5 => en_pointer,
      O6 => data_present_value
    );
\data_width_loop[0].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_0,
      Q => data_0,
      R => '0'
    );
\data_width_loop[0].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(0),
      Q => store_data_0
    );
\data_width_loop[1].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_1,
      Q => data_1,
      R => '0'
    );
\data_width_loop[1].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(1),
      Q => store_data_1
    );
\data_width_loop[2].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_2,
      Q => data_2,
      R => '0'
    );
\data_width_loop[2].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(2),
      Q => store_data_2
    );
\data_width_loop[3].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_3,
      Q => I3,
      R => '0'
    );
\data_width_loop[3].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(3),
      Q => store_data_3
    );
\data_width_loop[4].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_4,
      Q => data_4,
      R => '0'
    );
\data_width_loop[4].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(4),
      Q => store_data_4
    );
\data_width_loop[5].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_5,
      Q => data_5,
      R => '0'
    );
\data_width_loop[5].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(5),
      Q => store_data_5
    );
\data_width_loop[6].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_6,
      Q => data_6,
      R => '0'
    );
\data_width_loop[6].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(6),
      Q => store_data_6
    );
\data_width_loop[7].storage_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => store_data_7,
      Q => data_7,
      R => '0'
    );
\data_width_loop[7].storage_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => I0,
      A1 => I1,
      A2 => I2,
      A3 => \^buffer_half_full\,
      CE => tx_buffer_write,
      CLK => clk,
      D => Q(7),
      Q => store_data_7
    );
div01_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"6C0000005A000000"
    )
        port map (
      I0 => div_0,
      I1 => div_1,
      I2 => en_16_x_baud,
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O5 => div_value_0,
      O6 => div_value_1
    );
div0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_0,
      Q => div_0,
      R => '0'
    );
div1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_1,
      Q => div_1,
      R => '0'
    );
div23_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7F80FF007878F0F0"
    )
        port map (
      I0 => div_0,
      I1 => div_1,
      I2 => div_2,
      I3 => div_3,
      I4 => en_16_x_baud,
      I5 => '1',
      O5 => div_value_2,
      O6 => div_value_3
    );
div2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_2,
      Q => div_2,
      R => '0'
    );
div3_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => div_value_3,
      Q => div_3,
      R => '0'
    );
full_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0001000080000000"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => \^buffer_half_full\,
      I4 => '1',
      I5 => '1',
      O5 => \^buffer_full\,
      O6 => zero
    );
lsb_data_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => data_0,
      I1 => data_1,
      I2 => data_2,
      I3 => I3,
      I4 => I4,
      I5 => sm_1,
      O => lsb_data
    );
msb_data_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => data_4,
      I1 => data_5,
      I2 => data_6,
      I3 => data_7,
      I4 => I4,
      I5 => sm_1,
      O => msb_data
    );
next_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_value,
      Q => next_bit,
      R => '0'
    );
next_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => div_0,
      I1 => div_1,
      I2 => div_2,
      I3 => div_3,
      I4 => en_16_x_baud,
      I5 => last_bit,
      O5 => next_value,
      O6 => buffer_read_value
    );
pointer01_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CC9060CCAA5050AA"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => en_pointer,
      I3 => tx_buffer_write,
      I4 => I5,
      I5 => '1',
      O5 => pointer_value_0,
      O6 => pointer_value_1
    );
pointer0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_0,
      Q => I0,
      R => buffer_reset
    );
pointer1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_1,
      Q => I1,
      R => buffer_reset
    );
pointer2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_2,
      Q => I2,
      R => buffer_reset
    );
pointer2_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E1E0F878F0F0"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => \^buffer_half_full\,
      I4 => tx_buffer_write,
      I5 => I5,
      O => pointer_value_2
    );
pointer3_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pointer_value_3,
      Q => \^buffer_half_full\,
      R => buffer_reset
    );
pointer3_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF80FF00"
    )
        port map (
      I0 => I0,
      I1 => I1,
      I2 => I2,
      I3 => \^buffer_half_full\,
      I4 => tx_buffer_write,
      I5 => I5,
      O => pointer_value_3
    );
read_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => buffer_read_value,
      Q => I5,
      R => '0'
    );
serial_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => serial_data,
      Q => uart_top_tx,
      R => '0'
    );
serial_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CFAACC0F0FFFFFFF"
    )
        port map (
      I0 => lsb_data,
      I1 => msb_data,
      I2 => sm_1,
      I3 => sm_2,
      I4 => sm_3,
      I5 => '1',
      O5 => last_bit,
      O6 => serial_data
    );
sm0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sm_value_0,
      Q => I4,
      R => '0'
    );
sm0_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"85500000AAAAAAAA"
    )
        port map (
      I0 => I4,
      I1 => sm_1,
      I2 => sm_2,
      I3 => sm_3,
      I4 => \^buffer_data_present\,
      I5 => next_bit,
      O => sm_value_0
    );
sm1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sm_value_1,
      Q => sm_1,
      R => '0'
    );
sm1_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26610000CCCCCCCC"
    )
        port map (
      I0 => I4,
      I1 => sm_1,
      I2 => sm_2,
      I3 => sm_3,
      I4 => \^buffer_data_present\,
      I5 => next_bit,
      O => sm_value_1
    );
sm2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sm_value_2,
      Q => sm_2,
      R => '0'
    );
sm2_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88700000F0F0F0F0"
    )
        port map (
      I0 => I4,
      I1 => sm_1,
      I2 => sm_2,
      I3 => sm_3,
      I4 => \^buffer_data_present\,
      I5 => next_bit,
      O => sm_value_2
    );
sm3_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sm_value_3,
      Q => sm_3,
      R => '0'
    );
sm3_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87440000FF00FF00"
    )
        port map (
      I0 => I4,
      I1 => sm_1,
      I2 => sm_2,
      I3 => sm_3,
      I4 => \^buffer_data_present\,
      I5 => next_bit,
      O => sm_value_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pBlaze_0_0_pBlaze is
  port (
    bram_enable : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    uart_top_tx : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    external_mem_addra : out STD_LOGIC_VECTOR ( 7 downto 0 );
    external_mem_dina : out STD_LOGIC_VECTOR ( 7 downto 0 );
    irqs : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    uart_top_rx : in STD_LOGIC;
    external_mem_douta : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_pBlaze_0_0_pBlaze : entity is "pBlaze";
end system_pBlaze_0_0_pBlaze;

architecture STRUCTURE of system_pBlaze_0_0_pBlaze is
  signal baud_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \baud_count[5]_i_1_n_0\ : STD_LOGIC;
  signal buffer_data_present : STD_LOGIC;
  signal buffer_full : STD_LOGIC;
  signal buffer_half_full : STD_LOGIC;
  signal buffer_read : STD_LOGIC;
  signal buffer_read0 : STD_LOGIC;
  signal buffer_reset : STD_LOGIC;
  signal buffer_reset_rx_reg_n_0 : STD_LOGIC;
  signal buffer_reset_tx : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \en_16_x_baud__0\ : STD_LOGIC;
  signal en_16_x_baud_n_0 : STD_LOGIC;
  signal extra_mem_hi : STD_LOGIC;
  signal extra_mem_lo : STD_LOGIC;
  signal in_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^irqs\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal processor_n_1 : STD_LOGIC;
  signal processor_n_10 : STD_LOGIC;
  signal processor_n_11 : STD_LOGIC;
  signal processor_n_12 : STD_LOGIC;
  signal processor_n_13 : STD_LOGIC;
  signal processor_n_14 : STD_LOGIC;
  signal processor_n_4 : STD_LOGIC;
  signal processor_n_9 : STD_LOGIC;
  signal rx_n_0 : STD_LOGIC;
  signal rx_n_1 : STD_LOGIC;
  signal rx_n_2 : STD_LOGIC;
  signal tx_buffer_write : STD_LOGIC;
  signal tx_data_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \baud_count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \baud_count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \baud_count[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \baud_count[4]_i_1\ : label is "soft_lutpair5";
  attribute x_interface_info : string;
  attribute x_interface_info of \irqs_reg_reg[0]\ : label is "xilinx.com:signal:interrupt:1.0 irqs INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of \irqs_reg_reg[0]\ : label is "SENSITIVITY EDGE_RISING";
begin
  irqs(0) <= \^irqs\(0);
\baud_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => baud_count(0),
      O => data0(0)
    );
\baud_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => baud_count(0),
      I1 => baud_count(1),
      O => data0(1)
    );
\baud_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => baud_count(0),
      I1 => baud_count(1),
      I2 => baud_count(2),
      O => data0(2)
    );
\baud_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => baud_count(1),
      I1 => baud_count(0),
      I2 => baud_count(2),
      I3 => baud_count(3),
      O => data0(3)
    );
\baud_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => baud_count(2),
      I1 => baud_count(0),
      I2 => baud_count(1),
      I3 => baud_count(3),
      I4 => baud_count(4),
      O => data0(4)
    );
\baud_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => baud_count(5),
      I1 => baud_count(4),
      I2 => baud_count(3),
      I3 => baud_count(1),
      I4 => baud_count(0),
      I5 => baud_count(2),
      O => \baud_count[5]_i_1_n_0\
    );
\baud_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => baud_count(3),
      I1 => baud_count(1),
      I2 => baud_count(0),
      I3 => baud_count(2),
      I4 => baud_count(4),
      I5 => baud_count(5),
      O => data0(5)
    );
\baud_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(0),
      Q => baud_count(0),
      R => \baud_count[5]_i_1_n_0\
    );
\baud_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => baud_count(1),
      R => \baud_count[5]_i_1_n_0\
    );
\baud_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => baud_count(2),
      R => \baud_count[5]_i_1_n_0\
    );
\baud_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => baud_count(3),
      R => \baud_count[5]_i_1_n_0\
    );
\baud_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => baud_count(4),
      R => \baud_count[5]_i_1_n_0\
    );
\baud_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => baud_count(5),
      R => \baud_count[5]_i_1_n_0\
    );
buffer_read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => buffer_read0,
      Q => buffer_read,
      R => '0'
    );
buffer_reset_rx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => buffer_reset_tx,
      D => out_port(1),
      Q => buffer_reset_rx_reg_n_0,
      R => '0'
    );
buffer_reset_tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => buffer_reset_tx,
      D => out_port(0),
      Q => buffer_reset,
      R => '0'
    );
en_16_x_baud: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => baud_count(3),
      I1 => baud_count(4),
      I2 => baud_count(1),
      I3 => baud_count(5),
      I4 => baud_count(0),
      I5 => baud_count(2),
      O => en_16_x_baud_n_0
    );
en_16_x_baud_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => en_16_x_baud_n_0,
      Q => \en_16_x_baud__0\,
      R => '0'
    );
\external_mem_dina_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(0),
      Q => external_mem_dina(0),
      R => '0'
    );
\external_mem_dina_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(1),
      Q => external_mem_dina(1),
      R => '0'
    );
\external_mem_dina_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(2),
      Q => external_mem_dina(2),
      R => '0'
    );
\external_mem_dina_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(3),
      Q => external_mem_dina(3),
      R => '0'
    );
\external_mem_dina_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(4),
      Q => external_mem_dina(4),
      R => '0'
    );
\external_mem_dina_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(5),
      Q => external_mem_dina(5),
      R => '0'
    );
\external_mem_dina_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(6),
      Q => external_mem_dina(6),
      R => '0'
    );
\external_mem_dina_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => processor_n_4,
      D => out_port(7),
      Q => external_mem_dina(7),
      R => '0'
    );
\extra_mem_hi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_hi,
      D => out_port(0),
      Q => Q(0),
      R => '0'
    );
\extra_mem_hi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_hi,
      D => out_port(1),
      Q => Q(1),
      R => '0'
    );
\extra_mem_hi_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_hi,
      D => out_port(2),
      Q => Q(2),
      R => '0'
    );
\extra_mem_hi_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_hi,
      D => out_port(3),
      Q => Q(3),
      R => '0'
    );
\extra_mem_hi_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_hi,
      D => out_port(6),
      Q => Q(4),
      R => '0'
    );
\extra_mem_hi_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_hi,
      D => out_port(7),
      Q => Q(5),
      R => '0'
    );
\extra_mem_lo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(0),
      Q => external_mem_addra(0),
      R => '0'
    );
\extra_mem_lo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(1),
      Q => external_mem_addra(1),
      R => '0'
    );
\extra_mem_lo_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(2),
      Q => external_mem_addra(2),
      R => '0'
    );
\extra_mem_lo_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(3),
      Q => external_mem_addra(3),
      R => '0'
    );
\extra_mem_lo_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(4),
      Q => external_mem_addra(4),
      R => '0'
    );
\extra_mem_lo_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(5),
      Q => external_mem_addra(5),
      R => '0'
    );
\extra_mem_lo_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(6),
      Q => external_mem_addra(6),
      R => '0'
    );
\extra_mem_lo_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => extra_mem_lo,
      D => out_port(7),
      Q => external_mem_addra(7),
      R => '0'
    );
\in_port_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => processor_n_13,
      Q => in_port(0),
      R => '0'
    );
\in_port_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => processor_n_12,
      Q => in_port(1),
      R => '0'
    );
\in_port_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => processor_n_11,
      Q => in_port(2),
      R => '0'
    );
\in_port_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_n_2,
      Q => in_port(3),
      R => '0'
    );
\in_port_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_n_1,
      Q => in_port(4),
      R => '0'
    );
\in_port_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_n_0,
      Q => in_port(5),
      R => '0'
    );
\in_port_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => processor_n_10,
      Q => in_port(6),
      R => '0'
    );
\in_port_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => processor_n_9,
      Q => in_port(7),
      R => '0'
    );
\irqs_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => processor_n_14,
      Q => \^irqs\(0),
      R => '0'
    );
processor: entity work.system_pBlaze_0_0_kcpsm6
     port map (
      D(4) => processor_n_9,
      D(3) => processor_n_10,
      D(2) => processor_n_11,
      D(1) => processor_n_12,
      D(0) => processor_n_13,
      E(0) => extra_mem_hi,
      Q(7 downto 0) => in_port(7 downto 0),
      address(11 downto 0) => address(11 downto 0),
      bram_enable => bram_enable,
      buffer_data_present => buffer_data_present,
      buffer_full => buffer_full,
      buffer_half_full => buffer_half_full,
      buffer_read0 => buffer_read0,
      buffer_reset_tx => buffer_reset_tx,
      clk => clk,
      data_out(4 downto 3) => data_out(7 downto 6),
      data_out(2 downto 0) => data_out(2 downto 0),
      external_mem_douta(4 downto 3) => external_mem_douta(7 downto 6),
      external_mem_douta(2 downto 0) => external_mem_douta(2 downto 0),
      instruction(17 downto 0) => instruction(17 downto 0),
      irqs(0) => \^irqs\(0),
      out_port(7 downto 0) => out_port(7 downto 0),
      port_id(1) => processor_n_1,
      port_id(0) => p_0_in,
      reset_in => reset_in,
      tx_buffer_write => tx_buffer_write,
      write_strobe_flop_0(0) => extra_mem_lo,
      write_strobe_flop_1(0) => processor_n_4,
      write_strobe_flop_2(0) => tx_data_in,
      write_strobe_flop_3 => processor_n_14
    );
rx: entity work.system_pBlaze_0_0_uart_rx6
     port map (
      D(2) => rx_n_0,
      D(1) => rx_n_1,
      D(0) => rx_n_2,
      buffer_read => buffer_read,
      buffer_reset => buffer_reset_rx_reg_n_0,
      buffer_write_flop_0(4 downto 3) => data_out(7 downto 6),
      buffer_write_flop_0(2 downto 0) => data_out(2 downto 0),
      clk => clk,
      en_16_x_baud => \en_16_x_baud__0\,
      external_mem_douta(2 downto 0) => external_mem_douta(5 downto 3),
      port_id(1) => processor_n_1,
      port_id(0) => p_0_in,
      uart_top_rx => uart_top_rx
    );
tx: entity work.system_pBlaze_0_0_uart_tx6
     port map (
      Q(7 downto 0) => data_in(7 downto 0),
      buffer_data_present => buffer_data_present,
      buffer_full => buffer_full,
      buffer_half_full => buffer_half_full,
      buffer_reset => buffer_reset,
      clk => clk,
      en_16_x_baud => \en_16_x_baud__0\,
      tx_buffer_write => tx_buffer_write,
      uart_top_tx => uart_top_tx
    );
\tx_data_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(0),
      Q => data_in(0),
      R => '0'
    );
\tx_data_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(1),
      Q => data_in(1),
      R => '0'
    );
\tx_data_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(2),
      Q => data_in(2),
      R => '0'
    );
\tx_data_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(3),
      Q => data_in(3),
      R => '0'
    );
\tx_data_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(4),
      Q => data_in(4),
      R => '0'
    );
\tx_data_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(5),
      Q => data_in(5),
      R => '0'
    );
\tx_data_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(6),
      Q => data_in(6),
      R => '0'
    );
\tx_data_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data_in,
      D => out_port(7),
      Q => data_in(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pBlaze_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    uart_top_tx : out STD_LOGIC;
    uart_top_rx : in STD_LOGIC;
    external_mem_ena : out STD_LOGIC;
    external_mem_wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    external_mem_addra : out STD_LOGIC_VECTOR ( 11 downto 0 );
    external_mem_dina : out STD_LOGIC_VECTOR ( 7 downto 0 );
    external_mem_douta : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_enable : out STD_LOGIC;
    irqs : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_pBlaze_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_pBlaze_0_0 : entity is "system_pBlaze_0_0,pBlaze,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_pBlaze_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_pBlaze_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_pBlaze_0_0 : entity is "pBlaze,Vivado 2018.3";
end system_pBlaze_0_0;

architecture STRUCTURE of system_pBlaze_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_zynq_ultra_ps_e_0_0_pl_clk0";
  attribute x_interface_info of reset_in : signal is "xilinx.com:signal:reset:1.0 reset_in RST";
  attribute x_interface_parameter of reset_in : signal is "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW";
  attribute x_interface_info of irqs : signal is "xilinx.com:signal:interrupt:1.0 irqs INTERRUPT";
  attribute x_interface_parameter of irqs : signal is "XIL_INTERFACENAME irqs, SENSITIVITY EDGE_RISING, PortWidth 1";
begin
U0: entity work.system_pBlaze_0_0_pBlaze
     port map (
      Q(5) => external_mem_ena,
      Q(4) => external_mem_wea(0),
      Q(3 downto 0) => external_mem_addra(11 downto 8),
      address(11 downto 0) => address(11 downto 0),
      bram_enable => bram_enable,
      clk => clk,
      external_mem_addra(7 downto 0) => external_mem_addra(7 downto 0),
      external_mem_dina(7 downto 0) => external_mem_dina(7 downto 0),
      external_mem_douta(7 downto 0) => external_mem_douta(7 downto 0),
      instruction(17 downto 0) => instruction(17 downto 0),
      irqs(0) => irqs(0),
      reset_in => reset_in,
      uart_top_rx => uart_top_rx,
      uart_top_tx => uart_top_tx
    );
end STRUCTURE;
