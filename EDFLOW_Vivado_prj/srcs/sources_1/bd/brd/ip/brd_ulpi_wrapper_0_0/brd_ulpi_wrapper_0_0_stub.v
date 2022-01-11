// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:41:02 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_ulpi_wrapper_0_0/brd_ulpi_wrapper_0_0_stub.v
// Design      : brd_ulpi_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ulpi_wrapper,Vivado 2018.1" *)
module brd_ulpi_wrapper_0_0(ulpi_clk60_i, ulpi_rst_i, ulpi_data_io, 
  ulpi_dir_i, ulpi_nxt_i, ulpi_stp_o, mode_update_o, otg_update_o, state_o, xcvrselect_o, 
  termselect_o, opmode_o, mode_complete_o, otg_complete_o, utmi_tx_ready_o, 
  tx_delay_complete_o, utmi_tx_accept_o, ulpi_data_out_i_d, ulpi_data_in_o_d, 
  ulpi_data_dir_d, ulpi_reg_read_flag_d, turnaround_d, tx_wr_idx_q_d, tx_rd_idx_q_d, 
  utmi_data_q_do, ulpi_dir_q_do, ulpi_nxt_q_do, utmi_txvalid_i, utmi_txready_o, 
  utmi_rxvalid_o, utmi_rxactive_o, utmi_rxerror_o, utmi_data_in_o, utmi_data_out_i, 
  utmi_xcvrselect_i, utmi_termselect_i, utmi_op_mode_i, utmi_dppulldown_i, 
  utmi_dmpulldown_i, utmi_linestate_o)
/* synthesis syn_black_box black_box_pad_pin="ulpi_clk60_i,ulpi_rst_i,ulpi_data_io[7:0],ulpi_dir_i,ulpi_nxt_i,ulpi_stp_o,mode_update_o,otg_update_o,state_o[1:0],xcvrselect_o[1:0],termselect_o,opmode_o[1:0],mode_complete_o,otg_complete_o,utmi_tx_ready_o,tx_delay_complete_o,utmi_tx_accept_o,ulpi_data_out_i_d[7:0],ulpi_data_in_o_d[7:0],ulpi_data_dir_d,ulpi_reg_read_flag_d,turnaround_d,tx_wr_idx_q_d,tx_rd_idx_q_d,utmi_data_q_do[7:0],ulpi_dir_q_do,ulpi_nxt_q_do,utmi_txvalid_i,utmi_txready_o,utmi_rxvalid_o,utmi_rxactive_o,utmi_rxerror_o,utmi_data_in_o[7:0],utmi_data_out_i[7:0],utmi_xcvrselect_i[1:0],utmi_termselect_i,utmi_op_mode_i[1:0],utmi_dppulldown_i,utmi_dmpulldown_i,utmi_linestate_o[1:0]" */;
  input ulpi_clk60_i;
  input ulpi_rst_i;
  inout [7:0]ulpi_data_io;
  input ulpi_dir_i;
  input ulpi_nxt_i;
  output ulpi_stp_o;
  output mode_update_o;
  output otg_update_o;
  output [1:0]state_o;
  output [1:0]xcvrselect_o;
  output termselect_o;
  output [1:0]opmode_o;
  output mode_complete_o;
  output otg_complete_o;
  output utmi_tx_ready_o;
  output tx_delay_complete_o;
  output utmi_tx_accept_o;
  output [7:0]ulpi_data_out_i_d;
  output [7:0]ulpi_data_in_o_d;
  output ulpi_data_dir_d;
  output ulpi_reg_read_flag_d;
  output turnaround_d;
  output tx_wr_idx_q_d;
  output tx_rd_idx_q_d;
  output [7:0]utmi_data_q_do;
  output ulpi_dir_q_do;
  output ulpi_nxt_q_do;
  input utmi_txvalid_i;
  output utmi_txready_o;
  output utmi_rxvalid_o;
  output utmi_rxactive_o;
  output utmi_rxerror_o;
  output [7:0]utmi_data_in_o;
  input [7:0]utmi_data_out_i;
  input [1:0]utmi_xcvrselect_i;
  input utmi_termselect_i;
  input [1:0]utmi_op_mode_i;
  input utmi_dppulldown_i;
  input utmi_dmpulldown_i;
  output [1:0]utmi_linestate_o;
endmodule
