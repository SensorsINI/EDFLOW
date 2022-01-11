// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat May  8 22:22:07 2021
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_eventStreamDuplicate_0_0/brd_eventStreamDuplicate_0_0_stub.v
// Design      : brd_eventStreamDuplicate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "eventStreamDuplicate,Vivado 2018.1" *)
module brd_eventStreamDuplicate_0_0(s_axi_config_AWADDR, s_axi_config_AWVALID, 
  s_axi_config_AWREADY, s_axi_config_WDATA, s_axi_config_WSTRB, s_axi_config_WVALID, 
  s_axi_config_WREADY, s_axi_config_BRESP, s_axi_config_BVALID, s_axi_config_BREADY, 
  s_axi_config_ARADDR, s_axi_config_ARVALID, s_axi_config_ARREADY, s_axi_config_RDATA, 
  s_axi_config_RRESP, s_axi_config_RVALID, s_axi_config_RREADY, ap_clk, ap_rst_n, ap_start, 
  ap_done, ap_idle, ap_ready, xStreamOut0_V_V_TVALID, xStreamOut0_V_V_TREADY, 
  xStreamOut0_V_V_TDATA, yStreamOut0_V_V_TVALID, yStreamOut0_V_V_TREADY, 
  yStreamOut0_V_V_TDATA, polStreamOut0_V_V_TVALID, polStreamOut0_V_V_TREADY, 
  polStreamOut0_V_V_TDATA, tsStreamOut0_V_V_TVALID, tsStreamOut0_V_V_TREADY, 
  tsStreamOut0_V_V_TDATA, custDataStreamOut0_V_V_TVALID, custDataStreamOut0_V_V_TREADY, 
  custDataStreamOut0_V_V_TDATA, xStreamOut1_V_V_TVALID, xStreamOut1_V_V_TREADY, 
  xStreamOut1_V_V_TDATA, yStreamOut1_V_V_TVALID, yStreamOut1_V_V_TREADY, 
  yStreamOut1_V_V_TDATA, polStreamOut1_V_V_TVALID, polStreamOut1_V_V_TREADY, 
  polStreamOut1_V_V_TDATA, tsStreamOut1_V_V_TVALID, tsStreamOut1_V_V_TREADY, 
  tsStreamOut1_V_V_TDATA, custDataStreamOut1_V_V_TVALID, custDataStreamOut1_V_V_TREADY, 
  custDataStreamOut1_V_V_TDATA, xStreamIn_V_V_TVALID, xStreamIn_V_V_TREADY, 
  xStreamIn_V_V_TDATA, yStreamIn_V_V_TVALID, yStreamIn_V_V_TREADY, yStreamIn_V_V_TDATA, 
  tsStreamIn_V_V_TVALID, tsStreamIn_V_V_TREADY, tsStreamIn_V_V_TDATA, 
  polStreamIn_V_V_TVALID, polStreamIn_V_V_TREADY, polStreamIn_V_V_TDATA, 
  custDataStreamIn_V_V_TVALID, custDataStreamIn_V_V_TREADY, custDataStreamIn_V_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_config_AWADDR[4:0],s_axi_config_AWVALID,s_axi_config_AWREADY,s_axi_config_WDATA[31:0],s_axi_config_WSTRB[3:0],s_axi_config_WVALID,s_axi_config_WREADY,s_axi_config_BRESP[1:0],s_axi_config_BVALID,s_axi_config_BREADY,s_axi_config_ARADDR[4:0],s_axi_config_ARVALID,s_axi_config_ARREADY,s_axi_config_RDATA[31:0],s_axi_config_RRESP[1:0],s_axi_config_RVALID,s_axi_config_RREADY,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,xStreamOut0_V_V_TVALID,xStreamOut0_V_V_TREADY,xStreamOut0_V_V_TDATA[15:0],yStreamOut0_V_V_TVALID,yStreamOut0_V_V_TREADY,yStreamOut0_V_V_TDATA[15:0],polStreamOut0_V_V_TVALID,polStreamOut0_V_V_TREADY,polStreamOut0_V_V_TDATA[7:0],tsStreamOut0_V_V_TVALID,tsStreamOut0_V_V_TREADY,tsStreamOut0_V_V_TDATA[63:0],custDataStreamOut0_V_V_TVALID,custDataStreamOut0_V_V_TREADY,custDataStreamOut0_V_V_TDATA[15:0],xStreamOut1_V_V_TVALID,xStreamOut1_V_V_TREADY,xStreamOut1_V_V_TDATA[15:0],yStreamOut1_V_V_TVALID,yStreamOut1_V_V_TREADY,yStreamOut1_V_V_TDATA[15:0],polStreamOut1_V_V_TVALID,polStreamOut1_V_V_TREADY,polStreamOut1_V_V_TDATA[7:0],tsStreamOut1_V_V_TVALID,tsStreamOut1_V_V_TREADY,tsStreamOut1_V_V_TDATA[63:0],custDataStreamOut1_V_V_TVALID,custDataStreamOut1_V_V_TREADY,custDataStreamOut1_V_V_TDATA[15:0],xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],custDataStreamIn_V_V_TVALID,custDataStreamIn_V_V_TREADY,custDataStreamIn_V_V_TDATA[15:0]" */;
  input [4:0]s_axi_config_AWADDR;
  input s_axi_config_AWVALID;
  output s_axi_config_AWREADY;
  input [31:0]s_axi_config_WDATA;
  input [3:0]s_axi_config_WSTRB;
  input s_axi_config_WVALID;
  output s_axi_config_WREADY;
  output [1:0]s_axi_config_BRESP;
  output s_axi_config_BVALID;
  input s_axi_config_BREADY;
  input [4:0]s_axi_config_ARADDR;
  input s_axi_config_ARVALID;
  output s_axi_config_ARREADY;
  output [31:0]s_axi_config_RDATA;
  output [1:0]s_axi_config_RRESP;
  output s_axi_config_RVALID;
  input s_axi_config_RREADY;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output xStreamOut0_V_V_TVALID;
  input xStreamOut0_V_V_TREADY;
  output [15:0]xStreamOut0_V_V_TDATA;
  output yStreamOut0_V_V_TVALID;
  input yStreamOut0_V_V_TREADY;
  output [15:0]yStreamOut0_V_V_TDATA;
  output polStreamOut0_V_V_TVALID;
  input polStreamOut0_V_V_TREADY;
  output [7:0]polStreamOut0_V_V_TDATA;
  output tsStreamOut0_V_V_TVALID;
  input tsStreamOut0_V_V_TREADY;
  output [63:0]tsStreamOut0_V_V_TDATA;
  output custDataStreamOut0_V_V_TVALID;
  input custDataStreamOut0_V_V_TREADY;
  output [15:0]custDataStreamOut0_V_V_TDATA;
  output xStreamOut1_V_V_TVALID;
  input xStreamOut1_V_V_TREADY;
  output [15:0]xStreamOut1_V_V_TDATA;
  output yStreamOut1_V_V_TVALID;
  input yStreamOut1_V_V_TREADY;
  output [15:0]yStreamOut1_V_V_TDATA;
  output polStreamOut1_V_V_TVALID;
  input polStreamOut1_V_V_TREADY;
  output [7:0]polStreamOut1_V_V_TDATA;
  output tsStreamOut1_V_V_TVALID;
  input tsStreamOut1_V_V_TREADY;
  output [63:0]tsStreamOut1_V_V_TDATA;
  output custDataStreamOut1_V_V_TVALID;
  input custDataStreamOut1_V_V_TREADY;
  output [15:0]custDataStreamOut1_V_V_TDATA;
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
endmodule
