// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat May  8 22:23:27 2021
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_SFAST_process_data_0_0/brd_SFAST_process_data_0_0_stub.v
// Design      : brd_SFAST_process_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SFAST_process_data,Vivado 2018.1" *)
module brd_SFAST_process_data_0_0(s_axi_config_AWADDR, s_axi_config_AWVALID, 
  s_axi_config_AWREADY, s_axi_config_WDATA, s_axi_config_WSTRB, s_axi_config_WVALID, 
  s_axi_config_WREADY, s_axi_config_BRESP, s_axi_config_BVALID, s_axi_config_BREADY, 
  s_axi_config_ARADDR, s_axi_config_ARVALID, s_axi_config_ARREADY, s_axi_config_RDATA, 
  s_axi_config_RRESP, s_axi_config_RVALID, s_axi_config_RREADY, ap_clk, ap_rst_n, ap_done, 
  ap_start, ap_ready, ap_idle, xStreamIn_V_V_TVALID, xStreamIn_V_V_TREADY, 
  xStreamIn_V_V_TDATA, yStreamIn_V_V_TVALID, yStreamIn_V_V_TREADY, yStreamIn_V_V_TDATA, 
  tsStreamIn_V_V_TVALID, tsStreamIn_V_V_TREADY, tsStreamIn_V_V_TDATA, 
  polStreamIn_V_V_TVALID, polStreamIn_V_V_TREADY, polStreamIn_V_V_TDATA, 
  xStreamOut_V_V_TVALID, xStreamOut_V_V_TREADY, xStreamOut_V_V_TDATA, 
  yStreamOut_V_V_TVALID, yStreamOut_V_V_TREADY, yStreamOut_V_V_TDATA, 
  tsStreamOut_V_V_TVALID, tsStreamOut_V_V_TREADY, tsStreamOut_V_V_TDATA, 
  polStreamOut_V_V_TVALID, polStreamOut_V_V_TREADY, polStreamOut_V_V_TDATA, 
  isFinalCornerStream_V_V_TVALID, isFinalCornerStream_V_V_TREADY, 
  isFinalCornerStream_V_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_config_AWADDR[6:0],s_axi_config_AWVALID,s_axi_config_AWREADY,s_axi_config_WDATA[31:0],s_axi_config_WSTRB[3:0],s_axi_config_WVALID,s_axi_config_WREADY,s_axi_config_BRESP[1:0],s_axi_config_BVALID,s_axi_config_BREADY,s_axi_config_ARADDR[6:0],s_axi_config_ARVALID,s_axi_config_ARREADY,s_axi_config_RDATA[31:0],s_axi_config_RRESP[1:0],s_axi_config_RVALID,s_axi_config_RREADY,ap_clk,ap_rst_n,ap_done,ap_start,ap_ready,ap_idle,xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],xStreamOut_V_V_TVALID,xStreamOut_V_V_TREADY,xStreamOut_V_V_TDATA[15:0],yStreamOut_V_V_TVALID,yStreamOut_V_V_TREADY,yStreamOut_V_V_TDATA[15:0],tsStreamOut_V_V_TVALID,tsStreamOut_V_V_TREADY,tsStreamOut_V_V_TDATA[63:0],polStreamOut_V_V_TVALID,polStreamOut_V_V_TREADY,polStreamOut_V_V_TDATA[7:0],isFinalCornerStream_V_V_TVALID,isFinalCornerStream_V_V_TREADY,isFinalCornerStream_V_V_TDATA[15:0]" */;
  input [6:0]s_axi_config_AWADDR;
  input s_axi_config_AWVALID;
  output s_axi_config_AWREADY;
  input [31:0]s_axi_config_WDATA;
  input [3:0]s_axi_config_WSTRB;
  input s_axi_config_WVALID;
  output s_axi_config_WREADY;
  output [1:0]s_axi_config_BRESP;
  output s_axi_config_BVALID;
  input s_axi_config_BREADY;
  input [6:0]s_axi_config_ARADDR;
  input s_axi_config_ARVALID;
  output s_axi_config_ARREADY;
  output [31:0]s_axi_config_RDATA;
  output [1:0]s_axi_config_RRESP;
  output s_axi_config_RVALID;
  input s_axi_config_RREADY;
  input ap_clk;
  input ap_rst_n;
  output ap_done;
  input ap_start;
  output ap_ready;
  output ap_idle;
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
  output xStreamOut_V_V_TVALID;
  input xStreamOut_V_V_TREADY;
  output [15:0]xStreamOut_V_V_TDATA;
  output yStreamOut_V_V_TVALID;
  input yStreamOut_V_V_TREADY;
  output [15:0]yStreamOut_V_V_TDATA;
  output tsStreamOut_V_V_TVALID;
  input tsStreamOut_V_V_TREADY;
  output [63:0]tsStreamOut_V_V_TDATA;
  output polStreamOut_V_V_TVALID;
  input polStreamOut_V_V_TREADY;
  output [7:0]polStreamOut_V_V_TDATA;
  output isFinalCornerStream_V_V_TVALID;
  input isFinalCornerStream_V_V_TREADY;
  output [15:0]isFinalCornerStream_V_V_TDATA;
endmodule
