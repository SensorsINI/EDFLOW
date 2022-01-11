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

-- IP VLNV: xilinx.com:module_ref:testAERDVSSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_testAERDVSSM_0_0 IS
  PORT (
    USBClock_CI : IN STD_LOGIC;
    LogicClk_CI : IN STD_LOGIC;
    ADCClk_CI : IN STD_LOGIC;
    Reset_RI : IN STD_LOGIC;
    SPISlaveSelect_ABI : IN STD_LOGIC;
    SPIClock_AI : IN STD_LOGIC;
    SPIMOSI_AI : IN STD_LOGIC;
    SPIMISO_DZO : OUT STD_LOGIC;
    ChipBiasEnable_SO : OUT STD_LOGIC;
    ChipBiasDiagSelect_SO : OUT STD_LOGIC;
    ChipBiasAddrSelect_SBO : OUT STD_LOGIC;
    ChipBiasClock_CBO : OUT STD_LOGIC;
    ChipBiasBitIn_DO : OUT STD_LOGIC;
    ChipBiasLatch_SBO : OUT STD_LOGIC;
    DVSAERData_AI : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    DVSAERReq_ABI : IN STD_LOGIC;
    DVSAERAck_SBO : OUT STD_LOGIC;
    DVSAERReset_SBO : OUT STD_LOGIC;
    IMUClock_CZO : OUT STD_LOGIC;
    IMUData_DZIO : INOUT STD_LOGIC;
    IMUInterrupt_AI : IN STD_LOGIC;
    IMUFSync_SO : OUT STD_LOGIC;
    SyncOutClock_CO : OUT STD_LOGIC;
    SyncOutSignal_SO : OUT STD_LOGIC;
    SyncInClock_AI : IN STD_LOGIC;
    SyncInSignal_AI : IN STD_LOGIC;
    SyncInSignal1_AI : IN STD_LOGIC;
    SyncInSignal2_AI : IN STD_LOGIC;
    AERSMFifoAlmostFull_AI : IN STD_LOGIC;
    AERSMFifoFull_AI : IN STD_LOGIC;
    AERSMOutFifoWrite_SO : OUT STD_LOGIC;
    AERSMOutFifoData_DO : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END brd_testAERDVSSM_0_0;

ARCHITECTURE brd_testAERDVSSM_0_0_arch OF brd_testAERDVSSM_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_testAERDVSSM_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT testAERDVSSM IS
    PORT (
      USBClock_CI : IN STD_LOGIC;
      LogicClk_CI : IN STD_LOGIC;
      ADCClk_CI : IN STD_LOGIC;
      Reset_RI : IN STD_LOGIC;
      SPISlaveSelect_ABI : IN STD_LOGIC;
      SPIClock_AI : IN STD_LOGIC;
      SPIMOSI_AI : IN STD_LOGIC;
      SPIMISO_DZO : OUT STD_LOGIC;
      ChipBiasEnable_SO : OUT STD_LOGIC;
      ChipBiasDiagSelect_SO : OUT STD_LOGIC;
      ChipBiasAddrSelect_SBO : OUT STD_LOGIC;
      ChipBiasClock_CBO : OUT STD_LOGIC;
      ChipBiasBitIn_DO : OUT STD_LOGIC;
      ChipBiasLatch_SBO : OUT STD_LOGIC;
      DVSAERData_AI : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      DVSAERReq_ABI : IN STD_LOGIC;
      DVSAERAck_SBO : OUT STD_LOGIC;
      DVSAERReset_SBO : OUT STD_LOGIC;
      IMUClock_CZO : OUT STD_LOGIC;
      IMUData_DZIO : INOUT STD_LOGIC;
      IMUInterrupt_AI : IN STD_LOGIC;
      IMUFSync_SO : OUT STD_LOGIC;
      SyncOutClock_CO : OUT STD_LOGIC;
      SyncOutSignal_SO : OUT STD_LOGIC;
      SyncInClock_AI : IN STD_LOGIC;
      SyncInSignal_AI : IN STD_LOGIC;
      SyncInSignal1_AI : IN STD_LOGIC;
      SyncInSignal2_AI : IN STD_LOGIC;
      AERSMFifoAlmostFull_AI : IN STD_LOGIC;
      AERSMFifoFull_AI : IN STD_LOGIC;
      AERSMOutFifoWrite_SO : OUT STD_LOGIC;
      AERSMOutFifoData_DO : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT testAERDVSSM;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_testAERDVSSM_0_0_arch: ARCHITECTURE IS "testAERDVSSM,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_testAERDVSSM_0_0_arch : ARCHITECTURE IS "brd_testAERDVSSM_0_0,testAERDVSSM,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_testAERDVSSM_0_0_arch: ARCHITECTURE IS "brd_testAERDVSSM_0_0,testAERDVSSM,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=testAERDVSSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset_RI: SIGNAL IS "XIL_INTERFACENAME Reset_RI, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF Reset_RI: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset_RI RST";
BEGIN
  U0 : testAERDVSSM
    PORT MAP (
      USBClock_CI => USBClock_CI,
      LogicClk_CI => LogicClk_CI,
      ADCClk_CI => ADCClk_CI,
      Reset_RI => Reset_RI,
      SPISlaveSelect_ABI => SPISlaveSelect_ABI,
      SPIClock_AI => SPIClock_AI,
      SPIMOSI_AI => SPIMOSI_AI,
      SPIMISO_DZO => SPIMISO_DZO,
      ChipBiasEnable_SO => ChipBiasEnable_SO,
      ChipBiasDiagSelect_SO => ChipBiasDiagSelect_SO,
      ChipBiasAddrSelect_SBO => ChipBiasAddrSelect_SBO,
      ChipBiasClock_CBO => ChipBiasClock_CBO,
      ChipBiasBitIn_DO => ChipBiasBitIn_DO,
      ChipBiasLatch_SBO => ChipBiasLatch_SBO,
      DVSAERData_AI => DVSAERData_AI,
      DVSAERReq_ABI => DVSAERReq_ABI,
      DVSAERAck_SBO => DVSAERAck_SBO,
      DVSAERReset_SBO => DVSAERReset_SBO,
      IMUClock_CZO => IMUClock_CZO,
      IMUData_DZIO => IMUData_DZIO,
      IMUInterrupt_AI => IMUInterrupt_AI,
      IMUFSync_SO => IMUFSync_SO,
      SyncOutClock_CO => SyncOutClock_CO,
      SyncOutSignal_SO => SyncOutSignal_SO,
      SyncInClock_AI => SyncInClock_AI,
      SyncInSignal_AI => SyncInSignal_AI,
      SyncInSignal1_AI => SyncInSignal1_AI,
      SyncInSignal2_AI => SyncInSignal2_AI,
      AERSMFifoAlmostFull_AI => AERSMFifoAlmostFull_AI,
      AERSMFifoFull_AI => AERSMFifoFull_AI,
      AERSMOutFifoWrite_SO => AERSMOutFifoWrite_SO,
      AERSMOutFifoData_DO => AERSMOutFifoData_DO
    );
END brd_testAERDVSSM_0_0_arch;
