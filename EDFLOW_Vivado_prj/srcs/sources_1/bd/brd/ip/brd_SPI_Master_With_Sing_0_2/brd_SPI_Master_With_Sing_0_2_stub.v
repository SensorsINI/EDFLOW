// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:38:05 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_SPI_Master_With_Sing_0_2/brd_SPI_Master_With_Sing_0_2_stub.v
// Design      : brd_SPI_Master_With_Sing_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SPI_Master_With_Single_CS,Vivado 2018.1" *)
module brd_SPI_Master_With_Sing_0_2(i_Rst_L, i_Clk, i_TX_Count, i_TX_Byte, i_TX_DV, 
  o_TX_Ready, o_RX_Count, o_RX_DV, o_RX_Byte, w_Master_Ready_do, r_RX_Bit_Count_do, 
  r_TX_Bit_Count_do, o_SPI_Clk, i_SPI_MISO, o_SPI_MOSI, o_SPI_CS_n)
/* synthesis syn_black_box black_box_pad_pin="i_Rst_L,i_Clk,i_TX_Count[2:0],i_TX_Byte[47:0],i_TX_DV,o_TX_Ready,o_RX_Count[1:0],o_RX_DV,o_RX_Byte[47:0],w_Master_Ready_do,r_RX_Bit_Count_do[5:0],r_TX_Bit_Count_do[5:0],o_SPI_Clk,i_SPI_MISO,o_SPI_MOSI,o_SPI_CS_n" */;
  input i_Rst_L;
  input i_Clk;
  input [2:0]i_TX_Count;
  input [47:0]i_TX_Byte;
  input i_TX_DV;
  output o_TX_Ready;
  output [1:0]o_RX_Count;
  output o_RX_DV;
  output [47:0]o_RX_Byte;
  output w_Master_Ready_do;
  output [5:0]r_RX_Bit_Count_do;
  output [5:0]r_TX_Bit_Count_do;
  output o_SPI_Clk;
  input i_SPI_MISO;
  output o_SPI_MOSI;
  output o_SPI_CS_n;
endmodule
