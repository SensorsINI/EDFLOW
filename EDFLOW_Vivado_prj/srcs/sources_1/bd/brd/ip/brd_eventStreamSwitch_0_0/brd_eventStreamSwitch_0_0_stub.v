// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat May  8 22:22:08 2021
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_eventStreamSwitch_0_0/brd_eventStreamSwitch_0_0_stub.v
// Design      : brd_eventStreamSwitch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "eventStreamSwitch,Vivado 2018.1" *)
module brd_eventStreamSwitch_0_0(s_axi_config_AWADDR, s_axi_config_AWVALID, 
  s_axi_config_AWREADY, s_axi_config_WDATA, s_axi_config_WSTRB, s_axi_config_WVALID, 
  s_axi_config_WREADY, s_axi_config_BRESP, s_axi_config_BVALID, s_axi_config_BREADY, 
  s_axi_config_ARADDR, s_axi_config_ARVALID, s_axi_config_ARREADY, s_axi_config_RDATA, 
  s_axi_config_RRESP, s_axi_config_RVALID, s_axi_config_RREADY, ap_clk, ap_rst_n, ap_start, 
  ap_done, ap_idle, ap_ready, xStreamOut_V_V_TVALID, xStreamOut_V_V_TREADY, 
  xStreamOut_V_V_TDATA, yStreamOut_V_V_TVALID, yStreamOut_V_V_TREADY, 
  yStreamOut_V_V_TDATA, tsStreamOut_V_V_TVALID, tsStreamOut_V_V_TREADY, 
  tsStreamOut_V_V_TDATA, polStreamOut_V_V_TVALID, polStreamOut_V_V_TREADY, 
  polStreamOut_V_V_TDATA, cornerStreamOut_V_V_TVALID, cornerStreamOut_V_V_TREADY, 
  cornerStreamOut_V_V_TDATA, xStreamIn0_V_V_TVALID, xStreamIn0_V_V_TREADY, 
  xStreamIn0_V_V_TDATA, yStreamIn0_V_V_TVALID, yStreamIn0_V_V_TREADY, 
  yStreamIn0_V_V_TDATA, tsStreamIn0_V_V_TVALID, tsStreamIn0_V_V_TREADY, 
  tsStreamIn0_V_V_TDATA, polStreamIn0_V_V_TVALID, polStreamIn0_V_V_TREADY, 
  polStreamIn0_V_V_TDATA, cornerStreamIn0_V_V_TVALID, cornerStreamIn0_V_V_TREADY, 
  cornerStreamIn0_V_V_TDATA, xStreamIn1_V_V_TVALID, xStreamIn1_V_V_TREADY, 
  xStreamIn1_V_V_TDATA, yStreamIn1_V_V_TVALID, yStreamIn1_V_V_TREADY, 
  yStreamIn1_V_V_TDATA, tsStreamIn1_V_V_TVALID, tsStreamIn1_V_V_TREADY, 
  tsStreamIn1_V_V_TDATA, polStreamIn1_V_V_TVALID, polStreamIn1_V_V_TREADY, 
  polStreamIn1_V_V_TDATA, cornerStreamIn1_V_V_TVALID, cornerStreamIn1_V_V_TREADY, 
  cornerStreamIn1_V_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_config_AWADDR[4:0],s_axi_config_AWVALID,s_axi_config_AWREADY,s_axi_config_WDATA[31:0],s_axi_config_WSTRB[3:0],s_axi_config_WVALID,s_axi_config_WREADY,s_axi_config_BRESP[1:0],s_axi_config_BVALID,s_axi_config_BREADY,s_axi_config_ARADDR[4:0],s_axi_config_ARVALID,s_axi_config_ARREADY,s_axi_config_RDATA[31:0],s_axi_config_RRESP[1:0],s_axi_config_RVALID,s_axi_config_RREADY,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,xStreamOut_V_V_TVALID,xStreamOut_V_V_TREADY,xStreamOut_V_V_TDATA[15:0],yStreamOut_V_V_TVALID,yStreamOut_V_V_TREADY,yStreamOut_V_V_TDATA[15:0],tsStreamOut_V_V_TVALID,tsStreamOut_V_V_TREADY,tsStreamOut_V_V_TDATA[63:0],polStreamOut_V_V_TVALID,polStreamOut_V_V_TREADY,polStreamOut_V_V_TDATA[7:0],cornerStreamOut_V_V_TVALID,cornerStreamOut_V_V_TREADY,cornerStreamOut_V_V_TDATA[7:0],xStreamIn0_V_V_TVALID,xStreamIn0_V_V_TREADY,xStreamIn0_V_V_TDATA[15:0],yStreamIn0_V_V_TVALID,yStreamIn0_V_V_TREADY,yStreamIn0_V_V_TDATA[15:0],tsStreamIn0_V_V_TVALID,tsStreamIn0_V_V_TREADY,tsStreamIn0_V_V_TDATA[63:0],polStreamIn0_V_V_TVALID,polStreamIn0_V_V_TREADY,polStreamIn0_V_V_TDATA[7:0],cornerStreamIn0_V_V_TVALID,cornerStreamIn0_V_V_TREADY,cornerStreamIn0_V_V_TDATA[7:0],xStreamIn1_V_V_TVALID,xStreamIn1_V_V_TREADY,xStreamIn1_V_V_TDATA[15:0],yStreamIn1_V_V_TVALID,yStreamIn1_V_V_TREADY,yStreamIn1_V_V_TDATA[15:0],tsStreamIn1_V_V_TVALID,tsStreamIn1_V_V_TREADY,tsStreamIn1_V_V_TDATA[63:0],polStreamIn1_V_V_TVALID,polStreamIn1_V_V_TREADY,polStreamIn1_V_V_TDATA[7:0],cornerStreamIn1_V_V_TVALID,cornerStreamIn1_V_V_TREADY,cornerStreamIn1_V_V_TDATA[7:0]" */;
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
  output cornerStreamOut_V_V_TVALID;
  input cornerStreamOut_V_V_TREADY;
  output [7:0]cornerStreamOut_V_V_TDATA;
  input xStreamIn0_V_V_TVALID;
  output xStreamIn0_V_V_TREADY;
  input [15:0]xStreamIn0_V_V_TDATA;
  input yStreamIn0_V_V_TVALID;
  output yStreamIn0_V_V_TREADY;
  input [15:0]yStreamIn0_V_V_TDATA;
  input tsStreamIn0_V_V_TVALID;
  output tsStreamIn0_V_V_TREADY;
  input [63:0]tsStreamIn0_V_V_TDATA;
  input polStreamIn0_V_V_TVALID;
  output polStreamIn0_V_V_TREADY;
  input [7:0]polStreamIn0_V_V_TDATA;
  input cornerStreamIn0_V_V_TVALID;
  output cornerStreamIn0_V_V_TREADY;
  input [7:0]cornerStreamIn0_V_V_TDATA;
  input xStreamIn1_V_V_TVALID;
  output xStreamIn1_V_V_TREADY;
  input [15:0]xStreamIn1_V_V_TDATA;
  input yStreamIn1_V_V_TVALID;
  output yStreamIn1_V_V_TREADY;
  input [15:0]yStreamIn1_V_V_TDATA;
  input tsStreamIn1_V_V_TVALID;
  output tsStreamIn1_V_V_TREADY;
  input [63:0]tsStreamIn1_V_V_TDATA;
  input polStreamIn1_V_V_TVALID;
  output polStreamIn1_V_V_TREADY;
  input [7:0]polStreamIn1_V_V_TDATA;
  input cornerStreamIn1_V_V_TVALID;
  output cornerStreamIn1_V_V_TREADY;
  input [7:0]cornerStreamIn1_V_V_TDATA;
endmodule
