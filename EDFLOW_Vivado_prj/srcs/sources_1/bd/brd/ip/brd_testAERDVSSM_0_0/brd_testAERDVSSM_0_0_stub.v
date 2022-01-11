// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:51:22 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_testAERDVSSM_0_0/brd_testAERDVSSM_0_0_stub.v
// Design      : brd_testAERDVSSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "testAERDVSSM,Vivado 2018.1" *)
module brd_testAERDVSSM_0_0(USBClock_CI, LogicClk_CI, ADCClk_CI, Reset_RI, 
  SPISlaveSelect_ABI, SPIClock_AI, SPIMOSI_AI, SPIMISO_DZO, ChipBiasEnable_SO, 
  ChipBiasDiagSelect_SO, ChipBiasAddrSelect_SBO, ChipBiasClock_CBO, ChipBiasBitIn_DO, 
  ChipBiasLatch_SBO, DVSAERData_AI, DVSAERReq_ABI, DVSAERAck_SBO, DVSAERReset_SBO, 
  IMUClock_CZO, IMUData_DZIO, IMUInterrupt_AI, IMUFSync_SO, SyncOutClock_CO, 
  SyncOutSignal_SO, SyncInClock_AI, SyncInSignal_AI, SyncInSignal1_AI, SyncInSignal2_AI, 
  AERSMFifoAlmostFull_AI, AERSMFifoFull_AI, AERSMOutFifoWrite_SO, AERSMOutFifoData_DO)
/* synthesis syn_black_box black_box_pad_pin="USBClock_CI,LogicClk_CI,ADCClk_CI,Reset_RI,SPISlaveSelect_ABI,SPIClock_AI,SPIMOSI_AI,SPIMISO_DZO,ChipBiasEnable_SO,ChipBiasDiagSelect_SO,ChipBiasAddrSelect_SBO,ChipBiasClock_CBO,ChipBiasBitIn_DO,ChipBiasLatch_SBO,DVSAERData_AI[10:0],DVSAERReq_ABI,DVSAERAck_SBO,DVSAERReset_SBO,IMUClock_CZO,IMUData_DZIO,IMUInterrupt_AI,IMUFSync_SO,SyncOutClock_CO,SyncOutSignal_SO,SyncInClock_AI,SyncInSignal_AI,SyncInSignal1_AI,SyncInSignal2_AI,AERSMFifoAlmostFull_AI,AERSMFifoFull_AI,AERSMOutFifoWrite_SO,AERSMOutFifoData_DO[15:0]" */;
  input USBClock_CI;
  input LogicClk_CI;
  input ADCClk_CI;
  input Reset_RI;
  input SPISlaveSelect_ABI;
  input SPIClock_AI;
  input SPIMOSI_AI;
  output SPIMISO_DZO;
  output ChipBiasEnable_SO;
  output ChipBiasDiagSelect_SO;
  output ChipBiasAddrSelect_SBO;
  output ChipBiasClock_CBO;
  output ChipBiasBitIn_DO;
  output ChipBiasLatch_SBO;
  input [10:0]DVSAERData_AI;
  input DVSAERReq_ABI;
  output DVSAERAck_SBO;
  output DVSAERReset_SBO;
  output IMUClock_CZO;
  inout IMUData_DZIO;
  input IMUInterrupt_AI;
  output IMUFSync_SO;
  output SyncOutClock_CO;
  output SyncOutSignal_SO;
  input SyncInClock_AI;
  input SyncInSignal_AI;
  input SyncInSignal1_AI;
  input SyncInSignal2_AI;
  input AERSMFifoAlmostFull_AI;
  input AERSMFifoFull_AI;
  output AERSMOutFifoWrite_SO;
  output [15:0]AERSMOutFifoData_DO;
endmodule
