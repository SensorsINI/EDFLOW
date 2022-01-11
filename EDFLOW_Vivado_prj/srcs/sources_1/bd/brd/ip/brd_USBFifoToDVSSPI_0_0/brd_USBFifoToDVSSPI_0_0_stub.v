// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:40:59 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_USBFifoToDVSSPI_0_0/brd_USBFifoToDVSSPI_0_0_stub.v
// Design      : brd_USBFifoToDVSSPI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "USBFifoToDVSSPI,Vivado 2018.1" *)
module brd_USBFifoToDVSSPI_0_0(clk_i, rst_i, spiReady_i, setupDataRecStart_i, 
  outDataRecStart_i, dataRecEnd_i, inputDataValid_i, inputData_i, dvsRXDataValid_i, 
  dvsRXByte_i, dvs_resp_addr_i, setupPktReceived_q_do, outPktReceived_q_do, 
  dataSPIToSendPrepared_w_do, wrSetupIndex_q_do, wrOUTIndex_q_do, outputDataValid_o, 
  outputData_o, rxDataComplete_o, dvs_resp_data_o)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_i,spiReady_i,setupDataRecStart_i,outDataRecStart_i,dataRecEnd_i,inputDataValid_i,inputData_i[7:0],dvsRXDataValid_i,dvsRXByte_i[47:0],dvs_resp_addr_i[1:0],setupPktReceived_q_do,outPktReceived_q_do,dataSPIToSendPrepared_w_do,wrSetupIndex_q_do[3:0],wrOUTIndex_q_do[2:0],outputDataValid_o,outputData_o[47:0],rxDataComplete_o,dvs_resp_data_o[7:0]" */;
  input clk_i;
  input rst_i;
  input spiReady_i;
  input setupDataRecStart_i;
  input outDataRecStart_i;
  input dataRecEnd_i;
  input inputDataValid_i;
  input [7:0]inputData_i;
  input dvsRXDataValid_i;
  input [47:0]dvsRXByte_i;
  input [1:0]dvs_resp_addr_i;
  output setupPktReceived_q_do;
  output outPktReceived_q_do;
  output dataSPIToSendPrepared_w_do;
  output [3:0]wrSetupIndex_q_do;
  output [2:0]wrOUTIndex_q_do;
  output outputDataValid_o;
  output [47:0]outputData_o;
  output rxDataComplete_o;
  output [7:0]dvs_resp_data_o;
endmodule
