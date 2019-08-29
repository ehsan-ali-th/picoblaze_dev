// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Feb 11 02:14:02 2019
// Host        : LAPTOP-N4P8E4G3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/workspace/Vivado_2018.3/zcu104/fft2/fft2.srcs/sources_1/bd/system/ip/system_pBlaze_0_0/system_pBlaze_0_0_sim_netlist.v
// Design      : system_pBlaze_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_pBlaze_0_0,pBlaze,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pBlaze,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_pBlaze_0_0
   (clk,
    reset_in,
    uart_top_tx,
    uart_top_rx,
    external_mem_ena,
    external_mem_wea,
    external_mem_addra,
    external_mem_dina,
    external_mem_douta,
    address,
    instruction,
    bram_enable,
    irqs);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_zynq_ultra_ps_e_0_0_pl_clk0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_in RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW" *) input reset_in;
  output uart_top_tx;
  input uart_top_rx;
  output external_mem_ena;
  output [0:0]external_mem_wea;
  output [11:0]external_mem_addra;
  output [7:0]external_mem_dina;
  input [7:0]external_mem_douta;
  output [11:0]address;
  input [17:0]instruction;
  output bram_enable;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 irqs INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME irqs, SENSITIVITY EDGE_RISING, PortWidth 1" *) output [0:0]irqs;

  wire [11:0]address;
  wire bram_enable;
  wire clk;
  wire [11:0]external_mem_addra;
  wire [7:0]external_mem_dina;
  wire [7:0]external_mem_douta;
  wire external_mem_ena;
  wire [0:0]external_mem_wea;
  wire [17:0]instruction;
  wire [0:0]irqs;
  wire reset_in;
  wire uart_top_rx;
  wire uart_top_tx;

  system_pBlaze_0_0_pBlaze U0
       (.Q({external_mem_ena,external_mem_wea,external_mem_addra[11:8]}),
        .address(address),
        .bram_enable(bram_enable),
        .clk(clk),
        .external_mem_addra(external_mem_addra[7:0]),
        .external_mem_dina(external_mem_dina),
        .external_mem_douta(external_mem_douta),
        .instruction(instruction),
        .irqs(irqs),
        .reset_in(reset_in),
        .uart_top_rx(uart_top_rx),
        .uart_top_tx(uart_top_tx));
endmodule

