// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat May  8 22:22:07 2021
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_eventStreamDuplicate_0_0/brd_eventStreamDuplicate_0_0_sim_netlist.v
// Design      : brd_eventStreamDuplicate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_eventStreamDuplicate_0_0,eventStreamDuplicate,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "eventStreamDuplicate,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_eventStreamDuplicate_0_0
   (s_axi_config_AWADDR,
    s_axi_config_AWVALID,
    s_axi_config_AWREADY,
    s_axi_config_WDATA,
    s_axi_config_WSTRB,
    s_axi_config_WVALID,
    s_axi_config_WREADY,
    s_axi_config_BRESP,
    s_axi_config_BVALID,
    s_axi_config_BREADY,
    s_axi_config_ARADDR,
    s_axi_config_ARVALID,
    s_axi_config_ARREADY,
    s_axi_config_RDATA,
    s_axi_config_RRESP,
    s_axi_config_RVALID,
    s_axi_config_RREADY,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    xStreamOut0_V_V_TVALID,
    xStreamOut0_V_V_TREADY,
    xStreamOut0_V_V_TDATA,
    yStreamOut0_V_V_TVALID,
    yStreamOut0_V_V_TREADY,
    yStreamOut0_V_V_TDATA,
    polStreamOut0_V_V_TVALID,
    polStreamOut0_V_V_TREADY,
    polStreamOut0_V_V_TDATA,
    tsStreamOut0_V_V_TVALID,
    tsStreamOut0_V_V_TREADY,
    tsStreamOut0_V_V_TDATA,
    custDataStreamOut0_V_V_TVALID,
    custDataStreamOut0_V_V_TREADY,
    custDataStreamOut0_V_V_TDATA,
    xStreamOut1_V_V_TVALID,
    xStreamOut1_V_V_TREADY,
    xStreamOut1_V_V_TDATA,
    yStreamOut1_V_V_TVALID,
    yStreamOut1_V_V_TREADY,
    yStreamOut1_V_V_TDATA,
    polStreamOut1_V_V_TVALID,
    polStreamOut1_V_V_TREADY,
    polStreamOut1_V_V_TDATA,
    tsStreamOut1_V_V_TVALID,
    tsStreamOut1_V_V_TREADY,
    tsStreamOut1_V_V_TDATA,
    custDataStreamOut1_V_V_TVALID,
    custDataStreamOut1_V_V_TREADY,
    custDataStreamOut1_V_V_TDATA,
    xStreamIn_V_V_TVALID,
    xStreamIn_V_V_TREADY,
    xStreamIn_V_V_TDATA,
    yStreamIn_V_V_TVALID,
    yStreamIn_V_V_TREADY,
    yStreamIn_V_V_TDATA,
    tsStreamIn_V_V_TVALID,
    tsStreamIn_V_V_TREADY,
    tsStreamIn_V_V_TDATA,
    polStreamIn_V_V_TVALID,
    polStreamIn_V_V_TREADY,
    polStreamIn_V_V_TDATA,
    custDataStreamIn_V_V_TVALID,
    custDataStreamIn_V_V_TREADY,
    custDataStreamIn_V_V_TDATA);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_config, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [4:0]s_axi_config_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWVALID" *) input s_axi_config_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWREADY" *) output s_axi_config_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WDATA" *) input [31:0]s_axi_config_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WSTRB" *) input [3:0]s_axi_config_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WVALID" *) input s_axi_config_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WREADY" *) output s_axi_config_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config BRESP" *) output [1:0]s_axi_config_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config BVALID" *) output s_axi_config_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config BREADY" *) input s_axi_config_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARADDR" *) input [4:0]s_axi_config_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARVALID" *) input s_axi_config_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARREADY" *) output s_axi_config_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RDATA" *) output [31:0]s_axi_config_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RRESP" *) output [1:0]s_axi_config_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RVALID" *) output s_axi_config_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RREADY" *) input s_axi_config_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_config:xStreamOut0_V_V:yStreamOut0_V_V:polStreamOut0_V_V:tsStreamOut0_V_V:custDataStreamOut0_V_V:xStreamOut1_V_V:yStreamOut1_V_V:polStreamOut1_V_V:tsStreamOut1_V_V:custDataStreamOut1_V_V:xStreamIn_V_V:yStreamIn_V_V:tsStreamIn_V_V:polStreamIn_V_V:custDataStreamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut0_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME xStreamOut0_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output xStreamOut0_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut0_V_V TREADY" *) input xStreamOut0_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut0_V_V TDATA" *) output [15:0]xStreamOut0_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut0_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME yStreamOut0_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output yStreamOut0_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut0_V_V TREADY" *) input yStreamOut0_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut0_V_V TDATA" *) output [15:0]yStreamOut0_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut0_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME polStreamOut0_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output polStreamOut0_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut0_V_V TREADY" *) input polStreamOut0_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut0_V_V TDATA" *) output [7:0]polStreamOut0_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut0_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME tsStreamOut0_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output tsStreamOut0_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut0_V_V TREADY" *) input tsStreamOut0_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut0_V_V TDATA" *) output [63:0]tsStreamOut0_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamOut0_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME custDataStreamOut0_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output custDataStreamOut0_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamOut0_V_V TREADY" *) input custDataStreamOut0_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamOut0_V_V TDATA" *) output [15:0]custDataStreamOut0_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut1_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME xStreamOut1_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output xStreamOut1_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut1_V_V TREADY" *) input xStreamOut1_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut1_V_V TDATA" *) output [15:0]xStreamOut1_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut1_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME yStreamOut1_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output yStreamOut1_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut1_V_V TREADY" *) input yStreamOut1_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut1_V_V TDATA" *) output [15:0]yStreamOut1_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut1_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME polStreamOut1_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output polStreamOut1_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut1_V_V TREADY" *) input polStreamOut1_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut1_V_V TDATA" *) output [7:0]polStreamOut1_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut1_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME tsStreamOut1_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output tsStreamOut1_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut1_V_V TREADY" *) input tsStreamOut1_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut1_V_V TDATA" *) output [63:0]tsStreamOut1_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamOut1_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME custDataStreamOut1_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output custDataStreamOut1_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamOut1_V_V TREADY" *) input custDataStreamOut1_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamOut1_V_V TDATA" *) output [15:0]custDataStreamOut1_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME xStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input xStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamIn_V_V TREADY" *) output xStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamIn_V_V TDATA" *) input [15:0]xStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME yStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input yStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamIn_V_V TREADY" *) output yStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamIn_V_V TDATA" *) input [15:0]yStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME tsStreamIn_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input tsStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TREADY" *) output tsStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TDATA" *) input [63:0]tsStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME polStreamIn_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input polStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamIn_V_V TREADY" *) output polStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamIn_V_V TDATA" *) input [7:0]polStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME custDataStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input custDataStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TREADY" *) output custDataStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TDATA" *) input [15:0]custDataStreamIn_V_V_TDATA;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]custDataStreamIn_V_V_TDATA;
  wire custDataStreamIn_V_V_TREADY;
  wire custDataStreamIn_V_V_TVALID;
  wire [15:0]custDataStreamOut0_V_V_TDATA;
  wire custDataStreamOut0_V_V_TREADY;
  wire custDataStreamOut0_V_V_TVALID;
  wire [15:0]custDataStreamOut1_V_V_TDATA;
  wire custDataStreamOut1_V_V_TREADY;
  wire custDataStreamOut1_V_V_TVALID;
  wire [7:0]polStreamIn_V_V_TDATA;
  wire polStreamIn_V_V_TREADY;
  wire polStreamIn_V_V_TVALID;
  wire [7:0]polStreamOut0_V_V_TDATA;
  wire polStreamOut0_V_V_TREADY;
  wire polStreamOut0_V_V_TVALID;
  wire [7:0]polStreamOut1_V_V_TDATA;
  wire polStreamOut1_V_V_TREADY;
  wire polStreamOut1_V_V_TVALID;
  wire [4:0]s_axi_config_ARADDR;
  wire s_axi_config_ARREADY;
  wire s_axi_config_ARVALID;
  wire [4:0]s_axi_config_AWADDR;
  wire s_axi_config_AWREADY;
  wire s_axi_config_AWVALID;
  wire s_axi_config_BREADY;
  wire [1:0]s_axi_config_BRESP;
  wire s_axi_config_BVALID;
  wire [31:0]s_axi_config_RDATA;
  wire s_axi_config_RREADY;
  wire [1:0]s_axi_config_RRESP;
  wire s_axi_config_RVALID;
  wire [31:0]s_axi_config_WDATA;
  wire s_axi_config_WREADY;
  wire [3:0]s_axi_config_WSTRB;
  wire s_axi_config_WVALID;
  wire [63:0]tsStreamIn_V_V_TDATA;
  wire tsStreamIn_V_V_TREADY;
  wire tsStreamIn_V_V_TVALID;
  wire [63:0]tsStreamOut0_V_V_TDATA;
  wire tsStreamOut0_V_V_TREADY;
  wire tsStreamOut0_V_V_TVALID;
  wire [63:0]tsStreamOut1_V_V_TDATA;
  wire tsStreamOut1_V_V_TREADY;
  wire tsStreamOut1_V_V_TVALID;
  wire [15:0]xStreamIn_V_V_TDATA;
  wire xStreamIn_V_V_TREADY;
  wire xStreamIn_V_V_TVALID;
  wire [15:0]xStreamOut0_V_V_TDATA;
  wire xStreamOut0_V_V_TREADY;
  wire xStreamOut0_V_V_TVALID;
  wire [15:0]xStreamOut1_V_V_TDATA;
  wire xStreamOut1_V_V_TREADY;
  wire xStreamOut1_V_V_TVALID;
  wire [15:0]yStreamIn_V_V_TDATA;
  wire yStreamIn_V_V_TREADY;
  wire yStreamIn_V_V_TVALID;
  wire [15:0]yStreamOut0_V_V_TDATA;
  wire yStreamOut0_V_V_TREADY;
  wire yStreamOut0_V_V_TVALID;
  wire [15:0]yStreamOut1_V_V_TDATA;
  wire yStreamOut1_V_V_TREADY;
  wire yStreamOut1_V_V_TVALID;

  (* C_S_AXI_CONFIG_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONFIG_DATA_WIDTH = "32" *) 
  brd_eventStreamDuplicate_0_0_eventStreamDuplicate U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .custDataStreamIn_V_V_TDATA(custDataStreamIn_V_V_TDATA),
        .custDataStreamIn_V_V_TREADY(custDataStreamIn_V_V_TREADY),
        .custDataStreamIn_V_V_TVALID(custDataStreamIn_V_V_TVALID),
        .custDataStreamOut0_V_V_TDATA(custDataStreamOut0_V_V_TDATA),
        .custDataStreamOut0_V_V_TREADY(custDataStreamOut0_V_V_TREADY),
        .custDataStreamOut0_V_V_TVALID(custDataStreamOut0_V_V_TVALID),
        .custDataStreamOut1_V_V_TDATA(custDataStreamOut1_V_V_TDATA),
        .custDataStreamOut1_V_V_TREADY(custDataStreamOut1_V_V_TREADY),
        .custDataStreamOut1_V_V_TVALID(custDataStreamOut1_V_V_TVALID),
        .polStreamIn_V_V_TDATA(polStreamIn_V_V_TDATA),
        .polStreamIn_V_V_TREADY(polStreamIn_V_V_TREADY),
        .polStreamIn_V_V_TVALID(polStreamIn_V_V_TVALID),
        .polStreamOut0_V_V_TDATA(polStreamOut0_V_V_TDATA),
        .polStreamOut0_V_V_TREADY(polStreamOut0_V_V_TREADY),
        .polStreamOut0_V_V_TVALID(polStreamOut0_V_V_TVALID),
        .polStreamOut1_V_V_TDATA(polStreamOut1_V_V_TDATA),
        .polStreamOut1_V_V_TREADY(polStreamOut1_V_V_TREADY),
        .polStreamOut1_V_V_TVALID(polStreamOut1_V_V_TVALID),
        .s_axi_config_ARADDR(s_axi_config_ARADDR),
        .s_axi_config_ARREADY(s_axi_config_ARREADY),
        .s_axi_config_ARVALID(s_axi_config_ARVALID),
        .s_axi_config_AWADDR(s_axi_config_AWADDR),
        .s_axi_config_AWREADY(s_axi_config_AWREADY),
        .s_axi_config_AWVALID(s_axi_config_AWVALID),
        .s_axi_config_BREADY(s_axi_config_BREADY),
        .s_axi_config_BRESP(s_axi_config_BRESP),
        .s_axi_config_BVALID(s_axi_config_BVALID),
        .s_axi_config_RDATA(s_axi_config_RDATA),
        .s_axi_config_RREADY(s_axi_config_RREADY),
        .s_axi_config_RRESP(s_axi_config_RRESP),
        .s_axi_config_RVALID(s_axi_config_RVALID),
        .s_axi_config_WDATA(s_axi_config_WDATA),
        .s_axi_config_WREADY(s_axi_config_WREADY),
        .s_axi_config_WSTRB(s_axi_config_WSTRB),
        .s_axi_config_WVALID(s_axi_config_WVALID),
        .tsStreamIn_V_V_TDATA(tsStreamIn_V_V_TDATA),
        .tsStreamIn_V_V_TREADY(tsStreamIn_V_V_TREADY),
        .tsStreamIn_V_V_TVALID(tsStreamIn_V_V_TVALID),
        .tsStreamOut0_V_V_TDATA(tsStreamOut0_V_V_TDATA),
        .tsStreamOut0_V_V_TREADY(tsStreamOut0_V_V_TREADY),
        .tsStreamOut0_V_V_TVALID(tsStreamOut0_V_V_TVALID),
        .tsStreamOut1_V_V_TDATA(tsStreamOut1_V_V_TDATA),
        .tsStreamOut1_V_V_TREADY(tsStreamOut1_V_V_TREADY),
        .tsStreamOut1_V_V_TVALID(tsStreamOut1_V_V_TVALID),
        .xStreamIn_V_V_TDATA(xStreamIn_V_V_TDATA),
        .xStreamIn_V_V_TREADY(xStreamIn_V_V_TREADY),
        .xStreamIn_V_V_TVALID(xStreamIn_V_V_TVALID),
        .xStreamOut0_V_V_TDATA(xStreamOut0_V_V_TDATA),
        .xStreamOut0_V_V_TREADY(xStreamOut0_V_V_TREADY),
        .xStreamOut0_V_V_TVALID(xStreamOut0_V_V_TVALID),
        .xStreamOut1_V_V_TDATA(xStreamOut1_V_V_TDATA),
        .xStreamOut1_V_V_TREADY(xStreamOut1_V_V_TREADY),
        .xStreamOut1_V_V_TVALID(xStreamOut1_V_V_TVALID),
        .yStreamIn_V_V_TDATA(yStreamIn_V_V_TDATA),
        .yStreamIn_V_V_TREADY(yStreamIn_V_V_TREADY),
        .yStreamIn_V_V_TVALID(yStreamIn_V_V_TVALID),
        .yStreamOut0_V_V_TDATA(yStreamOut0_V_V_TDATA),
        .yStreamOut0_V_V_TREADY(yStreamOut0_V_V_TREADY),
        .yStreamOut0_V_V_TVALID(yStreamOut0_V_V_TVALID),
        .yStreamOut1_V_V_TDATA(yStreamOut1_V_V_TDATA),
        .yStreamOut1_V_V_TREADY(yStreamOut1_V_V_TREADY),
        .yStreamOut1_V_V_TVALID(yStreamOut1_V_V_TVALID));
endmodule

