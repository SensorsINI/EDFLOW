-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:USBFifoToDVSSPI:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_USBFifoToDVSSPI_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    rst_i : IN STD_LOGIC;
    spiReady_i : IN STD_LOGIC;
    setupDataRecStart_i : IN STD_LOGIC;
    outDataRecStart_i : IN STD_LOGIC;
    dataRecEnd_i : IN STD_LOGIC;
    inputDataValid_i : IN STD_LOGIC;
    inputData_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dvsRXDataValid_i : IN STD_LOGIC;
    dvsRXByte_i : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    dvs_resp_addr_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    setupPktReceived_q_do : OUT STD_LOGIC;
    outPktReceived_q_do : OUT STD_LOGIC;
    dataSPIToSendPrepared_w_do : OUT STD_LOGIC;
    wrSetupIndex_q_do : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    wrOUTIndex_q_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    outputDataValid_o : OUT STD_LOGIC;
    outputData_o : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    rxDataComplete_o : OUT STD_LOGIC;
    dvs_resp_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END brd_USBFifoToDVSSPI_0_0;

ARCHITECTURE brd_USBFifoToDVSSPI_0_0_arch OF brd_USBFifoToDVSSPI_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_USBFifoToDVSSPI_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT USBFifoToDVSSPI IS
    PORT (
      clk_i : IN STD_LOGIC;
      rst_i : IN STD_LOGIC;
      spiReady_i : IN STD_LOGIC;
      setupDataRecStart_i : IN STD_LOGIC;
      outDataRecStart_i : IN STD_LOGIC;
      dataRecEnd_i : IN STD_LOGIC;
      inputDataValid_i : IN STD_LOGIC;
      inputData_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dvsRXDataValid_i : IN STD_LOGIC;
      dvsRXByte_i : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      dvs_resp_addr_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      setupPktReceived_q_do : OUT STD_LOGIC;
      outPktReceived_q_do : OUT STD_LOGIC;
      dataSPIToSendPrepared_w_do : OUT STD_LOGIC;
      wrSetupIndex_q_do : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      wrOUTIndex_q_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      outputDataValid_o : OUT STD_LOGIC;
      outputData_o : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      rxDataComplete_o : OUT STD_LOGIC;
      dvs_resp_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT USBFifoToDVSSPI;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_USBFifoToDVSSPI_0_0_arch: ARCHITECTURE IS "USBFifoToDVSSPI,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_USBFifoToDVSSPI_0_0_arch : ARCHITECTURE IS "brd_USBFifoToDVSSPI_0_0,USBFifoToDVSSPI,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_USBFifoToDVSSPI_0_0_arch: ARCHITECTURE IS "brd_USBFifoToDVSSPI_0_0,USBFifoToDVSSPI,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=USBFifoToDVSSPI,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
BEGIN
  U0 : USBFifoToDVSSPI
    PORT MAP (
      clk_i => clk_i,
      rst_i => rst_i,
      spiReady_i => spiReady_i,
      setupDataRecStart_i => setupDataRecStart_i,
      outDataRecStart_i => outDataRecStart_i,
      dataRecEnd_i => dataRecEnd_i,
      inputDataValid_i => inputDataValid_i,
      inputData_i => inputData_i,
      dvsRXDataValid_i => dvsRXDataValid_i,
      dvsRXByte_i => dvsRXByte_i,
      dvs_resp_addr_i => dvs_resp_addr_i,
      setupPktReceived_q_do => setupPktReceived_q_do,
      outPktReceived_q_do => outPktReceived_q_do,
      dataSPIToSendPrepared_w_do => dataSPIToSendPrepared_w_do,
      wrSetupIndex_q_do => wrSetupIndex_q_do,
      wrOUTIndex_q_do => wrOUTIndex_q_do,
      outputDataValid_o => outputDataValid_o,
      outputData_o => outputData_o,
      rxDataComplete_o => rxDataComplete_o,
      dvs_resp_data_o => dvs_resp_data_o
    );
END brd_USBFifoToDVSSPI_0_0_arch;
