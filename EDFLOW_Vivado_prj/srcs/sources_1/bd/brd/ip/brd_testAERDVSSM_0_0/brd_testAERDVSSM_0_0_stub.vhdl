-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:51:22 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_testAERDVSSM_0_0/brd_testAERDVSSM_0_0_stub.vhdl
-- Design      : brd_testAERDVSSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_testAERDVSSM_0_0 is
  Port ( 
    USBClock_CI : in STD_LOGIC;
    LogicClk_CI : in STD_LOGIC;
    ADCClk_CI : in STD_LOGIC;
    Reset_RI : in STD_LOGIC;
    SPISlaveSelect_ABI : in STD_LOGIC;
    SPIClock_AI : in STD_LOGIC;
    SPIMOSI_AI : in STD_LOGIC;
    SPIMISO_DZO : out STD_LOGIC;
    ChipBiasEnable_SO : out STD_LOGIC;
    ChipBiasDiagSelect_SO : out STD_LOGIC;
    ChipBiasAddrSelect_SBO : out STD_LOGIC;
    ChipBiasClock_CBO : out STD_LOGIC;
    ChipBiasBitIn_DO : out STD_LOGIC;
    ChipBiasLatch_SBO : out STD_LOGIC;
    DVSAERData_AI : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DVSAERReq_ABI : in STD_LOGIC;
    DVSAERAck_SBO : out STD_LOGIC;
    DVSAERReset_SBO : out STD_LOGIC;
    IMUClock_CZO : out STD_LOGIC;
    IMUData_DZIO : inout STD_LOGIC;
    IMUInterrupt_AI : in STD_LOGIC;
    IMUFSync_SO : out STD_LOGIC;
    SyncOutClock_CO : out STD_LOGIC;
    SyncOutSignal_SO : out STD_LOGIC;
    SyncInClock_AI : in STD_LOGIC;
    SyncInSignal_AI : in STD_LOGIC;
    SyncInSignal1_AI : in STD_LOGIC;
    SyncInSignal2_AI : in STD_LOGIC;
    AERSMFifoAlmostFull_AI : in STD_LOGIC;
    AERSMFifoFull_AI : in STD_LOGIC;
    AERSMOutFifoWrite_SO : out STD_LOGIC;
    AERSMOutFifoData_DO : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end brd_testAERDVSSM_0_0;

architecture stub of brd_testAERDVSSM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "USBClock_CI,LogicClk_CI,ADCClk_CI,Reset_RI,SPISlaveSelect_ABI,SPIClock_AI,SPIMOSI_AI,SPIMISO_DZO,ChipBiasEnable_SO,ChipBiasDiagSelect_SO,ChipBiasAddrSelect_SBO,ChipBiasClock_CBO,ChipBiasBitIn_DO,ChipBiasLatch_SBO,DVSAERData_AI[10:0],DVSAERReq_ABI,DVSAERAck_SBO,DVSAERReset_SBO,IMUClock_CZO,IMUData_DZIO,IMUInterrupt_AI,IMUFSync_SO,SyncOutClock_CO,SyncOutSignal_SO,SyncInClock_AI,SyncInSignal_AI,SyncInSignal1_AI,SyncInSignal2_AI,AERSMFifoAlmostFull_AI,AERSMFifoFull_AI,AERSMOutFifoWrite_SO,AERSMOutFifoData_DO[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "testAERDVSSM,Vivado 2018.1";
begin
end;
