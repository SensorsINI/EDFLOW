// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat May  8 22:22:03 2021
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_XYTSStreamToRawStream_0_0/brd_XYTSStreamToRawStream_0_0_stub.v
// Design      : brd_XYTSStreamToRawStream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "XYTSStreamToRawStream,Vivado 2018.1" *)
module brd_XYTSStreamToRawStream_0_0(tsReg_V_ap_vld, glLastTSReg_V_ap_vld, 
  yReg_V_ap_vld, glLastYReg_V_ap_vld, tsDiffFlgReg_V_ap_vld, yDiffFlgReg_V_ap_vld, 
  rotateInfoOutReg_V_ap_vld, nonMonTSDiffFlgReg_V_ap_vld, tsWrappedVal_V_ap_vld, ap_clk, 
  ap_rst_n, ap_start, ap_done, ap_idle, ap_ready, streamOut_V_V_TVALID, streamOut_V_V_TREADY, 
  streamOut_V_V_TDATA, xStreamIn_V_V_TVALID, xStreamIn_V_V_TREADY, xStreamIn_V_V_TDATA, 
  yStreamIn_V_V_TVALID, yStreamIn_V_V_TREADY, yStreamIn_V_V_TDATA, tsStreamIn_V_V_TVALID, 
  tsStreamIn_V_V_TREADY, tsStreamIn_V_V_TDATA, polStreamIn_V_V_TVALID, 
  polStreamIn_V_V_TREADY, polStreamIn_V_V_TDATA, custDataStreamIn_V_V_TVALID, 
  custDataStreamIn_V_V_TREADY, custDataStreamIn_V_V_TDATA, tsReg_V, glLastTSReg_V, yReg_V, 
  glLastYReg_V, tsDiffFlgReg_V, yDiffFlgReg_V, rotateInfoOutReg_V, nonMonTSDiffFlgReg_V, 
  tsWrappedVal_V)
/* synthesis syn_black_box black_box_pad_pin="tsReg_V_ap_vld,glLastTSReg_V_ap_vld,yReg_V_ap_vld,glLastYReg_V_ap_vld,tsDiffFlgReg_V_ap_vld,yDiffFlgReg_V_ap_vld,rotateInfoOutReg_V_ap_vld,nonMonTSDiffFlgReg_V_ap_vld,tsWrappedVal_V_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,streamOut_V_V_TVALID,streamOut_V_V_TREADY,streamOut_V_V_TDATA[15:0],xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],custDataStreamIn_V_V_TVALID,custDataStreamIn_V_V_TREADY,custDataStreamIn_V_V_TDATA[15:0],tsReg_V[63:0],glLastTSReg_V[63:0],yReg_V[15:0],glLastYReg_V[15:0],tsDiffFlgReg_V[0:0],yDiffFlgReg_V[0:0],rotateInfoOutReg_V[63:0],nonMonTSDiffFlgReg_V[0:0],tsWrappedVal_V[11:0]" */;
  output tsReg_V_ap_vld;
  output glLastTSReg_V_ap_vld;
  output yReg_V_ap_vld;
  output glLastYReg_V_ap_vld;
  output tsDiffFlgReg_V_ap_vld;
  output yDiffFlgReg_V_ap_vld;
  output rotateInfoOutReg_V_ap_vld;
  output nonMonTSDiffFlgReg_V_ap_vld;
  output tsWrappedVal_V_ap_vld;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output streamOut_V_V_TVALID;
  input streamOut_V_V_TREADY;
  output [15:0]streamOut_V_V_TDATA;
  input xStreamIn_V_V_TVALID;
  output xStreamIn_V_V_TREADY;
  input [15:0]xStreamIn_V_V_TDATA;
  input yStreamIn_V_V_TVALID;
  output yStreamIn_V_V_TREADY;
  input [15:0]yStreamIn_V_V_TDATA;
  input tsStreamIn_V_V_TVALID;
  output tsStreamIn_V_V_TREADY;
  input [63:0]tsStreamIn_V_V_TDATA;
  input polStreamIn_V_V_TVALID;
  output polStreamIn_V_V_TREADY;
  input [7:0]polStreamIn_V_V_TDATA;
  input custDataStreamIn_V_V_TVALID;
  output custDataStreamIn_V_V_TREADY;
  input [15:0]custDataStreamIn_V_V_TDATA;
  output [63:0]tsReg_V;
  output [63:0]glLastTSReg_V;
  output [15:0]yReg_V;
  output [15:0]glLastYReg_V;
  output [0:0]tsDiffFlgReg_V;
  output [0:0]yDiffFlgReg_V;
  output [63:0]rotateInfoOutReg_V;
  output [0:0]nonMonTSDiffFlgReg_V;
  output [11:0]tsWrappedVal_V;
endmodule
