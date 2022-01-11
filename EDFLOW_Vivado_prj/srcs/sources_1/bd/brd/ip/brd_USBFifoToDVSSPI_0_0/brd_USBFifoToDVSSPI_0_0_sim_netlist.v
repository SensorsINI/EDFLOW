// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:40:59 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_USBFifoToDVSSPI_0_0/brd_USBFifoToDVSSPI_0_0_sim_netlist.v
// Design      : brd_USBFifoToDVSSPI_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_USBFifoToDVSSPI_0_0,USBFifoToDVSSPI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "USBFifoToDVSSPI,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_USBFifoToDVSSPI_0_0
   (clk_i,
    rst_i,
    spiReady_i,
    setupDataRecStart_i,
    outDataRecStart_i,
    dataRecEnd_i,
    inputDataValid_i,
    inputData_i,
    dvsRXDataValid_i,
    dvsRXByte_i,
    dvs_resp_addr_i,
    setupPktReceived_q_do,
    outPktReceived_q_do,
    dataSPIToSendPrepared_w_do,
    wrSetupIndex_q_do,
    wrOUTIndex_q_do,
    outputDataValid_o,
    outputData_o,
    rxDataComplete_o,
    dvs_resp_data_o);
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

  wire clk_i;
  wire dataRecEnd_i;
  wire dataSPIToSendPrepared_w_do;
  wire [47:0]dvsRXByte_i;
  wire dvsRXDataValid_i;
  wire [1:0]dvs_resp_addr_i;
  wire [7:0]dvs_resp_data_o;
  wire inputDataValid_i;
  wire [7:0]inputData_i;
  wire outDataRecStart_i;
  wire outPktReceived_q_do;
  wire outputDataValid_o;
  wire [47:0]outputData_o;
  wire rst_i;
  wire rxDataComplete_o;
  wire setupDataRecStart_i;
  wire setupPktReceived_q_do;
  wire spiReady_i;
  wire [2:0]wrOUTIndex_q_do;
  wire [3:0]wrSetupIndex_q_do;

  brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI U0
       (.clk_i(clk_i),
        .dataRecEnd_i(dataRecEnd_i),
        .dataSPIToSendPrepared_w_do(dataSPIToSendPrepared_w_do),
        .dvsRXByte_i(dvsRXByte_i[31:0]),
        .dvsRXDataValid_i(dvsRXDataValid_i),
        .dvs_resp_addr_i(dvs_resp_addr_i),
        .dvs_resp_data_o(dvs_resp_data_o),
        .inputDataValid_i(inputDataValid_i),
        .inputData_i(inputData_i),
        .outDataRecStart_i(outDataRecStart_i),
        .outPktReceived_q_do(outPktReceived_q_do),
        .outputDataValid_o(outputDataValid_o),
        .outputData_o(outputData_o),
        .rst_i(rst_i),
        .rxDataComplete_o(rxDataComplete_o),
        .setupDataRecStart_i(setupDataRecStart_i),
        .setupPktReceived_q_do(setupPktReceived_q_do),
        .spiReady_i(spiReady_i),
        .\wrOUTIndex_q_do[0] (wrOUTIndex_q_do[0]),
        .\wrOUTIndex_q_do[1] (wrOUTIndex_q_do[1]),
        .\wrOUTIndex_q_do[2] (wrOUTIndex_q_do[2]),
        .wrSetupIndex_q_do(wrSetupIndex_q_do));
endmodule

