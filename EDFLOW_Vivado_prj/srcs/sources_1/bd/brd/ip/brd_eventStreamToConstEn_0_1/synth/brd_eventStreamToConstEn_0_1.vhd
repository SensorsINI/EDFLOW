-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:eventStreamToConstEncntFrameStream:1.0
-- IP Revision: 1912181534

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_eventStreamToConstEn_0_1 IS
  PORT (
    count_V_ap_vld : OUT STD_LOGIC;
    vgaEn_V_ap_vld : OUT STD_LOGIC;
    vCnt_V_ap_vld : OUT STD_LOGIC;
    hCnt_V_ap_vld : OUT STD_LOGIC;
    regX_V_ap_vld : OUT STD_LOGIC;
    regY_V_ap_vld : OUT STD_LOGIC;
    polReg_V_ap_vld : OUT STD_LOGIC;
    skipFlgOutput_V_ap_vld : OUT STD_LOGIC;
    tsReg_V_ap_vld : OUT STD_LOGIC;
    s_axi_config_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_config_AWVALID : IN STD_LOGIC;
    s_axi_config_AWREADY : OUT STD_LOGIC;
    s_axi_config_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_config_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_config_WVALID : IN STD_LOGIC;
    s_axi_config_WREADY : OUT STD_LOGIC;
    s_axi_config_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_config_BVALID : OUT STD_LOGIC;
    s_axi_config_BREADY : IN STD_LOGIC;
    s_axi_config_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_config_ARVALID : IN STD_LOGIC;
    s_axi_config_ARREADY : OUT STD_LOGIC;
    s_axi_config_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_config_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_config_RVALID : OUT STD_LOGIC;
    s_axi_config_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    frameStream_TVALID : OUT STD_LOGIC;
    frameStream_TREADY : IN STD_LOGIC;
    frameStream_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    frameStream_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    frameStream_TKEEP : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    frameStream_TSTRB : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    frameStream_TUSER : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    frameStream_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    frameStream_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    xStream_V_V_TVALID : IN STD_LOGIC;
    xStream_V_V_TREADY : OUT STD_LOGIC;
    xStream_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    yStream_V_V_TVALID : IN STD_LOGIC;
    yStream_V_V_TREADY : OUT STD_LOGIC;
    yStream_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    polStream_V_V_TVALID : IN STD_LOGIC;
    polStream_V_V_TREADY : OUT STD_LOGIC;
    polStream_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tsStream_V_V_TVALID : IN STD_LOGIC;
    tsStream_V_V_TREADY : OUT STD_LOGIC;
    tsStream_V_V_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    custDataStream_V_V_TVALID : IN STD_LOGIC;
    custDataStream_V_V_TREADY : OUT STD_LOGIC;
    custDataStream_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    count_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    vgaEn_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vCnt_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    hCnt_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    regX_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    regY_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    polReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    skipFlgOutput_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    tsReg_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END brd_eventStreamToConstEn_0_1;

ARCHITECTURE brd_eventStreamToConstEn_0_1_arch OF brd_eventStreamToConstEn_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_eventStreamToConstEn_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT eventStreamToConstEncntFrameStream IS
    GENERIC (
      C_S_AXI_CONFIG_ADDR_WIDTH : INTEGER;
      C_S_AXI_CONFIG_DATA_WIDTH : INTEGER
    );
    PORT (
      count_V_ap_vld : OUT STD_LOGIC;
      vgaEn_V_ap_vld : OUT STD_LOGIC;
      vCnt_V_ap_vld : OUT STD_LOGIC;
      hCnt_V_ap_vld : OUT STD_LOGIC;
      regX_V_ap_vld : OUT STD_LOGIC;
      regY_V_ap_vld : OUT STD_LOGIC;
      polReg_V_ap_vld : OUT STD_LOGIC;
      skipFlgOutput_V_ap_vld : OUT STD_LOGIC;
      tsReg_V_ap_vld : OUT STD_LOGIC;
      s_axi_config_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_config_AWVALID : IN STD_LOGIC;
      s_axi_config_AWREADY : OUT STD_LOGIC;
      s_axi_config_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_config_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_config_WVALID : IN STD_LOGIC;
      s_axi_config_WREADY : OUT STD_LOGIC;
      s_axi_config_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_config_BVALID : OUT STD_LOGIC;
      s_axi_config_BREADY : IN STD_LOGIC;
      s_axi_config_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_config_ARVALID : IN STD_LOGIC;
      s_axi_config_ARREADY : OUT STD_LOGIC;
      s_axi_config_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_config_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_config_RVALID : OUT STD_LOGIC;
      s_axi_config_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      frameStream_TVALID : OUT STD_LOGIC;
      frameStream_TREADY : IN STD_LOGIC;
      frameStream_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      frameStream_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      frameStream_TKEEP : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      frameStream_TSTRB : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      frameStream_TUSER : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      frameStream_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      frameStream_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      xStream_V_V_TVALID : IN STD_LOGIC;
      xStream_V_V_TREADY : OUT STD_LOGIC;
      xStream_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      yStream_V_V_TVALID : IN STD_LOGIC;
      yStream_V_V_TREADY : OUT STD_LOGIC;
      yStream_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      polStream_V_V_TVALID : IN STD_LOGIC;
      polStream_V_V_TREADY : OUT STD_LOGIC;
      polStream_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      tsStream_V_V_TVALID : IN STD_LOGIC;
      tsStream_V_V_TREADY : OUT STD_LOGIC;
      tsStream_V_V_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      custDataStream_V_V_TVALID : IN STD_LOGIC;
      custDataStream_V_V_TREADY : OUT STD_LOGIC;
      custDataStream_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      count_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      vgaEn_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vCnt_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      hCnt_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      regX_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      regY_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      polReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      skipFlgOutput_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      tsReg_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT eventStreamToConstEncntFrameStream;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_eventStreamToConstEn_0_1_arch: ARCHITECTURE IS "eventStreamToConstEncntFrameStream,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_eventStreamToConstEn_0_1_arch : ARCHITECTURE IS "brd_eventStreamToConstEn_0_1,eventStreamToConstEncntFrameStream,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_eventStreamToConstEn_0_1_arch: ARCHITECTURE IS "brd_eventStreamToConstEn_0_1,eventStreamToConstEncntFrameStream,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=eventStreamToConstEncntFrameStream,x_ipVersion=1.0,x_ipCoreRevision=1912181534,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_CONFIG_ADDR_WIDTH=5,C_S_AXI_CONFIG_DATA_WIDTH=32}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsReg_V: SIGNAL IS "XIL_INTERFACENAME tsReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF tsReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 tsReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF skipFlgOutput_V: SIGNAL IS "XIL_INTERFACENAME skipFlgOutput_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}" & 
"} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF skipFlgOutput_V: SIGNAL IS "xilinx.com:signal:data:1.0 skipFlgOutput_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF polReg_V: SIGNAL IS "XIL_INTERFACENAME polReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF polReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 polReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF regY_V: SIGNAL IS "XIL_INTERFACENAME regY_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value " & 
"false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF regY_V: SIGNAL IS "xilinx.com:signal:data:1.0 regY_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF regX_V: SIGNAL IS "XIL_INTERFACENAME regX_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value " & 
"false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF regX_V: SIGNAL IS "xilinx.com:signal:data:1.0 regX_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF hCnt_V: SIGNAL IS "XIL_INTERFACENAME hCnt_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value " & 
"false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF hCnt_V: SIGNAL IS "xilinx.com:signal:data:1.0 hCnt_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF vCnt_V: SIGNAL IS "XIL_INTERFACENAME vCnt_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value " & 
"false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF vCnt_V: SIGNAL IS "xilinx.com:signal:data:1.0 vCnt_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF vgaEn_V: SIGNAL IS "XIL_INTERFACENAME vgaEn_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value " & 
"false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF vgaEn_V: SIGNAL IS "xilinx.com:signal:data:1.0 vgaEn_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF count_V: SIGNAL IS "XIL_INTERFACENAME count_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF count_V: SIGNAL IS "xilinx.com:signal:data:1.0 count_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF custDataStream_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 custDataStream_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF custDataStream_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 custDataStream_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF custDataStream_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME custDataStream_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, H" & 
"AS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF custDataStream_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 custDataStream_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF tsStream_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStream_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF tsStream_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStream_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsStream_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME tsStream_V_V, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependenc" & 
"y {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK" & 
"_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF tsStream_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStream_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF polStream_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 polStream_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF polStream_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 polStream_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF polStream_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME polStream_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen" & 
"cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_" & 
"DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF polStream_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 polStream_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF yStream_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 yStream_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF yStream_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 yStream_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF yStream_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME yStream_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency" & 
" {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_" & 
"DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF yStream_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 yStream_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF xStream_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 xStream_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF xStream_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 xStream_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF xStream_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME xStream_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency" & 
" {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_" & 
"DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF xStream_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 xStream_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TID";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF frameStream_TVALID: SIGNAL IS "XIL_INTERFACENAME frameStream, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resol" & 
"ve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum" & 
" {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 2}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF frameStream_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 frameStream TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_config:frameStream:xStream_V_V:yStream_V_V:polStream_V_V:tsStream_V_V:custDataStream_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format lon" & 
"g minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_config_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_config, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, ID" & 
"_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWADDR";
BEGIN
  U0 : eventStreamToConstEncntFrameStream
    GENERIC MAP (
      C_S_AXI_CONFIG_ADDR_WIDTH => 5,
      C_S_AXI_CONFIG_DATA_WIDTH => 32
    )
    PORT MAP (
      count_V_ap_vld => count_V_ap_vld,
      vgaEn_V_ap_vld => vgaEn_V_ap_vld,
      vCnt_V_ap_vld => vCnt_V_ap_vld,
      hCnt_V_ap_vld => hCnt_V_ap_vld,
      regX_V_ap_vld => regX_V_ap_vld,
      regY_V_ap_vld => regY_V_ap_vld,
      polReg_V_ap_vld => polReg_V_ap_vld,
      skipFlgOutput_V_ap_vld => skipFlgOutput_V_ap_vld,
      tsReg_V_ap_vld => tsReg_V_ap_vld,
      s_axi_config_AWADDR => s_axi_config_AWADDR,
      s_axi_config_AWVALID => s_axi_config_AWVALID,
      s_axi_config_AWREADY => s_axi_config_AWREADY,
      s_axi_config_WDATA => s_axi_config_WDATA,
      s_axi_config_WSTRB => s_axi_config_WSTRB,
      s_axi_config_WVALID => s_axi_config_WVALID,
      s_axi_config_WREADY => s_axi_config_WREADY,
      s_axi_config_BRESP => s_axi_config_BRESP,
      s_axi_config_BVALID => s_axi_config_BVALID,
      s_axi_config_BREADY => s_axi_config_BREADY,
      s_axi_config_ARADDR => s_axi_config_ARADDR,
      s_axi_config_ARVALID => s_axi_config_ARVALID,
      s_axi_config_ARREADY => s_axi_config_ARREADY,
      s_axi_config_RDATA => s_axi_config_RDATA,
      s_axi_config_RRESP => s_axi_config_RRESP,
      s_axi_config_RVALID => s_axi_config_RVALID,
      s_axi_config_RREADY => s_axi_config_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      frameStream_TVALID => frameStream_TVALID,
      frameStream_TREADY => frameStream_TREADY,
      frameStream_TDEST => frameStream_TDEST,
      frameStream_TDATA => frameStream_TDATA,
      frameStream_TKEEP => frameStream_TKEEP,
      frameStream_TSTRB => frameStream_TSTRB,
      frameStream_TUSER => frameStream_TUSER,
      frameStream_TLAST => frameStream_TLAST,
      frameStream_TID => frameStream_TID,
      xStream_V_V_TVALID => xStream_V_V_TVALID,
      xStream_V_V_TREADY => xStream_V_V_TREADY,
      xStream_V_V_TDATA => xStream_V_V_TDATA,
      yStream_V_V_TVALID => yStream_V_V_TVALID,
      yStream_V_V_TREADY => yStream_V_V_TREADY,
      yStream_V_V_TDATA => yStream_V_V_TDATA,
      polStream_V_V_TVALID => polStream_V_V_TVALID,
      polStream_V_V_TREADY => polStream_V_V_TREADY,
      polStream_V_V_TDATA => polStream_V_V_TDATA,
      tsStream_V_V_TVALID => tsStream_V_V_TVALID,
      tsStream_V_V_TREADY => tsStream_V_V_TREADY,
      tsStream_V_V_TDATA => tsStream_V_V_TDATA,
      custDataStream_V_V_TVALID => custDataStream_V_V_TVALID,
      custDataStream_V_V_TREADY => custDataStream_V_V_TREADY,
      custDataStream_V_V_TDATA => custDataStream_V_V_TDATA,
      count_V => count_V,
      vgaEn_V => vgaEn_V,
      vCnt_V => vCnt_V,
      hCnt_V => hCnt_V,
      regX_V => regX_V,
      regY_V => regY_V,
      polReg_V => polReg_V,
      skipFlgOutput_V => skipFlgOutput_V,
      tsReg_V => tsReg_V
    );
END brd_eventStreamToConstEn_0_1_arch;
