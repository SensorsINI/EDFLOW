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

-- IP VLNV: xilinx.com:hls:RawStreamToFIFO:1.0
-- IP Revision: 2003172142

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_RawStreamToFIFO_0_0 IS
  PORT (
    fifoIFOutData_V_ap_vld : OUT STD_LOGIC;
    skippedData_V_ap_vld : OUT STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    lastTsReg_V_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    streamIn_V_V_TVALID : IN STD_LOGIC;
    streamIn_V_V_TREADY : OUT STD_LOGIC;
    streamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fifoIFInFull_n_V : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    fifoIFOutData_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    skippedData_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    skipNumReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    lastTsReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END brd_RawStreamToFIFO_0_0;

ARCHITECTURE brd_RawStreamToFIFO_0_0_arch OF brd_RawStreamToFIFO_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_RawStreamToFIFO_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT RawStreamToFIFO IS
    PORT (
      fifoIFOutData_V_ap_vld : OUT STD_LOGIC;
      skippedData_V_ap_vld : OUT STD_LOGIC;
      nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
      lastTsReg_V_ap_vld : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      streamIn_V_V_TVALID : IN STD_LOGIC;
      streamIn_V_V_TREADY : OUT STD_LOGIC;
      streamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fifoIFInFull_n_V : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      fifoIFOutData_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      skippedData_V : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      skipNumReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      lastTsReg_V : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
    );
  END COMPONENT RawStreamToFIFO;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_RawStreamToFIFO_0_0_arch: ARCHITECTURE IS "RawStreamToFIFO,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_RawStreamToFIFO_0_0_arch : ARCHITECTURE IS "brd_RawStreamToFIFO_0_0,RawStreamToFIFO,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_RawStreamToFIFO_0_0_arch: ARCHITECTURE IS "brd_RawStreamToFIFO_0_0,RawStreamToFIFO,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=RawStreamToFIFO,x_ipVersion=1.0,x_ipCoreRevision=2003172142,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF lastTsReg_V: SIGNAL IS "XIL_INTERFACENAME lastTsReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} v" & 
"alue false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF lastTsReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 lastTsReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF skipNumReg_V: SIGNAL IS "XIL_INTERFACENAME skipNumReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} " & 
"value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF skipNumReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 skipNumReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF nonMonTSDiffFlgReg_V: SIGNAL IS "XIL_INTERFACENAME nonMonTSDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF nonMonTSDiffFlgReg_V: SIGNAL IS "xilinx.com:signal:data:1.0 nonMonTSDiffFlgReg_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF skippedData_V: SIGNAL IS "XIL_INTERFACENAME skippedData_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}" & 
" value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF skippedData_V: SIGNAL IS "xilinx.com:signal:data:1.0 skippedData_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fifoIFOutData_V: SIGNAL IS "XIL_INTERFACENAME fifoIFOutData_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {" & 
"}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF fifoIFOutData_V: SIGNAL IS "xilinx.com:signal:data:1.0 fifoIFOutData_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fifoIFInFull_n_V: SIGNAL IS "XIL_INTERFACENAME fifoIFInFull_n_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {" & 
"}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF fifoIFInFull_n_V: SIGNAL IS "xilinx.com:signal:data:1.0 fifoIFInFull_n_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF streamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 streamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF streamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 streamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF streamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME streamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependenc" & 
"y {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK" & 
"_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF streamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 streamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF streamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN br" & 
"d_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : RawStreamToFIFO
    PORT MAP (
      fifoIFOutData_V_ap_vld => fifoIFOutData_V_ap_vld,
      skippedData_V_ap_vld => skippedData_V_ap_vld,
      nonMonTSDiffFlgReg_V_ap_vld => nonMonTSDiffFlgReg_V_ap_vld,
      lastTsReg_V_ap_vld => lastTsReg_V_ap_vld,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      streamIn_V_V_TVALID => streamIn_V_V_TVALID,
      streamIn_V_V_TREADY => streamIn_V_V_TREADY,
      streamIn_V_V_TDATA => streamIn_V_V_TDATA,
      fifoIFInFull_n_V => fifoIFInFull_n_V,
      fifoIFOutData_V => fifoIFOutData_V,
      skippedData_V => skippedData_V,
      nonMonTSDiffFlgReg_V => nonMonTSDiffFlgReg_V,
      skipNumReg_V => skipNumReg_V,
      lastTsReg_V => lastTsReg_V
    );
END brd_RawStreamToFIFO_0_0_arch;
