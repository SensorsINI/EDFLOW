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

-- IP VLNV: xilinx.com:hls:XYTSStreamToRawStream:1.0
-- IP Revision: 2007252333

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_XYTSStreamToRawStream_0_0 IS
  PORT (
    tsReg_V_ap_vld : OUT STD_LOGIC;
    glLastTSReg_V_ap_vld : OUT STD_LOGIC;
    yReg_V_ap_vld : OUT STD_LOGIC;
    glLastYReg_V_ap_vld : OUT STD_LOGIC;
    tsDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    yDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    rotateInfoOutReg_V_ap_vld : OUT STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    tsWrappedVal_V_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    streamOut_V_V_TVALID : OUT STD_LOGIC;
    streamOut_V_V_TREADY : IN STD_LOGIC;
    streamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    xStreamIn_V_V_TVALID : IN STD_LOGIC;
    xStreamIn_V_V_TREADY : OUT STD_LOGIC;
    xStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    yStreamIn_V_V_TVALID : IN STD_LOGIC;
    yStreamIn_V_V_TREADY : OUT STD_LOGIC;
    yStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    tsStreamIn_V_V_TVALID : IN STD_LOGIC;
    tsStreamIn_V_V_TREADY : OUT STD_LOGIC;
    tsStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    polStreamIn_V_V_TVALID : IN STD_LOGIC;
    polStreamIn_V_V_TREADY : OUT STD_LOGIC;
    polStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    custDataStreamIn_V_V_TVALID : IN STD_LOGIC;
    custDataStreamIn_V_V_TREADY : OUT STD_LOGIC;
    custDataStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    tsReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    glLastTSReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    yReg_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    glLastYReg_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    tsDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    yDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rotateInfoOutReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    tsWrappedVal_V : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END brd_XYTSStreamToRawStream_0_0;

ARCHITECTURE brd_XYTSStreamToRawStream_0_0_arch OF brd_XYTSStreamToRawStream_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_XYTSStreamToRawStream_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT XYTSStreamToRawStream IS
    PORT (
      tsReg_V_ap_vld : OUT STD_LOGIC;
      glLastTSReg_V_ap_vld : OUT STD_LOGIC;
      yReg_V_ap_vld : OUT STD_LOGIC;
      glLastYReg_V_ap_vld : OUT STD_LOGIC;
      tsDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
      yDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
      rotateInfoOutReg_V_ap_vld : OUT STD_LOGIC;
      nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
      tsWrappedVal_V_ap_vld : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      streamOut_V_V_TVALID : OUT STD_LOGIC;
      streamOut_V_V_TREADY : IN STD_LOGIC;
      streamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      xStreamIn_V_V_TVALID : IN STD_LOGIC;
      xStreamIn_V_V_TREADY : OUT STD_LOGIC;
      xStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      yStreamIn_V_V_TVALID : IN STD_LOGIC;
      yStreamIn_V_V_TREADY : OUT STD_LOGIC;
      yStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      tsStreamIn_V_V_TVALID : IN STD_LOGIC;
      tsStreamIn_V_V_TREADY : OUT STD_LOGIC;
      tsStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      polStreamIn_V_V_TVALID : IN STD_LOGIC;
      polStreamIn_V_V_TREADY : OUT STD_LOGIC;
      polStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      custDataStreamIn_V_V_TVALID : IN STD_LOGIC;
      custDataStreamIn_V_V_TREADY : OUT STD_LOGIC;
      custDataStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      tsReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      glLastTSReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      yReg_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      glLastYReg_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      tsDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      yDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rotateInfoOutReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      tsWrappedVal_V : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
  END COMPONENT XYTSStreamToRawStream;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_XYTSStreamToRawStream_0_0_arch: ARCHITECTURE IS "XYTSStreamToRawStream,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_XYTSStreamToRawStream_0_0_arch : ARCHITECTURE IS "brd_XYTSStreamToRawStream_0_0,XYTSStreamToRawStream,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_XYTSStreamToRawStream_0_0_arch: ARCHITECTURE IS "brd_XYTSStreamToRawStream_0_0,XYTSStreamToRawStream,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=XYTSStreamToRawStream,x_ipVersion=1.0,x_ipCoreRevision=2007252333,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsWrappedVal_V: SIGNAL IS "XIL_INTERFACENAME tsWrappedVal_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}" & 
"} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF tsWrappedVal_V: SIGNAL IS "xilinx.com:signal:data:1.0 tsWrappedVal_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF nonMonTSDiffFlgReg_V: SIGNAL IS "XIL_INTERFACENAME nonMonTSDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF nonMonTSDiffFlgReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 nonMonTSDiffFlgReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rotateInfoOutReg_V: SIGNAL IS "XIL_INTERFACENAME rotateInfoOutReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximu" & 
"m {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF rotateInfoOutReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 rotateInfoOutReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF yDiffFlgReg_V: SIGNAL IS "XIL_INTERFACENAME yDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} " & 
"value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF yDiffFlgReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 yDiffFlgReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsDiffFlgReg_V: SIGNAL IS "XIL_INTERFACENAME tsDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}" & 
" value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF tsDiffFlgReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 tsDiffFlgReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF glLastYReg_V: SIGNAL IS "XIL_INTERFACENAME glLastYReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} " & 
"value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF glLastYReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 glLastYReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF yReg_V: SIGNAL IS "XIL_INTERFACENAME yReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value " & 
"false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF yReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 yReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF glLastTSReg_V: SIGNAL IS "XIL_INTERFACENAME glLastTSReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}" & 
" value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF glLastTSReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 glLastTSReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsReg_V: SIGNAL IS "XIL_INTERFACENAME tsReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF tsReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 tsReg_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF custDataStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF custDataStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF custDataStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME custDataStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate d" & 
"ependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0." & 
"000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF custDataStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF polStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME polStreamIn_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depend" & 
"ency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CL" & 
"K_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME tsStreamIn_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende" & 
"ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, C" & 
"LK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF yStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME yStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen" & 
"cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CL" & 
"K_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF xStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME xStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen" & 
"cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CL" & 
"K_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF streamOut_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 streamOut_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF streamOut_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 streamOut_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF streamOut_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME streamOut_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependen" & 
"cy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CL" & 
"K_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF streamOut_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 streamOut_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF streamOut_V_V:xStreamIn_V_V:yStreamIn_V_V:tsStreamIn_V_V:polStreamIn_V_V:custDataStreamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : XYTSStreamToRawStream
    PORT MAP (
      tsReg_V_ap_vld => tsReg_V_ap_vld,
      glLastTSReg_V_ap_vld => glLastTSReg_V_ap_vld,
      yReg_V_ap_vld => yReg_V_ap_vld,
      glLastYReg_V_ap_vld => glLastYReg_V_ap_vld,
      tsDiffFlgReg_V_ap_vld => tsDiffFlgReg_V_ap_vld,
      yDiffFlgReg_V_ap_vld => yDiffFlgReg_V_ap_vld,
      rotateInfoOutReg_V_ap_vld => rotateInfoOutReg_V_ap_vld,
      nonMonTSDiffFlgReg_V_ap_vld => nonMonTSDiffFlgReg_V_ap_vld,
      tsWrappedVal_V_ap_vld => tsWrappedVal_V_ap_vld,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      streamOut_V_V_TVALID => streamOut_V_V_TVALID,
      streamOut_V_V_TREADY => streamOut_V_V_TREADY,
      streamOut_V_V_TDATA => streamOut_V_V_TDATA,
      xStreamIn_V_V_TVALID => xStreamIn_V_V_TVALID,
      xStreamIn_V_V_TREADY => xStreamIn_V_V_TREADY,
      xStreamIn_V_V_TDATA => xStreamIn_V_V_TDATA,
      yStreamIn_V_V_TVALID => yStreamIn_V_V_TVALID,
      yStreamIn_V_V_TREADY => yStreamIn_V_V_TREADY,
      yStreamIn_V_V_TDATA => yStreamIn_V_V_TDATA,
      tsStreamIn_V_V_TVALID => tsStreamIn_V_V_TVALID,
      tsStreamIn_V_V_TREADY => tsStreamIn_V_V_TREADY,
      tsStreamIn_V_V_TDATA => tsStreamIn_V_V_TDATA,
      polStreamIn_V_V_TVALID => polStreamIn_V_V_TVALID,
      polStreamIn_V_V_TREADY => polStreamIn_V_V_TREADY,
      polStreamIn_V_V_TDATA => polStreamIn_V_V_TDATA,
      custDataStreamIn_V_V_TVALID => custDataStreamIn_V_V_TVALID,
      custDataStreamIn_V_V_TREADY => custDataStreamIn_V_V_TREADY,
      custDataStreamIn_V_V_TDATA => custDataStreamIn_V_V_TDATA,
      tsReg_V => tsReg_V,
      glLastTSReg_V => glLastTSReg_V,
      yReg_V => yReg_V,
      glLastYReg_V => glLastYReg_V,
      tsDiffFlgReg_V => tsDiffFlgReg_V,
      yDiffFlgReg_V => yDiffFlgReg_V,
      rotateInfoOutReg_V => rotateInfoOutReg_V,
      nonMonTSDiffFlgReg_V => nonMonTSDiffFlgReg_V,
      tsWrappedVal_V => tsWrappedVal_V
    );
END brd_XYTSStreamToRawStream_0_0_arch;
