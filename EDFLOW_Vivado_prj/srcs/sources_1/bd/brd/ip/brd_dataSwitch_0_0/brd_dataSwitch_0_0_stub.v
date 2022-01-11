// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:55:23 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_dataSwitch_0_0/brd_dataSwitch_0_0_stub.v
// Design      : brd_dataSwitch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dataSwitch,Vivado 2018.1" *)
module brd_dataSwitch_0_0(clk_i, rst_n_i, select_i, data_vd_i, data_i, 
  data_o_1, data_o_vd1, data_o_num1, data_o_2, data_o_vd2, data_o_num2)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_n_i,select_i,data_vd_i,data_i[15:0],data_o_1[15:0],data_o_vd1,data_o_num1[63:0],data_o_2[15:0],data_o_vd2,data_o_num2[63:0]" */;
  input clk_i;
  input rst_n_i;
  input select_i;
  input data_vd_i;
  input [15:0]data_i;
  output [15:0]data_o_1;
  output data_o_vd1;
  output [63:0]data_o_num1;
  output [15:0]data_o_2;
  output data_o_vd2;
  output [63:0]data_o_num2;
endmodule