(* ORIG_REF_NAME = "USBFifoToDVSSPI" *) 
module brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI
   (wrSetupIndex_q_do,
    \wrOUTIndex_q_do[0] ,
    \wrOUTIndex_q_do[1] ,
    setupPktReceived_q_do,
    \wrOUTIndex_q_do[2] ,
    outPktReceived_q_do,
    outputDataValid_o,
    outputData_o,
    dvs_resp_data_o,
    dataSPIToSendPrepared_w_do,
    rxDataComplete_o,
    setupDataRecStart_i,
    rst_i,
    outDataRecStart_i,
    clk_i,
    inputDataValid_i,
    dataRecEnd_i,
    inputData_i,
    dvsRXByte_i,
    dvs_resp_addr_i,
    spiReady_i,
    dvsRXDataValid_i);
  output [3:0]wrSetupIndex_q_do;
  output \wrOUTIndex_q_do[0] ;
  output \wrOUTIndex_q_do[1] ;
  output setupPktReceived_q_do;
  output \wrOUTIndex_q_do[2] ;
  output outPktReceived_q_do;
  output outputDataValid_o;
  output [47:0]outputData_o;
  output [7:0]dvs_resp_data_o;
  output dataSPIToSendPrepared_w_do;
  output rxDataComplete_o;
  input setupDataRecStart_i;
  input rst_i;
  input outDataRecStart_i;
  input clk_i;
  input inputDataValid_i;
  input dataRecEnd_i;
  input [7:0]inputData_i;
  input [31:0]dvsRXByte_i;
  input [1:0]dvs_resp_addr_i;
  input spiReady_i;
  input dvsRXDataValid_i;

  wire DVSRespData_q;
  wire \DVSRespData_q_reg_n_0_[0] ;
  wire \DVSRespData_q_reg_n_0_[10] ;
  wire \DVSRespData_q_reg_n_0_[11] ;
  wire \DVSRespData_q_reg_n_0_[12] ;
  wire \DVSRespData_q_reg_n_0_[13] ;
  wire \DVSRespData_q_reg_n_0_[14] ;
  wire \DVSRespData_q_reg_n_0_[15] ;
  wire \DVSRespData_q_reg_n_0_[16] ;
  wire \DVSRespData_q_reg_n_0_[17] ;
  wire \DVSRespData_q_reg_n_0_[18] ;
  wire \DVSRespData_q_reg_n_0_[19] ;
  wire \DVSRespData_q_reg_n_0_[1] ;
  wire \DVSRespData_q_reg_n_0_[20] ;
  wire \DVSRespData_q_reg_n_0_[21] ;
  wire \DVSRespData_q_reg_n_0_[22] ;
  wire \DVSRespData_q_reg_n_0_[23] ;
  wire \DVSRespData_q_reg_n_0_[24] ;
  wire \DVSRespData_q_reg_n_0_[25] ;
  wire \DVSRespData_q_reg_n_0_[26] ;
  wire \DVSRespData_q_reg_n_0_[27] ;
  wire \DVSRespData_q_reg_n_0_[28] ;
  wire \DVSRespData_q_reg_n_0_[29] ;
  wire \DVSRespData_q_reg_n_0_[2] ;
  wire \DVSRespData_q_reg_n_0_[30] ;
  wire \DVSRespData_q_reg_n_0_[31] ;
  wire \DVSRespData_q_reg_n_0_[3] ;
  wire \DVSRespData_q_reg_n_0_[4] ;
  wire \DVSRespData_q_reg_n_0_[5] ;
  wire \DVSRespData_q_reg_n_0_[6] ;
  wire \DVSRespData_q_reg_n_0_[7] ;
  wire \DVSRespData_q_reg_n_0_[8] ;
  wire \DVSRespData_q_reg_n_0_[9] ;
  wire clk_i;
  wire dataRecEnd_i;
  wire [47:47]dataSPIToSendComb_w;
  wire dataSPIToSendPrepared_w_do;
  wire dataSPIToSendPrepared_w_do_INST_0_i_1_n_0;
  wire dataSPIToSendPrepared_w_do_INST_0_i_2_n_0;
  wire [31:0]dvsRXByte_i;
  wire dvsRXDataValid_i;
  wire [1:0]dvs_resp_addr_i;
  wire [7:0]dvs_resp_data_o;
  wire inputDataValid_i;
  wire [7:0]inputData_i;
  wire outDataRecStart_i;
  wire outPktReceived_q0;
  wire outPktReceived_q_do;
  wire \out_packet_q[0][7]_i_1_n_0 ;
  wire \out_packet_q[0][7]_i_2_n_0 ;
  wire \out_packet_q[1][7]_i_1_n_0 ;
  wire \out_packet_q[1][7]_i_2_n_0 ;
  wire \out_packet_q[2][7]_i_1_n_0 ;
  wire \out_packet_q[2][7]_i_2_n_0 ;
  wire \out_packet_q[3][7]_i_1_n_0 ;
  wire \out_packet_q[3][7]_i_2_n_0 ;
  wire \out_packet_q[3][7]_i_3_n_0 ;
  wire [7:0]\out_packet_q_reg[0] ;
  wire [7:0]\out_packet_q_reg[1] ;
  wire [7:0]\out_packet_q_reg[2] ;
  wire [7:0]\out_packet_q_reg[3] ;
  wire outputDataValid_o;
  wire [47:0]outputData_o;
  wire p_0_in;
  wire [3:1]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [47:0]p_1_in;
  wire rdIndex_q0;
  wire \rdIndex_q[2]_i_2_n_0 ;
  wire \rdIndex_q[3]_i_1_n_0 ;
  wire \rdIndex_q[3]_i_3_n_0 ;
  wire [3:0]rdIndex_q_reg__0;
  wire rst_i;
  wire rxDataComplete_o;
  wire rxDataComplete_q_i_1_n_0;
  wire rxDataComplete_q_i_2_n_0;
  wire setupDataRecStart_i;
  wire setupPktReceived_q0;
  wire setupPktReceived_q_do;
  wire \setup_packet_q[0][7]_i_1_n_0 ;
  wire \setup_packet_q[0][7]_i_2_n_0 ;
  wire \setup_packet_q[0][7]_i_3_n_0 ;
  wire \setup_packet_q[0][7]_i_4_n_0 ;
  wire \setup_packet_q[2][6]_i_1_n_0 ;
  wire \setup_packet_q[2][6]_i_2_n_0 ;
  wire \setup_packet_q[4][7]_i_1_n_0 ;
  wire \setup_packet_q[4][7]_i_2_n_0 ;
  wire \setup_packet_q[4][7]_i_3_n_0 ;
  wire \setup_packet_q[4][7]_i_4_n_0 ;
  wire [6:0]\setup_packet_q_reg[2] ;
  wire [7:0]\setup_packet_q_reg[4] ;
  wire \setup_packet_q_reg_n_0_[0][0] ;
  wire \setup_packet_q_reg_n_0_[0][1] ;
  wire \setup_packet_q_reg_n_0_[0][2] ;
  wire \setup_packet_q_reg_n_0_[0][3] ;
  wire \setup_packet_q_reg_n_0_[0][4] ;
  wire \setup_packet_q_reg_n_0_[0][5] ;
  wire \setup_packet_q_reg_n_0_[0][6] ;
  wire spiReady_i;
  wire wrOUTEn_q;
  wire wrOUTEn_q_i_1_n_0;
  wire \wrOUTIndex_q[0]_i_1_n_0 ;
  wire \wrOUTIndex_q[1]_i_1_n_0 ;
  wire \wrOUTIndex_q[2]_i_1_n_0 ;
  wire \wrOUTIndex_q[2]_i_2_n_0 ;
  wire \wrOUTIndex_q_do[0] ;
  wire \wrOUTIndex_q_do[1] ;
  wire \wrOUTIndex_q_do[2] ;
  wire wrSetupEn_q;
  wire wrSetupEn_q_i_1_n_0;
  wire \wrSetupIndex_q[0]_i_1_n_0 ;
  wire \wrSetupIndex_q[3]_i_1_n_0 ;
  wire [3:0]wrSetupIndex_q_do;

  LUT4 #(
    .INIT(16'h0400)) 
    \DVSRespData_q[31]_i_1 
       (.I0(rst_i),
        .I1(dvsRXDataValid_i),
        .I2(setupDataRecStart_i),
        .I3(rxDataComplete_q_i_2_n_0),
        .O(DVSRespData_q));
  FDRE \DVSRespData_q_reg[0] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[0]),
        .Q(\DVSRespData_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[10] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[10]),
        .Q(\DVSRespData_q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[11] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[11]),
        .Q(\DVSRespData_q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[12] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[12]),
        .Q(\DVSRespData_q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[13] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[13]),
        .Q(\DVSRespData_q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[14] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[14]),
        .Q(\DVSRespData_q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[15] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[15]),
        .Q(\DVSRespData_q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[16] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[16]),
        .Q(\DVSRespData_q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[17] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[17]),
        .Q(\DVSRespData_q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[18] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[18]),
        .Q(\DVSRespData_q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[19] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[19]),
        .Q(\DVSRespData_q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[1] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[1]),
        .Q(\DVSRespData_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[20] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[20]),
        .Q(\DVSRespData_q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[21] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[21]),
        .Q(\DVSRespData_q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[22] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[22]),
        .Q(\DVSRespData_q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[23] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[23]),
        .Q(\DVSRespData_q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[24] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[24]),
        .Q(\DVSRespData_q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[25] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[25]),
        .Q(\DVSRespData_q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[26] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[26]),
        .Q(\DVSRespData_q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[27] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[27]),
        .Q(\DVSRespData_q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[28] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[28]),
        .Q(\DVSRespData_q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[29] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[29]),
        .Q(\DVSRespData_q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[2] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[2]),
        .Q(\DVSRespData_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[30] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[30]),
        .Q(\DVSRespData_q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[31] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[31]),
        .Q(\DVSRespData_q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[3] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[3]),
        .Q(\DVSRespData_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[4] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[4]),
        .Q(\DVSRespData_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[5] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[5]),
        .Q(\DVSRespData_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[6] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[6]),
        .Q(\DVSRespData_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[7] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[7]),
        .Q(\DVSRespData_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[8] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[8]),
        .Q(\DVSRespData_q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \DVSRespData_q_reg[9] 
       (.C(clk_i),
        .CE(DVSRespData_q),
        .D(dvsRXByte_i[9]),
        .Q(\DVSRespData_q_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    dataSPIToSendPrepared_w_do_INST_0
       (.I0(setupPktReceived_q_do),
        .I1(dataSPIToSendComb_w),
        .I2(outPktReceived_q_do),
        .I3(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .O(dataSPIToSendPrepared_w_do));
  LUT4 #(
    .INIT(16'hFEFF)) 
    dataSPIToSendPrepared_w_do_INST_0_i_1
       (.I0(dataSPIToSendPrepared_w_do_INST_0_i_2_n_0),
        .I1(\setup_packet_q_reg_n_0_[0][0] ),
        .I2(\setup_packet_q_reg_n_0_[0][5] ),
        .I3(\setup_packet_q_reg_n_0_[0][6] ),
        .O(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    dataSPIToSendPrepared_w_do_INST_0_i_2
       (.I0(\setup_packet_q_reg_n_0_[0][2] ),
        .I1(\setup_packet_q_reg_n_0_[0][1] ),
        .I2(\setup_packet_q_reg_n_0_[0][4] ),
        .I3(\setup_packet_q_reg_n_0_[0][3] ),
        .O(dataSPIToSendPrepared_w_do_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[0]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[16] ),
        .I1(\DVSRespData_q_reg_n_0_[24] ),
        .I2(\DVSRespData_q_reg_n_0_[0] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[8] ),
        .O(dvs_resp_data_o[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[1]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[17] ),
        .I1(\DVSRespData_q_reg_n_0_[25] ),
        .I2(\DVSRespData_q_reg_n_0_[1] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[9] ),
        .O(dvs_resp_data_o[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[2]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[18] ),
        .I1(\DVSRespData_q_reg_n_0_[26] ),
        .I2(\DVSRespData_q_reg_n_0_[2] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[10] ),
        .O(dvs_resp_data_o[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[3]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[19] ),
        .I1(\DVSRespData_q_reg_n_0_[27] ),
        .I2(\DVSRespData_q_reg_n_0_[3] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[11] ),
        .O(dvs_resp_data_o[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[4]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[20] ),
        .I1(\DVSRespData_q_reg_n_0_[28] ),
        .I2(\DVSRespData_q_reg_n_0_[4] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[12] ),
        .O(dvs_resp_data_o[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[5]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[21] ),
        .I1(\DVSRespData_q_reg_n_0_[29] ),
        .I2(\DVSRespData_q_reg_n_0_[5] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[13] ),
        .O(dvs_resp_data_o[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[6]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[22] ),
        .I1(\DVSRespData_q_reg_n_0_[30] ),
        .I2(\DVSRespData_q_reg_n_0_[6] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[14] ),
        .O(dvs_resp_data_o[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \dvs_resp_data_o[7]_INST_0 
       (.I0(\DVSRespData_q_reg_n_0_[23] ),
        .I1(\DVSRespData_q_reg_n_0_[31] ),
        .I2(\DVSRespData_q_reg_n_0_[7] ),
        .I3(dvs_resp_addr_i[1]),
        .I4(dvs_resp_addr_i[0]),
        .I5(\DVSRespData_q_reg_n_0_[15] ),
        .O(dvs_resp_data_o[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    outPktReceived_q_i_1
       (.I0(\wrOUTIndex_q_do[1] ),
        .I1(\wrOUTIndex_q_do[0] ),
        .I2(dataRecEnd_i),
        .I3(\wrOUTIndex_q_do[2] ),
        .O(outPktReceived_q0));
  FDCE outPktReceived_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(outPktReceived_q0),
        .Q(outPktReceived_q_do));
  LUT5 #(
    .INIT(32'h02FF0000)) 
    \out_packet_q[0][7]_i_1 
       (.I0(\out_packet_q[3][7]_i_3_n_0 ),
        .I1(\wrOUTIndex_q_do[0] ),
        .I2(\wrOUTIndex_q_do[1] ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0202)) 
    \out_packet_q[0][7]_i_2 
       (.I0(\out_packet_q[3][7]_i_3_n_0 ),
        .I1(\wrOUTIndex_q_do[0] ),
        .I2(\wrOUTIndex_q_do[1] ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \out_packet_q[1][7]_i_1 
       (.I0(\out_packet_q[3][7]_i_3_n_0 ),
        .I1(\wrOUTIndex_q_do[0] ),
        .I2(\wrOUTIndex_q_do[1] ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \out_packet_q[1][7]_i_2 
       (.I0(\out_packet_q[3][7]_i_3_n_0 ),
        .I1(\wrOUTIndex_q_do[0] ),
        .I2(\wrOUTIndex_q_do[1] ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[1][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \out_packet_q[2][7]_i_1 
       (.I0(\out_packet_q[3][7]_i_3_n_0 ),
        .I1(\wrOUTIndex_q_do[1] ),
        .I2(\wrOUTIndex_q_do[0] ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \out_packet_q[2][7]_i_2 
       (.I0(\out_packet_q[3][7]_i_3_n_0 ),
        .I1(\wrOUTIndex_q_do[1] ),
        .I2(\wrOUTIndex_q_do[0] ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[2][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF0000)) 
    \out_packet_q[3][7]_i_1 
       (.I0(\wrOUTIndex_q_do[0] ),
        .I1(\wrOUTIndex_q_do[1] ),
        .I2(\out_packet_q[3][7]_i_3_n_0 ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \out_packet_q[3][7]_i_2 
       (.I0(\wrOUTIndex_q_do[0] ),
        .I1(\wrOUTIndex_q_do[1] ),
        .I2(\out_packet_q[3][7]_i_3_n_0 ),
        .I3(rst_i),
        .I4(outDataRecStart_i),
        .O(\out_packet_q[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \out_packet_q[3][7]_i_3 
       (.I0(\wrOUTIndex_q_do[2] ),
        .I1(wrOUTEn_q),
        .I2(rst_i),
        .I3(inputDataValid_i),
        .I4(dataRecEnd_i),
        .O(\out_packet_q[3][7]_i_3_n_0 ));
  FDRE \out_packet_q_reg[0][0] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\out_packet_q_reg[0] [0]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][1] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\out_packet_q_reg[0] [1]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][2] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\out_packet_q_reg[0] [2]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][3] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\out_packet_q_reg[0] [3]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][4] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\out_packet_q_reg[0] [4]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][5] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\out_packet_q_reg[0] [5]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][6] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\out_packet_q_reg[0] [6]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[0][7] 
       (.C(clk_i),
        .CE(\out_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[7]),
        .Q(\out_packet_q_reg[0] [7]),
        .R(\out_packet_q[0][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][0] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\out_packet_q_reg[1] [0]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][1] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\out_packet_q_reg[1] [1]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][2] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\out_packet_q_reg[1] [2]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][3] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\out_packet_q_reg[1] [3]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][4] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\out_packet_q_reg[1] [4]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][5] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\out_packet_q_reg[1] [5]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][6] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\out_packet_q_reg[1] [6]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[1][7] 
       (.C(clk_i),
        .CE(\out_packet_q[1][7]_i_2_n_0 ),
        .D(inputData_i[7]),
        .Q(\out_packet_q_reg[1] [7]),
        .R(\out_packet_q[1][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][0] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\out_packet_q_reg[2] [0]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][1] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\out_packet_q_reg[2] [1]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][2] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\out_packet_q_reg[2] [2]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][3] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\out_packet_q_reg[2] [3]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][4] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\out_packet_q_reg[2] [4]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][5] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\out_packet_q_reg[2] [5]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][6] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\out_packet_q_reg[2] [6]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[2][7] 
       (.C(clk_i),
        .CE(\out_packet_q[2][7]_i_2_n_0 ),
        .D(inputData_i[7]),
        .Q(\out_packet_q_reg[2] [7]),
        .R(\out_packet_q[2][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][0] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\out_packet_q_reg[3] [0]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][1] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\out_packet_q_reg[3] [1]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][2] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\out_packet_q_reg[3] [2]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][3] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\out_packet_q_reg[3] [3]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][4] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\out_packet_q_reg[3] [4]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][5] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\out_packet_q_reg[3] [5]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][6] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\out_packet_q_reg[3] [6]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  FDRE \out_packet_q_reg[3][7] 
       (.C(clk_i),
        .CE(\out_packet_q[3][7]_i_2_n_0 ),
        .D(inputData_i[7]),
        .Q(\out_packet_q_reg[3] [7]),
        .R(\out_packet_q[3][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    outputDataValid_q_i_1
       (.I0(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .I1(outPktReceived_q_do),
        .I2(dataSPIToSendComb_w),
        .I3(setupPktReceived_q_do),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    outputDataValid_q_i_2
       (.I0(spiReady_i),
        .I1(rdIndex_q_reg__0[0]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[2]),
        .I4(rdIndex_q_reg__0[3]),
        .O(rdIndex_q0));
  FDCE outputDataValid_q_reg
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(rdIndex_q0),
        .Q(outputDataValid_o));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[0]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[10]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [2]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[11]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [3]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[12]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [4]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[13]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [5]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[14]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [6]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[15]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [7]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[16]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [0]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[17]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [1]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[18]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [2]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[19]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [3]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[1]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[20]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [4]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[21]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [5]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[22]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [6]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[23]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[1] [7]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[24]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [0]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[25]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [1]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[26]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [2]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[27]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [3]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[28]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [4]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[29]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [5]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[2]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[30]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [6]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[31]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[0] [7]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[32]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [0]),
        .O(p_1_in[32]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[33]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [1]),
        .O(p_1_in[33]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[34]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [2]),
        .O(p_1_in[34]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[35]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [3]),
        .O(p_1_in[35]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[36]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [4]),
        .O(p_1_in[36]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[37]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [5]),
        .O(p_1_in[37]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[38]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [6]),
        .O(p_1_in[38]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[39]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[4] [7]),
        .O(p_1_in[39]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[3]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[40]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [0]),
        .O(p_1_in[40]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[41]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [1]),
        .O(p_1_in[41]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[42]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [2]),
        .O(p_1_in[42]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[43]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [3]),
        .O(p_1_in[43]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[44]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [4]),
        .O(p_1_in[44]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[45]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [5]),
        .O(p_1_in[45]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[46]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\setup_packet_q_reg[2] [6]),
        .O(p_1_in[46]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[47]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(dataSPIToSendComb_w),
        .O(p_1_in[47]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[4]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[5]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[6]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[7]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[3] [7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[8]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [0]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \outputData_q[9]_i_1 
       (.I0(rdIndex_q_reg__0[3]),
        .I1(rdIndex_q_reg__0[2]),
        .I2(rdIndex_q_reg__0[1]),
        .I3(rdIndex_q_reg__0[0]),
        .I4(spiReady_i),
        .I5(\out_packet_q_reg[2] [1]),
        .O(p_1_in[9]));
  FDCE \outputData_q_reg[0] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[0]),
        .Q(outputData_o[0]));
  FDCE \outputData_q_reg[10] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[10]),
        .Q(outputData_o[10]));
  FDCE \outputData_q_reg[11] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[11]),
        .Q(outputData_o[11]));
  FDCE \outputData_q_reg[12] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[12]),
        .Q(outputData_o[12]));
  FDCE \outputData_q_reg[13] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[13]),
        .Q(outputData_o[13]));
  FDCE \outputData_q_reg[14] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[14]),
        .Q(outputData_o[14]));
  FDCE \outputData_q_reg[15] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[15]),
        .Q(outputData_o[15]));
  FDCE \outputData_q_reg[16] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[16]),
        .Q(outputData_o[16]));
  FDCE \outputData_q_reg[17] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[17]),
        .Q(outputData_o[17]));
  FDCE \outputData_q_reg[18] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[18]),
        .Q(outputData_o[18]));
  FDCE \outputData_q_reg[19] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[19]),
        .Q(outputData_o[19]));
  FDCE \outputData_q_reg[1] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[1]),
        .Q(outputData_o[1]));
  FDCE \outputData_q_reg[20] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[20]),
        .Q(outputData_o[20]));
  FDCE \outputData_q_reg[21] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[21]),
        .Q(outputData_o[21]));
  FDCE \outputData_q_reg[22] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[22]),
        .Q(outputData_o[22]));
  FDCE \outputData_q_reg[23] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[23]),
        .Q(outputData_o[23]));
  FDCE \outputData_q_reg[24] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[24]),
        .Q(outputData_o[24]));
  FDCE \outputData_q_reg[25] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[25]),
        .Q(outputData_o[25]));
  FDCE \outputData_q_reg[26] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[26]),
        .Q(outputData_o[26]));
  FDCE \outputData_q_reg[27] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[27]),
        .Q(outputData_o[27]));
  FDCE \outputData_q_reg[28] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[28]),
        .Q(outputData_o[28]));
  FDCE \outputData_q_reg[29] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[29]),
        .Q(outputData_o[29]));
  FDCE \outputData_q_reg[2] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[2]),
        .Q(outputData_o[2]));
  FDCE \outputData_q_reg[30] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[30]),
        .Q(outputData_o[30]));
  FDCE \outputData_q_reg[31] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[31]),
        .Q(outputData_o[31]));
  FDCE \outputData_q_reg[32] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[32]),
        .Q(outputData_o[32]));
  FDCE \outputData_q_reg[33] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[33]),
        .Q(outputData_o[33]));
  FDCE \outputData_q_reg[34] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[34]),
        .Q(outputData_o[34]));
  FDCE \outputData_q_reg[35] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[35]),
        .Q(outputData_o[35]));
  FDCE \outputData_q_reg[36] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[36]),
        .Q(outputData_o[36]));
  FDCE \outputData_q_reg[37] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[37]),
        .Q(outputData_o[37]));
  FDCE \outputData_q_reg[38] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[38]),
        .Q(outputData_o[38]));
  FDCE \outputData_q_reg[39] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[39]),
        .Q(outputData_o[39]));
  FDCE \outputData_q_reg[3] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[3]),
        .Q(outputData_o[3]));
  FDCE \outputData_q_reg[40] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[40]),
        .Q(outputData_o[40]));
  FDCE \outputData_q_reg[41] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[41]),
        .Q(outputData_o[41]));
  FDCE \outputData_q_reg[42] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[42]),
        .Q(outputData_o[42]));
  FDCE \outputData_q_reg[43] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[43]),
        .Q(outputData_o[43]));
  FDCE \outputData_q_reg[44] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[44]),
        .Q(outputData_o[44]));
  FDCE \outputData_q_reg[45] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[45]),
        .Q(outputData_o[45]));
  FDCE \outputData_q_reg[46] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[46]),
        .Q(outputData_o[46]));
  FDCE \outputData_q_reg[47] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[47]),
        .Q(outputData_o[47]));
  FDCE \outputData_q_reg[4] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[4]),
        .Q(outputData_o[4]));
  FDCE \outputData_q_reg[5] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[5]),
        .Q(outputData_o[5]));
  FDCE \outputData_q_reg[6] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[6]),
        .Q(outputData_o[6]));
  FDCE \outputData_q_reg[7] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[7]),
        .Q(outputData_o[7]));
  FDCE \outputData_q_reg[8] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[8]),
        .Q(outputData_o[8]));
  FDCE \outputData_q_reg[9] 
       (.C(clk_i),
        .CE(p_0_in),
        .CLR(rst_i),
        .D(p_1_in[9]),
        .Q(outputData_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000FF47)) 
    \rdIndex_q[0]_i_1 
       (.I0(setupPktReceived_q_do),
        .I1(dataSPIToSendComb_w),
        .I2(outPktReceived_q_do),
        .I3(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .I4(rdIndex_q_reg__0[0]),
        .O(p_0_in__1[0]));
  LUT6 #(
    .INIT(64'h0000FF47FF470000)) 
    \rdIndex_q[1]_i_1 
       (.I0(setupPktReceived_q_do),
        .I1(dataSPIToSendComb_w),
        .I2(outPktReceived_q_do),
        .I3(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .I4(rdIndex_q_reg__0[1]),
        .I5(rdIndex_q_reg__0[0]),
        .O(p_0_in__1[1]));
  LUT6 #(
    .INIT(64'hFF4700000000FF47)) 
    \rdIndex_q[2]_i_1 
       (.I0(setupPktReceived_q_do),
        .I1(dataSPIToSendComb_w),
        .I2(outPktReceived_q_do),
        .I3(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .I4(rdIndex_q_reg__0[2]),
        .I5(\rdIndex_q[2]_i_2_n_0 ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rdIndex_q[2]_i_2 
       (.I0(rdIndex_q_reg__0[0]),
        .I1(rdIndex_q_reg__0[1]),
        .O(\rdIndex_q[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \rdIndex_q[3]_i_1 
       (.I0(rdIndex_q0),
        .I1(setupPktReceived_q_do),
        .I2(dataSPIToSendComb_w),
        .I3(outPktReceived_q_do),
        .I4(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .O(\rdIndex_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F8000007F807F80)) 
    \rdIndex_q[3]_i_2 
       (.I0(rdIndex_q_reg__0[0]),
        .I1(rdIndex_q_reg__0[1]),
        .I2(rdIndex_q_reg__0[2]),
        .I3(rdIndex_q_reg__0[3]),
        .I4(dataSPIToSendPrepared_w_do_INST_0_i_1_n_0),
        .I5(\rdIndex_q[3]_i_3_n_0 ),
        .O(p_0_in__1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rdIndex_q[3]_i_3 
       (.I0(setupPktReceived_q_do),
        .I1(dataSPIToSendComb_w),
        .I2(outPktReceived_q_do),
        .O(\rdIndex_q[3]_i_3_n_0 ));
  FDCE \rdIndex_q_reg[0] 
       (.C(clk_i),
        .CE(\rdIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__1[0]),
        .Q(rdIndex_q_reg__0[0]));
  FDCE \rdIndex_q_reg[1] 
       (.C(clk_i),
        .CE(\rdIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__1[1]),
        .Q(rdIndex_q_reg__0[1]));
  FDCE \rdIndex_q_reg[2] 
       (.C(clk_i),
        .CE(\rdIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__1[2]),
        .Q(rdIndex_q_reg__0[2]));
  FDCE \rdIndex_q_reg[3] 
       (.C(clk_i),
        .CE(\rdIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__1[3]),
        .Q(rdIndex_q_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0F0D)) 
    rxDataComplete_q_i_1
       (.I0(rxDataComplete_q_i_2_n_0),
        .I1(dvsRXDataValid_i),
        .I2(setupDataRecStart_i),
        .I3(rxDataComplete_o),
        .O(rxDataComplete_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    rxDataComplete_q_i_2
       (.I0(dataSPIToSendComb_w),
        .I1(dataSPIToSendPrepared_w_do_INST_0_i_2_n_0),
        .I2(\setup_packet_q_reg_n_0_[0][0] ),
        .I3(\setup_packet_q_reg_n_0_[0][5] ),
        .I4(\setup_packet_q_reg_n_0_[0][6] ),
        .I5(setupPktReceived_q_do),
        .O(rxDataComplete_q_i_2_n_0));
  FDCE rxDataComplete_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rxDataComplete_q_i_1_n_0),
        .Q(rxDataComplete_o));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    setupPktReceived_q_i_1
       (.I0(wrSetupIndex_q_do[0]),
        .I1(wrSetupIndex_q_do[1]),
        .I2(wrSetupIndex_q_do[2]),
        .I3(dataRecEnd_i),
        .I4(wrSetupIndex_q_do[3]),
        .O(setupPktReceived_q0));
  FDCE setupPktReceived_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(setupPktReceived_q0),
        .Q(setupPktReceived_q_do));
  LUT6 #(
    .INIT(64'h4444C44444444444)) 
    \setup_packet_q[0][7]_i_1 
       (.I0(rst_i),
        .I1(setupDataRecStart_i),
        .I2(\setup_packet_q[0][7]_i_3_n_0 ),
        .I3(\setup_packet_q[0][7]_i_4_n_0 ),
        .I4(wrSetupIndex_q_do[3]),
        .I5(wrSetupEn_q),
        .O(\setup_packet_q[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444F44444444444)) 
    \setup_packet_q[0][7]_i_2 
       (.I0(rst_i),
        .I1(setupDataRecStart_i),
        .I2(\setup_packet_q[0][7]_i_3_n_0 ),
        .I3(\setup_packet_q[0][7]_i_4_n_0 ),
        .I4(wrSetupIndex_q_do[3]),
        .I5(wrSetupEn_q),
        .O(\setup_packet_q[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \setup_packet_q[0][7]_i_3 
       (.I0(dataRecEnd_i),
        .I1(inputDataValid_i),
        .I2(rst_i),
        .O(\setup_packet_q[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \setup_packet_q[0][7]_i_4 
       (.I0(wrSetupIndex_q_do[2]),
        .I1(wrSetupIndex_q_do[1]),
        .I2(wrSetupIndex_q_do[0]),
        .O(\setup_packet_q[0][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \setup_packet_q[2][6]_i_1 
       (.I0(setupDataRecStart_i),
        .I1(\setup_packet_q[2][6]_i_2_n_0 ),
        .O(\setup_packet_q[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \setup_packet_q[2][6]_i_2 
       (.I0(\setup_packet_q[4][7]_i_3_n_0 ),
        .I1(\setup_packet_q[0][7]_i_3_n_0 ),
        .I2(wrSetupIndex_q_do[0]),
        .I3(wrSetupIndex_q_do[1]),
        .I4(wrSetupIndex_q_do[2]),
        .I5(\setup_packet_q[4][7]_i_4_n_0 ),
        .O(\setup_packet_q[2][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \setup_packet_q[4][7]_i_1 
       (.I0(setupDataRecStart_i),
        .I1(\setup_packet_q[4][7]_i_2_n_0 ),
        .O(\setup_packet_q[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \setup_packet_q[4][7]_i_2 
       (.I0(\setup_packet_q[4][7]_i_3_n_0 ),
        .I1(\setup_packet_q[0][7]_i_3_n_0 ),
        .I2(wrSetupIndex_q_do[0]),
        .I3(wrSetupIndex_q_do[2]),
        .I4(wrSetupIndex_q_do[1]),
        .I5(\setup_packet_q[4][7]_i_4_n_0 ),
        .O(\setup_packet_q[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \setup_packet_q[4][7]_i_3 
       (.I0(setupDataRecStart_i),
        .I1(rst_i),
        .O(\setup_packet_q[4][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_packet_q[4][7]_i_4 
       (.I0(wrSetupEn_q),
        .I1(wrSetupIndex_q_do[3]),
        .O(\setup_packet_q[4][7]_i_4_n_0 ));
  FDRE \setup_packet_q_reg[0][0] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\setup_packet_q_reg_n_0_[0][0] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][1] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\setup_packet_q_reg_n_0_[0][1] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][2] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\setup_packet_q_reg_n_0_[0][2] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][3] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\setup_packet_q_reg_n_0_[0][3] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][4] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\setup_packet_q_reg_n_0_[0][4] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][5] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\setup_packet_q_reg_n_0_[0][5] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][6] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\setup_packet_q_reg_n_0_[0][6] ),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[0][7] 
       (.C(clk_i),
        .CE(\setup_packet_q[0][7]_i_2_n_0 ),
        .D(inputData_i[7]),
        .Q(dataSPIToSendComb_w),
        .R(\setup_packet_q[0][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][0] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\setup_packet_q_reg[2] [0]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][1] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\setup_packet_q_reg[2] [1]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][2] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\setup_packet_q_reg[2] [2]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][3] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\setup_packet_q_reg[2] [3]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][4] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\setup_packet_q_reg[2] [4]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][5] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\setup_packet_q_reg[2] [5]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[2][6] 
       (.C(clk_i),
        .CE(\setup_packet_q[2][6]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\setup_packet_q_reg[2] [6]),
        .R(\setup_packet_q[2][6]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][0] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[0]),
        .Q(\setup_packet_q_reg[4] [0]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][1] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[1]),
        .Q(\setup_packet_q_reg[4] [1]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][2] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[2]),
        .Q(\setup_packet_q_reg[4] [2]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][3] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[3]),
        .Q(\setup_packet_q_reg[4] [3]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][4] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[4]),
        .Q(\setup_packet_q_reg[4] [4]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][5] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[5]),
        .Q(\setup_packet_q_reg[4] [5]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][6] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[6]),
        .Q(\setup_packet_q_reg[4] [6]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  FDRE \setup_packet_q_reg[4][7] 
       (.C(clk_i),
        .CE(\setup_packet_q[4][7]_i_2_n_0 ),
        .D(inputData_i[7]),
        .Q(\setup_packet_q_reg[4] [7]),
        .R(\setup_packet_q[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    wrOUTEn_q_i_1
       (.I0(outDataRecStart_i),
        .I1(dataRecEnd_i),
        .I2(wrOUTEn_q),
        .O(wrOUTEn_q_i_1_n_0));
  FDCE wrOUTEn_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(wrOUTEn_q_i_1_n_0),
        .Q(wrOUTEn_q));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00F70008)) 
    \wrOUTIndex_q[0]_i_1 
       (.I0(wrOUTEn_q),
        .I1(inputDataValid_i),
        .I2(dataRecEnd_i),
        .I3(outDataRecStart_i),
        .I4(\wrOUTIndex_q_do[0] ),
        .O(\wrOUTIndex_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF7F00000080)) 
    \wrOUTIndex_q[1]_i_1 
       (.I0(\wrOUTIndex_q_do[0] ),
        .I1(wrOUTEn_q),
        .I2(inputDataValid_i),
        .I3(dataRecEnd_i),
        .I4(outDataRecStart_i),
        .I5(\wrOUTIndex_q_do[1] ),
        .O(\wrOUTIndex_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h07FF0800)) 
    \wrOUTIndex_q[2]_i_1 
       (.I0(\wrOUTIndex_q_do[0] ),
        .I1(\wrOUTIndex_q_do[1] ),
        .I2(outDataRecStart_i),
        .I3(\wrOUTIndex_q[2]_i_2_n_0 ),
        .I4(\wrOUTIndex_q_do[2] ),
        .O(\wrOUTIndex_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \wrOUTIndex_q[2]_i_2 
       (.I0(wrOUTEn_q),
        .I1(inputDataValid_i),
        .I2(dataRecEnd_i),
        .I3(outDataRecStart_i),
        .O(\wrOUTIndex_q[2]_i_2_n_0 ));
  FDCE \wrOUTIndex_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\wrOUTIndex_q[0]_i_1_n_0 ),
        .Q(\wrOUTIndex_q_do[0] ));
  FDCE \wrOUTIndex_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\wrOUTIndex_q[1]_i_1_n_0 ),
        .Q(\wrOUTIndex_q_do[1] ));
  FDCE \wrOUTIndex_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\wrOUTIndex_q[2]_i_1_n_0 ),
        .Q(\wrOUTIndex_q_do[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    wrSetupEn_q_i_1
       (.I0(setupDataRecStart_i),
        .I1(dataRecEnd_i),
        .I2(wrSetupEn_q),
        .O(wrSetupEn_q_i_1_n_0));
  FDCE wrSetupEn_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(wrSetupEn_q_i_1_n_0),
        .Q(wrSetupEn_q));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wrSetupIndex_q[0]_i_1 
       (.I0(wrSetupIndex_q_do[0]),
        .I1(setupDataRecStart_i),
        .O(\wrSetupIndex_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \wrSetupIndex_q[1]_i_1 
       (.I0(wrSetupIndex_q_do[0]),
        .I1(wrSetupIndex_q_do[1]),
        .I2(setupDataRecStart_i),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \wrSetupIndex_q[2]_i_1 
       (.I0(wrSetupIndex_q_do[0]),
        .I1(wrSetupIndex_q_do[1]),
        .I2(wrSetupIndex_q_do[2]),
        .I3(setupDataRecStart_i),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'hFF08)) 
    \wrSetupIndex_q[3]_i_1 
       (.I0(wrSetupEn_q),
        .I1(inputDataValid_i),
        .I2(dataRecEnd_i),
        .I3(setupDataRecStart_i),
        .O(\wrSetupIndex_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \wrSetupIndex_q[3]_i_2 
       (.I0(wrSetupIndex_q_do[1]),
        .I1(wrSetupIndex_q_do[0]),
        .I2(wrSetupIndex_q_do[2]),
        .I3(wrSetupIndex_q_do[3]),
        .I4(setupDataRecStart_i),
        .O(p_0_in__0[3]));
  FDCE \wrSetupIndex_q_reg[0] 
       (.C(clk_i),
        .CE(\wrSetupIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\wrSetupIndex_q[0]_i_1_n_0 ),
        .Q(wrSetupIndex_q_do[0]));
  FDCE \wrSetupIndex_q_reg[1] 
       (.C(clk_i),
        .CE(\wrSetupIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__0[1]),
        .Q(wrSetupIndex_q_do[1]));
  FDCE \wrSetupIndex_q_reg[2] 
       (.C(clk_i),
        .CE(\wrSetupIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__0[2]),
        .Q(wrSetupIndex_q_do[2]));
  FDCE \wrSetupIndex_q_reg[3] 
       (.C(clk_i),
        .CE(\wrSetupIndex_q[3]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_0_in__0[3]),
        .Q(wrSetupIndex_q_do[3]));
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