(* C_S_AXI_CONFIG_ADDR_WIDTH = "5" *) (* C_S_AXI_CONFIG_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "eventStreamDuplicate" *) 
module brd_eventStreamDuplicate_0_0_eventStreamDuplicate
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    xStreamOut0_V_V_TREADY,
    yStreamOut0_V_V_TREADY,
    polStreamOut0_V_V_TREADY,
    tsStreamOut0_V_V_TREADY,
    custDataStreamOut0_V_V_TREADY,
    xStreamOut1_V_V_TREADY,
    yStreamOut1_V_V_TREADY,
    polStreamOut1_V_V_TREADY,
    tsStreamOut1_V_V_TREADY,
    custDataStreamOut1_V_V_TREADY,
    xStreamIn_V_V_TDATA,
    xStreamIn_V_V_TVALID,
    xStreamIn_V_V_TREADY,
    yStreamIn_V_V_TDATA,
    yStreamIn_V_V_TVALID,
    yStreamIn_V_V_TREADY,
    tsStreamIn_V_V_TDATA,
    tsStreamIn_V_V_TVALID,
    tsStreamIn_V_V_TREADY,
    polStreamIn_V_V_TDATA,
    polStreamIn_V_V_TVALID,
    polStreamIn_V_V_TREADY,
    custDataStreamIn_V_V_TDATA,
    custDataStreamIn_V_V_TVALID,
    custDataStreamIn_V_V_TREADY,
    xStreamOut0_V_V_TDATA,
    xStreamOut0_V_V_TVALID,
    yStreamOut0_V_V_TDATA,
    yStreamOut0_V_V_TVALID,
    tsStreamOut0_V_V_TDATA,
    tsStreamOut0_V_V_TVALID,
    polStreamOut0_V_V_TDATA,
    polStreamOut0_V_V_TVALID,
    custDataStreamOut0_V_V_TDATA,
    custDataStreamOut0_V_V_TVALID,
    xStreamOut1_V_V_TDATA,
    xStreamOut1_V_V_TVALID,
    yStreamOut1_V_V_TDATA,
    yStreamOut1_V_V_TVALID,
    tsStreamOut1_V_V_TDATA,
    tsStreamOut1_V_V_TVALID,
    polStreamOut1_V_V_TDATA,
    polStreamOut1_V_V_TVALID,
    custDataStreamOut1_V_V_TDATA,
    custDataStreamOut1_V_V_TVALID,
    s_axi_config_AWVALID,
    s_axi_config_AWREADY,
    s_axi_config_AWADDR,
    s_axi_config_WVALID,
    s_axi_config_WREADY,
    s_axi_config_WDATA,
    s_axi_config_WSTRB,
    s_axi_config_ARVALID,
    s_axi_config_ARREADY,
    s_axi_config_ARADDR,
    s_axi_config_RVALID,
    s_axi_config_RREADY,
    s_axi_config_RDATA,
    s_axi_config_RRESP,
    s_axi_config_BVALID,
    s_axi_config_BREADY,
    s_axi_config_BRESP);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input xStreamOut0_V_V_TREADY;
  input yStreamOut0_V_V_TREADY;
  input polStreamOut0_V_V_TREADY;
  input tsStreamOut0_V_V_TREADY;
  input custDataStreamOut0_V_V_TREADY;
  input xStreamOut1_V_V_TREADY;
  input yStreamOut1_V_V_TREADY;
  input polStreamOut1_V_V_TREADY;
  input tsStreamOut1_V_V_TREADY;
  input custDataStreamOut1_V_V_TREADY;
  input [15:0]xStreamIn_V_V_TDATA;
  input xStreamIn_V_V_TVALID;
  output xStreamIn_V_V_TREADY;
  input [15:0]yStreamIn_V_V_TDATA;
  input yStreamIn_V_V_TVALID;
  output yStreamIn_V_V_TREADY;
  input [63:0]tsStreamIn_V_V_TDATA;
  input tsStreamIn_V_V_TVALID;
  output tsStreamIn_V_V_TREADY;
  input [7:0]polStreamIn_V_V_TDATA;
  input polStreamIn_V_V_TVALID;
  output polStreamIn_V_V_TREADY;
  input [15:0]custDataStreamIn_V_V_TDATA;
  input custDataStreamIn_V_V_TVALID;
  output custDataStreamIn_V_V_TREADY;
  output [15:0]xStreamOut0_V_V_TDATA;
  output xStreamOut0_V_V_TVALID;
  output [15:0]yStreamOut0_V_V_TDATA;
  output yStreamOut0_V_V_TVALID;
  output [63:0]tsStreamOut0_V_V_TDATA;
  output tsStreamOut0_V_V_TVALID;
  output [7:0]polStreamOut0_V_V_TDATA;
  output polStreamOut0_V_V_TVALID;
  output [15:0]custDataStreamOut0_V_V_TDATA;
  output custDataStreamOut0_V_V_TVALID;
  output [15:0]xStreamOut1_V_V_TDATA;
  output xStreamOut1_V_V_TVALID;
  output [15:0]yStreamOut1_V_V_TDATA;
  output yStreamOut1_V_V_TVALID;
  output [63:0]tsStreamOut1_V_V_TDATA;
  output tsStreamOut1_V_V_TVALID;
  output [7:0]polStreamOut1_V_V_TDATA;
  output polStreamOut1_V_V_TVALID;
  output [15:0]custDataStreamOut1_V_V_TDATA;
  output custDataStreamOut1_V_V_TVALID;
  input s_axi_config_AWVALID;
  output s_axi_config_AWREADY;
  input [4:0]s_axi_config_AWADDR;
  input s_axi_config_WVALID;
  output s_axi_config_WREADY;
  input [31:0]s_axi_config_WDATA;
  input [3:0]s_axi_config_WSTRB;
  input s_axi_config_ARVALID;
  output s_axi_config_ARREADY;
  input [4:0]s_axi_config_ARADDR;
  output s_axi_config_RVALID;
  input s_axi_config_RREADY;
  output [31:0]s_axi_config_RDATA;
  output [1:0]s_axi_config_RRESP;
  output s_axi_config_BVALID;
  input s_axi_config_BREADY;
  output [1:0]s_axi_config_BRESP;

  wire \<const0> ;
  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done;
  wire ap_done_INST_0_i_1_n_0;
  wire ap_done_INST_0_i_2_n_0;
  wire ap_done_INST_0_i_3_n_0;
  wire ap_done_INST_0_i_4_n_0;
  wire ap_done_INST_0_i_5_n_0;
  wire ap_done_INST_0_i_6_n_0;
  wire ap_done_INST_0_i_7_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]custDataStreamIn_V_V_0_data_out;
  wire custDataStreamIn_V_V_0_load_A;
  wire custDataStreamIn_V_V_0_load_B;
  wire [15:0]custDataStreamIn_V_V_0_payload_A;
  wire [15:0]custDataStreamIn_V_V_0_payload_B;
  wire custDataStreamIn_V_V_0_sel;
  wire custDataStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire custDataStreamIn_V_V_0_sel_wr;
  wire custDataStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]custDataStreamIn_V_V_0_state;
  wire \custDataStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \custDataStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]custDataStreamIn_V_V_TDATA;
  wire custDataStreamIn_V_V_TREADY;
  wire custDataStreamIn_V_V_TVALID;
  wire custDataStreamOut0_V_V_1_ack_in;
  wire custDataStreamOut0_V_V_1_load_A;
  wire custDataStreamOut0_V_V_1_load_B;
  wire [15:0]custDataStreamOut0_V_V_1_payload_A;
  wire [15:0]custDataStreamOut0_V_V_1_payload_B;
  wire custDataStreamOut0_V_V_1_sel;
  wire custDataStreamOut0_V_V_1_sel_rd_i_1_n_0;
  wire custDataStreamOut0_V_V_1_sel_wr;
  wire custDataStreamOut0_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]custDataStreamOut0_V_V_1_state;
  wire \custDataStreamOut0_V_V_1_state[0]_i_1_n_0 ;
  wire [15:0]custDataStreamOut0_V_V_TDATA;
  wire custDataStreamOut0_V_V_TREADY;
  wire custDataStreamOut0_V_V_TVALID;
  wire custDataStreamOut1_V_V_1_ack_in;
  wire custDataStreamOut1_V_V_1_load_A;
  wire custDataStreamOut1_V_V_1_load_B;
  wire [15:0]custDataStreamOut1_V_V_1_payload_A;
  wire [15:0]custDataStreamOut1_V_V_1_payload_B;
  wire custDataStreamOut1_V_V_1_sel;
  wire custDataStreamOut1_V_V_1_sel_rd_i_1_n_0;
  wire custDataStreamOut1_V_V_1_sel_wr;
  wire custDataStreamOut1_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]custDataStreamOut1_V_V_1_state;
  wire \custDataStreamOut1_V_V_1_state[0]_i_1_n_0 ;
  wire \custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ;
  wire [15:0]custDataStreamOut1_V_V_TDATA;
  wire custDataStreamOut1_V_V_TREADY;
  wire custDataStreamOut1_V_V_TVALID;
  wire eventStreamDuplicate_config_s_axi_U_n_5;
  wire eventStreamDuplicate_config_s_axi_U_n_8;
  wire polStreamIn_V_V_0_payload_A;
  wire \polStreamIn_V_V_0_payload_A[0]_i_1_n_0 ;
  wire polStreamIn_V_V_0_payload_B;
  wire \polStreamIn_V_V_0_payload_B[0]_i_1_n_0 ;
  wire polStreamIn_V_V_0_sel;
  wire polStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire polStreamIn_V_V_0_sel_wr;
  wire polStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]polStreamIn_V_V_0_state;
  wire \polStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \polStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [7:0]polStreamIn_V_V_TDATA;
  wire polStreamIn_V_V_TREADY;
  wire polStreamIn_V_V_TVALID;
  wire polStreamOut0_V_V_1_ack_in;
  wire polStreamOut0_V_V_1_payload_A;
  wire \polStreamOut0_V_V_1_payload_A[0]_i_1_n_0 ;
  wire polStreamOut0_V_V_1_payload_B;
  wire \polStreamOut0_V_V_1_payload_B[0]_i_1_n_0 ;
  wire polStreamOut0_V_V_1_sel;
  wire polStreamOut0_V_V_1_sel_rd_i_1_n_0;
  wire polStreamOut0_V_V_1_sel_wr;
  wire polStreamOut0_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]polStreamOut0_V_V_1_state;
  wire \polStreamOut0_V_V_1_state[0]_i_1_n_0 ;
  wire [0:0]\^polStreamOut0_V_V_TDATA ;
  wire polStreamOut0_V_V_TREADY;
  wire polStreamOut0_V_V_TVALID;
  wire polStreamOut1_V_V_1_ack_in;
  wire polStreamOut1_V_V_1_payload_A;
  wire \polStreamOut1_V_V_1_payload_A[0]_i_1_n_0 ;
  wire polStreamOut1_V_V_1_payload_B;
  wire \polStreamOut1_V_V_1_payload_B[0]_i_1_n_0 ;
  wire polStreamOut1_V_V_1_sel;
  wire polStreamOut1_V_V_1_sel_rd_i_1_n_0;
  wire polStreamOut1_V_V_1_sel_wr;
  wire polStreamOut1_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]polStreamOut1_V_V_1_state;
  wire \polStreamOut1_V_V_1_state[0]_i_1_n_0 ;
  wire [0:0]\^polStreamOut1_V_V_TDATA ;
  wire polStreamOut1_V_V_TREADY;
  wire polStreamOut1_V_V_TVALID;
  wire [4:0]s_axi_config_ARADDR;
  wire s_axi_config_ARREADY;
  wire s_axi_config_ARVALID;
  wire [4:0]s_axi_config_AWADDR;
  wire s_axi_config_AWREADY;
  wire s_axi_config_AWVALID;
  wire s_axi_config_BREADY;
  wire s_axi_config_BVALID;
  wire [31:0]s_axi_config_RDATA;
  wire s_axi_config_RREADY;
  wire s_axi_config_RVALID;
  wire [31:0]s_axi_config_WDATA;
  wire s_axi_config_WREADY;
  wire [3:0]s_axi_config_WSTRB;
  wire s_axi_config_WVALID;
  wire tmp_6_reg_238;
  wire tmp_6_reg_238_pp0_iter1_reg;
  wire tmp_V_2_fu_214_p1;
  wire tmp_fu_196_p2;
  wire tmp_reg_234;
  wire tmp_reg_234_pp0_iter1_reg;
  wire tmp_s_reg_242_pp0_iter1_reg;
  wire \tmp_s_reg_242_reg_n_0_[0] ;
  wire [63:0]tsStreamIn_V_V_0_data_out;
  wire tsStreamIn_V_V_0_load_A;
  wire tsStreamIn_V_V_0_load_B;
  wire [63:0]tsStreamIn_V_V_0_payload_A;
  wire [63:0]tsStreamIn_V_V_0_payload_B;
  wire tsStreamIn_V_V_0_sel;
  wire tsStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire tsStreamIn_V_V_0_sel_wr;
  wire tsStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]tsStreamIn_V_V_0_state;
  wire \tsStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \tsStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [63:0]tsStreamIn_V_V_TDATA;
  wire tsStreamIn_V_V_TREADY;
  wire tsStreamIn_V_V_TVALID;
  wire tsStreamOut0_V_V_1_ack_in;
  wire tsStreamOut0_V_V_1_load_A;
  wire tsStreamOut0_V_V_1_load_B;
  wire [63:0]tsStreamOut0_V_V_1_payload_A;
  wire [63:0]tsStreamOut0_V_V_1_payload_B;
  wire tsStreamOut0_V_V_1_sel;
  wire tsStreamOut0_V_V_1_sel_rd_i_1_n_0;
  wire tsStreamOut0_V_V_1_sel_wr;
  wire tsStreamOut0_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]tsStreamOut0_V_V_1_state;
  wire \tsStreamOut0_V_V_1_state[0]_i_1_n_0 ;
  wire \tsStreamOut0_V_V_1_state[1]_i_2_n_0 ;
  wire [63:0]tsStreamOut0_V_V_TDATA;
  wire tsStreamOut0_V_V_TREADY;
  wire tsStreamOut0_V_V_TVALID;
  wire tsStreamOut1_V_V_1_ack_in;
  wire tsStreamOut1_V_V_1_load_A;
  wire tsStreamOut1_V_V_1_load_B;
  wire [63:0]tsStreamOut1_V_V_1_payload_A;
  wire [63:0]tsStreamOut1_V_V_1_payload_B;
  wire tsStreamOut1_V_V_1_sel;
  wire tsStreamOut1_V_V_1_sel_rd_i_1_n_0;
  wire tsStreamOut1_V_V_1_sel_wr;
  wire tsStreamOut1_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]tsStreamOut1_V_V_1_state;
  wire \tsStreamOut1_V_V_1_state[0]_i_1_n_0 ;
  wire [63:0]tsStreamOut1_V_V_TDATA;
  wire tsStreamOut1_V_V_TREADY;
  wire tsStreamOut1_V_V_TVALID;
  wire [15:0]xStreamIn_V_V_0_data_out;
  wire xStreamIn_V_V_0_load_A;
  wire xStreamIn_V_V_0_load_B;
  wire [15:0]xStreamIn_V_V_0_payload_A;
  wire [15:0]xStreamIn_V_V_0_payload_B;
  wire xStreamIn_V_V_0_sel;
  wire xStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire xStreamIn_V_V_0_sel_wr;
  wire xStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]xStreamIn_V_V_0_state;
  wire \xStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \xStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]xStreamIn_V_V_TDATA;
  wire xStreamIn_V_V_TREADY;
  wire xStreamIn_V_V_TVALID;
  wire xStreamOut0_V_V_1_ack_in;
  wire xStreamOut0_V_V_1_load_A;
  wire xStreamOut0_V_V_1_load_B;
  wire [15:0]xStreamOut0_V_V_1_payload_A;
  wire [15:0]xStreamOut0_V_V_1_payload_B;
  wire xStreamOut0_V_V_1_sel;
  wire xStreamOut0_V_V_1_sel_rd_i_1_n_0;
  wire xStreamOut0_V_V_1_sel_wr;
  wire xStreamOut0_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]xStreamOut0_V_V_1_state;
  wire \xStreamOut0_V_V_1_state[0]_i_1_n_0 ;
  wire \xStreamOut0_V_V_1_state[0]_i_2_n_0 ;
  wire [15:0]xStreamOut0_V_V_TDATA;
  wire xStreamOut0_V_V_TREADY;
  wire xStreamOut0_V_V_TVALID;
  wire xStreamOut1_V_V_1_ack_in;
  wire xStreamOut1_V_V_1_load_A;
  wire xStreamOut1_V_V_1_load_B;
  wire [15:0]xStreamOut1_V_V_1_payload_A;
  wire [15:0]xStreamOut1_V_V_1_payload_B;
  wire xStreamOut1_V_V_1_sel;
  wire xStreamOut1_V_V_1_sel_rd_i_1_n_0;
  wire xStreamOut1_V_V_1_sel_wr;
  wire xStreamOut1_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]xStreamOut1_V_V_1_state;
  wire \xStreamOut1_V_V_1_state[0]_i_1_n_0 ;
  wire \xStreamOut1_V_V_1_state[0]_i_2_n_0 ;
  wire [15:0]xStreamOut1_V_V_TDATA;
  wire xStreamOut1_V_V_TREADY;
  wire xStreamOut1_V_V_TVALID;
  wire [15:0]yStreamIn_V_V_0_data_out;
  wire yStreamIn_V_V_0_load_A;
  wire yStreamIn_V_V_0_load_B;
  wire [15:0]yStreamIn_V_V_0_payload_A;
  wire [15:0]yStreamIn_V_V_0_payload_B;
  wire yStreamIn_V_V_0_sel;
  wire yStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire yStreamIn_V_V_0_sel_wr;
  wire yStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]yStreamIn_V_V_0_state;
  wire \yStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \yStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]yStreamIn_V_V_TDATA;
  wire yStreamIn_V_V_TREADY;
  wire yStreamIn_V_V_TVALID;
  wire yStreamOut0_V_V_1_ack_in;
  wire yStreamOut0_V_V_1_load_A;
  wire yStreamOut0_V_V_1_load_B;
  wire [15:0]yStreamOut0_V_V_1_payload_A;
  wire [15:0]yStreamOut0_V_V_1_payload_B;
  wire yStreamOut0_V_V_1_sel;
  wire yStreamOut0_V_V_1_sel_rd_i_1_n_0;
  wire yStreamOut0_V_V_1_sel_wr;
  wire yStreamOut0_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]yStreamOut0_V_V_1_state;
  wire \yStreamOut0_V_V_1_state[0]_i_1_n_0 ;
  wire [15:0]yStreamOut0_V_V_TDATA;
  wire yStreamOut0_V_V_TREADY;
  wire yStreamOut0_V_V_TVALID;
  wire yStreamOut1_V_V_1_ack_in;
  wire yStreamOut1_V_V_1_load_A;
  wire yStreamOut1_V_V_1_load_B;
  wire [15:0]yStreamOut1_V_V_1_payload_A;
  wire [15:0]yStreamOut1_V_V_1_payload_B;
  wire yStreamOut1_V_V_1_sel;
  wire yStreamOut1_V_V_1_sel_rd_i_1_n_0;
  wire yStreamOut1_V_V_1_sel_wr;
  wire yStreamOut1_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]yStreamOut1_V_V_1_state;
  wire \yStreamOut1_V_V_1_state[0]_i_1_n_0 ;
  wire [15:0]yStreamOut1_V_V_TDATA;
  wire yStreamOut1_V_V_TREADY;
  wire yStreamOut1_V_V_TVALID;

  assign polStreamOut0_V_V_TDATA[7] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[6] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[5] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[4] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[3] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[2] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[1] = \<const0> ;
  assign polStreamOut0_V_V_TDATA[0] = \^polStreamOut0_V_V_TDATA [0];
  assign polStreamOut1_V_V_TDATA[7] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[6] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[5] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[4] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[3] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[2] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[1] = \<const0> ;
  assign polStreamOut1_V_V_TDATA[0] = \^polStreamOut1_V_V_TDATA [0];
  assign s_axi_config_BRESP[1] = \<const0> ;
  assign s_axi_config_BRESP[0] = \<const0> ;
  assign s_axi_config_RRESP[1] = \<const0> ;
  assign s_axi_config_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_done_INST_0
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_done_INST_0_i_1_n_0),
        .O(ap_done));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    ap_done_INST_0_i_1
       (.I0(ap_done_INST_0_i_2_n_0),
        .I1(ap_done_INST_0_i_3_n_0),
        .I2(ap_done_INST_0_i_4_n_0),
        .I3(ap_done_INST_0_i_5_n_0),
        .I4(ap_done_INST_0_i_6_n_0),
        .I5(ap_done_INST_0_i_7_n_0),
        .O(ap_done_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h10115555)) 
    ap_done_INST_0_i_2
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(tmp_reg_234),
        .I2(tmp_6_reg_238),
        .I3(\tmp_s_reg_242_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .O(ap_done_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    ap_done_INST_0_i_3
       (.I0(xStreamOut0_V_V_1_ack_in),
        .I1(tsStreamOut0_V_V_1_ack_in),
        .I2(yStreamOut0_V_V_1_ack_in),
        .I3(polStreamOut0_V_V_1_ack_in),
        .I4(custDataStreamOut0_V_V_1_ack_in),
        .O(ap_done_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    ap_done_INST_0_i_4
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I5(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(ap_done_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    ap_done_INST_0_i_5
       (.I0(tmp_reg_234_pp0_iter1_reg),
        .I1(custDataStreamOut0_V_V_1_ack_in),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(tmp_s_reg_242_pp0_iter1_reg),
        .I4(tmp_6_reg_238_pp0_iter1_reg),
        .O(ap_done_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    ap_done_INST_0_i_6
       (.I0(polStreamOut1_V_V_1_ack_in),
        .I1(tsStreamOut1_V_V_1_ack_in),
        .I2(yStreamOut1_V_V_1_ack_in),
        .I3(xStreamOut1_V_V_1_ack_in),
        .I4(custDataStreamOut1_V_V_1_ack_in),
        .O(ap_done_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h45454555)) 
    ap_done_INST_0_i_7
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(tmp_reg_234),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(tmp_6_reg_238),
        .I4(\tmp_s_reg_242_reg_n_0_[0] ),
        .O(ap_done_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(ap_done_INST_0_i_1_n_0),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_done_INST_0_i_1_n_0),
        .I2(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_ready_INST_0
       (.I0(ap_start),
        .I1(ap_done_INST_0_i_1_n_0),
        .O(ap_ready));
  LUT3 #(
    .INIT(8'h45)) 
    \custDataStreamIn_V_V_0_payload_A[15]_i_1 
       (.I0(custDataStreamIn_V_V_0_sel_wr),
        .I1(custDataStreamIn_V_V_TREADY),
        .I2(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(custDataStreamIn_V_V_0_load_A));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[0]),
        .Q(custDataStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[10]),
        .Q(custDataStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[11]),
        .Q(custDataStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[12]),
        .Q(custDataStreamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[13]),
        .Q(custDataStreamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[14]),
        .Q(custDataStreamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[15]),
        .Q(custDataStreamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[1]),
        .Q(custDataStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[2]),
        .Q(custDataStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[3]),
        .Q(custDataStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[4]),
        .Q(custDataStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[5]),
        .Q(custDataStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[6]),
        .Q(custDataStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[7]),
        .Q(custDataStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[8]),
        .Q(custDataStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[9]),
        .Q(custDataStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \custDataStreamIn_V_V_0_payload_B[15]_i_1 
       (.I0(custDataStreamIn_V_V_0_sel_wr),
        .I1(custDataStreamIn_V_V_TREADY),
        .I2(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(custDataStreamIn_V_V_0_load_B));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[0]),
        .Q(custDataStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[10]),
        .Q(custDataStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[11]),
        .Q(custDataStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[12]),
        .Q(custDataStreamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[13]),
        .Q(custDataStreamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[14]),
        .Q(custDataStreamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[15]),
        .Q(custDataStreamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[1]),
        .Q(custDataStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[2]),
        .Q(custDataStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[3]),
        .Q(custDataStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[4]),
        .Q(custDataStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[5]),
        .Q(custDataStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[6]),
        .Q(custDataStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[7]),
        .Q(custDataStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[8]),
        .Q(custDataStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[9]),
        .Q(custDataStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    custDataStreamIn_V_V_0_sel_rd_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(custDataStreamIn_V_V_0_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    custDataStreamIn_V_V_0_sel_wr_i_1
       (.I0(custDataStreamIn_V_V_TVALID),
        .I1(custDataStreamIn_V_V_TREADY),
        .I2(custDataStreamIn_V_V_0_sel_wr),
        .O(custDataStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(custDataStreamIn_V_V_0_sel_wr),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \custDataStreamIn_V_V_0_state[0]_i_1 
       (.I0(custDataStreamIn_V_V_TREADY),
        .I1(custDataStreamIn_V_V_TVALID),
        .I2(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_done_INST_0_i_1_n_0),
        .O(\custDataStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \custDataStreamIn_V_V_0_state[1]_i_1 
       (.I0(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(custDataStreamIn_V_V_TVALID),
        .I4(custDataStreamIn_V_V_TREADY),
        .O(custDataStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\custDataStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamIn_V_V_0_state),
        .Q(custDataStreamIn_V_V_TREADY),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[0]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[0]),
        .I1(custDataStreamIn_V_V_0_payload_A[0]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[10]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[10]),
        .I1(custDataStreamIn_V_V_0_payload_A[10]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[11]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[11]),
        .I1(custDataStreamIn_V_V_0_payload_A[11]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[12]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[12]),
        .I1(custDataStreamIn_V_V_0_payload_A[12]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[13]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[13]),
        .I1(custDataStreamIn_V_V_0_payload_A[13]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[14]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[14]),
        .I1(custDataStreamIn_V_V_0_payload_A[14]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[14]));
  LUT3 #(
    .INIT(8'h45)) 
    \custDataStreamOut0_V_V_1_payload_A[15]_i_1 
       (.I0(custDataStreamOut0_V_V_1_sel_wr),
        .I1(custDataStreamOut0_V_V_1_ack_in),
        .I2(custDataStreamOut0_V_V_TVALID),
        .O(custDataStreamOut0_V_V_1_load_A));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[15]_i_2 
       (.I0(custDataStreamIn_V_V_0_payload_B[15]),
        .I1(custDataStreamIn_V_V_0_payload_A[15]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[1]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[1]),
        .I1(custDataStreamIn_V_V_0_payload_A[1]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[2]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[2]),
        .I1(custDataStreamIn_V_V_0_payload_A[2]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[3]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[3]),
        .I1(custDataStreamIn_V_V_0_payload_A[3]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[4]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[4]),
        .I1(custDataStreamIn_V_V_0_payload_A[4]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[5]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[5]),
        .I1(custDataStreamIn_V_V_0_payload_A[5]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[6]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[6]),
        .I1(custDataStreamIn_V_V_0_payload_A[6]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[7]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[7]),
        .I1(custDataStreamIn_V_V_0_payload_A[7]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[8]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[8]),
        .I1(custDataStreamIn_V_V_0_payload_A[8]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_1_payload_A[9]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[9]),
        .I1(custDataStreamIn_V_V_0_payload_A[9]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_data_out[9]));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[0]),
        .Q(custDataStreamOut0_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[10]),
        .Q(custDataStreamOut0_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[11]),
        .Q(custDataStreamOut0_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[12]),
        .Q(custDataStreamOut0_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[13]),
        .Q(custDataStreamOut0_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[14]),
        .Q(custDataStreamOut0_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[15]),
        .Q(custDataStreamOut0_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[1]),
        .Q(custDataStreamOut0_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[2]),
        .Q(custDataStreamOut0_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[3]),
        .Q(custDataStreamOut0_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[4]),
        .Q(custDataStreamOut0_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[5]),
        .Q(custDataStreamOut0_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[6]),
        .Q(custDataStreamOut0_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[7]),
        .Q(custDataStreamOut0_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[8]),
        .Q(custDataStreamOut0_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[9]),
        .Q(custDataStreamOut0_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \custDataStreamOut0_V_V_1_payload_B[15]_i_1 
       (.I0(custDataStreamOut0_V_V_1_sel_wr),
        .I1(custDataStreamOut0_V_V_1_ack_in),
        .I2(custDataStreamOut0_V_V_TVALID),
        .O(custDataStreamOut0_V_V_1_load_B));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[0]),
        .Q(custDataStreamOut0_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[10]),
        .Q(custDataStreamOut0_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[11]),
        .Q(custDataStreamOut0_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[12]),
        .Q(custDataStreamOut0_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[13]),
        .Q(custDataStreamOut0_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[14]),
        .Q(custDataStreamOut0_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[15]),
        .Q(custDataStreamOut0_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[1]),
        .Q(custDataStreamOut0_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[2]),
        .Q(custDataStreamOut0_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[3]),
        .Q(custDataStreamOut0_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[4]),
        .Q(custDataStreamOut0_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[5]),
        .Q(custDataStreamOut0_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[6]),
        .Q(custDataStreamOut0_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[7]),
        .Q(custDataStreamOut0_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[8]),
        .Q(custDataStreamOut0_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \custDataStreamOut0_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamOut0_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[9]),
        .Q(custDataStreamOut0_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    custDataStreamOut0_V_V_1_sel_rd_i_1
       (.I0(custDataStreamOut0_V_V_TREADY),
        .I1(custDataStreamOut0_V_V_TVALID),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamOut0_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamOut0_V_V_1_sel_rd_i_1_n_0),
        .Q(custDataStreamOut0_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hBBBBFFBF44440040)) 
    custDataStreamOut0_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\tmp_s_reg_242_reg_n_0_[0] ),
        .I3(tmp_6_reg_238),
        .I4(tmp_reg_234),
        .I5(custDataStreamOut0_V_V_1_sel_wr),
        .O(custDataStreamOut0_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamOut0_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamOut0_V_V_1_sel_wr_i_1_n_0),
        .Q(custDataStreamOut0_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \custDataStreamOut0_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut0_V_V_1_state[0]_i_2_n_0 ),
        .I2(custDataStreamOut0_V_V_TVALID),
        .I3(custDataStreamOut0_V_V_1_ack_in),
        .I4(custDataStreamOut0_V_V_TREADY),
        .O(\custDataStreamOut0_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \custDataStreamOut0_V_V_1_state[1]_i_1 
       (.I0(custDataStreamOut0_V_V_TVALID),
        .I1(custDataStreamOut0_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\tsStreamOut0_V_V_1_state[1]_i_2_n_0 ),
        .I5(custDataStreamOut0_V_V_1_ack_in),
        .O(custDataStreamOut0_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamOut0_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\custDataStreamOut0_V_V_1_state[0]_i_1_n_0 ),
        .Q(custDataStreamOut0_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamOut0_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamOut0_V_V_1_state),
        .Q(custDataStreamOut0_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[0]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[0]),
        .I1(custDataStreamOut0_V_V_1_payload_A[0]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[10]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[10]),
        .I1(custDataStreamOut0_V_V_1_payload_A[10]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[11]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[11]),
        .I1(custDataStreamOut0_V_V_1_payload_A[11]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[12]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[12]),
        .I1(custDataStreamOut0_V_V_1_payload_A[12]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[13]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[13]),
        .I1(custDataStreamOut0_V_V_1_payload_A[13]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[14]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[14]),
        .I1(custDataStreamOut0_V_V_1_payload_A[14]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[15]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[15]),
        .I1(custDataStreamOut0_V_V_1_payload_A[15]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[1]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[1]),
        .I1(custDataStreamOut0_V_V_1_payload_A[1]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[2]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[2]),
        .I1(custDataStreamOut0_V_V_1_payload_A[2]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[3]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[3]),
        .I1(custDataStreamOut0_V_V_1_payload_A[3]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[4]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[4]),
        .I1(custDataStreamOut0_V_V_1_payload_A[4]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[5]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[5]),
        .I1(custDataStreamOut0_V_V_1_payload_A[5]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[6]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[6]),
        .I1(custDataStreamOut0_V_V_1_payload_A[6]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[7]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[7]),
        .I1(custDataStreamOut0_V_V_1_payload_A[7]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[8]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[8]),
        .I1(custDataStreamOut0_V_V_1_payload_A[8]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut0_V_V_TDATA[9]_INST_0 
       (.I0(custDataStreamOut0_V_V_1_payload_B[9]),
        .I1(custDataStreamOut0_V_V_1_payload_A[9]),
        .I2(custDataStreamOut0_V_V_1_sel),
        .O(custDataStreamOut0_V_V_TDATA[9]));
  LUT3 #(
    .INIT(8'h45)) 
    \custDataStreamOut1_V_V_1_payload_A[15]_i_1 
       (.I0(custDataStreamOut1_V_V_1_sel_wr),
        .I1(custDataStreamOut1_V_V_1_ack_in),
        .I2(custDataStreamOut1_V_V_TVALID),
        .O(custDataStreamOut1_V_V_1_load_A));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[0]),
        .Q(custDataStreamOut1_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[10]),
        .Q(custDataStreamOut1_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[11]),
        .Q(custDataStreamOut1_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[12]),
        .Q(custDataStreamOut1_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[13]),
        .Q(custDataStreamOut1_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[14]),
        .Q(custDataStreamOut1_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[15]),
        .Q(custDataStreamOut1_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[1]),
        .Q(custDataStreamOut1_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[2]),
        .Q(custDataStreamOut1_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[3]),
        .Q(custDataStreamOut1_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[4]),
        .Q(custDataStreamOut1_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[5]),
        .Q(custDataStreamOut1_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[6]),
        .Q(custDataStreamOut1_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[7]),
        .Q(custDataStreamOut1_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[8]),
        .Q(custDataStreamOut1_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_A),
        .D(custDataStreamIn_V_V_0_data_out[9]),
        .Q(custDataStreamOut1_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \custDataStreamOut1_V_V_1_payload_B[15]_i_1 
       (.I0(custDataStreamOut1_V_V_1_sel_wr),
        .I1(custDataStreamOut1_V_V_1_ack_in),
        .I2(custDataStreamOut1_V_V_TVALID),
        .O(custDataStreamOut1_V_V_1_load_B));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[0]),
        .Q(custDataStreamOut1_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[10]),
        .Q(custDataStreamOut1_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[11]),
        .Q(custDataStreamOut1_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[12]),
        .Q(custDataStreamOut1_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[13]),
        .Q(custDataStreamOut1_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[14]),
        .Q(custDataStreamOut1_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[15]),
        .Q(custDataStreamOut1_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[1]),
        .Q(custDataStreamOut1_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[2]),
        .Q(custDataStreamOut1_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[3]),
        .Q(custDataStreamOut1_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[4]),
        .Q(custDataStreamOut1_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[5]),
        .Q(custDataStreamOut1_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[6]),
        .Q(custDataStreamOut1_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[7]),
        .Q(custDataStreamOut1_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[8]),
        .Q(custDataStreamOut1_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \custDataStreamOut1_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamOut1_V_V_1_load_B),
        .D(custDataStreamIn_V_V_0_data_out[9]),
        .Q(custDataStreamOut1_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h78)) 
    custDataStreamOut1_V_V_1_sel_rd_i_1
       (.I0(custDataStreamOut1_V_V_TREADY),
        .I1(custDataStreamOut1_V_V_TVALID),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamOut1_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamOut1_V_V_1_sel_rd_i_1_n_0),
        .Q(custDataStreamOut1_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFFABFF00005400)) 
    custDataStreamOut1_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\tmp_s_reg_242_reg_n_0_[0] ),
        .I2(tmp_6_reg_238),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(tmp_reg_234),
        .I5(custDataStreamOut1_V_V_1_sel_wr),
        .O(custDataStreamOut1_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamOut1_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamOut1_V_V_1_sel_wr_i_1_n_0),
        .Q(custDataStreamOut1_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \custDataStreamOut1_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut1_V_V_1_state[0]_i_2_n_0 ),
        .I2(custDataStreamOut1_V_V_TVALID),
        .I3(custDataStreamOut1_V_V_1_ack_in),
        .I4(custDataStreamOut1_V_V_TREADY),
        .O(\custDataStreamOut1_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \custDataStreamOut1_V_V_1_state[1]_i_1 
       (.I0(custDataStreamOut1_V_V_TVALID),
        .I1(custDataStreamOut1_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ),
        .I5(custDataStreamOut1_V_V_1_ack_in),
        .O(custDataStreamOut1_V_V_1_state));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \custDataStreamOut1_V_V_1_state[1]_i_2 
       (.I0(\tmp_s_reg_242_reg_n_0_[0] ),
        .I1(tmp_reg_234),
        .I2(tmp_6_reg_238),
        .O(\custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamOut1_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\custDataStreamOut1_V_V_1_state[0]_i_1_n_0 ),
        .Q(custDataStreamOut1_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamOut1_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamOut1_V_V_1_state),
        .Q(custDataStreamOut1_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[0]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[0]),
        .I1(custDataStreamOut1_V_V_1_payload_A[0]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[10]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[10]),
        .I1(custDataStreamOut1_V_V_1_payload_A[10]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[11]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[11]),
        .I1(custDataStreamOut1_V_V_1_payload_A[11]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[12]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[12]),
        .I1(custDataStreamOut1_V_V_1_payload_A[12]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[13]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[13]),
        .I1(custDataStreamOut1_V_V_1_payload_A[13]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[14]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[14]),
        .I1(custDataStreamOut1_V_V_1_payload_A[14]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[15]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[15]),
        .I1(custDataStreamOut1_V_V_1_payload_A[15]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[1]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[1]),
        .I1(custDataStreamOut1_V_V_1_payload_A[1]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[2]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[2]),
        .I1(custDataStreamOut1_V_V_1_payload_A[2]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[3]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[3]),
        .I1(custDataStreamOut1_V_V_1_payload_A[3]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[4]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[4]),
        .I1(custDataStreamOut1_V_V_1_payload_A[4]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[5]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[5]),
        .I1(custDataStreamOut1_V_V_1_payload_A[5]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[6]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[6]),
        .I1(custDataStreamOut1_V_V_1_payload_A[6]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[7]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[7]),
        .I1(custDataStreamOut1_V_V_1_payload_A[7]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[8]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[8]),
        .I1(custDataStreamOut1_V_V_1_payload_A[8]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \custDataStreamOut1_V_V_TDATA[9]_INST_0 
       (.I0(custDataStreamOut1_V_V_1_payload_B[9]),
        .I1(custDataStreamOut1_V_V_1_payload_A[9]),
        .I2(custDataStreamOut1_V_V_1_sel),
        .O(custDataStreamOut1_V_V_TDATA[9]));
  brd_eventStreamDuplicate_0_0_eventStreamDuplicate_config_s_axi eventStreamDuplicate_config_s_axi_U
       (.ARESET(ARESET),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2_reg(ap_done_INST_0_i_1_n_0),
        .ap_rst_n(ap_rst_n),
        .out({s_axi_config_BVALID,s_axi_config_WREADY,s_axi_config_AWREADY}),
        .s_axi_config_ARADDR(s_axi_config_ARADDR),
        .s_axi_config_ARVALID(s_axi_config_ARVALID),
        .s_axi_config_AWADDR(s_axi_config_AWADDR),
        .s_axi_config_AWVALID(s_axi_config_AWVALID),
        .s_axi_config_BREADY(s_axi_config_BREADY),
        .s_axi_config_RDATA(s_axi_config_RDATA),
        .s_axi_config_RREADY(s_axi_config_RREADY),
        .s_axi_config_RVALID({s_axi_config_RVALID,s_axi_config_ARREADY}),
        .s_axi_config_WDATA(s_axi_config_WDATA),
        .s_axi_config_WSTRB(s_axi_config_WSTRB),
        .s_axi_config_WVALID(s_axi_config_WVALID),
        .tmp_6_reg_238(tmp_6_reg_238),
        .\tmp_6_reg_238_reg[0] (eventStreamDuplicate_config_s_axi_U_n_8),
        .tmp_fu_196_p2(tmp_fu_196_p2),
        .\tmp_s_reg_242_reg[0] (eventStreamDuplicate_config_s_axi_U_n_5),
        .\tmp_s_reg_242_reg[0]_0 (\tmp_s_reg_242_reg_n_0_[0] ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \polStreamIn_V_V_0_payload_A[0]_i_1 
       (.I0(polStreamIn_V_V_TDATA[0]),
        .I1(polStreamIn_V_V_0_sel_wr),
        .I2(polStreamIn_V_V_TREADY),
        .I3(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(polStreamIn_V_V_0_payload_A),
        .O(\polStreamIn_V_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \polStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamIn_V_V_0_payload_A[0]_i_1_n_0 ),
        .Q(polStreamIn_V_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \polStreamIn_V_V_0_payload_B[0]_i_1 
       (.I0(polStreamIn_V_V_TDATA[0]),
        .I1(polStreamIn_V_V_0_sel_wr),
        .I2(polStreamIn_V_V_TREADY),
        .I3(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(polStreamIn_V_V_0_payload_B),
        .O(\polStreamIn_V_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \polStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamIn_V_V_0_payload_B[0]_i_1_n_0 ),
        .Q(polStreamIn_V_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    polStreamIn_V_V_0_sel_rd_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(polStreamIn_V_V_0_sel),
        .O(polStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(polStreamIn_V_V_0_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    polStreamIn_V_V_0_sel_wr_i_1
       (.I0(polStreamIn_V_V_TVALID),
        .I1(polStreamIn_V_V_TREADY),
        .I2(polStreamIn_V_V_0_sel_wr),
        .O(polStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(polStreamIn_V_V_0_sel_wr),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \polStreamIn_V_V_0_state[0]_i_1 
       (.I0(polStreamIn_V_V_TREADY),
        .I1(polStreamIn_V_V_TVALID),
        .I2(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_done_INST_0_i_1_n_0),
        .O(\polStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \polStreamIn_V_V_0_state[1]_i_1 
       (.I0(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(polStreamIn_V_V_TVALID),
        .I4(polStreamIn_V_V_TREADY),
        .O(polStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamIn_V_V_0_state),
        .Q(polStreamIn_V_V_TREADY),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \polStreamOut0_V_V_1_payload_A[0]_i_1 
       (.I0(tmp_V_2_fu_214_p1),
        .I1(polStreamOut0_V_V_1_sel_wr),
        .I2(polStreamOut0_V_V_1_ack_in),
        .I3(polStreamOut0_V_V_TVALID),
        .I4(polStreamOut0_V_V_1_payload_A),
        .O(\polStreamOut0_V_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \polStreamOut0_V_V_1_payload_A[0]_i_2 
       (.I0(polStreamIn_V_V_0_payload_B),
        .I1(polStreamIn_V_V_0_sel),
        .I2(polStreamIn_V_V_0_payload_A),
        .O(tmp_V_2_fu_214_p1));
  FDRE \polStreamOut0_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut0_V_V_1_payload_A[0]_i_1_n_0 ),
        .Q(polStreamOut0_V_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \polStreamOut0_V_V_1_payload_B[0]_i_1 
       (.I0(tmp_V_2_fu_214_p1),
        .I1(polStreamOut0_V_V_1_sel_wr),
        .I2(polStreamOut0_V_V_1_ack_in),
        .I3(polStreamOut0_V_V_TVALID),
        .I4(polStreamOut0_V_V_1_payload_B),
        .O(\polStreamOut0_V_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \polStreamOut0_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut0_V_V_1_payload_B[0]_i_1_n_0 ),
        .Q(polStreamOut0_V_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h78)) 
    polStreamOut0_V_V_1_sel_rd_i_1
       (.I0(polStreamOut0_V_V_TREADY),
        .I1(polStreamOut0_V_V_TVALID),
        .I2(polStreamOut0_V_V_1_sel),
        .O(polStreamOut0_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamOut0_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamOut0_V_V_1_sel_rd_i_1_n_0),
        .Q(polStreamOut0_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hBBBBFFBF44440040)) 
    polStreamOut0_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\tmp_s_reg_242_reg_n_0_[0] ),
        .I3(tmp_6_reg_238),
        .I4(tmp_reg_234),
        .I5(polStreamOut0_V_V_1_sel_wr),
        .O(polStreamOut0_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamOut0_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamOut0_V_V_1_sel_wr_i_1_n_0),
        .Q(polStreamOut0_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \polStreamOut0_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut0_V_V_1_state[0]_i_2_n_0 ),
        .I2(polStreamOut0_V_V_TVALID),
        .I3(polStreamOut0_V_V_1_ack_in),
        .I4(polStreamOut0_V_V_TREADY),
        .O(\polStreamOut0_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \polStreamOut0_V_V_1_state[1]_i_1 
       (.I0(polStreamOut0_V_V_TVALID),
        .I1(polStreamOut0_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\tsStreamOut0_V_V_1_state[1]_i_2_n_0 ),
        .I5(polStreamOut0_V_V_1_ack_in),
        .O(polStreamOut0_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamOut0_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut0_V_V_1_state[0]_i_1_n_0 ),
        .Q(polStreamOut0_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamOut0_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamOut0_V_V_1_state),
        .Q(polStreamOut0_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \polStreamOut0_V_V_TDATA[0]_INST_0 
       (.I0(polStreamOut0_V_V_1_payload_B),
        .I1(polStreamOut0_V_V_1_sel),
        .I2(polStreamOut0_V_V_1_payload_A),
        .O(\^polStreamOut0_V_V_TDATA ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \polStreamOut1_V_V_1_payload_A[0]_i_1 
       (.I0(tmp_V_2_fu_214_p1),
        .I1(polStreamOut1_V_V_1_sel_wr),
        .I2(polStreamOut1_V_V_1_ack_in),
        .I3(polStreamOut1_V_V_TVALID),
        .I4(polStreamOut1_V_V_1_payload_A),
        .O(\polStreamOut1_V_V_1_payload_A[0]_i_1_n_0 ));
  FDRE \polStreamOut1_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut1_V_V_1_payload_A[0]_i_1_n_0 ),
        .Q(polStreamOut1_V_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \polStreamOut1_V_V_1_payload_B[0]_i_1 
       (.I0(tmp_V_2_fu_214_p1),
        .I1(polStreamOut1_V_V_1_sel_wr),
        .I2(polStreamOut1_V_V_1_ack_in),
        .I3(polStreamOut1_V_V_TVALID),
        .I4(polStreamOut1_V_V_1_payload_B),
        .O(\polStreamOut1_V_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \polStreamOut1_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut1_V_V_1_payload_B[0]_i_1_n_0 ),
        .Q(polStreamOut1_V_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h78)) 
    polStreamOut1_V_V_1_sel_rd_i_1
       (.I0(polStreamOut1_V_V_TREADY),
        .I1(polStreamOut1_V_V_TVALID),
        .I2(polStreamOut1_V_V_1_sel),
        .O(polStreamOut1_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamOut1_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamOut1_V_V_1_sel_rd_i_1_n_0),
        .Q(polStreamOut1_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFFABFF00005400)) 
    polStreamOut1_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\tmp_s_reg_242_reg_n_0_[0] ),
        .I2(tmp_6_reg_238),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(tmp_reg_234),
        .I5(polStreamOut1_V_V_1_sel_wr),
        .O(polStreamOut1_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamOut1_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamOut1_V_V_1_sel_wr_i_1_n_0),
        .Q(polStreamOut1_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \polStreamOut1_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut1_V_V_1_state[0]_i_2_n_0 ),
        .I2(polStreamOut1_V_V_TVALID),
        .I3(polStreamOut1_V_V_1_ack_in),
        .I4(polStreamOut1_V_V_TREADY),
        .O(\polStreamOut1_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \polStreamOut1_V_V_1_state[1]_i_1 
       (.I0(polStreamOut1_V_V_TVALID),
        .I1(polStreamOut1_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ),
        .I5(polStreamOut1_V_V_1_ack_in),
        .O(polStreamOut1_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamOut1_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut1_V_V_1_state[0]_i_1_n_0 ),
        .Q(polStreamOut1_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamOut1_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamOut1_V_V_1_state),
        .Q(polStreamOut1_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \polStreamOut1_V_V_TDATA[0]_INST_0 
       (.I0(polStreamOut1_V_V_1_payload_B),
        .I1(polStreamOut1_V_V_1_sel),
        .I2(polStreamOut1_V_V_1_payload_A),
        .O(\^polStreamOut1_V_V_TDATA ));
  FDRE \tmp_6_reg_238_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(tmp_6_reg_238),
        .Q(tmp_6_reg_238_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_6_reg_238_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(eventStreamDuplicate_config_s_axi_U_n_8),
        .Q(tmp_6_reg_238),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_reg_234[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .O(ap_block_pp0_stage0_11001));
  FDRE \tmp_reg_234_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(tmp_reg_234),
        .Q(tmp_reg_234_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_reg_234_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(tmp_fu_196_p2),
        .Q(tmp_reg_234),
        .R(1'b0));
  FDRE \tmp_s_reg_242_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\tmp_s_reg_242_reg_n_0_[0] ),
        .Q(tmp_s_reg_242_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_s_reg_242_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(eventStreamDuplicate_config_s_axi_U_n_5),
        .Q(\tmp_s_reg_242_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \tsStreamIn_V_V_0_payload_A[63]_i_1 
       (.I0(tsStreamIn_V_V_0_sel_wr),
        .I1(tsStreamIn_V_V_TREADY),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(tsStreamIn_V_V_0_load_A));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[0]),
        .Q(tsStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[10]),
        .Q(tsStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[11]),
        .Q(tsStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[12]),
        .Q(tsStreamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[13]),
        .Q(tsStreamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[14]),
        .Q(tsStreamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[15]),
        .Q(tsStreamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[16]),
        .Q(tsStreamIn_V_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[17]),
        .Q(tsStreamIn_V_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[18]),
        .Q(tsStreamIn_V_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[19]),
        .Q(tsStreamIn_V_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[1]),
        .Q(tsStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[20]),
        .Q(tsStreamIn_V_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[21]),
        .Q(tsStreamIn_V_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[22]),
        .Q(tsStreamIn_V_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[23]),
        .Q(tsStreamIn_V_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[24]),
        .Q(tsStreamIn_V_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[25]),
        .Q(tsStreamIn_V_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[26]),
        .Q(tsStreamIn_V_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[27]),
        .Q(tsStreamIn_V_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[28]),
        .Q(tsStreamIn_V_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[29]),
        .Q(tsStreamIn_V_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[2]),
        .Q(tsStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[30]),
        .Q(tsStreamIn_V_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[31]),
        .Q(tsStreamIn_V_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[32]),
        .Q(tsStreamIn_V_V_0_payload_A[32]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[33]),
        .Q(tsStreamIn_V_V_0_payload_A[33]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[34]),
        .Q(tsStreamIn_V_V_0_payload_A[34]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[35]),
        .Q(tsStreamIn_V_V_0_payload_A[35]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[36]),
        .Q(tsStreamIn_V_V_0_payload_A[36]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[37]),
        .Q(tsStreamIn_V_V_0_payload_A[37]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[38]),
        .Q(tsStreamIn_V_V_0_payload_A[38]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[39]),
        .Q(tsStreamIn_V_V_0_payload_A[39]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[3]),
        .Q(tsStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[40]),
        .Q(tsStreamIn_V_V_0_payload_A[40]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[41]),
        .Q(tsStreamIn_V_V_0_payload_A[41]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[42]),
        .Q(tsStreamIn_V_V_0_payload_A[42]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[43]),
        .Q(tsStreamIn_V_V_0_payload_A[43]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[44]),
        .Q(tsStreamIn_V_V_0_payload_A[44]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[45]),
        .Q(tsStreamIn_V_V_0_payload_A[45]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[46]),
        .Q(tsStreamIn_V_V_0_payload_A[46]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[47]),
        .Q(tsStreamIn_V_V_0_payload_A[47]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[48]),
        .Q(tsStreamIn_V_V_0_payload_A[48]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[49]),
        .Q(tsStreamIn_V_V_0_payload_A[49]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[4]),
        .Q(tsStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[50]),
        .Q(tsStreamIn_V_V_0_payload_A[50]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[51]),
        .Q(tsStreamIn_V_V_0_payload_A[51]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[52]),
        .Q(tsStreamIn_V_V_0_payload_A[52]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[53]),
        .Q(tsStreamIn_V_V_0_payload_A[53]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[54]),
        .Q(tsStreamIn_V_V_0_payload_A[54]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[55]),
        .Q(tsStreamIn_V_V_0_payload_A[55]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[56]),
        .Q(tsStreamIn_V_V_0_payload_A[56]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[57]),
        .Q(tsStreamIn_V_V_0_payload_A[57]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[58]),
        .Q(tsStreamIn_V_V_0_payload_A[58]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[59]),
        .Q(tsStreamIn_V_V_0_payload_A[59]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[5]),
        .Q(tsStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[60]),
        .Q(tsStreamIn_V_V_0_payload_A[60]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[61]),
        .Q(tsStreamIn_V_V_0_payload_A[61]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[62]),
        .Q(tsStreamIn_V_V_0_payload_A[62]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[63]),
        .Q(tsStreamIn_V_V_0_payload_A[63]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[6]),
        .Q(tsStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[7]),
        .Q(tsStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[8]),
        .Q(tsStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[9]),
        .Q(tsStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \tsStreamIn_V_V_0_payload_B[63]_i_1 
       (.I0(tsStreamIn_V_V_0_sel_wr),
        .I1(tsStreamIn_V_V_TREADY),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(tsStreamIn_V_V_0_load_B));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[0]),
        .Q(tsStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[10]),
        .Q(tsStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[11]),
        .Q(tsStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[12]),
        .Q(tsStreamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[13]),
        .Q(tsStreamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[14]),
        .Q(tsStreamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[15]),
        .Q(tsStreamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[16]),
        .Q(tsStreamIn_V_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[17]),
        .Q(tsStreamIn_V_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[18]),
        .Q(tsStreamIn_V_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[19]),
        .Q(tsStreamIn_V_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[1]),
        .Q(tsStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[20]),
        .Q(tsStreamIn_V_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[21]),
        .Q(tsStreamIn_V_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[22]),
        .Q(tsStreamIn_V_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[23]),
        .Q(tsStreamIn_V_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[24]),
        .Q(tsStreamIn_V_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[25]),
        .Q(tsStreamIn_V_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[26]),
        .Q(tsStreamIn_V_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[27]),
        .Q(tsStreamIn_V_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[28]),
        .Q(tsStreamIn_V_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[29]),
        .Q(tsStreamIn_V_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[2]),
        .Q(tsStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[30]),
        .Q(tsStreamIn_V_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[31]),
        .Q(tsStreamIn_V_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[32]),
        .Q(tsStreamIn_V_V_0_payload_B[32]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[33]),
        .Q(tsStreamIn_V_V_0_payload_B[33]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[34]),
        .Q(tsStreamIn_V_V_0_payload_B[34]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[35]),
        .Q(tsStreamIn_V_V_0_payload_B[35]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[36]),
        .Q(tsStreamIn_V_V_0_payload_B[36]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[37]),
        .Q(tsStreamIn_V_V_0_payload_B[37]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[38]),
        .Q(tsStreamIn_V_V_0_payload_B[38]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[39]),
        .Q(tsStreamIn_V_V_0_payload_B[39]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[3]),
        .Q(tsStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[40]),
        .Q(tsStreamIn_V_V_0_payload_B[40]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[41]),
        .Q(tsStreamIn_V_V_0_payload_B[41]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[42]),
        .Q(tsStreamIn_V_V_0_payload_B[42]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[43]),
        .Q(tsStreamIn_V_V_0_payload_B[43]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[44]),
        .Q(tsStreamIn_V_V_0_payload_B[44]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[45]),
        .Q(tsStreamIn_V_V_0_payload_B[45]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[46]),
        .Q(tsStreamIn_V_V_0_payload_B[46]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[47]),
        .Q(tsStreamIn_V_V_0_payload_B[47]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[48]),
        .Q(tsStreamIn_V_V_0_payload_B[48]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[49]),
        .Q(tsStreamIn_V_V_0_payload_B[49]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[4]),
        .Q(tsStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[50]),
        .Q(tsStreamIn_V_V_0_payload_B[50]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[51]),
        .Q(tsStreamIn_V_V_0_payload_B[51]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[52]),
        .Q(tsStreamIn_V_V_0_payload_B[52]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[53]),
        .Q(tsStreamIn_V_V_0_payload_B[53]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[54]),
        .Q(tsStreamIn_V_V_0_payload_B[54]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[55]),
        .Q(tsStreamIn_V_V_0_payload_B[55]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[56]),
        .Q(tsStreamIn_V_V_0_payload_B[56]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[57]),
        .Q(tsStreamIn_V_V_0_payload_B[57]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[58]),
        .Q(tsStreamIn_V_V_0_payload_B[58]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[59]),
        .Q(tsStreamIn_V_V_0_payload_B[59]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[5]),
        .Q(tsStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[60]),
        .Q(tsStreamIn_V_V_0_payload_B[60]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[61]),
        .Q(tsStreamIn_V_V_0_payload_B[61]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[62]),
        .Q(tsStreamIn_V_V_0_payload_B[62]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[63]),
        .Q(tsStreamIn_V_V_0_payload_B[63]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[6]),
        .Q(tsStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[7]),
        .Q(tsStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[8]),
        .Q(tsStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[9]),
        .Q(tsStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    tsStreamIn_V_V_0_sel_rd_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(tsStreamIn_V_V_0_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    tsStreamIn_V_V_0_sel_wr_i_1
       (.I0(tsStreamIn_V_V_TVALID),
        .I1(tsStreamIn_V_V_TREADY),
        .I2(tsStreamIn_V_V_0_sel_wr),
        .O(tsStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(tsStreamIn_V_V_0_sel_wr),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \tsStreamIn_V_V_0_state[0]_i_1 
       (.I0(tsStreamIn_V_V_TREADY),
        .I1(tsStreamIn_V_V_TVALID),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_done_INST_0_i_1_n_0),
        .O(\tsStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \tsStreamIn_V_V_0_state[1]_i_1 
       (.I0(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(tsStreamIn_V_V_TVALID),
        .I4(tsStreamIn_V_V_TREADY),
        .O(tsStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tsStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamIn_V_V_0_state),
        .Q(tsStreamIn_V_V_TREADY),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[0]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[0]),
        .I1(tsStreamIn_V_V_0_payload_A[0]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[10]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[10]),
        .I1(tsStreamIn_V_V_0_payload_A[10]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[11]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[11]),
        .I1(tsStreamIn_V_V_0_payload_A[11]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[12]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[12]),
        .I1(tsStreamIn_V_V_0_payload_A[12]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[13]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[13]),
        .I1(tsStreamIn_V_V_0_payload_A[13]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[14]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[14]),
        .I1(tsStreamIn_V_V_0_payload_A[14]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[15]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[15]),
        .I1(tsStreamIn_V_V_0_payload_A[15]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[16]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[16]),
        .I1(tsStreamIn_V_V_0_payload_A[16]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[17]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[17]),
        .I1(tsStreamIn_V_V_0_payload_A[17]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[18]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[18]),
        .I1(tsStreamIn_V_V_0_payload_A[18]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[19]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[19]),
        .I1(tsStreamIn_V_V_0_payload_A[19]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[1]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[1]),
        .I1(tsStreamIn_V_V_0_payload_A[1]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[20]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[20]),
        .I1(tsStreamIn_V_V_0_payload_A[20]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[21]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[21]),
        .I1(tsStreamIn_V_V_0_payload_A[21]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[22]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[22]),
        .I1(tsStreamIn_V_V_0_payload_A[22]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[23]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[23]),
        .I1(tsStreamIn_V_V_0_payload_A[23]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[24]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[24]),
        .I1(tsStreamIn_V_V_0_payload_A[24]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[25]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[25]),
        .I1(tsStreamIn_V_V_0_payload_A[25]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[26]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[26]),
        .I1(tsStreamIn_V_V_0_payload_A[26]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[27]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[27]),
        .I1(tsStreamIn_V_V_0_payload_A[27]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[28]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[28]),
        .I1(tsStreamIn_V_V_0_payload_A[28]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[29]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[29]),
        .I1(tsStreamIn_V_V_0_payload_A[29]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[2]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[2]),
        .I1(tsStreamIn_V_V_0_payload_A[2]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[30]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[30]),
        .I1(tsStreamIn_V_V_0_payload_A[30]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[31]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[31]),
        .I1(tsStreamIn_V_V_0_payload_A[31]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[32]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[32]),
        .I1(tsStreamIn_V_V_0_payload_A[32]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[33]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[33]),
        .I1(tsStreamIn_V_V_0_payload_A[33]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[34]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[34]),
        .I1(tsStreamIn_V_V_0_payload_A[34]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[35]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[35]),
        .I1(tsStreamIn_V_V_0_payload_A[35]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[36]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[36]),
        .I1(tsStreamIn_V_V_0_payload_A[36]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[36]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[37]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[37]),
        .I1(tsStreamIn_V_V_0_payload_A[37]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[38]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[38]),
        .I1(tsStreamIn_V_V_0_payload_A[38]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[39]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[39]),
        .I1(tsStreamIn_V_V_0_payload_A[39]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[3]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[3]),
        .I1(tsStreamIn_V_V_0_payload_A[3]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[40]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[40]),
        .I1(tsStreamIn_V_V_0_payload_A[40]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[40]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[41]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[41]),
        .I1(tsStreamIn_V_V_0_payload_A[41]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[41]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[42]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[42]),
        .I1(tsStreamIn_V_V_0_payload_A[42]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[42]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[43]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[43]),
        .I1(tsStreamIn_V_V_0_payload_A[43]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[43]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[44]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[44]),
        .I1(tsStreamIn_V_V_0_payload_A[44]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[44]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[45]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[45]),
        .I1(tsStreamIn_V_V_0_payload_A[45]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[45]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[46]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[46]),
        .I1(tsStreamIn_V_V_0_payload_A[46]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[46]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[47]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[47]),
        .I1(tsStreamIn_V_V_0_payload_A[47]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[47]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[48]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[48]),
        .I1(tsStreamIn_V_V_0_payload_A[48]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[48]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[49]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[49]),
        .I1(tsStreamIn_V_V_0_payload_A[49]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[49]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[4]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[4]),
        .I1(tsStreamIn_V_V_0_payload_A[4]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[50]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[50]),
        .I1(tsStreamIn_V_V_0_payload_A[50]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[50]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[51]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[51]),
        .I1(tsStreamIn_V_V_0_payload_A[51]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[51]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[52]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[52]),
        .I1(tsStreamIn_V_V_0_payload_A[52]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[52]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[53]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[53]),
        .I1(tsStreamIn_V_V_0_payload_A[53]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[53]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[54]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[54]),
        .I1(tsStreamIn_V_V_0_payload_A[54]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[54]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[55]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[55]),
        .I1(tsStreamIn_V_V_0_payload_A[55]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[55]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[56]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[56]),
        .I1(tsStreamIn_V_V_0_payload_A[56]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[56]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[57]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[57]),
        .I1(tsStreamIn_V_V_0_payload_A[57]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[57]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[58]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[58]),
        .I1(tsStreamIn_V_V_0_payload_A[58]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[58]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[59]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[59]),
        .I1(tsStreamIn_V_V_0_payload_A[59]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[59]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[5]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[5]),
        .I1(tsStreamIn_V_V_0_payload_A[5]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[60]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[60]),
        .I1(tsStreamIn_V_V_0_payload_A[60]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[60]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[61]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[61]),
        .I1(tsStreamIn_V_V_0_payload_A[61]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[61]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[62]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[62]),
        .I1(tsStreamIn_V_V_0_payload_A[62]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[62]));
  LUT3 #(
    .INIT(8'h45)) 
    \tsStreamOut0_V_V_1_payload_A[63]_i_1 
       (.I0(tsStreamOut0_V_V_1_sel_wr),
        .I1(tsStreamOut0_V_V_1_ack_in),
        .I2(tsStreamOut0_V_V_TVALID),
        .O(tsStreamOut0_V_V_1_load_A));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[63]_i_2 
       (.I0(tsStreamIn_V_V_0_payload_B[63]),
        .I1(tsStreamIn_V_V_0_payload_A[63]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[63]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[6]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[6]),
        .I1(tsStreamIn_V_V_0_payload_A[6]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[7]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[7]),
        .I1(tsStreamIn_V_V_0_payload_A[7]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[8]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[8]),
        .I1(tsStreamIn_V_V_0_payload_A[8]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_1_payload_A[9]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[9]),
        .I1(tsStreamIn_V_V_0_payload_A[9]),
        .I2(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_data_out[9]));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[0]),
        .Q(tsStreamOut0_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[10]),
        .Q(tsStreamOut0_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[11]),
        .Q(tsStreamOut0_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[12]),
        .Q(tsStreamOut0_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[13]),
        .Q(tsStreamOut0_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[14]),
        .Q(tsStreamOut0_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[15]),
        .Q(tsStreamOut0_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[16]),
        .Q(tsStreamOut0_V_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[17]),
        .Q(tsStreamOut0_V_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[18]),
        .Q(tsStreamOut0_V_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[19]),
        .Q(tsStreamOut0_V_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[1]),
        .Q(tsStreamOut0_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[20]),
        .Q(tsStreamOut0_V_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[21]),
        .Q(tsStreamOut0_V_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[22]),
        .Q(tsStreamOut0_V_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[23]),
        .Q(tsStreamOut0_V_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[24]),
        .Q(tsStreamOut0_V_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[25]),
        .Q(tsStreamOut0_V_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[26]),
        .Q(tsStreamOut0_V_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[27]),
        .Q(tsStreamOut0_V_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[28]),
        .Q(tsStreamOut0_V_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[29]),
        .Q(tsStreamOut0_V_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[2]),
        .Q(tsStreamOut0_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[30]),
        .Q(tsStreamOut0_V_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[31]),
        .Q(tsStreamOut0_V_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[32]),
        .Q(tsStreamOut0_V_V_1_payload_A[32]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[33]),
        .Q(tsStreamOut0_V_V_1_payload_A[33]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[34]),
        .Q(tsStreamOut0_V_V_1_payload_A[34]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[35]),
        .Q(tsStreamOut0_V_V_1_payload_A[35]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[36]),
        .Q(tsStreamOut0_V_V_1_payload_A[36]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[37]),
        .Q(tsStreamOut0_V_V_1_payload_A[37]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[38]),
        .Q(tsStreamOut0_V_V_1_payload_A[38]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[39]),
        .Q(tsStreamOut0_V_V_1_payload_A[39]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[3]),
        .Q(tsStreamOut0_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[40]),
        .Q(tsStreamOut0_V_V_1_payload_A[40]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[41]),
        .Q(tsStreamOut0_V_V_1_payload_A[41]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[42]),
        .Q(tsStreamOut0_V_V_1_payload_A[42]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[43]),
        .Q(tsStreamOut0_V_V_1_payload_A[43]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[44]),
        .Q(tsStreamOut0_V_V_1_payload_A[44]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[45]),
        .Q(tsStreamOut0_V_V_1_payload_A[45]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[46]),
        .Q(tsStreamOut0_V_V_1_payload_A[46]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[47]),
        .Q(tsStreamOut0_V_V_1_payload_A[47]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[48]),
        .Q(tsStreamOut0_V_V_1_payload_A[48]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[49]),
        .Q(tsStreamOut0_V_V_1_payload_A[49]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[4]),
        .Q(tsStreamOut0_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[50]),
        .Q(tsStreamOut0_V_V_1_payload_A[50]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[51]),
        .Q(tsStreamOut0_V_V_1_payload_A[51]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[52]),
        .Q(tsStreamOut0_V_V_1_payload_A[52]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[53]),
        .Q(tsStreamOut0_V_V_1_payload_A[53]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[54]),
        .Q(tsStreamOut0_V_V_1_payload_A[54]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[55]),
        .Q(tsStreamOut0_V_V_1_payload_A[55]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[56]),
        .Q(tsStreamOut0_V_V_1_payload_A[56]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[57]),
        .Q(tsStreamOut0_V_V_1_payload_A[57]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[58]),
        .Q(tsStreamOut0_V_V_1_payload_A[58]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[59]),
        .Q(tsStreamOut0_V_V_1_payload_A[59]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[5]),
        .Q(tsStreamOut0_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[60]),
        .Q(tsStreamOut0_V_V_1_payload_A[60]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[61]),
        .Q(tsStreamOut0_V_V_1_payload_A[61]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[62]),
        .Q(tsStreamOut0_V_V_1_payload_A[62]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[63]),
        .Q(tsStreamOut0_V_V_1_payload_A[63]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[6]),
        .Q(tsStreamOut0_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[7]),
        .Q(tsStreamOut0_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[8]),
        .Q(tsStreamOut0_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[9]),
        .Q(tsStreamOut0_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \tsStreamOut0_V_V_1_payload_B[63]_i_1 
       (.I0(tsStreamOut0_V_V_1_sel_wr),
        .I1(tsStreamOut0_V_V_1_ack_in),
        .I2(tsStreamOut0_V_V_TVALID),
        .O(tsStreamOut0_V_V_1_load_B));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[0]),
        .Q(tsStreamOut0_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[10]),
        .Q(tsStreamOut0_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[11]),
        .Q(tsStreamOut0_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[12]),
        .Q(tsStreamOut0_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[13]),
        .Q(tsStreamOut0_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[14]),
        .Q(tsStreamOut0_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[15]),
        .Q(tsStreamOut0_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[16]),
        .Q(tsStreamOut0_V_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[17]),
        .Q(tsStreamOut0_V_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[18]),
        .Q(tsStreamOut0_V_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[19]),
        .Q(tsStreamOut0_V_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[1]),
        .Q(tsStreamOut0_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[20]),
        .Q(tsStreamOut0_V_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[21]),
        .Q(tsStreamOut0_V_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[22]),
        .Q(tsStreamOut0_V_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[23]),
        .Q(tsStreamOut0_V_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[24]),
        .Q(tsStreamOut0_V_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[25]),
        .Q(tsStreamOut0_V_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[26]),
        .Q(tsStreamOut0_V_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[27]),
        .Q(tsStreamOut0_V_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[28]),
        .Q(tsStreamOut0_V_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[29]),
        .Q(tsStreamOut0_V_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[2]),
        .Q(tsStreamOut0_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[30]),
        .Q(tsStreamOut0_V_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[31]),
        .Q(tsStreamOut0_V_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[32]),
        .Q(tsStreamOut0_V_V_1_payload_B[32]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[33]),
        .Q(tsStreamOut0_V_V_1_payload_B[33]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[34]),
        .Q(tsStreamOut0_V_V_1_payload_B[34]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[35]),
        .Q(tsStreamOut0_V_V_1_payload_B[35]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[36]),
        .Q(tsStreamOut0_V_V_1_payload_B[36]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[37]),
        .Q(tsStreamOut0_V_V_1_payload_B[37]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[38]),
        .Q(tsStreamOut0_V_V_1_payload_B[38]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[39]),
        .Q(tsStreamOut0_V_V_1_payload_B[39]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[3]),
        .Q(tsStreamOut0_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[40]),
        .Q(tsStreamOut0_V_V_1_payload_B[40]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[41]),
        .Q(tsStreamOut0_V_V_1_payload_B[41]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[42]),
        .Q(tsStreamOut0_V_V_1_payload_B[42]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[43]),
        .Q(tsStreamOut0_V_V_1_payload_B[43]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[44]),
        .Q(tsStreamOut0_V_V_1_payload_B[44]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[45]),
        .Q(tsStreamOut0_V_V_1_payload_B[45]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[46]),
        .Q(tsStreamOut0_V_V_1_payload_B[46]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[47]),
        .Q(tsStreamOut0_V_V_1_payload_B[47]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[48]),
        .Q(tsStreamOut0_V_V_1_payload_B[48]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[49]),
        .Q(tsStreamOut0_V_V_1_payload_B[49]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[4]),
        .Q(tsStreamOut0_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[50]),
        .Q(tsStreamOut0_V_V_1_payload_B[50]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[51]),
        .Q(tsStreamOut0_V_V_1_payload_B[51]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[52]),
        .Q(tsStreamOut0_V_V_1_payload_B[52]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[53]),
        .Q(tsStreamOut0_V_V_1_payload_B[53]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[54]),
        .Q(tsStreamOut0_V_V_1_payload_B[54]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[55]),
        .Q(tsStreamOut0_V_V_1_payload_B[55]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[56]),
        .Q(tsStreamOut0_V_V_1_payload_B[56]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[57]),
        .Q(tsStreamOut0_V_V_1_payload_B[57]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[58]),
        .Q(tsStreamOut0_V_V_1_payload_B[58]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[59]),
        .Q(tsStreamOut0_V_V_1_payload_B[59]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[5]),
        .Q(tsStreamOut0_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[60]),
        .Q(tsStreamOut0_V_V_1_payload_B[60]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[61]),
        .Q(tsStreamOut0_V_V_1_payload_B[61]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[62]),
        .Q(tsStreamOut0_V_V_1_payload_B[62]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[63]),
        .Q(tsStreamOut0_V_V_1_payload_B[63]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[6]),
        .Q(tsStreamOut0_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[7]),
        .Q(tsStreamOut0_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[8]),
        .Q(tsStreamOut0_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \tsStreamOut0_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamOut0_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[9]),
        .Q(tsStreamOut0_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tsStreamOut0_V_V_1_sel_rd_i_1
       (.I0(tsStreamOut0_V_V_TREADY),
        .I1(tsStreamOut0_V_V_TVALID),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamOut0_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut0_V_V_1_sel_rd_i_1_n_0),
        .Q(tsStreamOut0_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hBBBBFFBF44440040)) 
    tsStreamOut0_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\tmp_s_reg_242_reg_n_0_[0] ),
        .I3(tmp_6_reg_238),
        .I4(tmp_reg_234),
        .I5(tsStreamOut0_V_V_1_sel_wr),
        .O(tsStreamOut0_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamOut0_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut0_V_V_1_sel_wr_i_1_n_0),
        .Q(tsStreamOut0_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \tsStreamOut0_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut0_V_V_1_state[0]_i_2_n_0 ),
        .I2(tsStreamOut0_V_V_TVALID),
        .I3(tsStreamOut0_V_V_1_ack_in),
        .I4(tsStreamOut0_V_V_TREADY),
        .O(\tsStreamOut0_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \tsStreamOut0_V_V_1_state[1]_i_1 
       (.I0(tsStreamOut0_V_V_TVALID),
        .I1(tsStreamOut0_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\tsStreamOut0_V_V_1_state[1]_i_2_n_0 ),
        .I5(tsStreamOut0_V_V_1_ack_in),
        .O(tsStreamOut0_V_V_1_state));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \tsStreamOut0_V_V_1_state[1]_i_2 
       (.I0(tmp_reg_234),
        .I1(tmp_6_reg_238),
        .I2(\tmp_s_reg_242_reg_n_0_[0] ),
        .O(\tsStreamOut0_V_V_1_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamOut0_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tsStreamOut0_V_V_1_state[0]_i_1_n_0 ),
        .Q(tsStreamOut0_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamOut0_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut0_V_V_1_state),
        .Q(tsStreamOut0_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[0]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[0]),
        .I1(tsStreamOut0_V_V_1_payload_A[0]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[10]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[10]),
        .I1(tsStreamOut0_V_V_1_payload_A[10]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[11]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[11]),
        .I1(tsStreamOut0_V_V_1_payload_A[11]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[12]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[12]),
        .I1(tsStreamOut0_V_V_1_payload_A[12]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[13]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[13]),
        .I1(tsStreamOut0_V_V_1_payload_A[13]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[14]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[14]),
        .I1(tsStreamOut0_V_V_1_payload_A[14]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[15]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[15]),
        .I1(tsStreamOut0_V_V_1_payload_A[15]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[16]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[16]),
        .I1(tsStreamOut0_V_V_1_payload_A[16]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[17]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[17]),
        .I1(tsStreamOut0_V_V_1_payload_A[17]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[18]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[18]),
        .I1(tsStreamOut0_V_V_1_payload_A[18]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[19]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[19]),
        .I1(tsStreamOut0_V_V_1_payload_A[19]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[1]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[1]),
        .I1(tsStreamOut0_V_V_1_payload_A[1]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[20]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[20]),
        .I1(tsStreamOut0_V_V_1_payload_A[20]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[21]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[21]),
        .I1(tsStreamOut0_V_V_1_payload_A[21]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[22]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[22]),
        .I1(tsStreamOut0_V_V_1_payload_A[22]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[23]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[23]),
        .I1(tsStreamOut0_V_V_1_payload_A[23]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[24]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[24]),
        .I1(tsStreamOut0_V_V_1_payload_A[24]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[25]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[25]),
        .I1(tsStreamOut0_V_V_1_payload_A[25]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[26]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[26]),
        .I1(tsStreamOut0_V_V_1_payload_A[26]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[27]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[27]),
        .I1(tsStreamOut0_V_V_1_payload_A[27]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[28]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[28]),
        .I1(tsStreamOut0_V_V_1_payload_A[28]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[29]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[29]),
        .I1(tsStreamOut0_V_V_1_payload_A[29]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[2]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[2]),
        .I1(tsStreamOut0_V_V_1_payload_A[2]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[30]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[30]),
        .I1(tsStreamOut0_V_V_1_payload_A[30]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[31]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[31]),
        .I1(tsStreamOut0_V_V_1_payload_A[31]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[32]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[32]),
        .I1(tsStreamOut0_V_V_1_payload_A[32]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[33]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[33]),
        .I1(tsStreamOut0_V_V_1_payload_A[33]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[34]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[34]),
        .I1(tsStreamOut0_V_V_1_payload_A[34]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[35]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[35]),
        .I1(tsStreamOut0_V_V_1_payload_A[35]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[36]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[36]),
        .I1(tsStreamOut0_V_V_1_payload_A[36]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[37]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[37]),
        .I1(tsStreamOut0_V_V_1_payload_A[37]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[38]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[38]),
        .I1(tsStreamOut0_V_V_1_payload_A[38]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[39]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[39]),
        .I1(tsStreamOut0_V_V_1_payload_A[39]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[3]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[3]),
        .I1(tsStreamOut0_V_V_1_payload_A[3]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[40]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[40]),
        .I1(tsStreamOut0_V_V_1_payload_A[40]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[41]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[41]),
        .I1(tsStreamOut0_V_V_1_payload_A[41]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[42]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[42]),
        .I1(tsStreamOut0_V_V_1_payload_A[42]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[43]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[43]),
        .I1(tsStreamOut0_V_V_1_payload_A[43]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[44]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[44]),
        .I1(tsStreamOut0_V_V_1_payload_A[44]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[45]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[45]),
        .I1(tsStreamOut0_V_V_1_payload_A[45]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[46]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[46]),
        .I1(tsStreamOut0_V_V_1_payload_A[46]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[47]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[47]),
        .I1(tsStreamOut0_V_V_1_payload_A[47]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[48]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[48]),
        .I1(tsStreamOut0_V_V_1_payload_A[48]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[49]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[49]),
        .I1(tsStreamOut0_V_V_1_payload_A[49]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[4]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[4]),
        .I1(tsStreamOut0_V_V_1_payload_A[4]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[50]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[50]),
        .I1(tsStreamOut0_V_V_1_payload_A[50]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[51]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[51]),
        .I1(tsStreamOut0_V_V_1_payload_A[51]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[52]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[52]),
        .I1(tsStreamOut0_V_V_1_payload_A[52]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[53]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[53]),
        .I1(tsStreamOut0_V_V_1_payload_A[53]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[54]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[54]),
        .I1(tsStreamOut0_V_V_1_payload_A[54]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[55]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[55]),
        .I1(tsStreamOut0_V_V_1_payload_A[55]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[56]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[56]),
        .I1(tsStreamOut0_V_V_1_payload_A[56]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[57]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[57]),
        .I1(tsStreamOut0_V_V_1_payload_A[57]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[58]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[58]),
        .I1(tsStreamOut0_V_V_1_payload_A[58]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[59]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[59]),
        .I1(tsStreamOut0_V_V_1_payload_A[59]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[5]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[5]),
        .I1(tsStreamOut0_V_V_1_payload_A[5]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[60]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[60]),
        .I1(tsStreamOut0_V_V_1_payload_A[60]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[61]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[61]),
        .I1(tsStreamOut0_V_V_1_payload_A[61]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[62]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[62]),
        .I1(tsStreamOut0_V_V_1_payload_A[62]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[63]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[63]),
        .I1(tsStreamOut0_V_V_1_payload_A[63]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[6]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[6]),
        .I1(tsStreamOut0_V_V_1_payload_A[6]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[7]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[7]),
        .I1(tsStreamOut0_V_V_1_payload_A[7]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[8]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[8]),
        .I1(tsStreamOut0_V_V_1_payload_A[8]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut0_V_V_TDATA[9]_INST_0 
       (.I0(tsStreamOut0_V_V_1_payload_B[9]),
        .I1(tsStreamOut0_V_V_1_payload_A[9]),
        .I2(tsStreamOut0_V_V_1_sel),
        .O(tsStreamOut0_V_V_TDATA[9]));
  LUT3 #(
    .INIT(8'h45)) 
    \tsStreamOut1_V_V_1_payload_A[63]_i_1 
       (.I0(tsStreamOut1_V_V_1_sel_wr),
        .I1(tsStreamOut1_V_V_1_ack_in),
        .I2(tsStreamOut1_V_V_TVALID),
        .O(tsStreamOut1_V_V_1_load_A));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[0]),
        .Q(tsStreamOut1_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[10]),
        .Q(tsStreamOut1_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[11]),
        .Q(tsStreamOut1_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[12]),
        .Q(tsStreamOut1_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[13]),
        .Q(tsStreamOut1_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[14]),
        .Q(tsStreamOut1_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[15]),
        .Q(tsStreamOut1_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[16]),
        .Q(tsStreamOut1_V_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[17]),
        .Q(tsStreamOut1_V_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[18]),
        .Q(tsStreamOut1_V_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[19]),
        .Q(tsStreamOut1_V_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[1]),
        .Q(tsStreamOut1_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[20]),
        .Q(tsStreamOut1_V_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[21]),
        .Q(tsStreamOut1_V_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[22]),
        .Q(tsStreamOut1_V_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[23]),
        .Q(tsStreamOut1_V_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[24]),
        .Q(tsStreamOut1_V_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[25]),
        .Q(tsStreamOut1_V_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[26]),
        .Q(tsStreamOut1_V_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[27]),
        .Q(tsStreamOut1_V_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[28]),
        .Q(tsStreamOut1_V_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[29]),
        .Q(tsStreamOut1_V_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[2]),
        .Q(tsStreamOut1_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[30]),
        .Q(tsStreamOut1_V_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[31]),
        .Q(tsStreamOut1_V_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[32]),
        .Q(tsStreamOut1_V_V_1_payload_A[32]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[33]),
        .Q(tsStreamOut1_V_V_1_payload_A[33]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[34]),
        .Q(tsStreamOut1_V_V_1_payload_A[34]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[35]),
        .Q(tsStreamOut1_V_V_1_payload_A[35]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[36]),
        .Q(tsStreamOut1_V_V_1_payload_A[36]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[37]),
        .Q(tsStreamOut1_V_V_1_payload_A[37]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[38]),
        .Q(tsStreamOut1_V_V_1_payload_A[38]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[39]),
        .Q(tsStreamOut1_V_V_1_payload_A[39]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[3]),
        .Q(tsStreamOut1_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[40]),
        .Q(tsStreamOut1_V_V_1_payload_A[40]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[41]),
        .Q(tsStreamOut1_V_V_1_payload_A[41]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[42]),
        .Q(tsStreamOut1_V_V_1_payload_A[42]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[43]),
        .Q(tsStreamOut1_V_V_1_payload_A[43]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[44]),
        .Q(tsStreamOut1_V_V_1_payload_A[44]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[45]),
        .Q(tsStreamOut1_V_V_1_payload_A[45]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[46]),
        .Q(tsStreamOut1_V_V_1_payload_A[46]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[47]),
        .Q(tsStreamOut1_V_V_1_payload_A[47]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[48]),
        .Q(tsStreamOut1_V_V_1_payload_A[48]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[49]),
        .Q(tsStreamOut1_V_V_1_payload_A[49]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[4]),
        .Q(tsStreamOut1_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[50]),
        .Q(tsStreamOut1_V_V_1_payload_A[50]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[51]),
        .Q(tsStreamOut1_V_V_1_payload_A[51]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[52]),
        .Q(tsStreamOut1_V_V_1_payload_A[52]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[53]),
        .Q(tsStreamOut1_V_V_1_payload_A[53]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[54]),
        .Q(tsStreamOut1_V_V_1_payload_A[54]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[55]),
        .Q(tsStreamOut1_V_V_1_payload_A[55]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[56]),
        .Q(tsStreamOut1_V_V_1_payload_A[56]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[57]),
        .Q(tsStreamOut1_V_V_1_payload_A[57]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[58]),
        .Q(tsStreamOut1_V_V_1_payload_A[58]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[59]),
        .Q(tsStreamOut1_V_V_1_payload_A[59]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[5]),
        .Q(tsStreamOut1_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[60]),
        .Q(tsStreamOut1_V_V_1_payload_A[60]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[61]),
        .Q(tsStreamOut1_V_V_1_payload_A[61]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[62]),
        .Q(tsStreamOut1_V_V_1_payload_A[62]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[63]),
        .Q(tsStreamOut1_V_V_1_payload_A[63]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[6]),
        .Q(tsStreamOut1_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[7]),
        .Q(tsStreamOut1_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[8]),
        .Q(tsStreamOut1_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_A),
        .D(tsStreamIn_V_V_0_data_out[9]),
        .Q(tsStreamOut1_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \tsStreamOut1_V_V_1_payload_B[63]_i_1 
       (.I0(tsStreamOut1_V_V_1_sel_wr),
        .I1(tsStreamOut1_V_V_1_ack_in),
        .I2(tsStreamOut1_V_V_TVALID),
        .O(tsStreamOut1_V_V_1_load_B));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[0]),
        .Q(tsStreamOut1_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[10]),
        .Q(tsStreamOut1_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[11]),
        .Q(tsStreamOut1_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[12]),
        .Q(tsStreamOut1_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[13]),
        .Q(tsStreamOut1_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[14]),
        .Q(tsStreamOut1_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[15]),
        .Q(tsStreamOut1_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[16]),
        .Q(tsStreamOut1_V_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[17]),
        .Q(tsStreamOut1_V_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[18]),
        .Q(tsStreamOut1_V_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[19]),
        .Q(tsStreamOut1_V_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[1]),
        .Q(tsStreamOut1_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[20]),
        .Q(tsStreamOut1_V_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[21]),
        .Q(tsStreamOut1_V_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[22]),
        .Q(tsStreamOut1_V_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[23]),
        .Q(tsStreamOut1_V_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[24]),
        .Q(tsStreamOut1_V_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[25]),
        .Q(tsStreamOut1_V_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[26]),
        .Q(tsStreamOut1_V_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[27]),
        .Q(tsStreamOut1_V_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[28]),
        .Q(tsStreamOut1_V_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[29]),
        .Q(tsStreamOut1_V_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[2]),
        .Q(tsStreamOut1_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[30]),
        .Q(tsStreamOut1_V_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[31]),
        .Q(tsStreamOut1_V_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[32]),
        .Q(tsStreamOut1_V_V_1_payload_B[32]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[33]),
        .Q(tsStreamOut1_V_V_1_payload_B[33]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[34]),
        .Q(tsStreamOut1_V_V_1_payload_B[34]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[35]),
        .Q(tsStreamOut1_V_V_1_payload_B[35]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[36]),
        .Q(tsStreamOut1_V_V_1_payload_B[36]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[37]),
        .Q(tsStreamOut1_V_V_1_payload_B[37]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[38]),
        .Q(tsStreamOut1_V_V_1_payload_B[38]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[39]),
        .Q(tsStreamOut1_V_V_1_payload_B[39]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[3]),
        .Q(tsStreamOut1_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[40]),
        .Q(tsStreamOut1_V_V_1_payload_B[40]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[41]),
        .Q(tsStreamOut1_V_V_1_payload_B[41]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[42]),
        .Q(tsStreamOut1_V_V_1_payload_B[42]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[43]),
        .Q(tsStreamOut1_V_V_1_payload_B[43]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[44]),
        .Q(tsStreamOut1_V_V_1_payload_B[44]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[45]),
        .Q(tsStreamOut1_V_V_1_payload_B[45]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[46]),
        .Q(tsStreamOut1_V_V_1_payload_B[46]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[47]),
        .Q(tsStreamOut1_V_V_1_payload_B[47]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[48]),
        .Q(tsStreamOut1_V_V_1_payload_B[48]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[49]),
        .Q(tsStreamOut1_V_V_1_payload_B[49]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[4]),
        .Q(tsStreamOut1_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[50]),
        .Q(tsStreamOut1_V_V_1_payload_B[50]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[51]),
        .Q(tsStreamOut1_V_V_1_payload_B[51]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[52]),
        .Q(tsStreamOut1_V_V_1_payload_B[52]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[53]),
        .Q(tsStreamOut1_V_V_1_payload_B[53]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[54]),
        .Q(tsStreamOut1_V_V_1_payload_B[54]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[55]),
        .Q(tsStreamOut1_V_V_1_payload_B[55]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[56]),
        .Q(tsStreamOut1_V_V_1_payload_B[56]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[57]),
        .Q(tsStreamOut1_V_V_1_payload_B[57]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[58]),
        .Q(tsStreamOut1_V_V_1_payload_B[58]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[59]),
        .Q(tsStreamOut1_V_V_1_payload_B[59]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[5]),
        .Q(tsStreamOut1_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[60]),
        .Q(tsStreamOut1_V_V_1_payload_B[60]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[61]),
        .Q(tsStreamOut1_V_V_1_payload_B[61]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[62]),
        .Q(tsStreamOut1_V_V_1_payload_B[62]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[63]),
        .Q(tsStreamOut1_V_V_1_payload_B[63]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[6]),
        .Q(tsStreamOut1_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[7]),
        .Q(tsStreamOut1_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[8]),
        .Q(tsStreamOut1_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \tsStreamOut1_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamOut1_V_V_1_load_B),
        .D(tsStreamIn_V_V_0_data_out[9]),
        .Q(tsStreamOut1_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tsStreamOut1_V_V_1_sel_rd_i_1
       (.I0(tsStreamOut1_V_V_TVALID),
        .I1(tsStreamOut1_V_V_TREADY),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamOut1_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut1_V_V_1_sel_rd_i_1_n_0),
        .Q(tsStreamOut1_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFFABFF00005400)) 
    tsStreamOut1_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\tmp_s_reg_242_reg_n_0_[0] ),
        .I2(tmp_6_reg_238),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(tmp_reg_234),
        .I5(tsStreamOut1_V_V_1_sel_wr),
        .O(tsStreamOut1_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamOut1_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut1_V_V_1_sel_wr_i_1_n_0),
        .Q(tsStreamOut1_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \tsStreamOut1_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut1_V_V_1_state[0]_i_2_n_0 ),
        .I2(tsStreamOut1_V_V_TVALID),
        .I3(tsStreamOut1_V_V_1_ack_in),
        .I4(tsStreamOut1_V_V_TREADY),
        .O(\tsStreamOut1_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \tsStreamOut1_V_V_1_state[1]_i_1 
       (.I0(tsStreamOut1_V_V_TVALID),
        .I1(tsStreamOut1_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ),
        .I5(tsStreamOut1_V_V_1_ack_in),
        .O(tsStreamOut1_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamOut1_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tsStreamOut1_V_V_1_state[0]_i_1_n_0 ),
        .Q(tsStreamOut1_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamOut1_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut1_V_V_1_state),
        .Q(tsStreamOut1_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[0]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[0]),
        .I1(tsStreamOut1_V_V_1_payload_A[0]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[10]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[10]),
        .I1(tsStreamOut1_V_V_1_payload_A[10]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[11]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[11]),
        .I1(tsStreamOut1_V_V_1_payload_A[11]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[12]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[12]),
        .I1(tsStreamOut1_V_V_1_payload_A[12]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[13]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[13]),
        .I1(tsStreamOut1_V_V_1_payload_A[13]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[14]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[14]),
        .I1(tsStreamOut1_V_V_1_payload_A[14]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[15]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[15]),
        .I1(tsStreamOut1_V_V_1_payload_A[15]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[16]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[16]),
        .I1(tsStreamOut1_V_V_1_payload_A[16]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[17]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[17]),
        .I1(tsStreamOut1_V_V_1_payload_A[17]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[18]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[18]),
        .I1(tsStreamOut1_V_V_1_payload_A[18]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[19]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[19]),
        .I1(tsStreamOut1_V_V_1_payload_A[19]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[1]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[1]),
        .I1(tsStreamOut1_V_V_1_payload_A[1]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[20]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[20]),
        .I1(tsStreamOut1_V_V_1_payload_A[20]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[21]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[21]),
        .I1(tsStreamOut1_V_V_1_payload_A[21]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[22]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[22]),
        .I1(tsStreamOut1_V_V_1_payload_A[22]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[23]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[23]),
        .I1(tsStreamOut1_V_V_1_payload_A[23]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[24]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[24]),
        .I1(tsStreamOut1_V_V_1_payload_A[24]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[25]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[25]),
        .I1(tsStreamOut1_V_V_1_payload_A[25]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[26]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[26]),
        .I1(tsStreamOut1_V_V_1_payload_A[26]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[27]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[27]),
        .I1(tsStreamOut1_V_V_1_payload_A[27]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[28]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[28]),
        .I1(tsStreamOut1_V_V_1_payload_A[28]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[29]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[29]),
        .I1(tsStreamOut1_V_V_1_payload_A[29]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[2]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[2]),
        .I1(tsStreamOut1_V_V_1_payload_A[2]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[30]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[30]),
        .I1(tsStreamOut1_V_V_1_payload_A[30]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[31]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[31]),
        .I1(tsStreamOut1_V_V_1_payload_A[31]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[32]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[32]),
        .I1(tsStreamOut1_V_V_1_payload_A[32]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[33]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[33]),
        .I1(tsStreamOut1_V_V_1_payload_A[33]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[34]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[34]),
        .I1(tsStreamOut1_V_V_1_payload_A[34]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[35]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[35]),
        .I1(tsStreamOut1_V_V_1_payload_A[35]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[36]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[36]),
        .I1(tsStreamOut1_V_V_1_payload_A[36]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[37]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[37]),
        .I1(tsStreamOut1_V_V_1_payload_A[37]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[38]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[38]),
        .I1(tsStreamOut1_V_V_1_payload_A[38]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[39]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[39]),
        .I1(tsStreamOut1_V_V_1_payload_A[39]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[3]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[3]),
        .I1(tsStreamOut1_V_V_1_payload_A[3]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[40]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[40]),
        .I1(tsStreamOut1_V_V_1_payload_A[40]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[41]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[41]),
        .I1(tsStreamOut1_V_V_1_payload_A[41]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[42]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[42]),
        .I1(tsStreamOut1_V_V_1_payload_A[42]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[43]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[43]),
        .I1(tsStreamOut1_V_V_1_payload_A[43]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[44]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[44]),
        .I1(tsStreamOut1_V_V_1_payload_A[44]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[45]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[45]),
        .I1(tsStreamOut1_V_V_1_payload_A[45]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[46]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[46]),
        .I1(tsStreamOut1_V_V_1_payload_A[46]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[47]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[47]),
        .I1(tsStreamOut1_V_V_1_payload_A[47]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[48]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[48]),
        .I1(tsStreamOut1_V_V_1_payload_A[48]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[49]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[49]),
        .I1(tsStreamOut1_V_V_1_payload_A[49]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[4]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[4]),
        .I1(tsStreamOut1_V_V_1_payload_A[4]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[50]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[50]),
        .I1(tsStreamOut1_V_V_1_payload_A[50]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[51]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[51]),
        .I1(tsStreamOut1_V_V_1_payload_A[51]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[52]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[52]),
        .I1(tsStreamOut1_V_V_1_payload_A[52]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[53]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[53]),
        .I1(tsStreamOut1_V_V_1_payload_A[53]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[54]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[54]),
        .I1(tsStreamOut1_V_V_1_payload_A[54]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[55]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[55]),
        .I1(tsStreamOut1_V_V_1_payload_A[55]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[56]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[56]),
        .I1(tsStreamOut1_V_V_1_payload_A[56]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[57]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[57]),
        .I1(tsStreamOut1_V_V_1_payload_A[57]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[58]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[58]),
        .I1(tsStreamOut1_V_V_1_payload_A[58]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[59]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[59]),
        .I1(tsStreamOut1_V_V_1_payload_A[59]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[5]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[5]),
        .I1(tsStreamOut1_V_V_1_payload_A[5]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[60]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[60]),
        .I1(tsStreamOut1_V_V_1_payload_A[60]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[61]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[61]),
        .I1(tsStreamOut1_V_V_1_payload_A[61]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[62]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[62]),
        .I1(tsStreamOut1_V_V_1_payload_A[62]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[63]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[63]),
        .I1(tsStreamOut1_V_V_1_payload_A[63]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[6]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[6]),
        .I1(tsStreamOut1_V_V_1_payload_A[6]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[7]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[7]),
        .I1(tsStreamOut1_V_V_1_payload_A[7]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[8]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[8]),
        .I1(tsStreamOut1_V_V_1_payload_A[8]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut1_V_V_TDATA[9]_INST_0 
       (.I0(tsStreamOut1_V_V_1_payload_B[9]),
        .I1(tsStreamOut1_V_V_1_payload_A[9]),
        .I2(tsStreamOut1_V_V_1_sel),
        .O(tsStreamOut1_V_V_TDATA[9]));
  LUT3 #(
    .INIT(8'h45)) 
    \xStreamIn_V_V_0_payload_A[15]_i_1 
       (.I0(xStreamIn_V_V_0_sel_wr),
        .I1(xStreamIn_V_V_TREADY),
        .I2(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(xStreamIn_V_V_0_load_A));
  FDRE \xStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[0]),
        .Q(xStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[10]),
        .Q(xStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[11]),
        .Q(xStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[12]),
        .Q(xStreamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[13]),
        .Q(xStreamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[14]),
        .Q(xStreamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[15]),
        .Q(xStreamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[1]),
        .Q(xStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[2]),
        .Q(xStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[3]),
        .Q(xStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[4]),
        .Q(xStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[5]),
        .Q(xStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[6]),
        .Q(xStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[7]),
        .Q(xStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[8]),
        .Q(xStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[9]),
        .Q(xStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \xStreamIn_V_V_0_payload_B[15]_i_1 
       (.I0(xStreamIn_V_V_0_sel_wr),
        .I1(xStreamIn_V_V_TREADY),
        .I2(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(xStreamIn_V_V_0_load_B));
  FDRE \xStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[0]),
        .Q(xStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[10]),
        .Q(xStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[11]),
        .Q(xStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[12]),
        .Q(xStreamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[13]),
        .Q(xStreamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[14]),
        .Q(xStreamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[15]),
        .Q(xStreamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[1]),
        .Q(xStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[2]),
        .Q(xStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[3]),
        .Q(xStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[4]),
        .Q(xStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[5]),
        .Q(xStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[6]),
        .Q(xStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[7]),
        .Q(xStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[8]),
        .Q(xStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[9]),
        .Q(xStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    xStreamIn_V_V_0_sel_rd_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(xStreamIn_V_V_0_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    xStreamIn_V_V_0_sel_wr_i_1
       (.I0(xStreamIn_V_V_TVALID),
        .I1(xStreamIn_V_V_TREADY),
        .I2(xStreamIn_V_V_0_sel_wr),
        .O(xStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(xStreamIn_V_V_0_sel_wr),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \xStreamIn_V_V_0_state[0]_i_1 
       (.I0(xStreamIn_V_V_TREADY),
        .I1(xStreamIn_V_V_TVALID),
        .I2(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_done_INST_0_i_1_n_0),
        .O(\xStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \xStreamIn_V_V_0_state[1]_i_2 
       (.I0(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(xStreamIn_V_V_TVALID),
        .I4(xStreamIn_V_V_TREADY),
        .O(xStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamIn_V_V_0_state),
        .Q(xStreamIn_V_V_TREADY),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[0]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[0]),
        .I1(xStreamIn_V_V_0_payload_A[0]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[10]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[10]),
        .I1(xStreamIn_V_V_0_payload_A[10]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[11]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[11]),
        .I1(xStreamIn_V_V_0_payload_A[11]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[12]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[12]),
        .I1(xStreamIn_V_V_0_payload_A[12]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[13]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[13]),
        .I1(xStreamIn_V_V_0_payload_A[13]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[14]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[14]),
        .I1(xStreamIn_V_V_0_payload_A[14]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[14]));
  LUT3 #(
    .INIT(8'h45)) 
    \xStreamOut0_V_V_1_payload_A[15]_i_1 
       (.I0(xStreamOut0_V_V_1_sel_wr),
        .I1(xStreamOut0_V_V_1_ack_in),
        .I2(xStreamOut0_V_V_TVALID),
        .O(xStreamOut0_V_V_1_load_A));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[15]_i_2 
       (.I0(xStreamIn_V_V_0_payload_B[15]),
        .I1(xStreamIn_V_V_0_payload_A[15]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[1]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[1]),
        .I1(xStreamIn_V_V_0_payload_A[1]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[2]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[2]),
        .I1(xStreamIn_V_V_0_payload_A[2]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[3]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[3]),
        .I1(xStreamIn_V_V_0_payload_A[3]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[4]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[4]),
        .I1(xStreamIn_V_V_0_payload_A[4]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[5]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[5]),
        .I1(xStreamIn_V_V_0_payload_A[5]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[6]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[6]),
        .I1(xStreamIn_V_V_0_payload_A[6]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[7]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[7]),
        .I1(xStreamIn_V_V_0_payload_A[7]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[8]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[8]),
        .I1(xStreamIn_V_V_0_payload_A[8]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_1_payload_A[9]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[9]),
        .I1(xStreamIn_V_V_0_payload_A[9]),
        .I2(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_data_out[9]));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[0]),
        .Q(xStreamOut0_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[10]),
        .Q(xStreamOut0_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[11]),
        .Q(xStreamOut0_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[12]),
        .Q(xStreamOut0_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[13]),
        .Q(xStreamOut0_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[14]),
        .Q(xStreamOut0_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[15]),
        .Q(xStreamOut0_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[1]),
        .Q(xStreamOut0_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[2]),
        .Q(xStreamOut0_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[3]),
        .Q(xStreamOut0_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[4]),
        .Q(xStreamOut0_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[5]),
        .Q(xStreamOut0_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[6]),
        .Q(xStreamOut0_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[7]),
        .Q(xStreamOut0_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[8]),
        .Q(xStreamOut0_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[9]),
        .Q(xStreamOut0_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \xStreamOut0_V_V_1_payload_B[15]_i_1 
       (.I0(xStreamOut0_V_V_1_sel_wr),
        .I1(xStreamOut0_V_V_1_ack_in),
        .I2(xStreamOut0_V_V_TVALID),
        .O(xStreamOut0_V_V_1_load_B));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[0]),
        .Q(xStreamOut0_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[10]),
        .Q(xStreamOut0_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[11]),
        .Q(xStreamOut0_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[12]),
        .Q(xStreamOut0_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[13]),
        .Q(xStreamOut0_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[14]),
        .Q(xStreamOut0_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[15]),
        .Q(xStreamOut0_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[1]),
        .Q(xStreamOut0_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[2]),
        .Q(xStreamOut0_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[3]),
        .Q(xStreamOut0_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[4]),
        .Q(xStreamOut0_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[5]),
        .Q(xStreamOut0_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[6]),
        .Q(xStreamOut0_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[7]),
        .Q(xStreamOut0_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[8]),
        .Q(xStreamOut0_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \xStreamOut0_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(xStreamOut0_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[9]),
        .Q(xStreamOut0_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h78)) 
    xStreamOut0_V_V_1_sel_rd_i_1
       (.I0(xStreamOut0_V_V_TVALID),
        .I1(xStreamOut0_V_V_TREADY),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamOut0_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut0_V_V_1_sel_rd_i_1_n_0),
        .Q(xStreamOut0_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hBBBBFFBF44440040)) 
    xStreamOut0_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\tmp_s_reg_242_reg_n_0_[0] ),
        .I3(tmp_6_reg_238),
        .I4(tmp_reg_234),
        .I5(xStreamOut0_V_V_1_sel_wr),
        .O(xStreamOut0_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamOut0_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut0_V_V_1_sel_wr_i_1_n_0),
        .Q(xStreamOut0_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \xStreamOut0_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut0_V_V_1_state[0]_i_2_n_0 ),
        .I2(xStreamOut0_V_V_TVALID),
        .I3(xStreamOut0_V_V_1_ack_in),
        .I4(xStreamOut0_V_V_TREADY),
        .O(\xStreamOut0_V_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \xStreamOut0_V_V_1_state[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\tmp_s_reg_242_reg_n_0_[0] ),
        .I2(tmp_6_reg_238),
        .I3(tmp_reg_234),
        .O(\xStreamOut0_V_V_1_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \xStreamOut0_V_V_1_state[1]_i_1 
       (.I0(xStreamOut0_V_V_TVALID),
        .I1(xStreamOut0_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\tsStreamOut0_V_V_1_state[1]_i_2_n_0 ),
        .I5(xStreamOut0_V_V_1_ack_in),
        .O(xStreamOut0_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamOut0_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xStreamOut0_V_V_1_state[0]_i_1_n_0 ),
        .Q(xStreamOut0_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamOut0_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut0_V_V_1_state),
        .Q(xStreamOut0_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[0]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[0]),
        .I1(xStreamOut0_V_V_1_payload_A[0]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[10]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[10]),
        .I1(xStreamOut0_V_V_1_payload_A[10]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[11]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[11]),
        .I1(xStreamOut0_V_V_1_payload_A[11]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[12]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[12]),
        .I1(xStreamOut0_V_V_1_payload_A[12]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[13]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[13]),
        .I1(xStreamOut0_V_V_1_payload_A[13]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[14]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[14]),
        .I1(xStreamOut0_V_V_1_payload_A[14]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[15]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[15]),
        .I1(xStreamOut0_V_V_1_payload_A[15]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[1]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[1]),
        .I1(xStreamOut0_V_V_1_payload_A[1]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[2]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[2]),
        .I1(xStreamOut0_V_V_1_payload_A[2]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[3]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[3]),
        .I1(xStreamOut0_V_V_1_payload_A[3]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[4]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[4]),
        .I1(xStreamOut0_V_V_1_payload_A[4]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[5]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[5]),
        .I1(xStreamOut0_V_V_1_payload_A[5]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[6]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[6]),
        .I1(xStreamOut0_V_V_1_payload_A[6]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[7]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[7]),
        .I1(xStreamOut0_V_V_1_payload_A[7]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[8]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[8]),
        .I1(xStreamOut0_V_V_1_payload_A[8]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut0_V_V_TDATA[9]_INST_0 
       (.I0(xStreamOut0_V_V_1_payload_B[9]),
        .I1(xStreamOut0_V_V_1_payload_A[9]),
        .I2(xStreamOut0_V_V_1_sel),
        .O(xStreamOut0_V_V_TDATA[9]));
  LUT3 #(
    .INIT(8'h45)) 
    \xStreamOut1_V_V_1_payload_A[15]_i_1 
       (.I0(xStreamOut1_V_V_1_sel_wr),
        .I1(xStreamOut1_V_V_1_ack_in),
        .I2(xStreamOut1_V_V_TVALID),
        .O(xStreamOut1_V_V_1_load_A));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[0]),
        .Q(xStreamOut1_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[10]),
        .Q(xStreamOut1_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[11]),
        .Q(xStreamOut1_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[12]),
        .Q(xStreamOut1_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[13]),
        .Q(xStreamOut1_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[14]),
        .Q(xStreamOut1_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[15]),
        .Q(xStreamOut1_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[1]),
        .Q(xStreamOut1_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[2]),
        .Q(xStreamOut1_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[3]),
        .Q(xStreamOut1_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[4]),
        .Q(xStreamOut1_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[5]),
        .Q(xStreamOut1_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[6]),
        .Q(xStreamOut1_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[7]),
        .Q(xStreamOut1_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[8]),
        .Q(xStreamOut1_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_A),
        .D(xStreamIn_V_V_0_data_out[9]),
        .Q(xStreamOut1_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \xStreamOut1_V_V_1_payload_B[15]_i_1 
       (.I0(xStreamOut1_V_V_1_sel_wr),
        .I1(xStreamOut1_V_V_1_ack_in),
        .I2(xStreamOut1_V_V_TVALID),
        .O(xStreamOut1_V_V_1_load_B));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[0]),
        .Q(xStreamOut1_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[10]),
        .Q(xStreamOut1_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[11]),
        .Q(xStreamOut1_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[12]),
        .Q(xStreamOut1_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[13]),
        .Q(xStreamOut1_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[14]),
        .Q(xStreamOut1_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[15]),
        .Q(xStreamOut1_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[1]),
        .Q(xStreamOut1_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[2]),
        .Q(xStreamOut1_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[3]),
        .Q(xStreamOut1_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[4]),
        .Q(xStreamOut1_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[5]),
        .Q(xStreamOut1_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[6]),
        .Q(xStreamOut1_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[7]),
        .Q(xStreamOut1_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[8]),
        .Q(xStreamOut1_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \xStreamOut1_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(xStreamOut1_V_V_1_load_B),
        .D(xStreamIn_V_V_0_data_out[9]),
        .Q(xStreamOut1_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h78)) 
    xStreamOut1_V_V_1_sel_rd_i_1
       (.I0(xStreamOut1_V_V_TVALID),
        .I1(xStreamOut1_V_V_TREADY),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamOut1_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut1_V_V_1_sel_rd_i_1_n_0),
        .Q(xStreamOut1_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFFABFF00005400)) 
    xStreamOut1_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\tmp_s_reg_242_reg_n_0_[0] ),
        .I2(tmp_6_reg_238),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(tmp_reg_234),
        .I5(xStreamOut1_V_V_1_sel_wr),
        .O(xStreamOut1_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamOut1_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut1_V_V_1_sel_wr_i_1_n_0),
        .Q(xStreamOut1_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \xStreamOut1_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut1_V_V_1_state[0]_i_2_n_0 ),
        .I2(xStreamOut1_V_V_TVALID),
        .I3(xStreamOut1_V_V_1_ack_in),
        .I4(xStreamOut1_V_V_TREADY),
        .O(\xStreamOut1_V_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \xStreamOut1_V_V_1_state[0]_i_2 
       (.I0(\tmp_s_reg_242_reg_n_0_[0] ),
        .I1(tmp_6_reg_238),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(tmp_reg_234),
        .O(\xStreamOut1_V_V_1_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \xStreamOut1_V_V_1_state[1]_i_1 
       (.I0(xStreamOut1_V_V_TVALID),
        .I1(xStreamOut1_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ),
        .I5(xStreamOut1_V_V_1_ack_in),
        .O(xStreamOut1_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamOut1_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xStreamOut1_V_V_1_state[0]_i_1_n_0 ),
        .Q(xStreamOut1_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamOut1_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut1_V_V_1_state),
        .Q(xStreamOut1_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[0]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[0]),
        .I1(xStreamOut1_V_V_1_payload_A[0]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[10]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[10]),
        .I1(xStreamOut1_V_V_1_payload_A[10]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[11]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[11]),
        .I1(xStreamOut1_V_V_1_payload_A[11]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[12]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[12]),
        .I1(xStreamOut1_V_V_1_payload_A[12]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[13]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[13]),
        .I1(xStreamOut1_V_V_1_payload_A[13]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[14]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[14]),
        .I1(xStreamOut1_V_V_1_payload_A[14]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[15]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[15]),
        .I1(xStreamOut1_V_V_1_payload_A[15]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[1]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[1]),
        .I1(xStreamOut1_V_V_1_payload_A[1]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[2]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[2]),
        .I1(xStreamOut1_V_V_1_payload_A[2]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[3]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[3]),
        .I1(xStreamOut1_V_V_1_payload_A[3]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[4]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[4]),
        .I1(xStreamOut1_V_V_1_payload_A[4]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[5]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[5]),
        .I1(xStreamOut1_V_V_1_payload_A[5]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[6]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[6]),
        .I1(xStreamOut1_V_V_1_payload_A[6]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[7]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[7]),
        .I1(xStreamOut1_V_V_1_payload_A[7]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[8]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[8]),
        .I1(xStreamOut1_V_V_1_payload_A[8]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut1_V_V_TDATA[9]_INST_0 
       (.I0(xStreamOut1_V_V_1_payload_B[9]),
        .I1(xStreamOut1_V_V_1_payload_A[9]),
        .I2(xStreamOut1_V_V_1_sel),
        .O(xStreamOut1_V_V_TDATA[9]));
  LUT3 #(
    .INIT(8'h45)) 
    \yStreamIn_V_V_0_payload_A[15]_i_1 
       (.I0(yStreamIn_V_V_0_sel_wr),
        .I1(yStreamIn_V_V_TREADY),
        .I2(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(yStreamIn_V_V_0_load_A));
  FDRE \yStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[0]),
        .Q(yStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[10]),
        .Q(yStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[11]),
        .Q(yStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[12]),
        .Q(yStreamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[13]),
        .Q(yStreamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[14]),
        .Q(yStreamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[15]),
        .Q(yStreamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[1]),
        .Q(yStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[2]),
        .Q(yStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[3]),
        .Q(yStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[4]),
        .Q(yStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[5]),
        .Q(yStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[6]),
        .Q(yStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[7]),
        .Q(yStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[8]),
        .Q(yStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[9]),
        .Q(yStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \yStreamIn_V_V_0_payload_B[15]_i_1 
       (.I0(yStreamIn_V_V_0_sel_wr),
        .I1(yStreamIn_V_V_TREADY),
        .I2(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(yStreamIn_V_V_0_load_B));
  FDRE \yStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[0]),
        .Q(yStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[10]),
        .Q(yStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[11]),
        .Q(yStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[12]),
        .Q(yStreamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[13]),
        .Q(yStreamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[14]),
        .Q(yStreamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[15]),
        .Q(yStreamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[1]),
        .Q(yStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[2]),
        .Q(yStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[3]),
        .Q(yStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[4]),
        .Q(yStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[5]),
        .Q(yStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[6]),
        .Q(yStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[7]),
        .Q(yStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[8]),
        .Q(yStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[9]),
        .Q(yStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    yStreamIn_V_V_0_sel_rd_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(yStreamIn_V_V_0_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    yStreamIn_V_V_0_sel_wr_i_1
       (.I0(yStreamIn_V_V_TVALID),
        .I1(yStreamIn_V_V_TREADY),
        .I2(yStreamIn_V_V_0_sel_wr),
        .O(yStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(yStreamIn_V_V_0_sel_wr),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \yStreamIn_V_V_0_state[0]_i_1 
       (.I0(yStreamIn_V_V_TREADY),
        .I1(yStreamIn_V_V_TVALID),
        .I2(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_done_INST_0_i_1_n_0),
        .O(\yStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \yStreamIn_V_V_0_state[1]_i_1 
       (.I0(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(yStreamIn_V_V_TVALID),
        .I4(yStreamIn_V_V_TREADY),
        .O(yStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\yStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamIn_V_V_0_state),
        .Q(yStreamIn_V_V_TREADY),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[0]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[0]),
        .I1(yStreamIn_V_V_0_payload_A[0]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[10]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[10]),
        .I1(yStreamIn_V_V_0_payload_A[10]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[11]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[11]),
        .I1(yStreamIn_V_V_0_payload_A[11]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[12]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[12]),
        .I1(yStreamIn_V_V_0_payload_A[12]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[13]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[13]),
        .I1(yStreamIn_V_V_0_payload_A[13]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[14]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[14]),
        .I1(yStreamIn_V_V_0_payload_A[14]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[14]));
  LUT3 #(
    .INIT(8'h45)) 
    \yStreamOut0_V_V_1_payload_A[15]_i_1 
       (.I0(yStreamOut0_V_V_1_sel_wr),
        .I1(yStreamOut0_V_V_1_ack_in),
        .I2(yStreamOut0_V_V_TVALID),
        .O(yStreamOut0_V_V_1_load_A));
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[15]_i_2 
       (.I0(yStreamIn_V_V_0_payload_B[15]),
        .I1(yStreamIn_V_V_0_payload_A[15]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[1]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[1]),
        .I1(yStreamIn_V_V_0_payload_A[1]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[2]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[2]),
        .I1(yStreamIn_V_V_0_payload_A[2]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[3]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[3]),
        .I1(yStreamIn_V_V_0_payload_A[3]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[4]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[4]),
        .I1(yStreamIn_V_V_0_payload_A[4]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[5]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[5]),
        .I1(yStreamIn_V_V_0_payload_A[5]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[6]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[6]),
        .I1(yStreamIn_V_V_0_payload_A[6]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[7]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[7]),
        .I1(yStreamIn_V_V_0_payload_A[7]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[8]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[8]),
        .I1(yStreamIn_V_V_0_payload_A[8]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_1_payload_A[9]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[9]),
        .I1(yStreamIn_V_V_0_payload_A[9]),
        .I2(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_data_out[9]));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[0]),
        .Q(yStreamOut0_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[10]),
        .Q(yStreamOut0_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[11]),
        .Q(yStreamOut0_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[12]),
        .Q(yStreamOut0_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[13]),
        .Q(yStreamOut0_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[14]),
        .Q(yStreamOut0_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[15]),
        .Q(yStreamOut0_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[1]),
        .Q(yStreamOut0_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[2]),
        .Q(yStreamOut0_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[3]),
        .Q(yStreamOut0_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[4]),
        .Q(yStreamOut0_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[5]),
        .Q(yStreamOut0_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[6]),
        .Q(yStreamOut0_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[7]),
        .Q(yStreamOut0_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[8]),
        .Q(yStreamOut0_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[9]),
        .Q(yStreamOut0_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \yStreamOut0_V_V_1_payload_B[15]_i_1 
       (.I0(yStreamOut0_V_V_1_sel_wr),
        .I1(yStreamOut0_V_V_1_ack_in),
        .I2(yStreamOut0_V_V_TVALID),
        .O(yStreamOut0_V_V_1_load_B));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[0]),
        .Q(yStreamOut0_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[10]),
        .Q(yStreamOut0_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[11]),
        .Q(yStreamOut0_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[12]),
        .Q(yStreamOut0_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[13]),
        .Q(yStreamOut0_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[14]),
        .Q(yStreamOut0_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[15]),
        .Q(yStreamOut0_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[1]),
        .Q(yStreamOut0_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[2]),
        .Q(yStreamOut0_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[3]),
        .Q(yStreamOut0_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[4]),
        .Q(yStreamOut0_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[5]),
        .Q(yStreamOut0_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[6]),
        .Q(yStreamOut0_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[7]),
        .Q(yStreamOut0_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[8]),
        .Q(yStreamOut0_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \yStreamOut0_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(yStreamOut0_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[9]),
        .Q(yStreamOut0_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    yStreamOut0_V_V_1_sel_rd_i_1
       (.I0(yStreamOut0_V_V_TVALID),
        .I1(yStreamOut0_V_V_TREADY),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamOut0_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut0_V_V_1_sel_rd_i_1_n_0),
        .Q(yStreamOut0_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hBBBBFFBF44440040)) 
    yStreamOut0_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\tmp_s_reg_242_reg_n_0_[0] ),
        .I3(tmp_6_reg_238),
        .I4(tmp_reg_234),
        .I5(yStreamOut0_V_V_1_sel_wr),
        .O(yStreamOut0_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamOut0_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut0_V_V_1_sel_wr_i_1_n_0),
        .Q(yStreamOut0_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \yStreamOut0_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut0_V_V_1_state[0]_i_2_n_0 ),
        .I2(yStreamOut0_V_V_TVALID),
        .I3(yStreamOut0_V_V_1_ack_in),
        .I4(yStreamOut0_V_V_TREADY),
        .O(\yStreamOut0_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \yStreamOut0_V_V_1_state[1]_i_1 
       (.I0(yStreamOut0_V_V_TVALID),
        .I1(yStreamOut0_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\tsStreamOut0_V_V_1_state[1]_i_2_n_0 ),
        .I5(yStreamOut0_V_V_1_ack_in),
        .O(yStreamOut0_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamOut0_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\yStreamOut0_V_V_1_state[0]_i_1_n_0 ),
        .Q(yStreamOut0_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamOut0_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut0_V_V_1_state),
        .Q(yStreamOut0_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[0]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[0]),
        .I1(yStreamOut0_V_V_1_payload_A[0]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[10]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[10]),
        .I1(yStreamOut0_V_V_1_payload_A[10]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[11]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[11]),
        .I1(yStreamOut0_V_V_1_payload_A[11]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[12]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[12]),
        .I1(yStreamOut0_V_V_1_payload_A[12]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[13]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[13]),
        .I1(yStreamOut0_V_V_1_payload_A[13]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[14]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[14]),
        .I1(yStreamOut0_V_V_1_payload_A[14]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[15]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[15]),
        .I1(yStreamOut0_V_V_1_payload_A[15]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[1]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[1]),
        .I1(yStreamOut0_V_V_1_payload_A[1]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[2]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[2]),
        .I1(yStreamOut0_V_V_1_payload_A[2]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[3]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[3]),
        .I1(yStreamOut0_V_V_1_payload_A[3]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[4]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[4]),
        .I1(yStreamOut0_V_V_1_payload_A[4]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[5]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[5]),
        .I1(yStreamOut0_V_V_1_payload_A[5]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[6]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[6]),
        .I1(yStreamOut0_V_V_1_payload_A[6]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[7]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[7]),
        .I1(yStreamOut0_V_V_1_payload_A[7]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[8]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[8]),
        .I1(yStreamOut0_V_V_1_payload_A[8]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut0_V_V_TDATA[9]_INST_0 
       (.I0(yStreamOut0_V_V_1_payload_B[9]),
        .I1(yStreamOut0_V_V_1_payload_A[9]),
        .I2(yStreamOut0_V_V_1_sel),
        .O(yStreamOut0_V_V_TDATA[9]));
  LUT3 #(
    .INIT(8'h45)) 
    \yStreamOut1_V_V_1_payload_A[15]_i_1 
       (.I0(yStreamOut1_V_V_1_sel_wr),
        .I1(yStreamOut1_V_V_1_ack_in),
        .I2(yStreamOut1_V_V_TVALID),
        .O(yStreamOut1_V_V_1_load_A));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[0]),
        .Q(yStreamOut1_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[10]),
        .Q(yStreamOut1_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[11]),
        .Q(yStreamOut1_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[12]),
        .Q(yStreamOut1_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[13]),
        .Q(yStreamOut1_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[14]),
        .Q(yStreamOut1_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[15]),
        .Q(yStreamOut1_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[1]),
        .Q(yStreamOut1_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[2]),
        .Q(yStreamOut1_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[3]),
        .Q(yStreamOut1_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[4]),
        .Q(yStreamOut1_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[5]),
        .Q(yStreamOut1_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[6]),
        .Q(yStreamOut1_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[7]),
        .Q(yStreamOut1_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[8]),
        .Q(yStreamOut1_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_A),
        .D(yStreamIn_V_V_0_data_out[9]),
        .Q(yStreamOut1_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \yStreamOut1_V_V_1_payload_B[15]_i_1 
       (.I0(yStreamOut1_V_V_1_sel_wr),
        .I1(yStreamOut1_V_V_1_ack_in),
        .I2(yStreamOut1_V_V_TVALID),
        .O(yStreamOut1_V_V_1_load_B));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[0]),
        .Q(yStreamOut1_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[10]),
        .Q(yStreamOut1_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[11]),
        .Q(yStreamOut1_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[12]),
        .Q(yStreamOut1_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[13]),
        .Q(yStreamOut1_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[14]),
        .Q(yStreamOut1_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[15]),
        .Q(yStreamOut1_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[1]),
        .Q(yStreamOut1_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[2]),
        .Q(yStreamOut1_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[3]),
        .Q(yStreamOut1_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[4]),
        .Q(yStreamOut1_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[5]),
        .Q(yStreamOut1_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[6]),
        .Q(yStreamOut1_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[7]),
        .Q(yStreamOut1_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[8]),
        .Q(yStreamOut1_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \yStreamOut1_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(yStreamOut1_V_V_1_load_B),
        .D(yStreamIn_V_V_0_data_out[9]),
        .Q(yStreamOut1_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    yStreamOut1_V_V_1_sel_rd_i_1
       (.I0(yStreamOut1_V_V_TVALID),
        .I1(yStreamOut1_V_V_TREADY),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamOut1_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut1_V_V_1_sel_rd_i_1_n_0),
        .Q(yStreamOut1_V_V_1_sel),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFFABFF00005400)) 
    yStreamOut1_V_V_1_sel_wr_i_1
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\tmp_s_reg_242_reg_n_0_[0] ),
        .I2(tmp_6_reg_238),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(tmp_reg_234),
        .I5(yStreamOut1_V_V_1_sel_wr),
        .O(yStreamOut1_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamOut1_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut1_V_V_1_sel_wr_i_1_n_0),
        .Q(yStreamOut1_V_V_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \yStreamOut1_V_V_1_state[0]_i_1 
       (.I0(ap_done_INST_0_i_1_n_0),
        .I1(\xStreamOut1_V_V_1_state[0]_i_2_n_0 ),
        .I2(yStreamOut1_V_V_TVALID),
        .I3(yStreamOut1_V_V_1_ack_in),
        .I4(yStreamOut1_V_V_TREADY),
        .O(\yStreamOut1_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFDDDDDDDD)) 
    \yStreamOut1_V_V_1_state[1]_i_1 
       (.I0(yStreamOut1_V_V_TVALID),
        .I1(yStreamOut1_V_V_TREADY),
        .I2(ap_done_INST_0_i_1_n_0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\custDataStreamOut1_V_V_1_state[1]_i_2_n_0 ),
        .I5(yStreamOut1_V_V_1_ack_in),
        .O(yStreamOut1_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamOut1_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\yStreamOut1_V_V_1_state[0]_i_1_n_0 ),
        .Q(yStreamOut1_V_V_TVALID),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamOut1_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut1_V_V_1_state),
        .Q(yStreamOut1_V_V_1_ack_in),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[0]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[0]),
        .I1(yStreamOut1_V_V_1_payload_A[0]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[10]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[10]),
        .I1(yStreamOut1_V_V_1_payload_A[10]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[11]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[11]),
        .I1(yStreamOut1_V_V_1_payload_A[11]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[12]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[12]),
        .I1(yStreamOut1_V_V_1_payload_A[12]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[13]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[13]),
        .I1(yStreamOut1_V_V_1_payload_A[13]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[14]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[14]),
        .I1(yStreamOut1_V_V_1_payload_A[14]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[15]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[15]),
        .I1(yStreamOut1_V_V_1_payload_A[15]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[1]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[1]),
        .I1(yStreamOut1_V_V_1_payload_A[1]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[2]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[2]),
        .I1(yStreamOut1_V_V_1_payload_A[2]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[3]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[3]),
        .I1(yStreamOut1_V_V_1_payload_A[3]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[4]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[4]),
        .I1(yStreamOut1_V_V_1_payload_A[4]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[5]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[5]),
        .I1(yStreamOut1_V_V_1_payload_A[5]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[6]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[6]),
        .I1(yStreamOut1_V_V_1_payload_A[6]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[7]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[7]),
        .I1(yStreamOut1_V_V_1_payload_A[7]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[8]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[8]),
        .I1(yStreamOut1_V_V_1_payload_A[8]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut1_V_V_TDATA[9]_INST_0 
       (.I0(yStreamOut1_V_V_1_payload_B[9]),
        .I1(yStreamOut1_V_V_1_payload_A[9]),
        .I2(yStreamOut1_V_V_1_sel),
        .O(yStreamOut1_V_V_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "eventStreamDuplicate_config_s_axi" *) 
module brd_eventStreamDuplicate_0_0_eventStreamDuplicate_config_s_axi
   (out,
    s_axi_config_RVALID,
    \tmp_s_reg_242_reg[0] ,
    ARESET,
    tmp_fu_196_p2,
    \tmp_6_reg_238_reg[0] ,
    s_axi_config_RDATA,
    \tmp_s_reg_242_reg[0]_0 ,
    ap_enable_reg_pp0_iter2_reg,
    ap_rst_n,
    s_axi_config_WDATA,
    s_axi_config_WSTRB,
    tmp_6_reg_238,
    ap_clk,
    s_axi_config_AWADDR,
    s_axi_config_AWVALID,
    s_axi_config_BREADY,
    s_axi_config_WVALID,
    s_axi_config_ARVALID,
    s_axi_config_RREADY,
    s_axi_config_ARADDR);
  output [2:0]out;
  output [1:0]s_axi_config_RVALID;
  output \tmp_s_reg_242_reg[0] ;
  output ARESET;
  output tmp_fu_196_p2;
  output \tmp_6_reg_238_reg[0] ;
  output [31:0]s_axi_config_RDATA;
  input \tmp_s_reg_242_reg[0]_0 ;
  input ap_enable_reg_pp0_iter2_reg;
  input ap_rst_n;
  input [31:0]s_axi_config_WDATA;
  input [3:0]s_axi_config_WSTRB;
  input tmp_6_reg_238;
  input ap_clk;
  input [4:0]s_axi_config_AWADDR;
  input s_axi_config_AWVALID;
  input s_axi_config_BREADY;
  input s_axi_config_WVALID;
  input s_axi_config_ARVALID;
  input s_axi_config_RREADY;
  input [4:0]s_axi_config_ARADDR;

  wire ARESET;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_wstate_reg_n_0_[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ar_hs;
  wire [1:0]config_V;
  wire \int_config_V[31]_i_3_n_0 ;
  wire \int_config_V_reg_n_0_[10] ;
  wire \int_config_V_reg_n_0_[11] ;
  wire \int_config_V_reg_n_0_[12] ;
  wire \int_config_V_reg_n_0_[13] ;
  wire \int_config_V_reg_n_0_[14] ;
  wire \int_config_V_reg_n_0_[15] ;
  wire \int_config_V_reg_n_0_[16] ;
  wire \int_config_V_reg_n_0_[17] ;
  wire \int_config_V_reg_n_0_[18] ;
  wire \int_config_V_reg_n_0_[19] ;
  wire \int_config_V_reg_n_0_[20] ;
  wire \int_config_V_reg_n_0_[21] ;
  wire \int_config_V_reg_n_0_[22] ;
  wire \int_config_V_reg_n_0_[23] ;
  wire \int_config_V_reg_n_0_[24] ;
  wire \int_config_V_reg_n_0_[25] ;
  wire \int_config_V_reg_n_0_[26] ;
  wire \int_config_V_reg_n_0_[27] ;
  wire \int_config_V_reg_n_0_[28] ;
  wire \int_config_V_reg_n_0_[29] ;
  wire \int_config_V_reg_n_0_[2] ;
  wire \int_config_V_reg_n_0_[30] ;
  wire \int_config_V_reg_n_0_[31] ;
  wire \int_config_V_reg_n_0_[3] ;
  wire \int_config_V_reg_n_0_[4] ;
  wire \int_config_V_reg_n_0_[5] ;
  wire \int_config_V_reg_n_0_[6] ;
  wire \int_config_V_reg_n_0_[7] ;
  wire \int_config_V_reg_n_0_[8] ;
  wire \int_config_V_reg_n_0_[9] ;
  wire [31:0]\or ;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire p_0_in;
  wire \rdata_data[31]_i_1_n_0 ;
  wire [2:1]rnext;
  (* RTL_KEEP = "yes" *) wire [0:0]rstate;
  wire [4:0]s_axi_config_ARADDR;
  wire s_axi_config_ARVALID;
  wire [4:0]s_axi_config_AWADDR;
  wire s_axi_config_AWVALID;
  wire s_axi_config_BREADY;
  wire [31:0]s_axi_config_RDATA;
  wire s_axi_config_RREADY;
  (* RTL_KEEP = "yes" *) wire [1:0]s_axi_config_RVALID;
  wire [31:0]s_axi_config_WDATA;
  wire [3:0]s_axi_config_WSTRB;
  wire s_axi_config_WVALID;
  wire tmp_6_reg_238;
  wire \tmp_6_reg_238_reg[0] ;
  wire tmp_fu_196_p2;
  wire \tmp_s_reg_242_reg[0] ;
  wire \tmp_s_reg_242_reg[0]_0 ;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;

  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_config_ARVALID),
        .I1(s_axi_config_RVALID[0]),
        .I2(s_axi_config_RVALID[1]),
        .I3(s_axi_config_RREADY),
        .O(rnext[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_config_ARVALID),
        .I1(s_axi_config_RVALID[0]),
        .I2(s_axi_config_RREADY),
        .I3(s_axi_config_RVALID[1]),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rstate),
        .S(ARESET));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(s_axi_config_RVALID[0]),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_config_RVALID[1]),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_config_BREADY),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(s_axi_config_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_config_AWVALID),
        .I1(out[0]),
        .I2(s_axi_config_WVALID),
        .I3(out[1]),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_config_WVALID),
        .I1(out[1]),
        .I2(s_axi_config_BREADY),
        .I3(out[2]),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_wstate_reg_n_0_[0] ),
        .S(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(out[0]),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(out[1]),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(out[2]),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[0]_i_1 
       (.I0(s_axi_config_WDATA[0]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(config_V[0]),
        .O(\or [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[10]_i_1 
       (.I0(s_axi_config_WDATA[10]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[10] ),
        .O(\or [10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[11]_i_1 
       (.I0(s_axi_config_WDATA[11]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[11] ),
        .O(\or [11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[12]_i_1 
       (.I0(s_axi_config_WDATA[12]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[12] ),
        .O(\or [12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[13]_i_1 
       (.I0(s_axi_config_WDATA[13]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[13] ),
        .O(\or [13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[14]_i_1 
       (.I0(s_axi_config_WDATA[14]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[14] ),
        .O(\or [14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[15]_i_1 
       (.I0(s_axi_config_WDATA[15]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[15] ),
        .O(\or [15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[16]_i_1 
       (.I0(s_axi_config_WDATA[16]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[16] ),
        .O(\or [16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[17]_i_1 
       (.I0(s_axi_config_WDATA[17]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[17] ),
        .O(\or [17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[18]_i_1 
       (.I0(s_axi_config_WDATA[18]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[18] ),
        .O(\or [18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[19]_i_1 
       (.I0(s_axi_config_WDATA[19]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[19] ),
        .O(\or [19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[1]_i_1 
       (.I0(s_axi_config_WDATA[1]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(config_V[1]),
        .O(\or [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[20]_i_1 
       (.I0(s_axi_config_WDATA[20]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[20] ),
        .O(\or [20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[21]_i_1 
       (.I0(s_axi_config_WDATA[21]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[21] ),
        .O(\or [21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[22]_i_1 
       (.I0(s_axi_config_WDATA[22]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[22] ),
        .O(\or [22]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[23]_i_1 
       (.I0(s_axi_config_WDATA[23]),
        .I1(s_axi_config_WSTRB[2]),
        .I2(\int_config_V_reg_n_0_[23] ),
        .O(\or [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[24]_i_1 
       (.I0(s_axi_config_WDATA[24]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[24] ),
        .O(\or [24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[25]_i_1 
       (.I0(s_axi_config_WDATA[25]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[25] ),
        .O(\or [25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[26]_i_1 
       (.I0(s_axi_config_WDATA[26]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[26] ),
        .O(\or [26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[27]_i_1 
       (.I0(s_axi_config_WDATA[27]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[27] ),
        .O(\or [27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[28]_i_1 
       (.I0(s_axi_config_WDATA[28]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[28] ),
        .O(\or [28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[29]_i_1 
       (.I0(s_axi_config_WDATA[29]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[29] ),
        .O(\or [29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[2]_i_1 
       (.I0(s_axi_config_WDATA[2]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(\int_config_V_reg_n_0_[2] ),
        .O(\or [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[30]_i_1 
       (.I0(s_axi_config_WDATA[30]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[30] ),
        .O(\or [30]));
  LUT2 #(
    .INIT(4'h8)) 
    \int_config_V[31]_i_1 
       (.I0(s_axi_config_WVALID),
        .I1(\int_config_V[31]_i_3_n_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[31]_i_2 
       (.I0(s_axi_config_WDATA[31]),
        .I1(s_axi_config_WSTRB[3]),
        .I2(\int_config_V_reg_n_0_[31] ),
        .O(\or [31]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \int_config_V[31]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(out[1]),
        .O(\int_config_V[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[3]_i_1 
       (.I0(s_axi_config_WDATA[3]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(\int_config_V_reg_n_0_[3] ),
        .O(\or [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[4]_i_1 
       (.I0(s_axi_config_WDATA[4]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(\int_config_V_reg_n_0_[4] ),
        .O(\or [4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[5]_i_1 
       (.I0(s_axi_config_WDATA[5]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(\int_config_V_reg_n_0_[5] ),
        .O(\or [5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[6]_i_1 
       (.I0(s_axi_config_WDATA[6]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(\int_config_V_reg_n_0_[6] ),
        .O(\or [6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[7]_i_1 
       (.I0(s_axi_config_WDATA[7]),
        .I1(s_axi_config_WSTRB[0]),
        .I2(\int_config_V_reg_n_0_[7] ),
        .O(\or [7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[8]_i_1 
       (.I0(s_axi_config_WDATA[8]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[8] ),
        .O(\or [8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_config_V[9]_i_1 
       (.I0(s_axi_config_WDATA[9]),
        .I1(s_axi_config_WSTRB[1]),
        .I2(\int_config_V_reg_n_0_[9] ),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [0]),
        .Q(config_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [10]),
        .Q(\int_config_V_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [11]),
        .Q(\int_config_V_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [12]),
        .Q(\int_config_V_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [13]),
        .Q(\int_config_V_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [14]),
        .Q(\int_config_V_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [15]),
        .Q(\int_config_V_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [16]),
        .Q(\int_config_V_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [17]),
        .Q(\int_config_V_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [18]),
        .Q(\int_config_V_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [19]),
        .Q(\int_config_V_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [1]),
        .Q(config_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [20]),
        .Q(\int_config_V_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [21]),
        .Q(\int_config_V_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [22]),
        .Q(\int_config_V_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [23]),
        .Q(\int_config_V_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [24]),
        .Q(\int_config_V_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [25]),
        .Q(\int_config_V_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [26]),
        .Q(\int_config_V_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [27]),
        .Q(\int_config_V_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [28]),
        .Q(\int_config_V_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [29]),
        .Q(\int_config_V_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [2]),
        .Q(\int_config_V_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [30]),
        .Q(\int_config_V_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [31]),
        .Q(\int_config_V_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [3]),
        .Q(\int_config_V_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [4]),
        .Q(\int_config_V_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [5]),
        .Q(\int_config_V_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [6]),
        .Q(\int_config_V_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [7]),
        .Q(\int_config_V_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [8]),
        .Q(\int_config_V_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_config_V_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [9]),
        .Q(\int_config_V_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \rdata_data[31]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_config_ARADDR[2]),
        .I2(s_axi_config_ARADDR[3]),
        .I3(s_axi_config_ARADDR[0]),
        .I4(s_axi_config_ARADDR[1]),
        .I5(s_axi_config_ARADDR[4]),
        .O(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[31]_i_2 
       (.I0(s_axi_config_ARVALID),
        .I1(s_axi_config_RVALID[0]),
        .O(ar_hs));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(config_V[0]),
        .Q(s_axi_config_RDATA[0]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[10] ),
        .Q(s_axi_config_RDATA[10]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[11] ),
        .Q(s_axi_config_RDATA[11]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[12] ),
        .Q(s_axi_config_RDATA[12]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[13] ),
        .Q(s_axi_config_RDATA[13]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[14] ),
        .Q(s_axi_config_RDATA[14]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[15] ),
        .Q(s_axi_config_RDATA[15]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[16] ),
        .Q(s_axi_config_RDATA[16]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[17] ),
        .Q(s_axi_config_RDATA[17]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[18] ),
        .Q(s_axi_config_RDATA[18]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[19] ),
        .Q(s_axi_config_RDATA[19]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(config_V[1]),
        .Q(s_axi_config_RDATA[1]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[20] ),
        .Q(s_axi_config_RDATA[20]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[21] ),
        .Q(s_axi_config_RDATA[21]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[22] ),
        .Q(s_axi_config_RDATA[22]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[23] ),
        .Q(s_axi_config_RDATA[23]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[24] ),
        .Q(s_axi_config_RDATA[24]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[25] ),
        .Q(s_axi_config_RDATA[25]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[26] ),
        .Q(s_axi_config_RDATA[26]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[27] ),
        .Q(s_axi_config_RDATA[27]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[28] ),
        .Q(s_axi_config_RDATA[28]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[29] ),
        .Q(s_axi_config_RDATA[29]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[2] ),
        .Q(s_axi_config_RDATA[2]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[30] ),
        .Q(s_axi_config_RDATA[30]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[31] ),
        .Q(s_axi_config_RDATA[31]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[3] ),
        .Q(s_axi_config_RDATA[3]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[4] ),
        .Q(s_axi_config_RDATA[4]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[5] ),
        .Q(s_axi_config_RDATA[5]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[6] ),
        .Q(s_axi_config_RDATA[6]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[7] ),
        .Q(s_axi_config_RDATA[7]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[8] ),
        .Q(s_axi_config_RDATA[8]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_config_V_reg_n_0_[9] ),
        .Q(s_axi_config_RDATA[9]),
        .R(\rdata_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAF04)) 
    \tmp_6_reg_238[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter2_reg),
        .I1(config_V[0]),
        .I2(config_V[1]),
        .I3(tmp_6_reg_238),
        .O(\tmp_6_reg_238_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_reg_234[0]_i_2 
       (.I0(config_V[1]),
        .I1(config_V[0]),
        .O(tmp_fu_196_p2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA3A)) 
    \tmp_s_reg_242[0]_i_1 
       (.I0(\tmp_s_reg_242_reg[0]_0 ),
        .I1(config_V[0]),
        .I2(config_V[1]),
        .I3(ap_enable_reg_pp0_iter2_reg),
        .O(\tmp_s_reg_242_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_config_AWVALID),
        .I1(out[0]),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_config_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_config_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_config_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_config_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_config_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \xStreamIn_V_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ARESET));
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