(* ORIG_REF_NAME = "kcpsm6" *) 
module system_pBlaze_0_0_kcpsm6
   (E,
    port_id,
    write_strobe_flop_0,
    write_strobe_flop_1,
    write_strobe_flop_2,
    buffer_reset_tx,
    buffer_read0,
    tx_buffer_write,
    D,
    write_strobe_flop_3,
    out_port,
    bram_enable,
    address,
    external_mem_douta,
    data_out,
    buffer_data_present,
    buffer_half_full,
    buffer_full,
    irqs,
    reset_in,
    clk,
    instruction,
    Q);
  output [0:0]E;
  output [1:0]port_id;
  output [0:0]write_strobe_flop_0;
  output [0:0]write_strobe_flop_1;
  output [0:0]write_strobe_flop_2;
  output buffer_reset_tx;
  output buffer_read0;
  output tx_buffer_write;
  output [4:0]D;
  output write_strobe_flop_3;
  output [7:0]out_port;
  output bram_enable;
  output [11:0]address;
  input [4:0]external_mem_douta;
  input [4:0]data_out;
  input buffer_data_present;
  input buffer_half_full;
  input buffer_full;
  input [0:0]irqs;
  input reset_in;
  input clk;
  input [17:0]instruction;
  input [7:0]Q;

  wire [4:0]ADDRA;
  wire [4:4]ADDRB;
  wire CI;
  wire [4:0]D;
  wire [1:0]DIC;
  wire [1:0]DOA;
  wire [1:0]DOC;
  wire [0:0]E;
  wire I0;
  wire I00_in;
  wire I014_in;
  wire I015_in;
  wire I019_in;
  wire I022_in;
  wire I06_in;
  wire I07_in;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire [7:0]Q;
  wire active_interrupt;
  wire active_interrupt_value;
  wire [11:0]address;
  wire alu_mux_sel_0;
  wire alu_mux_sel_1;
  wire alu_mux_sel_value_0;
  wire alu_mux_sel_value_1;
  wire alu_result_0;
  wire alu_result_1;
  wire alu_result_4;
  wire alu_result_5;
  wire alu_result_6;
  wire alu_result_7;
  wire arith_carry;
  wire arith_carry_in;
  wire arith_carry_value;
  wire arith_logical_sel_0;
  wire arith_logical_sel_1;
  wire arith_logical_sel_2;
  wire arith_logical_value_0;
  wire arith_logical_value_1;
  wire arith_logical_value_2;
  wire arith_logical_value_3;
  wire arith_logical_value_4;
  wire arith_logical_value_5;
  wire arith_logical_value_6;
  wire arith_logical_value_7;
  wire bank_value;
  wire bram_enable;
  wire buffer_data_present;
  wire buffer_full;
  wire buffer_half_full;
  wire buffer_read0;
  wire buffer_reset_tx;
  wire carry_arith_logical_0;
  wire carry_arith_logical_1;
  wire carry_arith_logical_2;
  wire carry_arith_logical_3;
  wire carry_arith_logical_4;
  wire carry_arith_logical_5;
  wire carry_arith_logical_6;
  wire carry_flag;
  wire carry_flag_value;
  wire carry_in_zero;
  wire carry_lower_parity;
  wire carry_lower_zero;
  wire carry_middle_zero;
  wire carry_pc_0;
  wire carry_pc_1;
  wire carry_pc_10;
  wire carry_pc_2;
  wire carry_pc_3;
  wire carry_pc_4;
  wire carry_pc_5;
  wire carry_pc_6;
  wire carry_pc_7;
  wire carry_pc_8;
  wire carry_pc_9;
  wire clk;
  wire [4:0]data_out;
  wire \data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ;
  wire \data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ;
  wire \data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ;
  wire \data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ;
  wire \data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ;
  wire \data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ;
  wire drive_carry_in_zero;
  wire [4:0]external_mem_douta;
  wire \extra_mem_hi[7]_i_2_n_0 ;
  wire feed_pointer_value_0;
  wire feed_pointer_value_1;
  wire feed_pointer_value_2;
  wire feed_pointer_value_3;
  wire feed_pointer_value_4;
  wire flag_enable;
  wire flag_enable_type;
  wire flag_enable_value;
  wire half_arith_logical_0;
  wire half_arith_logical_1;
  wire half_arith_logical_2;
  wire half_arith_logical_3;
  wire half_arith_logical_4;
  wire half_arith_logical_5;
  wire half_arith_logical_6;
  wire half_arith_logical_7;
  wire half_pc_0;
  wire half_pc_1;
  wire half_pc_10;
  wire half_pc_11;
  wire half_pc_2;
  wire half_pc_3;
  wire half_pc_4;
  wire half_pc_5;
  wire half_pc_6;
  wire half_pc_7;
  wire half_pc_8;
  wire half_pc_9;
  wire half_pointer_value_0;
  wire half_pointer_value_1;
  wire half_pointer_value_2;
  wire half_pointer_value_3;
  wire half_pointer_value_4;
  wire [17:0]instruction;
  wire int_enable_type;
  wire internal_reset_value;
  wire interrupt_enable;
  wire interrupt_enable_value;
  wire [0:0]irqs;
  wire \irqs_reg[0]_i_2_n_0 ;
  wire k_write_strobe;
  wire k_write_strobe_value;
  wire loadstar_type;
  wire logical_carry_mask_0;
  wire logical_carry_mask_1;
  wire logical_carry_mask_2;
  wire logical_carry_mask_3;
  wire logical_carry_mask_4;
  wire logical_carry_mask_5;
  wire logical_carry_mask_6;
  wire logical_carry_mask_7;
  wire lower_parity;
  wire lower_parity_sel;
  wire lower_reg_banks_n_0;
  wire lower_reg_banks_n_1;
  wire lower_reg_banks_n_4;
  wire lower_reg_banks_n_5;
  wire lower_zero;
  wire lower_zero_sel;
  wire middle_zero;
  wire middle_zero_sel;
  wire move_type;
  wire [7:0]out_port;
  wire parity;
  wire pc_mode_0;
  wire pc_mode_1;
  wire pc_mode_2;
  wire pc_move_is_valid;
  wire pc_value_0;
  wire pc_value_1;
  wire pc_value_10;
  wire pc_value_11;
  wire pc_value_2;
  wire pc_value_3;
  wire pc_value_4;
  wire pc_value_5;
  wire pc_value_6;
  wire pc_value_7;
  wire pc_value_8;
  wire pc_value_9;
  wire pc_vector_0;
  wire pc_vector_1;
  wire pc_vector_10;
  wire pc_vector_11;
  wire pc_vector_2;
  wire pc_vector_3;
  wire pc_vector_4;
  wire pc_vector_5;
  wire pc_vector_6;
  wire pc_vector_7;
  wire pc_vector_8;
  wire pc_vector_9;
  wire pop_stack;
  wire [1:0]port_id;
  wire push_stack;
  wire read_strobe;
  wire read_strobe_value;
  wire regbank_type;
  wire register_enable;
  wire register_enable_type;
  wire register_enable_value;
  wire reset_in;
  wire return_vector_0;
  wire return_vector_1;
  wire return_vector_10;
  wire return_vector_11;
  wire return_vector_2;
  wire return_vector_3;
  wire return_vector_4;
  wire return_vector_5;
  wire return_vector_6;
  wire return_vector_7;
  wire return_vector_8;
  wire return_vector_9;
  wire returni_type;
  wire run_value;
  wire shadow_bank;
  wire shadow_carry_flag;
  wire shadow_zero_flag;
  wire shadow_zero_value;
  wire shift_carry;
  wire shift_carry_value;
  wire shift_in_bit;
  wire shift_rotate_result_0;
  wire shift_rotate_result_1;
  wire shift_rotate_result_2;
  wire shift_rotate_result_3;
  wire shift_rotate_result_4;
  wire shift_rotate_result_5;
  wire shift_rotate_result_6;
  wire shift_rotate_result_7;
  wire shift_rotate_value_0;
  wire shift_rotate_value_1;
  wire shift_rotate_value_2;
  wire shift_rotate_value_3;
  wire shift_rotate_value_4;
  wire shift_rotate_value_5;
  wire shift_rotate_value_6;
  wire shift_rotate_value_7;
  wire spm_data_0;
  wire spm_data_1;
  wire spm_data_2;
  wire spm_data_3;
  wire spm_data_4;
  wire spm_data_5;
  wire spm_data_6;
  wire spm_data_7;
  wire spm_enable;
  wire spm_enable_value;
  wire spm_ram_data_0;
  wire spm_ram_data_1;
  wire spm_ram_data_2;
  wire spm_ram_data_3;
  wire spm_ram_data_4;
  wire spm_ram_data_5;
  wire spm_ram_data_6;
  wire spm_ram_data_7;
  wire stack_pointer_carry_0;
  wire stack_pointer_carry_1;
  wire stack_pointer_carry_2;
  wire stack_pointer_carry_3;
  wire stack_pointer_value_0;
  wire stack_pointer_value_1;
  wire stack_pointer_value_2;
  wire stack_pointer_value_3;
  wire stack_pointer_value_4;
  wire stack_ram_high_n_0;
  wire stack_ram_high_n_1;
  wire stack_ram_high_n_2;
  wire stack_ram_high_n_3;
  wire stack_ram_high_n_4;
  wire stack_ram_high_n_5;
  wire stack_ram_high_n_6;
  wire stack_ram_high_n_7;
  wire stack_ram_low_n_0;
  wire stack_ram_low_n_1;
  wire stack_ram_low_n_2;
  wire stack_ram_low_n_3;
  wire stack_ram_low_n_4;
  wire stack_ram_low_n_5;
  wire stack_ram_low_n_6;
  wire stack_ram_low_n_7;
  wire strobe_type;
  wire [7:0]sx;
  wire sx_addr4_value;
  wire t_state_0;
  wire t_state_value_0;
  wire t_state_value_1;
  wire tx_buffer_write;
  wire upper_parity;
  wire upper_zero_sel;
  wire use_zero_flag;
  wire use_zero_flag_value;
  wire write_strobe;
  wire [0:0]write_strobe_flop_0;
  wire [0:0]write_strobe_flop_1;
  wire [0:0]write_strobe_flop_2;
  wire write_strobe_flop_3;
  wire write_strobe_value;
  wire zero_flag;
  wire zero_flag_value;
  wire [7:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:4]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:4]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED ;
  wire [7:0]NLW_arith_carry_xorcy_CARRY4_CARRY8_CO_UNCONNECTED;
  wire [7:0]NLW_arith_carry_xorcy_CARRY4_CARRY8_DI_UNCONNECTED;
  wire [7:1]NLW_arith_carry_xorcy_CARRY4_CARRY8_O_UNCONNECTED;
  wire [7:1]NLW_arith_carry_xorcy_CARRY4_CARRY8_S_UNCONNECTED;
  wire [7:4]NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED;
  wire [7:4]NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED;
  wire [7:0]NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED;
  wire [7:4]NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED;
  wire [7:1]NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED;
  wire [7:1]NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED;
  wire [7:0]NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED;
  wire [7:2]NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED;
  wire [7:5]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:5]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED ;

  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    active_interrupt_flop
       (.C(clk),
        .CE(1'b1),
        .D(active_interrupt_value),
        .Q(active_interrupt),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCC33FF0080808080)) 
    active_interrupt_lut
       (.I0(interrupt_enable),
        .I1(bram_enable),
        .I2(1'b0),
        .I3(I3),
        .I4(loadstar_type),
        .I5(1'b1),
        .O5(active_interrupt_value),
        .O6(sx_addr4_value));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FF33CC0F00)) 
    \address_loop[0].lsb_pc.high_int_vector.pc_lut 
       (.I0(lower_reg_banks_n_1),
        .I1(pc_vector_0),
        .I2(address[0]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \address_loop[0].lsb_pc.pc_muxcy_CARRY4_CARRY8 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({carry_pc_7,carry_pc_6,carry_pc_5,carry_pc_4,carry_pc_3,carry_pc_2,carry_pc_1,carry_pc_0}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pc_mode_0}),
        .O({pc_value_7,pc_value_6,pc_value_5,pc_value_4,pc_value_3,pc_value_2,pc_value_1,pc_value_0}),
        .S({half_pc_7,half_pc_6,half_pc_5,half_pc_4,half_pc_3,half_pc_2,half_pc_1,half_pc_0}));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[0].output_data.pc_vector_mux_lut 
       (.I0(instruction[0]),
        .I1(return_vector_0),
        .I2(instruction[1]),
        .I3(return_vector_1),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_0),
        .O6(pc_vector_1));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[0].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_0),
        .Q(address[0]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[0].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_5),
        .Q(return_vector_0),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[10].output_data.pc_vector_mux_lut 
       (.I0(instruction[10]),
        .I1(return_vector_10),
        .I2(instruction[11]),
        .I3(return_vector_11),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_10),
        .O6(pc_vector_11));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[10].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_10),
        .Q(address[10]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[10].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_7),
        .Q(return_vector_10),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[10].upper_pc.low_int_vector.pc_lut 
       (.I0(sx[2]),
        .I1(pc_vector_10),
        .I2(address[10]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_10));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[11].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_11),
        .Q(address[11]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[11].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_6),
        .Q(return_vector_11),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[11].upper_pc.low_int_vector.pc_lut 
       (.I0(sx[3]),
        .I1(pc_vector_11),
        .I2(address[11]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_11));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[1].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_1),
        .Q(address[1]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[1].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_4),
        .Q(return_vector_1),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[1].upper_pc.high_int_vector.pc_lut 
       (.I0(lower_reg_banks_n_0),
        .I1(pc_vector_1),
        .I2(address[1]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_1));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[2].output_data.pc_vector_mux_lut 
       (.I0(instruction[2]),
        .I1(return_vector_2),
        .I2(instruction[3]),
        .I3(return_vector_3),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_2),
        .O6(pc_vector_3));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[2].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_2),
        .Q(address[2]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[2].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_7),
        .Q(return_vector_2),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[2].upper_pc.high_int_vector.pc_lut 
       (.I0(lower_reg_banks_n_5),
        .I1(pc_vector_2),
        .I2(address[2]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_2));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[3].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_3),
        .Q(address[3]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[3].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_6),
        .Q(return_vector_3),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[3].upper_pc.high_int_vector.pc_lut 
       (.I0(lower_reg_banks_n_4),
        .I1(pc_vector_3),
        .I2(address[3]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_3));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[4].output_data.pc_vector_mux_lut 
       (.I0(instruction[4]),
        .I1(return_vector_4),
        .I2(instruction[5]),
        .I3(return_vector_5),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_4),
        .O6(pc_vector_5));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[4].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_4),
        .Q(address[4]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[4].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_1),
        .Q(return_vector_4),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[4].upper_pc.high_int_vector.pc_lut 
       (.I0(DOA[0]),
        .I1(pc_vector_4),
        .I2(address[4]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_4));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[5].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_5),
        .Q(address[5]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[5].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_0),
        .Q(return_vector_5),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[5].upper_pc.high_int_vector.pc_lut 
       (.I0(DOA[1]),
        .I1(pc_vector_5),
        .I2(address[5]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_5));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[6].output_data.pc_vector_mux_lut 
       (.I0(instruction[6]),
        .I1(return_vector_6),
        .I2(instruction[7]),
        .I3(return_vector_7),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_6),
        .O6(pc_vector_7));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[6].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_6),
        .Q(address[6]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[6].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_3),
        .Q(return_vector_6),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[6].upper_pc.high_int_vector.pc_lut 
       (.I0(DOC[0]),
        .I1(pc_vector_6),
        .I2(address[6]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_6));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[7].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_7),
        .Q(address[7]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[7].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_2),
        .Q(return_vector_7),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[7].upper_pc.high_int_vector.pc_lut 
       (.I0(DOC[1]),
        .I1(pc_vector_7),
        .I2(address[7]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_7));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[8].output_data.pc_vector_mux_lut 
       (.I0(instruction[8]),
        .I1(return_vector_8),
        .I2(instruction[9]),
        .I3(return_vector_9),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_8),
        .O6(pc_vector_9));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[8].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_8),
        .Q(address[8]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[8].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_5),
        .Q(return_vector_8),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[8].upper_pc.high_int_vector.pc_lut 
       (.I0(sx[0]),
        .I1(pc_vector_8),
        .I2(address[8]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_8));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8 
       (.CI(carry_pc_7),
        .CI_TOP(1'b0),
        .CO({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_CO_UNCONNECTED [7:3],carry_pc_10,carry_pc_9,carry_pc_8}),
        .DI({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_DI_UNCONNECTED [7:3],1'b0,1'b0,1'b0}),
        .O({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_O_UNCONNECTED [7:4],pc_value_11,pc_value_10,pc_value_9,pc_value_8}),
        .S({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CARRY8_S_UNCONNECTED [7:4],half_pc_11,half_pc_10,half_pc_9,half_pc_8}));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[9].pc_flop 
       (.C(clk),
        .CE(t_state_0),
        .D(pc_value_9),
        .Q(address[9]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[9].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_4),
        .Q(return_vector_9),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[9].upper_pc.high_int_vector.pc_lut 
       (.I0(sx[1]),
        .I1(pc_vector_9),
        .I2(address[9]),
        .I3(pc_mode_0),
        .I4(pc_mode_1),
        .I5(pc_mode_2),
        .O(half_pc_9));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h03CA000004200000)) 
    alu_decode0_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(alu_mux_sel_value_0),
        .O6(arith_logical_sel_0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7708000000000F00)) 
    alu_decode1_lut
       (.I0(carry_flag),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(1'b1),
        .O5(alu_mux_sel_value_1),
        .O6(arith_carry_in));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hD000000002000000)) 
    alu_decode2_lut
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(arith_logical_sel_1),
        .O6(arith_logical_sel_2));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel0_flop
       (.C(clk),
        .CE(1'b1),
        .D(alu_mux_sel_value_0),
        .Q(alu_mux_sel_0),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel1_flop
       (.C(clk),
        .CE(1'b1),
        .D(alu_mux_sel_value_1),
        .Q(alu_mux_sel_1),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    arith_carry_flop
       (.C(clk),
        .CE(1'b1),
        .D(arith_carry_value),
        .Q(arith_carry),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 arith_carry_xorcy_CARRY4_CARRY8
       (.CI(CI),
        .CI_TOP(1'b0),
        .CO(NLW_arith_carry_xorcy_CARRY4_CARRY8_CO_UNCONNECTED[7:0]),
        .DI(NLW_arith_carry_xorcy_CARRY4_CARRY8_DI_UNCONNECTED[7:0]),
        .O({NLW_arith_carry_xorcy_CARRY4_CARRY8_O_UNCONNECTED[7:1],arith_carry_value}),
        .S({NLW_arith_carry_xorcy_CARRY4_CARRY8_S_UNCONNECTED[7:1],1'b0}));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    bank_flop
       (.C(clk),
        .CE(1'b1),
        .D(bank_value),
        .Q(I3),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hACACFF00FF00FF00)) 
    bank_lut
       (.I0(instruction[0]),
        .I1(shadow_bank),
        .I2(instruction[16]),
        .I3(I3),
        .I4(regbank_type),
        .I5(t_state_0),
        .O(bank_value));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_read_i_1
       (.I0(read_strobe),
        .I1(port_id[0]),
        .O(buffer_read0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_reset_tx_i_1
       (.I0(k_write_strobe),
        .I1(port_id[0]),
        .O(buffer_reset_tx));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    carry_flag_flop
       (.C(clk),
        .CE(flag_enable),
        .D(carry_flag_value),
        .Q(carry_flag),
        .R(I1));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h3333AACCF0AA0000)) 
    carry_flag_lut
       (.I0(shift_carry),
        .I1(arith_carry),
        .I2(parity),
        .I3(instruction[14]),
        .I4(instruction[15]),
        .I5(instruction[16]),
        .O5(drive_carry_in_zero),
        .O6(carry_flag_value));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].alu_mux_lut 
       (.I0(I022_in),
        .I1(shift_rotate_result_0),
        .I2(Q[0]),
        .I3(spm_data_0),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_0),
        .Q(I022_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[0].arith_logical_lut 
       (.I0(port_id[0]),
        .I1(sx[0]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_0),
        .O6(half_arith_logical_0));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    \data_path_loop[0].high_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_0),
        .Q(shift_rotate_result_0),
        .S(instruction[7]));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_0),
        .Q(spm_data_0),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[0].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[0]),
        .O(spm_ram_data_0),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4_CARRY8 
       (.CI(arith_carry_in),
        .CI_TOP(1'b0),
        .CO({CI,carry_arith_logical_6,carry_arith_logical_5,carry_arith_logical_4,carry_arith_logical_3,carry_arith_logical_2,carry_arith_logical_1,carry_arith_logical_0}),
        .DI({logical_carry_mask_7,logical_carry_mask_6,logical_carry_mask_5,logical_carry_mask_4,logical_carry_mask_3,logical_carry_mask_2,logical_carry_mask_1,logical_carry_mask_0}),
        .O({arith_logical_value_7,arith_logical_value_6,arith_logical_value_5,arith_logical_value_4,arith_logical_value_3,arith_logical_value_2,arith_logical_value_1,arith_logical_value_0}),
        .S({half_arith_logical_7,half_arith_logical_6,half_arith_logical_5,half_arith_logical_4,half_arith_logical_3,half_arith_logical_2,half_arith_logical_1,half_arith_logical_0}));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hBFBC8F8CB3B08380)) 
    \data_path_loop[0].lsb_shift_rotate.shift_bit_lut 
       (.I0(instruction[0]),
        .I1(instruction[1]),
        .I2(instruction[2]),
        .I3(carry_flag),
        .I4(sx[0]),
        .I5(sx[7]),
        .O(shift_in_bit));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut 
       (.I0(shift_in_bit),
        .I1(sx[1]),
        .I2(sx[0]),
        .I3(sx[2]),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_0),
        .O6(shift_rotate_value_1));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].output_data.sy_kk_mux_lut 
       (.I0(lower_reg_banks_n_1),
        .I1(instruction[0]),
        .I2(lower_reg_banks_n_0),
        .I3(instruction[1]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[0]),
        .O6(port_id[1]));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].second_operand.out_port_lut 
       (.I0(sx[0]),
        .I1(instruction[4]),
        .I2(sx[1]),
        .I3(instruction[5]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[0]),
        .O6(out_port[1]));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[1].alu_mux_lut 
       (.I0(I019_in),
        .I1(shift_rotate_result_1),
        .I2(Q[1]),
        .I3(spm_data_1),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_1));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_1),
        .Q(I019_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[1].arith_logical_lut 
       (.I0(port_id[1]),
        .I1(sx[1]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_1),
        .O6(half_arith_logical_1));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_1),
        .Q(spm_data_1),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[1].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[1]),
        .O(spm_ram_data_1),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_1),
        .Q(shift_rotate_result_1),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].alu_mux_lut 
       (.I0(I015_in),
        .I1(shift_rotate_result_2),
        .I2(Q[2]),
        .I3(spm_data_2),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(DIC[0]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_2),
        .Q(I015_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[2].arith_logical_lut 
       (.I0(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .I1(sx[2]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_2),
        .O6(half_arith_logical_2));
  (* HBLKNM = "kcpsm6_spm2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_2),
        .Q(spm_data_2),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm2" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[2].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[2]),
        .O(spm_ram_data_2),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_2),
        .Q(shift_rotate_result_2),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].mid_shift_rotate.shift_rotate_lut 
       (.I0(sx[1]),
        .I1(sx[3]),
        .I2(sx[2]),
        .I3(sx[4]),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_2),
        .O6(shift_rotate_value_3));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].output_data.sy_kk_mux_lut 
       (.I0(lower_reg_banks_n_5),
        .I1(instruction[2]),
        .I2(lower_reg_banks_n_4),
        .I3(instruction[3]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .O6(\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].second_operand.out_port_lut 
       (.I0(sx[2]),
        .I1(instruction[6]),
        .I2(sx[3]),
        .I3(instruction[7]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[2]),
        .O6(out_port[3]));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[3].alu_mux_lut 
       (.I0(I014_in),
        .I1(shift_rotate_result_3),
        .I2(Q[3]),
        .I3(spm_data_3),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(DIC[1]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_3),
        .Q(I014_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[3].arith_logical_lut 
       (.I0(\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ),
        .I1(sx[3]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_3),
        .O6(half_arith_logical_3));
  (* HBLKNM = "kcpsm6_spm3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_3),
        .Q(spm_data_3),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm3" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[3].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[3]),
        .O(spm_ram_data_3),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_3),
        .Q(shift_rotate_result_3),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].alu_mux_lut 
       (.I0(I07_in),
        .I1(shift_rotate_result_4),
        .I2(Q[4]),
        .I3(spm_data_4),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_4));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_4),
        .Q(I07_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[4].arith_logical_lut 
       (.I0(\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ),
        .I1(sx[4]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_4),
        .O6(half_arith_logical_4));
  (* HBLKNM = "kcpsm6_spm4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_4),
        .Q(spm_data_4),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm4" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[4].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[4]),
        .O(spm_ram_data_4),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_4),
        .Q(shift_rotate_result_4),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].mid_shift_rotate.shift_rotate_lut 
       (.I0(sx[3]),
        .I1(sx[5]),
        .I2(sx[4]),
        .I3(sx[6]),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_4),
        .O6(shift_rotate_value_5));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].output_data.sy_kk_mux_lut 
       (.I0(DOA[0]),
        .I1(instruction[4]),
        .I2(DOA[1]),
        .I3(instruction[5]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ),
        .O6(\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].second_operand.out_port_lut 
       (.I0(sx[4]),
        .I1(instruction[8]),
        .I2(sx[5]),
        .I3(instruction[9]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[4]),
        .O6(out_port[5]));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[5].alu_mux_lut 
       (.I0(I06_in),
        .I1(shift_rotate_result_5),
        .I2(Q[5]),
        .I3(spm_data_5),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_5));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_5),
        .Q(I06_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[5].arith_logical_lut 
       (.I0(\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ),
        .I1(sx[5]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_5),
        .O6(half_arith_logical_5));
  (* HBLKNM = "kcpsm6_spm5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_5),
        .Q(spm_data_5),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm5" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[5].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[5]),
        .O(spm_ram_data_5),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_5),
        .Q(shift_rotate_result_5),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].alu_mux_lut 
       (.I0(I00_in),
        .I1(shift_rotate_result_6),
        .I2(Q[6]),
        .I3(spm_data_6),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_6));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_6),
        .Q(I00_in),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[6].arith_logical_lut 
       (.I0(\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ),
        .I1(sx[6]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_6),
        .O6(half_arith_logical_6));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    \data_path_loop[6].high_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_6),
        .Q(shift_rotate_result_6),
        .S(instruction[7]));
  (* HBLKNM = "kcpsm6_spm6" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_6),
        .Q(spm_data_6),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm6" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[6].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[6]),
        .O(spm_ram_data_6),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].msb_shift_rotate.shift_rotate_lut 
       (.I0(sx[5]),
        .I1(sx[7]),
        .I2(sx[6]),
        .I3(shift_in_bit),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_6),
        .O6(shift_rotate_value_7));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].output_data.sy_kk_mux_lut 
       (.I0(DOC[0]),
        .I1(instruction[6]),
        .I2(DOC[1]),
        .I3(instruction[7]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ),
        .O6(\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].second_operand.out_port_lut 
       (.I0(sx[6]),
        .I1(instruction[10]),
        .I2(sx[7]),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[6]),
        .O6(out_port[7]));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[7].alu_mux_lut 
       (.I0(I5),
        .I1(shift_rotate_result_7),
        .I2(Q[7]),
        .I3(spm_data_7),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_7));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value_7),
        .Q(I5),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[7].arith_logical_lut 
       (.I0(\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ),
        .I1(sx[7]),
        .I2(arith_logical_sel_0),
        .I3(arith_logical_sel_1),
        .I4(arith_logical_sel_2),
        .I5(1'b1),
        .O5(logical_carry_mask_7),
        .O6(half_arith_logical_7));
  (* HBLKNM = "kcpsm6_spm7" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].large_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data_7),
        .Q(spm_data_7),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_spm7" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[7].large_spm.spm_ram 
       (.A({\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ,\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ,port_id}),
        .D(sx[7]),
        .O(spm_ram_data_7),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value_7),
        .Q(shift_rotate_result_7),
        .R(instruction[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \external_mem_dina[7]_i_1 
       (.I0(write_strobe),
        .I1(\extra_mem_hi[7]_i_2_n_0 ),
        .I2(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .I3(port_id[0]),
        .I4(port_id[1]),
        .O(write_strobe_flop_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \extra_mem_hi[7]_i_1 
       (.I0(write_strobe),
        .I1(\extra_mem_hi[7]_i_2_n_0 ),
        .I2(port_id[1]),
        .I3(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .I4(port_id[0]),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \extra_mem_hi[7]_i_2 
       (.I0(\data_path_loop[6].output_data.sy_kk_mux_lut_n_1 ),
        .I1(\data_path_loop[4].output_data.sy_kk_mux_lut_n_0 ),
        .I2(\data_path_loop[2].output_data.sy_kk_mux_lut_n_1 ),
        .I3(\data_path_loop[6].output_data.sy_kk_mux_lut_n_0 ),
        .I4(\data_path_loop[4].output_data.sy_kk_mux_lut_n_1 ),
        .O(\extra_mem_hi[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \extra_mem_lo[7]_i_1 
       (.I0(write_strobe),
        .I1(\extra_mem_hi[7]_i_2_n_0 ),
        .I2(port_id[0]),
        .I3(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .I4(port_id[1]),
        .O(write_strobe_flop_0));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    flag_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(flag_enable_value),
        .Q(flag_enable),
        .R(active_interrupt));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \in_port[0]_i_1 
       (.I0(external_mem_douta[0]),
        .I1(data_out[0]),
        .I2(port_id[0]),
        .I3(buffer_data_present),
        .I4(port_id[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \in_port[1]_i_1 
       (.I0(external_mem_douta[1]),
        .I1(data_out[1]),
        .I2(port_id[0]),
        .I3(buffer_half_full),
        .I4(port_id[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \in_port[2]_i_1 
       (.I0(external_mem_douta[2]),
        .I1(data_out[2]),
        .I2(port_id[0]),
        .I3(buffer_full),
        .I4(port_id[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \in_port[6]_i_1 
       (.I0(port_id[1]),
        .I1(external_mem_douta[3]),
        .I2(port_id[0]),
        .I3(data_out[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \in_port[7]_i_1 
       (.I0(port_id[1]),
        .I1(external_mem_douta[4]),
        .I2(port_id[0]),
        .I3(data_out[4]),
        .O(D[4]));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 init_zero_muxcy_CARRY4_CARRY8
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_init_zero_muxcy_CARRY4_CARRY8_CO_UNCONNECTED[7:4],zero_flag_value,carry_middle_zero,carry_lower_zero,carry_in_zero}),
        .DI({NLW_init_zero_muxcy_CARRY4_CARRY8_DI_UNCONNECTED[7:4],shadow_zero_flag,middle_zero,lower_zero,drive_carry_in_zero}),
        .O(NLW_init_zero_muxcy_CARRY4_CARRY8_O_UNCONNECTED[7:0]),
        .S({NLW_init_zero_muxcy_CARRY4_CARRY8_S_UNCONNECTED[7:4],upper_zero_sel,middle_zero_sel,lower_zero_sel,carry_flag_value}));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0010000000000800)) 
    int_enable_type_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(1'b1),
        .O5(loadstar_type),
        .O6(int_enable_type));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    internal_reset_flop
       (.C(clk),
        .CE(1'b1),
        .D(internal_reset_value),
        .Q(I1),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    interrupt_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(interrupt_enable_value),
        .Q(interrupt_enable),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h000000000000CAAA)) 
    interrupt_enable_lut
       (.I0(interrupt_enable),
        .I1(instruction[0]),
        .I2(int_enable_type),
        .I3(t_state_0),
        .I4(active_interrupt),
        .I5(I1),
        .O(interrupt_enable_value));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \irqs_reg[0]_i_1 
       (.I0(out_port[0]),
        .I1(write_strobe),
        .I2(\extra_mem_hi[7]_i_2_n_0 ),
        .I3(\irqs_reg[0]_i_2_n_0 ),
        .I4(irqs),
        .O(write_strobe_flop_3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \irqs_reg[0]_i_2 
       (.I0(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .I1(port_id[0]),
        .I2(port_id[1]),
        .O(\irqs_reg[0]_i_2_n_0 ));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    k_write_strobe_flop
       (.C(clk),
        .CE(1'b1),
        .D(k_write_strobe_value),
        .Q(k_write_strobe),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000087780000)) 
    lower_parity_lut
       (.I0(instruction[13]),
        .I1(carry_flag),
        .I2(I022_in),
        .I3(I019_in),
        .I4(1'b1),
        .I5(1'b1),
        .O5(lower_parity),
        .O6(lower_parity_sel));
  (* HBLKNM = "kcpsm6_reg0" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    lower_reg_banks
       (.ADDRA({I3,instruction[7:4]}),
        .ADDRB({ADDRB,instruction[11:8]}),
        .ADDRC({I3,instruction[7:4]}),
        .ADDRD({ADDRB,instruction[11:8]}),
        .DIA({alu_result_1,alu_result_0}),
        .DIB({alu_result_1,alu_result_0}),
        .DIC(DIC),
        .DID(DIC),
        .DOA({lower_reg_banks_n_0,lower_reg_banks_n_1}),
        .DOB(sx[1:0]),
        .DOC({lower_reg_banks_n_4,lower_reg_banks_n_5}),
        .DOD(sx[3:2]),
        .WCLK(clk),
        .WE(register_enable));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000000000001)) 
    lower_zero_lut
       (.I0(alu_result_0),
        .I1(alu_result_1),
        .I2(DIC[0]),
        .I3(DIC[1]),
        .I4(alu_result_4),
        .I5(1'b1),
        .O5(lower_zero),
        .O6(lower_zero_sel));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000D00000000)) 
    middle_zero_lut
       (.I0(use_zero_flag),
        .I1(zero_flag),
        .I2(alu_result_5),
        .I3(alu_result_6),
        .I4(alu_result_7),
        .I5(1'b1),
        .O5(middle_zero),
        .O6(middle_zero_sel));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7777027700000200)) 
    move_type_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(1'b1),
        .O5(returni_type),
        .O6(move_type));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 parity_muxcy_CARRY4_CARRY8
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_parity_muxcy_CARRY4_CARRY8_CO_UNCONNECTED[7:1],carry_lower_parity}),
        .DI({NLW_parity_muxcy_CARRY4_CARRY8_DI_UNCONNECTED[7:1],lower_parity}),
        .O({NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED[7:2],parity,NLW_parity_muxcy_CARRY4_CARRY8_O_UNCONNECTED[0]}),
        .S({NLW_parity_muxcy_CARRY4_CARRY8_S_UNCONNECTED[7:2],upper_parity,lower_parity_sel}));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000F000000023FF)) 
    pc_mode1_lut
       (.I0(instruction[12]),
        .I1(returni_type),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(active_interrupt),
        .I5(1'b1),
        .O5(pc_mode_0),
        .O6(pc_mode_1));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    pc_mode2_lut
       (.I0(instruction[12]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(active_interrupt),
        .O(pc_mode_2));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h5A3CFFFF00000000)) 
    pc_move_is_valid_lut
       (.I0(carry_flag),
        .I1(zero_flag),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(instruction[17]),
        .O(pc_move_is_valid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pointer3_lut_i_1
       (.I0(write_strobe),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .O(tx_buffer_write));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFFFF100000002000)) 
    push_pop_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(active_interrupt),
        .I5(1'b1),
        .O5(pop_stack),
        .O6(push_stack));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    read_strobe_flop
       (.C(clk),
        .CE(1'b1),
        .D(read_strobe_value),
        .Q(read_strobe),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h4000000001000000)) 
    read_strobe_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[17]),
        .I3(strobe_type),
        .I4(t_state_0),
        .I5(1'b1),
        .O5(read_strobe_value),
        .O6(write_strobe_value));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0080020000000000)) 
    regbank_type_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(instruction[17]),
        .O(regbank_type));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    register_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(register_enable_value),
        .Q(register_enable),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hC0CC0000A0AA0000)) 
    register_enable_lut
       (.I0(flag_enable_type),
        .I1(register_enable_type),
        .I2(instruction[12]),
        .I3(instruction[17]),
        .I4(t_state_0),
        .I5(1'b1),
        .O5(flag_enable_value),
        .O6(register_enable_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h00013F3F0010F7CE)) 
    register_enable_type_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(1'b1),
        .O5(flag_enable_type),
        .O6(register_enable_type));
  (* HBLKNM = "kcpsm6_control" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFFFFF55500000EEE)) 
    reset_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(bram_enable),
        .I4(reset_in),
        .I5(1'b1),
        .O5(run_value),
        .O6(internal_reset_value));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_flop
       (.C(clk),
        .CE(1'b1),
        .D(run_value),
        .Q(I0),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_bank_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_3),
        .Q(shadow_bank),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_carry_flag_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_1),
        .Q(shadow_carry_flag),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_zero_flag_flop
       (.C(clk),
        .CE(1'b1),
        .D(shadow_zero_value),
        .Q(shadow_zero_flag),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shift_carry_flop
       (.C(clk),
        .CE(1'b1),
        .D(shift_carry_value),
        .Q(shift_carry),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFAACCF0F0F0F0)) 
    shift_carry_lut
       (.I0(sx[0]),
        .I1(sx[7]),
        .I2(shadow_carry_flag),
        .I3(instruction[3]),
        .I4(instruction[7]),
        .I5(instruction[16]),
        .O(shift_carry_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    spm_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(spm_enable_value),
        .Q(spm_enable),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h8000000020000000)) 
    spm_enable_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[17]),
        .I3(strobe_type),
        .I4(t_state_0),
        .I5(1'b1),
        .O5(k_write_strobe_value),
        .O6(spm_enable_value));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_bit_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_2),
        .Q(I4),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[0].lsb_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value_0),
        .Q(ADDRA[0]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_CO_UNCONNECTED [7:5],I2,stack_pointer_carry_3,stack_pointer_carry_2,stack_pointer_carry_1,stack_pointer_carry_0}),
        .DI({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_DI_UNCONNECTED [7:5],feed_pointer_value_4,feed_pointer_value_3,feed_pointer_value_2,feed_pointer_value_1,feed_pointer_value_0}),
        .O({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_O_UNCONNECTED [7:5],stack_pointer_value_4,stack_pointer_value_3,stack_pointer_value_2,stack_pointer_value_1,stack_pointer_value_0}),
        .S({\NLW_stack_loop[0].lsb_stack.stack_muxcy_CARRY4_CARRY8_S_UNCONNECTED [7:5],half_pointer_value_4,half_pointer_value_3,half_pointer_value_2,half_pointer_value_1,half_pointer_value_0}));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h001529AAAAAAAAAA)) 
    \stack_loop[0].lsb_stack.stack_pointer_lut 
       (.I0(ADDRA[0]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_0),
        .O6(half_pointer_value_0));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[1].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value_1),
        .Q(ADDRA[1]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[1].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[1]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_1),
        .O6(half_pointer_value_1));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[2].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value_2),
        .Q(ADDRA[2]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[2].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[2]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_2),
        .O6(half_pointer_value_2));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[3].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value_3),
        .Q(ADDRA[3]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[3].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[3]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_3),
        .O6(half_pointer_value_3));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[4].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value_4),
        .Q(ADDRA[4]),
        .R(I1));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[4].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[4]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_4),
        .O6(half_pointer_value_4));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_high
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRA),
        .DIA(address[5:4]),
        .DIB(address[7:6]),
        .DIC(address[9:8]),
        .DID(address[11:10]),
        .DOA({stack_ram_high_n_0,stack_ram_high_n_1}),
        .DOB({stack_ram_high_n_2,stack_ram_high_n_3}),
        .DOC({stack_ram_high_n_4,stack_ram_high_n_5}),
        .DOD({stack_ram_high_n_6,stack_ram_high_n_7}),
        .WCLK(clk),
        .WE(t_state_0));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_low
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRA),
        .DIA({zero_flag,carry_flag}),
        .DIB({I0,I3}),
        .DIC(address[1:0]),
        .DID(address[3:2]),
        .DOA({stack_ram_low_n_0,stack_ram_low_n_1}),
        .DOB({stack_ram_low_n_2,stack_ram_low_n_3}),
        .DOC({stack_ram_low_n_4,stack_ram_low_n_5}),
        .DOD({stack_ram_low_n_6,stack_ram_low_n_7}),
        .WCLK(clk),
        .WE(t_state_0));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_zero_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_low_n_0),
        .Q(shadow_zero_value),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sx_addr4_flop
       (.C(clk),
        .CE(1'b1),
        .D(sx_addr4_value),
        .Q(ADDRB),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state1_flop
       (.C(clk),
        .CE(1'b1),
        .D(t_state_value_0),
        .Q(t_state_0),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state2_flop
       (.C(clk),
        .CE(1'b1),
        .D(t_state_value_1),
        .Q(bram_enable),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0083000B00C4004C)) 
    t_state_lut
       (.I0(t_state_0),
        .I1(bram_enable),
        .I2(1'b0),
        .I3(I1),
        .I4(I4),
        .I5(1'b1),
        .O5(t_state_value_0),
        .O6(t_state_value_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \tx_data_in[7]_i_1 
       (.I0(write_strobe),
        .I1(\extra_mem_hi[7]_i_2_n_0 ),
        .I2(\data_path_loop[2].output_data.sy_kk_mux_lut_n_0 ),
        .I3(port_id[0]),
        .I4(port_id[1]),
        .O(write_strobe_flop_2));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    upper_parity_lut
       (.I0(I015_in),
        .I1(I014_in),
        .I2(I07_in),
        .I3(I06_in),
        .I4(I00_in),
        .I5(I5),
        .O(upper_parity));
  (* HBLKNM = "kcpsm6_reg1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    upper_reg_banks
       (.ADDRA({I3,instruction[7:4]}),
        .ADDRB({ADDRB,instruction[11:8]}),
        .ADDRC({I3,instruction[7:4]}),
        .ADDRD({ADDRB,instruction[11:8]}),
        .DIA({alu_result_5,alu_result_4}),
        .DIB({alu_result_5,alu_result_4}),
        .DIC({alu_result_7,alu_result_6}),
        .DID({alu_result_7,alu_result_6}),
        .DOA(DOA),
        .DOB(sx[5:4]),
        .DOC(DOC),
        .DOD(sx[7:6]),
        .WCLK(clk),
        .WE(register_enable));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFBFF000000000000)) 
    upper_zero_lut
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(upper_zero_sel));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    use_zero_flag_flop
       (.C(clk),
        .CE(1'b1),
        .D(use_zero_flag_value),
        .Q(use_zero_flag),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hA280000000F000F0)) 
    use_zero_flag_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(strobe_type),
        .O6(use_zero_flag_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    write_strobe_flop
       (.C(clk),
        .CE(1'b1),
        .D(write_strobe_value),
        .Q(write_strobe),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    zero_flag_flop
       (.C(clk),
        .CE(flag_enable),
        .D(zero_flag_value),
        .Q(zero_flag),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "pBlaze" *) 
module system_pBlaze_0_0_pBlaze
   (bram_enable,
    address,
    uart_top_tx,
    Q,
    external_mem_addra,
    external_mem_dina,
    irqs,
    reset_in,
    clk,
    instruction,
    uart_top_rx,
    external_mem_douta);
  output bram_enable;
  output [11:0]address;
  output uart_top_tx;
  output [5:0]Q;
  output [7:0]external_mem_addra;
  output [7:0]external_mem_dina;
  output [0:0]irqs;
  input reset_in;
  input clk;
  input [17:0]instruction;
  input uart_top_rx;
  input [7:0]external_mem_douta;

  wire [5:0]Q;
  wire [11:0]address;
  wire [5:0]baud_count;
  wire \baud_count[5]_i_1_n_0 ;
  wire bram_enable;
  wire buffer_data_present;
  wire buffer_full;
  wire buffer_half_full;
  wire buffer_read;
  wire buffer_read0;
  wire buffer_reset;
  wire buffer_reset_rx_reg_n_0;
  wire buffer_reset_tx;
  wire clk;
  wire [5:0]data0;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire en_16_x_baud__0;
  wire en_16_x_baud_n_0;
  wire [7:0]external_mem_addra;
  wire [7:0]external_mem_dina;
  wire [7:0]external_mem_douta;
  wire extra_mem_hi;
  wire extra_mem_lo;
  wire [7:0]in_port;
  wire [17:0]instruction;
  wire [0:0]irqs;
  wire [7:0]out_port;
  wire p_0_in;
  wire processor_n_1;
  wire processor_n_10;
  wire processor_n_11;
  wire processor_n_12;
  wire processor_n_13;
  wire processor_n_14;
  wire processor_n_4;
  wire processor_n_9;
  wire reset_in;
  wire rx_n_0;
  wire rx_n_1;
  wire rx_n_2;
  wire tx_buffer_write;
  wire tx_data_in;
  wire uart_top_rx;
  wire uart_top_tx;

  LUT1 #(
    .INIT(2'h1)) 
    \baud_count[0]_i_1 
       (.I0(baud_count[0]),
        .O(data0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \baud_count[1]_i_1 
       (.I0(baud_count[0]),
        .I1(baud_count[1]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \baud_count[2]_i_1 
       (.I0(baud_count[0]),
        .I1(baud_count[1]),
        .I2(baud_count[2]),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \baud_count[3]_i_1 
       (.I0(baud_count[1]),
        .I1(baud_count[0]),
        .I2(baud_count[2]),
        .I3(baud_count[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \baud_count[4]_i_1 
       (.I0(baud_count[2]),
        .I1(baud_count[0]),
        .I2(baud_count[1]),
        .I3(baud_count[3]),
        .I4(baud_count[4]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \baud_count[5]_i_1 
       (.I0(baud_count[5]),
        .I1(baud_count[4]),
        .I2(baud_count[3]),
        .I3(baud_count[1]),
        .I4(baud_count[0]),
        .I5(baud_count[2]),
        .O(\baud_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \baud_count[5]_i_2 
       (.I0(baud_count[3]),
        .I1(baud_count[1]),
        .I2(baud_count[0]),
        .I3(baud_count[2]),
        .I4(baud_count[4]),
        .I5(baud_count[5]),
        .O(data0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \baud_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[0]),
        .Q(baud_count[0]),
        .R(\baud_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(baud_count[1]),
        .R(\baud_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(baud_count[2]),
        .R(\baud_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(baud_count[3]),
        .R(\baud_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(baud_count[4]),
        .R(\baud_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(baud_count[5]),
        .R(\baud_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    buffer_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(buffer_read0),
        .Q(buffer_read),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    buffer_reset_rx_reg
       (.C(clk),
        .CE(buffer_reset_tx),
        .D(out_port[1]),
        .Q(buffer_reset_rx_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    buffer_reset_tx_reg
       (.C(clk),
        .CE(buffer_reset_tx),
        .D(out_port[0]),
        .Q(buffer_reset),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    en_16_x_baud
       (.I0(baud_count[3]),
        .I1(baud_count[4]),
        .I2(baud_count[1]),
        .I3(baud_count[5]),
        .I4(baud_count[0]),
        .I5(baud_count[2]),
        .O(en_16_x_baud_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_16_x_baud_reg
       (.C(clk),
        .CE(1'b1),
        .D(en_16_x_baud_n_0),
        .Q(en_16_x_baud__0),
        .R(1'b0));
  FDRE \external_mem_dina_reg[0] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[0]),
        .Q(external_mem_dina[0]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[1] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[1]),
        .Q(external_mem_dina[1]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[2] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[2]),
        .Q(external_mem_dina[2]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[3] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[3]),
        .Q(external_mem_dina[3]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[4] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[4]),
        .Q(external_mem_dina[4]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[5] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[5]),
        .Q(external_mem_dina[5]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[6] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[6]),
        .Q(external_mem_dina[6]),
        .R(1'b0));
  FDRE \external_mem_dina_reg[7] 
       (.C(clk),
        .CE(processor_n_4),
        .D(out_port[7]),
        .Q(external_mem_dina[7]),
        .R(1'b0));
  FDRE \extra_mem_hi_reg[0] 
       (.C(clk),
        .CE(extra_mem_hi),
        .D(out_port[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \extra_mem_hi_reg[1] 
       (.C(clk),
        .CE(extra_mem_hi),
        .D(out_port[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \extra_mem_hi_reg[2] 
       (.C(clk),
        .CE(extra_mem_hi),
        .D(out_port[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \extra_mem_hi_reg[3] 
       (.C(clk),
        .CE(extra_mem_hi),
        .D(out_port[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \extra_mem_hi_reg[6] 
       (.C(clk),
        .CE(extra_mem_hi),
        .D(out_port[6]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \extra_mem_hi_reg[7] 
       (.C(clk),
        .CE(extra_mem_hi),
        .D(out_port[7]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[0] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[0]),
        .Q(external_mem_addra[0]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[1] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[1]),
        .Q(external_mem_addra[1]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[2] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[2]),
        .Q(external_mem_addra[2]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[3] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[3]),
        .Q(external_mem_addra[3]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[4] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[4]),
        .Q(external_mem_addra[4]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[5] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[5]),
        .Q(external_mem_addra[5]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[6] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[6]),
        .Q(external_mem_addra[6]),
        .R(1'b0));
  FDRE \extra_mem_lo_reg[7] 
       (.C(clk),
        .CE(extra_mem_lo),
        .D(out_port[7]),
        .Q(external_mem_addra[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(processor_n_13),
        .Q(in_port[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(processor_n_12),
        .Q(in_port[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(processor_n_11),
        .Q(in_port[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_n_2),
        .Q(in_port[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_n_1),
        .Q(in_port[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_n_0),
        .Q(in_port[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(processor_n_10),
        .Q(in_port[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_port_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(processor_n_9),
        .Q(in_port[7]),
        .R(1'b0));
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 irqs INTERRUPT" *) 
  (* x_interface_parameter = "SENSITIVITY EDGE_RISING" *) 
  FDRE \irqs_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(processor_n_14),
        .Q(irqs),
        .R(1'b0));
  system_pBlaze_0_0_kcpsm6 processor
       (.D({processor_n_9,processor_n_10,processor_n_11,processor_n_12,processor_n_13}),
        .E(extra_mem_hi),
        .Q(in_port),
        .address(address),
        .bram_enable(bram_enable),
        .buffer_data_present(buffer_data_present),
        .buffer_full(buffer_full),
        .buffer_half_full(buffer_half_full),
        .buffer_read0(buffer_read0),
        .buffer_reset_tx(buffer_reset_tx),
        .clk(clk),
        .data_out({data_out[7:6],data_out[2:0]}),
        .external_mem_douta({external_mem_douta[7:6],external_mem_douta[2:0]}),
        .instruction(instruction),
        .irqs(irqs),
        .out_port(out_port),
        .port_id({processor_n_1,p_0_in}),
        .reset_in(reset_in),
        .tx_buffer_write(tx_buffer_write),
        .write_strobe_flop_0(extra_mem_lo),
        .write_strobe_flop_1(processor_n_4),
        .write_strobe_flop_2(tx_data_in),
        .write_strobe_flop_3(processor_n_14));
  system_pBlaze_0_0_uart_rx6 rx
       (.D({rx_n_0,rx_n_1,rx_n_2}),
        .buffer_read(buffer_read),
        .buffer_reset(buffer_reset_rx_reg_n_0),
        .buffer_write_flop_0({data_out[7:6],data_out[2:0]}),
        .clk(clk),
        .en_16_x_baud(en_16_x_baud__0),
        .external_mem_douta(external_mem_douta[5:3]),
        .port_id({processor_n_1,p_0_in}),
        .uart_top_rx(uart_top_rx));
  system_pBlaze_0_0_uart_tx6 tx
       (.Q(data_in),
        .buffer_data_present(buffer_data_present),
        .buffer_full(buffer_full),
        .buffer_half_full(buffer_half_full),
        .buffer_reset(buffer_reset),
        .clk(clk),
        .en_16_x_baud(en_16_x_baud__0),
        .tx_buffer_write(tx_buffer_write),
        .uart_top_tx(uart_top_tx));
  FDRE \tx_data_in_reg[0] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[0]),
        .Q(data_in[0]),
        .R(1'b0));
  FDRE \tx_data_in_reg[1] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[1]),
        .Q(data_in[1]),
        .R(1'b0));
  FDRE \tx_data_in_reg[2] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[2]),
        .Q(data_in[2]),
        .R(1'b0));
  FDRE \tx_data_in_reg[3] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[3]),
        .Q(data_in[3]),
        .R(1'b0));
  FDRE \tx_data_in_reg[4] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[4]),
        .Q(data_in[4]),
        .R(1'b0));
  FDRE \tx_data_in_reg[5] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[5]),
        .Q(data_in[5]),
        .R(1'b0));
  FDRE \tx_data_in_reg[6] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[6]),
        .Q(data_in[6]),
        .R(1'b0));
  FDRE \tx_data_in_reg[7] 
       (.C(clk),
        .CE(tx_data_in),
        .D(out_port[7]),
        .Q(data_in[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_rx6" *) 
module system_pBlaze_0_0_uart_rx6
   (D,
    buffer_write_flop_0,
    external_mem_douta,
    port_id,
    buffer_read,
    buffer_reset,
    clk,
    uart_top_rx,
    en_16_x_baud);
  output [2:0]D;
  output [4:0]buffer_write_flop_0;
  input [2:0]external_mem_douta;
  input [1:0]port_id;
  input buffer_read;
  input buffer_reset;
  input clk;
  input uart_top_rx;
  input en_16_x_baud;

  wire [2:0]D;
  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire buffer_data_present_rx;
  wire buffer_full_rx;
  wire buffer_half_full_rx;
  wire buffer_read;
  wire buffer_reset;
  wire [4:0]buffer_write_flop_0;
  wire buffer_write_value;
  wire clk;
  wire data_0;
  wire data_1;
  wire data_2;
  wire data_3;
  wire data_4;
  wire data_5;
  wire data_6;
  wire data_7;
  wire [5:3]data_out;
  wire data_present_value;
  wire data_value_0;
  wire data_value_1;
  wire data_value_2;
  wire data_value_3;
  wire data_value_4;
  wire data_value_5;
  wire data_value_6;
  wire data_value_7;
  wire div_0;
  wire div_1;
  wire div_2;
  wire div_3;
  wire div_carry;
  wire div_value_0;
  wire div_value_1;
  wire div_value_2;
  wire div_value_3;
  wire en_16_x_baud;
  wire en_pointer;
  wire [2:0]external_mem_douta;
  wire pointer_value_0;
  wire pointer_value_1;
  wire pointer_value_2;
  wire pointer_value_3;
  wire [1:0]port_id;
  wire run_value;
  wire sample;
  wire sample_dly;
  wire sample_dly_value;
  wire sample_input;
  wire sample_input_value;
  wire sample_value;
  wire start_bit;
  wire start_bit_value;
  wire stop_bit;
  wire stop_bit_value;
  wire uart_top_rx;
  wire zero;

  (* HBLKNM = "uart_rx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    buffer_write_flop
       (.C(clk),
        .CE(1'b1),
        .D(buffer_write_value),
        .Q(I4),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hF0CCFFFFCCAAFFFF)) 
    data01_lut
       (.I0(data_0),
        .I1(data_1),
        .I2(data_2),
        .I3(sample_input),
        .I4(I3),
        .I5(1'b1),
        .O5(data_value_0),
        .O6(data_value_1));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data0_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_0),
        .Q(data_0),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data1_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_1),
        .Q(data_1),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hF0CCFFFFCCAAFFFF)) 
    data23_lut
       (.I0(data_2),
        .I1(data_3),
        .I2(data_4),
        .I3(sample_input),
        .I4(I3),
        .I5(1'b1),
        .O5(data_value_2),
        .O6(data_value_3));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data2_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_2),
        .Q(data_2),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data3_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_3),
        .Q(data_3),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hF0CCFFFFCCAAFFFF)) 
    data45_lut
       (.I0(data_4),
        .I1(data_5),
        .I2(data_6),
        .I3(sample_input),
        .I4(I3),
        .I5(1'b1),
        .O5(data_value_4),
        .O6(data_value_5));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data4_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_4),
        .Q(data_4),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data5_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_5),
        .Q(data_5),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hF0CCFFFFCCAAFFFF)) 
    data67_lut
       (.I0(data_6),
        .I1(data_7),
        .I2(stop_bit),
        .I3(sample_input),
        .I4(I3),
        .I5(1'b1),
        .O5(data_value_6),
        .O6(data_value_7));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data6_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_6),
        .Q(data_6),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data7_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_value_7),
        .Q(data_7),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_present_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_present_value),
        .Q(buffer_data_present_rx),
        .R(buffer_reset));
  (* HBLKNM = "uart_rx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hF4FCF4FC040004C0)) 
    data_present_lut
       (.I0(zero),
        .I1(buffer_data_present_rx),
        .I2(I4),
        .I3(buffer_read),
        .I4(buffer_full_rx),
        .I5(1'b1),
        .O5(en_pointer),
        .O6(data_present_value));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[0].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[0].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_0),
        .Q(buffer_write_flop_0[0]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[1].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[1].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_1),
        .Q(buffer_write_flop_0[1]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[2].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[2].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_2),
        .Q(buffer_write_flop_0[2]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[3].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[3].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_3),
        .Q(data_out[3]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[4].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[4].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_4),
        .Q(data_out[4]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[5].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[5].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_5),
        .Q(data_out[5]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[6].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[6].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_6),
        .Q(buffer_write_flop_0[3]));
  (* HBLKNM = "uart_rx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/rx/data_width_loop " *) 
  (* srl_name = "\U0/rx/data_width_loop[7].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[7].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full_rx),
        .CE(I4),
        .CLK(clk),
        .D(data_7),
        .Q(buffer_write_flop_0[4]));
  (* HBLKNM = "uart_rx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h6C0000005A000000)) 
    div01_lut
       (.I0(div_0),
        .I1(div_1),
        .I2(en_16_x_baud),
        .I3(I3),
        .I4(1'b1),
        .I5(1'b1),
        .O5(div_value_0),
        .O6(div_value_1));
  (* HBLKNM = "uart_rx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div0_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_0),
        .Q(div_0),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div1_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_1),
        .Q(div_1),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h6CCC00005AAA0000)) 
    div23_lut
       (.I0(div_2),
        .I1(div_3),
        .I2(div_carry),
        .I3(en_16_x_baud),
        .I4(I3),
        .I5(1'b1),
        .O5(div_value_2),
        .O6(div_value_3));
  (* HBLKNM = "uart_rx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div2_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_2),
        .Q(div_2),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div3_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_3),
        .Q(div_3),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0001000080000000)) 
    full_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(buffer_half_full_rx),
        .I4(1'b1),
        .I5(1'b1),
        .O5(buffer_full_rx),
        .O6(zero));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \in_port[3]_i_1 
       (.I0(external_mem_douta[0]),
        .I1(data_out[3]),
        .I2(port_id[0]),
        .I3(buffer_data_present_rx),
        .I4(port_id[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \in_port[4]_i_1 
       (.I0(external_mem_douta[1]),
        .I1(data_out[4]),
        .I2(port_id[0]),
        .I3(buffer_half_full_rx),
        .I4(port_id[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \in_port[5]_i_1 
       (.I0(external_mem_douta[2]),
        .I1(data_out[5]),
        .I2(port_id[0]),
        .I3(buffer_full_rx),
        .I4(port_id[1]),
        .O(D[2]));
  (* HBLKNM = "uart_rx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCC9060CCAA5050AA)) 
    pointer01_lut
       (.I0(I0),
        .I1(I1),
        .I2(en_pointer),
        .I3(I4),
        .I4(buffer_read),
        .I5(1'b1),
        .O5(pointer_value_0),
        .O6(pointer_value_1));
  (* HBLKNM = "uart_rx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer0_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_0),
        .Q(I0),
        .R(buffer_reset));
  (* HBLKNM = "uart_rx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer1_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_1),
        .Q(I1),
        .R(buffer_reset));
  (* HBLKNM = "uart_rx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer2_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_2),
        .Q(I2),
        .R(buffer_reset));
  (* HBLKNM = "uart_rx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0F0E1E0F878F0F0)) 
    pointer2_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(buffer_half_full_rx),
        .I4(I4),
        .I5(buffer_read),
        .O(pointer_value_2));
  (* HBLKNM = "uart_rx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer3_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_3),
        .Q(buffer_half_full_rx),
        .R(buffer_reset));
  (* HBLKNM = "uart_rx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00FE00FF80FF00)) 
    pointer3_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(buffer_half_full_rx),
        .I4(I4),
        .I5(buffer_read),
        .O(pointer_value_3));
  (* HBLKNM = "uart_rx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_flop
       (.C(clk),
        .CE(1'b1),
        .D(run_value),
        .Q(I3),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h2F2FAFAF0000FF00)) 
    run_lut
       (.I0(data_0),
        .I1(start_bit),
        .I2(sample_input),
        .I3(sample_dly),
        .I4(sample),
        .I5(I3),
        .O(run_value));
  (* HBLKNM = "uart_rx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sample_dly_flop
       (.C(clk),
        .CE(1'b1),
        .D(sample_dly_value),
        .Q(sample_dly),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sample_flop
       (.C(clk),
        .CE(1'b1),
        .D(sample_value),
        .Q(sample),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sample_input_flop
       (.C(clk),
        .CE(1'b1),
        .D(sample_input_value),
        .Q(sample_input),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0080000088888888)) 
    sample_input_lut
       (.I0(div_0),
        .I1(div_1),
        .I2(div_2),
        .I3(div_3),
        .I4(en_16_x_baud),
        .I5(1'b1),
        .O5(div_carry),
        .O6(sample_input_value));
  (* HBLKNM = "uart_rx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCCF00000AACC0000)) 
    sample_lut
       (.I0(uart_top_rx),
        .I1(sample),
        .I2(sample_dly),
        .I3(en_16_x_baud),
        .I4(1'b1),
        .I5(1'b1),
        .O5(sample_value),
        .O6(sample_dly_value));
  (* HBLKNM = "uart_rx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    start_bit_flop
       (.C(clk),
        .CE(1'b1),
        .D(start_bit_value),
        .Q(start_bit),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h222200F000000000)) 
    start_bit_lut
       (.I0(start_bit),
        .I1(sample_input),
        .I2(sample_dly),
        .I3(sample),
        .I4(I3),
        .I5(1'b1),
        .O(start_bit_value));
  (* HBLKNM = "uart_rx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    stop_bit_flop
       (.C(clk),
        .CE(1'b1),
        .D(stop_bit_value),
        .Q(stop_bit),
        .R(1'b0));
  (* HBLKNM = "uart_rx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCAFFCAFF0000C0C0)) 
    stop_bit_lut
       (.I0(stop_bit),
        .I1(sample),
        .I2(sample_input),
        .I3(I3),
        .I4(data_0),
        .I5(1'b1),
        .O5(buffer_write_value),
        .O6(stop_bit_value));
endmodule

(* ORIG_REF_NAME = "uart_tx6" *) 
module system_pBlaze_0_0_uart_tx6
   (buffer_half_full,
    buffer_data_present,
    buffer_full,
    uart_top_tx,
    tx_buffer_write,
    buffer_reset,
    clk,
    en_16_x_baud,
    Q);
  output buffer_half_full;
  output buffer_data_present;
  output buffer_full;
  output uart_top_tx;
  input tx_buffer_write;
  input buffer_reset;
  input clk;
  input en_16_x_baud;
  input [7:0]Q;

  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire [7:0]Q;
  wire buffer_data_present;
  wire buffer_full;
  wire buffer_half_full;
  wire buffer_read_value;
  wire buffer_reset;
  wire clk;
  wire data_0;
  wire data_1;
  wire data_2;
  wire data_4;
  wire data_5;
  wire data_6;
  wire data_7;
  wire data_present_value;
  wire div_0;
  wire div_1;
  wire div_2;
  wire div_3;
  wire div_value_0;
  wire div_value_1;
  wire div_value_2;
  wire div_value_3;
  wire en_16_x_baud;
  wire en_pointer;
  wire last_bit;
  wire lsb_data;
  wire msb_data;
  wire next_bit;
  wire next_value;
  wire pointer_value_0;
  wire pointer_value_1;
  wire pointer_value_2;
  wire pointer_value_3;
  wire serial_data;
  wire sm_1;
  wire sm_2;
  wire sm_3;
  wire sm_value_0;
  wire sm_value_1;
  wire sm_value_2;
  wire sm_value_3;
  wire store_data_0;
  wire store_data_1;
  wire store_data_2;
  wire store_data_3;
  wire store_data_4;
  wire store_data_5;
  wire store_data_6;
  wire store_data_7;
  wire tx_buffer_write;
  wire uart_top_tx;
  wire zero;

  (* HBLKNM = "uart_tx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_present_flop
       (.C(clk),
        .CE(1'b1),
        .D(data_present_value),
        .Q(buffer_data_present),
        .R(buffer_reset));
  (* HBLKNM = "uart_tx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hF4FCF4FC040004C0)) 
    data_present_lut
       (.I0(zero),
        .I1(buffer_data_present),
        .I2(tx_buffer_write),
        .I3(I5),
        .I4(buffer_full),
        .I5(1'b1),
        .O5(en_pointer),
        .O6(data_present_value));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[0].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_0),
        .Q(data_0),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[0].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[0].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[0]),
        .Q(store_data_0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[1].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_1),
        .Q(data_1),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[1].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[1].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[1]),
        .Q(store_data_1));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[2].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_2),
        .Q(data_2),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[2].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[2].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[2]),
        .Q(store_data_2));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[3].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_3),
        .Q(I3),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[3].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[3].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[3]),
        .Q(store_data_3));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[4].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_4),
        .Q(data_4),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[4].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[4].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[4]),
        .Q(store_data_4));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[5].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_5),
        .Q(data_5),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[5].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[5].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[5]),
        .Q(store_data_5));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[6].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_6),
        .Q(data_6),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[6].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[6].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[6]),
        .Q(store_data_6));
  (* HBLKNM = "uart_tx6_5" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_width_loop[7].storage_flop 
       (.C(clk),
        .CE(1'b1),
        .D(store_data_7),
        .Q(data_7),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_5" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/tx/data_width_loop " *) 
  (* srl_name = "\U0/tx/data_width_loop[7].storage_srl " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \data_width_loop[7].storage_srl 
       (.A0(I0),
        .A1(I1),
        .A2(I2),
        .A3(buffer_half_full),
        .CE(tx_buffer_write),
        .CLK(clk),
        .D(Q[7]),
        .Q(store_data_7));
  (* HBLKNM = "uart_tx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h6C0000005A000000)) 
    div01_lut
       (.I0(div_0),
        .I1(div_1),
        .I2(en_16_x_baud),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(div_value_0),
        .O6(div_value_1));
  (* HBLKNM = "uart_tx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div0_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_0),
        .Q(div_0),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div1_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_1),
        .Q(div_1),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7F80FF007878F0F0)) 
    div23_lut
       (.I0(div_0),
        .I1(div_1),
        .I2(div_2),
        .I3(div_3),
        .I4(en_16_x_baud),
        .I5(1'b1),
        .O5(div_value_2),
        .O6(div_value_3));
  (* HBLKNM = "uart_tx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div2_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_2),
        .Q(div_2),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    div3_flop
       (.C(clk),
        .CE(1'b1),
        .D(div_value_3),
        .Q(div_3),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0001000080000000)) 
    full_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(buffer_half_full),
        .I4(1'b1),
        .I5(1'b1),
        .O5(buffer_full),
        .O6(zero));
  (* HBLKNM = "uart_tx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    lsb_data_lut
       (.I0(data_0),
        .I1(data_1),
        .I2(data_2),
        .I3(I3),
        .I4(I4),
        .I5(sm_1),
        .O(lsb_data));
  (* HBLKNM = "uart_tx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    msb_data_lut
       (.I0(data_4),
        .I1(data_5),
        .I2(data_6),
        .I3(data_7),
        .I4(I4),
        .I5(sm_1),
        .O(msb_data));
  (* HBLKNM = "uart_tx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    next_flop
       (.C(clk),
        .CE(1'b1),
        .D(next_value),
        .Q(next_bit),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_3" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000080000000)) 
    next_lut
       (.I0(div_0),
        .I1(div_1),
        .I2(div_2),
        .I3(div_3),
        .I4(en_16_x_baud),
        .I5(last_bit),
        .O5(next_value),
        .O6(buffer_read_value));
  (* HBLKNM = "uart_tx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCC9060CCAA5050AA)) 
    pointer01_lut
       (.I0(I0),
        .I1(I1),
        .I2(en_pointer),
        .I3(tx_buffer_write),
        .I4(I5),
        .I5(1'b1),
        .O5(pointer_value_0),
        .O6(pointer_value_1));
  (* HBLKNM = "uart_tx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer0_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_0),
        .Q(I0),
        .R(buffer_reset));
  (* HBLKNM = "uart_tx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer1_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_1),
        .Q(I1),
        .R(buffer_reset));
  (* HBLKNM = "uart_tx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer2_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_2),
        .Q(I2),
        .R(buffer_reset));
  (* HBLKNM = "uart_tx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0F0E1E0F878F0F0)) 
    pointer2_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(buffer_half_full),
        .I4(tx_buffer_write),
        .I5(I5),
        .O(pointer_value_2));
  (* HBLKNM = "uart_tx6_1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pointer3_flop
       (.C(clk),
        .CE(1'b1),
        .D(pointer_value_3),
        .Q(buffer_half_full),
        .R(buffer_reset));
  (* HBLKNM = "uart_tx6_1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00FE00FF80FF00)) 
    pointer3_lut
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(buffer_half_full),
        .I4(tx_buffer_write),
        .I5(I5),
        .O(pointer_value_3));
  (* HBLKNM = "uart_tx6_3" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    read_flop
       (.C(clk),
        .CE(1'b1),
        .D(buffer_read_value),
        .Q(I5),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_4" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    serial_flop
       (.C(clk),
        .CE(1'b1),
        .D(serial_data),
        .Q(uart_top_tx),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_4" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCFAACC0F0FFFFFFF)) 
    serial_lut
       (.I0(lsb_data),
        .I1(msb_data),
        .I2(sm_1),
        .I3(sm_2),
        .I4(sm_3),
        .I5(1'b1),
        .O5(last_bit),
        .O6(serial_data));
  (* HBLKNM = "uart_tx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sm0_flop
       (.C(clk),
        .CE(1'b1),
        .D(sm_value_0),
        .Q(I4),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h85500000AAAAAAAA)) 
    sm0_lut
       (.I0(I4),
        .I1(sm_1),
        .I2(sm_2),
        .I3(sm_3),
        .I4(buffer_data_present),
        .I5(next_bit),
        .O(sm_value_0));
  (* HBLKNM = "uart_tx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sm1_flop
       (.C(clk),
        .CE(1'b1),
        .D(sm_value_1),
        .Q(sm_1),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h26610000CCCCCCCC)) 
    sm1_lut
       (.I0(I4),
        .I1(sm_1),
        .I2(sm_2),
        .I3(sm_3),
        .I4(buffer_data_present),
        .I5(next_bit),
        .O(sm_value_1));
  (* HBLKNM = "uart_tx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sm2_flop
       (.C(clk),
        .CE(1'b1),
        .D(sm_value_2),
        .Q(sm_2),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h88700000F0F0F0F0)) 
    sm2_lut
       (.I0(I4),
        .I1(sm_1),
        .I2(sm_2),
        .I3(sm_3),
        .I4(buffer_data_present),
        .I5(next_bit),
        .O(sm_value_2));
  (* HBLKNM = "uart_tx6_2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sm3_flop
       (.C(clk),
        .CE(1'b1),
        .D(sm_value_3),
        .Q(sm_3),
        .R(1'b0));
  (* HBLKNM = "uart_tx6_2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h87440000FF00FF00)) 
    sm3_lut
       (.I0(I4),
        .I1(sm_1),
        .I2(sm_2),
        .I3(sm_3),
        .I4(buffer_data_present),
        .I5(next_bit),
        .O(sm_value_3));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
