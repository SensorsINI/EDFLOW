// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:55:23 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_dataSwitch_0_0/brd_dataSwitch_0_0_sim_netlist.v
// Design      : brd_dataSwitch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_dataSwitch_0_0,dataSwitch,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dataSwitch,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_dataSwitch_0_0
   (clk_i,
    rst_n_i,
    select_i,
    data_vd_i,
    data_i,
    data_o_1,
    data_o_vd1,
    data_o_num1,
    data_o_2,
    data_o_vd2,
    data_o_num2);
  input clk_i;
  input rst_n_i;
  input select_i;
  input data_vd_i;
  input [15:0]data_i;
  output [15:0]data_o_1;
  output data_o_vd1;
  output [63:0]data_o_num1;
  output [15:0]data_o_2;
  output data_o_vd2;
  output [63:0]data_o_num2;

  wire clk_i;
  wire [15:0]data_i;
  wire [63:0]data_o_num1;
  wire [63:0]data_o_num2;
  wire data_o_vd1;
  wire data_o_vd2;
  wire data_vd_i;
  wire rst_n_i;
  wire select_i;

  assign data_o_1[15:0] = data_i;
  assign data_o_2[15:0] = data_i;
  brd_dataSwitch_0_0_dataSwitch U0
       (.clk_i(clk_i),
        .data_o_num1(data_o_num1),
        .data_o_num2(data_o_num2),
        .data_vd_i(data_vd_i),
        .rst_n_i(rst_n_i),
        .select_i(select_i));
  LUT2 #(
    .INIT(4'h7)) 
    data_o_vd1_INST_0
       (.I0(data_vd_i),
        .I1(select_i),
        .O(data_o_vd1));
  LUT2 #(
    .INIT(4'h8)) 
    data_o_vd2_INST_0
       (.I0(select_i),
        .I1(data_vd_i),
        .O(data_o_vd2));
endmodule

(* ORIG_REF_NAME = "dataSwitch" *) 
module brd_dataSwitch_0_0_dataSwitch
   (data_o_num1,
    data_o_num2,
    clk_i,
    data_vd_i,
    select_i,
    rst_n_i);
  output [63:0]data_o_num1;
  output [63:0]data_o_num2;
  input clk_i;
  input data_vd_i;
  input select_i;
  input rst_n_i;

  wire clk_i;
  wire [63:0]data_o_num1;
  wire [63:0]data_o_num2;
  wire data_vd_i;
  wire numCh1;
  wire \numCh1[3]_i_2_n_0 ;
  wire \numCh1[63]_i_3_n_0 ;
  wire \numCh1_reg[11]_i_1_n_0 ;
  wire \numCh1_reg[11]_i_1_n_1 ;
  wire \numCh1_reg[11]_i_1_n_2 ;
  wire \numCh1_reg[11]_i_1_n_3 ;
  wire \numCh1_reg[11]_i_1_n_4 ;
  wire \numCh1_reg[11]_i_1_n_5 ;
  wire \numCh1_reg[11]_i_1_n_6 ;
  wire \numCh1_reg[11]_i_1_n_7 ;
  wire \numCh1_reg[15]_i_1_n_0 ;
  wire \numCh1_reg[15]_i_1_n_1 ;
  wire \numCh1_reg[15]_i_1_n_2 ;
  wire \numCh1_reg[15]_i_1_n_3 ;
  wire \numCh1_reg[15]_i_1_n_4 ;
  wire \numCh1_reg[15]_i_1_n_5 ;
  wire \numCh1_reg[15]_i_1_n_6 ;
  wire \numCh1_reg[15]_i_1_n_7 ;
  wire \numCh1_reg[19]_i_1_n_0 ;
  wire \numCh1_reg[19]_i_1_n_1 ;
  wire \numCh1_reg[19]_i_1_n_2 ;
  wire \numCh1_reg[19]_i_1_n_3 ;
  wire \numCh1_reg[19]_i_1_n_4 ;
  wire \numCh1_reg[19]_i_1_n_5 ;
  wire \numCh1_reg[19]_i_1_n_6 ;
  wire \numCh1_reg[19]_i_1_n_7 ;
  wire \numCh1_reg[23]_i_1_n_0 ;
  wire \numCh1_reg[23]_i_1_n_1 ;
  wire \numCh1_reg[23]_i_1_n_2 ;
  wire \numCh1_reg[23]_i_1_n_3 ;
  wire \numCh1_reg[23]_i_1_n_4 ;
  wire \numCh1_reg[23]_i_1_n_5 ;
  wire \numCh1_reg[23]_i_1_n_6 ;
  wire \numCh1_reg[23]_i_1_n_7 ;
  wire \numCh1_reg[27]_i_1_n_0 ;
  wire \numCh1_reg[27]_i_1_n_1 ;
  wire \numCh1_reg[27]_i_1_n_2 ;
  wire \numCh1_reg[27]_i_1_n_3 ;
  wire \numCh1_reg[27]_i_1_n_4 ;
  wire \numCh1_reg[27]_i_1_n_5 ;
  wire \numCh1_reg[27]_i_1_n_6 ;
  wire \numCh1_reg[27]_i_1_n_7 ;
  wire \numCh1_reg[31]_i_1_n_0 ;
  wire \numCh1_reg[31]_i_1_n_1 ;
  wire \numCh1_reg[31]_i_1_n_2 ;
  wire \numCh1_reg[31]_i_1_n_3 ;
  wire \numCh1_reg[31]_i_1_n_4 ;
  wire \numCh1_reg[31]_i_1_n_5 ;
  wire \numCh1_reg[31]_i_1_n_6 ;
  wire \numCh1_reg[31]_i_1_n_7 ;
  wire \numCh1_reg[35]_i_1_n_0 ;
  wire \numCh1_reg[35]_i_1_n_1 ;
  wire \numCh1_reg[35]_i_1_n_2 ;
  wire \numCh1_reg[35]_i_1_n_3 ;
  wire \numCh1_reg[35]_i_1_n_4 ;
  wire \numCh1_reg[35]_i_1_n_5 ;
  wire \numCh1_reg[35]_i_1_n_6 ;
  wire \numCh1_reg[35]_i_1_n_7 ;
  wire \numCh1_reg[39]_i_1_n_0 ;
  wire \numCh1_reg[39]_i_1_n_1 ;
  wire \numCh1_reg[39]_i_1_n_2 ;
  wire \numCh1_reg[39]_i_1_n_3 ;
  wire \numCh1_reg[39]_i_1_n_4 ;
  wire \numCh1_reg[39]_i_1_n_5 ;
  wire \numCh1_reg[39]_i_1_n_6 ;
  wire \numCh1_reg[39]_i_1_n_7 ;
  wire \numCh1_reg[3]_i_1_n_0 ;
  wire \numCh1_reg[3]_i_1_n_1 ;
  wire \numCh1_reg[3]_i_1_n_2 ;
  wire \numCh1_reg[3]_i_1_n_3 ;
  wire \numCh1_reg[3]_i_1_n_4 ;
  wire \numCh1_reg[3]_i_1_n_5 ;
  wire \numCh1_reg[3]_i_1_n_6 ;
  wire \numCh1_reg[3]_i_1_n_7 ;
  wire \numCh1_reg[43]_i_1_n_0 ;
  wire \numCh1_reg[43]_i_1_n_1 ;
  wire \numCh1_reg[43]_i_1_n_2 ;
  wire \numCh1_reg[43]_i_1_n_3 ;
  wire \numCh1_reg[43]_i_1_n_4 ;
  wire \numCh1_reg[43]_i_1_n_5 ;
  wire \numCh1_reg[43]_i_1_n_6 ;
  wire \numCh1_reg[43]_i_1_n_7 ;
  wire \numCh1_reg[47]_i_1_n_0 ;
  wire \numCh1_reg[47]_i_1_n_1 ;
  wire \numCh1_reg[47]_i_1_n_2 ;
  wire \numCh1_reg[47]_i_1_n_3 ;
  wire \numCh1_reg[47]_i_1_n_4 ;
  wire \numCh1_reg[47]_i_1_n_5 ;
  wire \numCh1_reg[47]_i_1_n_6 ;
  wire \numCh1_reg[47]_i_1_n_7 ;
  wire \numCh1_reg[51]_i_1_n_0 ;
  wire \numCh1_reg[51]_i_1_n_1 ;
  wire \numCh1_reg[51]_i_1_n_2 ;
  wire \numCh1_reg[51]_i_1_n_3 ;
  wire \numCh1_reg[51]_i_1_n_4 ;
  wire \numCh1_reg[51]_i_1_n_5 ;
  wire \numCh1_reg[51]_i_1_n_6 ;
  wire \numCh1_reg[51]_i_1_n_7 ;
  wire \numCh1_reg[55]_i_1_n_0 ;
  wire \numCh1_reg[55]_i_1_n_1 ;
  wire \numCh1_reg[55]_i_1_n_2 ;
  wire \numCh1_reg[55]_i_1_n_3 ;
  wire \numCh1_reg[55]_i_1_n_4 ;
  wire \numCh1_reg[55]_i_1_n_5 ;
  wire \numCh1_reg[55]_i_1_n_6 ;
  wire \numCh1_reg[55]_i_1_n_7 ;
  wire \numCh1_reg[59]_i_1_n_0 ;
  wire \numCh1_reg[59]_i_1_n_1 ;
  wire \numCh1_reg[59]_i_1_n_2 ;
  wire \numCh1_reg[59]_i_1_n_3 ;
  wire \numCh1_reg[59]_i_1_n_4 ;
  wire \numCh1_reg[59]_i_1_n_5 ;
  wire \numCh1_reg[59]_i_1_n_6 ;
  wire \numCh1_reg[59]_i_1_n_7 ;
  wire \numCh1_reg[63]_i_2_n_1 ;
  wire \numCh1_reg[63]_i_2_n_2 ;
  wire \numCh1_reg[63]_i_2_n_3 ;
  wire \numCh1_reg[63]_i_2_n_4 ;
  wire \numCh1_reg[63]_i_2_n_5 ;
  wire \numCh1_reg[63]_i_2_n_6 ;
  wire \numCh1_reg[63]_i_2_n_7 ;
  wire \numCh1_reg[7]_i_1_n_0 ;
  wire \numCh1_reg[7]_i_1_n_1 ;
  wire \numCh1_reg[7]_i_1_n_2 ;
  wire \numCh1_reg[7]_i_1_n_3 ;
  wire \numCh1_reg[7]_i_1_n_4 ;
  wire \numCh1_reg[7]_i_1_n_5 ;
  wire \numCh1_reg[7]_i_1_n_6 ;
  wire \numCh1_reg[7]_i_1_n_7 ;
  wire numCh2;
  wire \numCh2[3]_i_2_n_0 ;
  wire \numCh2_reg[11]_i_1_n_0 ;
  wire \numCh2_reg[11]_i_1_n_1 ;
  wire \numCh2_reg[11]_i_1_n_2 ;
  wire \numCh2_reg[11]_i_1_n_3 ;
  wire \numCh2_reg[11]_i_1_n_4 ;
  wire \numCh2_reg[11]_i_1_n_5 ;
  wire \numCh2_reg[11]_i_1_n_6 ;
  wire \numCh2_reg[11]_i_1_n_7 ;
  wire \numCh2_reg[15]_i_1_n_0 ;
  wire \numCh2_reg[15]_i_1_n_1 ;
  wire \numCh2_reg[15]_i_1_n_2 ;
  wire \numCh2_reg[15]_i_1_n_3 ;
  wire \numCh2_reg[15]_i_1_n_4 ;
  wire \numCh2_reg[15]_i_1_n_5 ;
  wire \numCh2_reg[15]_i_1_n_6 ;
  wire \numCh2_reg[15]_i_1_n_7 ;
  wire \numCh2_reg[19]_i_1_n_0 ;
  wire \numCh2_reg[19]_i_1_n_1 ;
  wire \numCh2_reg[19]_i_1_n_2 ;
  wire \numCh2_reg[19]_i_1_n_3 ;
  wire \numCh2_reg[19]_i_1_n_4 ;
  wire \numCh2_reg[19]_i_1_n_5 ;
  wire \numCh2_reg[19]_i_1_n_6 ;
  wire \numCh2_reg[19]_i_1_n_7 ;
  wire \numCh2_reg[23]_i_1_n_0 ;
  wire \numCh2_reg[23]_i_1_n_1 ;
  wire \numCh2_reg[23]_i_1_n_2 ;
  wire \numCh2_reg[23]_i_1_n_3 ;
  wire \numCh2_reg[23]_i_1_n_4 ;
  wire \numCh2_reg[23]_i_1_n_5 ;
  wire \numCh2_reg[23]_i_1_n_6 ;
  wire \numCh2_reg[23]_i_1_n_7 ;
  wire \numCh2_reg[27]_i_1_n_0 ;
  wire \numCh2_reg[27]_i_1_n_1 ;
  wire \numCh2_reg[27]_i_1_n_2 ;
  wire \numCh2_reg[27]_i_1_n_3 ;
  wire \numCh2_reg[27]_i_1_n_4 ;
  wire \numCh2_reg[27]_i_1_n_5 ;
  wire \numCh2_reg[27]_i_1_n_6 ;
  wire \numCh2_reg[27]_i_1_n_7 ;
  wire \numCh2_reg[31]_i_1_n_0 ;
  wire \numCh2_reg[31]_i_1_n_1 ;
  wire \numCh2_reg[31]_i_1_n_2 ;
  wire \numCh2_reg[31]_i_1_n_3 ;
  wire \numCh2_reg[31]_i_1_n_4 ;
  wire \numCh2_reg[31]_i_1_n_5 ;
  wire \numCh2_reg[31]_i_1_n_6 ;
  wire \numCh2_reg[31]_i_1_n_7 ;
  wire \numCh2_reg[35]_i_1_n_0 ;
  wire \numCh2_reg[35]_i_1_n_1 ;
  wire \numCh2_reg[35]_i_1_n_2 ;
  wire \numCh2_reg[35]_i_1_n_3 ;
  wire \numCh2_reg[35]_i_1_n_4 ;
  wire \numCh2_reg[35]_i_1_n_5 ;
  wire \numCh2_reg[35]_i_1_n_6 ;
  wire \numCh2_reg[35]_i_1_n_7 ;
  wire \numCh2_reg[39]_i_1_n_0 ;
  wire \numCh2_reg[39]_i_1_n_1 ;
  wire \numCh2_reg[39]_i_1_n_2 ;
  wire \numCh2_reg[39]_i_1_n_3 ;
  wire \numCh2_reg[39]_i_1_n_4 ;
  wire \numCh2_reg[39]_i_1_n_5 ;
  wire \numCh2_reg[39]_i_1_n_6 ;
  wire \numCh2_reg[39]_i_1_n_7 ;
  wire \numCh2_reg[3]_i_1_n_0 ;
  wire \numCh2_reg[3]_i_1_n_1 ;
  wire \numCh2_reg[3]_i_1_n_2 ;
  wire \numCh2_reg[3]_i_1_n_3 ;
  wire \numCh2_reg[3]_i_1_n_4 ;
  wire \numCh2_reg[3]_i_1_n_5 ;
  wire \numCh2_reg[3]_i_1_n_6 ;
  wire \numCh2_reg[3]_i_1_n_7 ;
  wire \numCh2_reg[43]_i_1_n_0 ;
  wire \numCh2_reg[43]_i_1_n_1 ;
  wire \numCh2_reg[43]_i_1_n_2 ;
  wire \numCh2_reg[43]_i_1_n_3 ;
  wire \numCh2_reg[43]_i_1_n_4 ;
  wire \numCh2_reg[43]_i_1_n_5 ;
  wire \numCh2_reg[43]_i_1_n_6 ;
  wire \numCh2_reg[43]_i_1_n_7 ;
  wire \numCh2_reg[47]_i_1_n_0 ;
  wire \numCh2_reg[47]_i_1_n_1 ;
  wire \numCh2_reg[47]_i_1_n_2 ;
  wire \numCh2_reg[47]_i_1_n_3 ;
  wire \numCh2_reg[47]_i_1_n_4 ;
  wire \numCh2_reg[47]_i_1_n_5 ;
  wire \numCh2_reg[47]_i_1_n_6 ;
  wire \numCh2_reg[47]_i_1_n_7 ;
  wire \numCh2_reg[51]_i_1_n_0 ;
  wire \numCh2_reg[51]_i_1_n_1 ;
  wire \numCh2_reg[51]_i_1_n_2 ;
  wire \numCh2_reg[51]_i_1_n_3 ;
  wire \numCh2_reg[51]_i_1_n_4 ;
  wire \numCh2_reg[51]_i_1_n_5 ;
  wire \numCh2_reg[51]_i_1_n_6 ;
  wire \numCh2_reg[51]_i_1_n_7 ;
  wire \numCh2_reg[55]_i_1_n_0 ;
  wire \numCh2_reg[55]_i_1_n_1 ;
  wire \numCh2_reg[55]_i_1_n_2 ;
  wire \numCh2_reg[55]_i_1_n_3 ;
  wire \numCh2_reg[55]_i_1_n_4 ;
  wire \numCh2_reg[55]_i_1_n_5 ;
  wire \numCh2_reg[55]_i_1_n_6 ;
  wire \numCh2_reg[55]_i_1_n_7 ;
  wire \numCh2_reg[59]_i_1_n_0 ;
  wire \numCh2_reg[59]_i_1_n_1 ;
  wire \numCh2_reg[59]_i_1_n_2 ;
  wire \numCh2_reg[59]_i_1_n_3 ;
  wire \numCh2_reg[59]_i_1_n_4 ;
  wire \numCh2_reg[59]_i_1_n_5 ;
  wire \numCh2_reg[59]_i_1_n_6 ;
  wire \numCh2_reg[59]_i_1_n_7 ;
  wire \numCh2_reg[63]_i_2_n_1 ;
  wire \numCh2_reg[63]_i_2_n_2 ;
  wire \numCh2_reg[63]_i_2_n_3 ;
  wire \numCh2_reg[63]_i_2_n_4 ;
  wire \numCh2_reg[63]_i_2_n_5 ;
  wire \numCh2_reg[63]_i_2_n_6 ;
  wire \numCh2_reg[63]_i_2_n_7 ;
  wire \numCh2_reg[7]_i_1_n_0 ;
  wire \numCh2_reg[7]_i_1_n_1 ;
  wire \numCh2_reg[7]_i_1_n_2 ;
  wire \numCh2_reg[7]_i_1_n_3 ;
  wire \numCh2_reg[7]_i_1_n_4 ;
  wire \numCh2_reg[7]_i_1_n_5 ;
  wire \numCh2_reg[7]_i_1_n_6 ;
  wire \numCh2_reg[7]_i_1_n_7 ;
  wire rst_n_i;
  wire select_i;
  wire [3:3]\NLW_numCh1_reg[63]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_numCh2_reg[63]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \numCh1[3]_i_2 
       (.I0(data_o_num1[0]),
        .O(\numCh1[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \numCh1[63]_i_1 
       (.I0(data_vd_i),
        .I1(select_i),
        .O(numCh1));
  LUT1 #(
    .INIT(2'h1)) 
    \numCh1[63]_i_3 
       (.I0(rst_n_i),
        .O(\numCh1[63]_i_3_n_0 ));
  FDCE \numCh1_reg[0] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[3]_i_1_n_7 ),
        .Q(data_o_num1[0]));
  FDCE \numCh1_reg[10] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[11]_i_1_n_5 ),
        .Q(data_o_num1[10]));
  FDCE \numCh1_reg[11] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[11]_i_1_n_4 ),
        .Q(data_o_num1[11]));
  CARRY4 \numCh1_reg[11]_i_1 
       (.CI(\numCh1_reg[7]_i_1_n_0 ),
        .CO({\numCh1_reg[11]_i_1_n_0 ,\numCh1_reg[11]_i_1_n_1 ,\numCh1_reg[11]_i_1_n_2 ,\numCh1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[11]_i_1_n_4 ,\numCh1_reg[11]_i_1_n_5 ,\numCh1_reg[11]_i_1_n_6 ,\numCh1_reg[11]_i_1_n_7 }),
        .S(data_o_num1[11:8]));
  FDCE \numCh1_reg[12] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[15]_i_1_n_7 ),
        .Q(data_o_num1[12]));
  FDCE \numCh1_reg[13] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[15]_i_1_n_6 ),
        .Q(data_o_num1[13]));
  FDCE \numCh1_reg[14] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[15]_i_1_n_5 ),
        .Q(data_o_num1[14]));
  FDCE \numCh1_reg[15] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[15]_i_1_n_4 ),
        .Q(data_o_num1[15]));
  CARRY4 \numCh1_reg[15]_i_1 
       (.CI(\numCh1_reg[11]_i_1_n_0 ),
        .CO({\numCh1_reg[15]_i_1_n_0 ,\numCh1_reg[15]_i_1_n_1 ,\numCh1_reg[15]_i_1_n_2 ,\numCh1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[15]_i_1_n_4 ,\numCh1_reg[15]_i_1_n_5 ,\numCh1_reg[15]_i_1_n_6 ,\numCh1_reg[15]_i_1_n_7 }),
        .S(data_o_num1[15:12]));
  FDCE \numCh1_reg[16] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[19]_i_1_n_7 ),
        .Q(data_o_num1[16]));
  FDCE \numCh1_reg[17] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[19]_i_1_n_6 ),
        .Q(data_o_num1[17]));
  FDCE \numCh1_reg[18] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[19]_i_1_n_5 ),
        .Q(data_o_num1[18]));
  FDCE \numCh1_reg[19] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[19]_i_1_n_4 ),
        .Q(data_o_num1[19]));
  CARRY4 \numCh1_reg[19]_i_1 
       (.CI(\numCh1_reg[15]_i_1_n_0 ),
        .CO({\numCh1_reg[19]_i_1_n_0 ,\numCh1_reg[19]_i_1_n_1 ,\numCh1_reg[19]_i_1_n_2 ,\numCh1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[19]_i_1_n_4 ,\numCh1_reg[19]_i_1_n_5 ,\numCh1_reg[19]_i_1_n_6 ,\numCh1_reg[19]_i_1_n_7 }),
        .S(data_o_num1[19:16]));
  FDCE \numCh1_reg[1] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[3]_i_1_n_6 ),
        .Q(data_o_num1[1]));
  FDCE \numCh1_reg[20] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[23]_i_1_n_7 ),
        .Q(data_o_num1[20]));
  FDCE \numCh1_reg[21] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[23]_i_1_n_6 ),
        .Q(data_o_num1[21]));
  FDCE \numCh1_reg[22] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[23]_i_1_n_5 ),
        .Q(data_o_num1[22]));
  FDCE \numCh1_reg[23] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[23]_i_1_n_4 ),
        .Q(data_o_num1[23]));
  CARRY4 \numCh1_reg[23]_i_1 
       (.CI(\numCh1_reg[19]_i_1_n_0 ),
        .CO({\numCh1_reg[23]_i_1_n_0 ,\numCh1_reg[23]_i_1_n_1 ,\numCh1_reg[23]_i_1_n_2 ,\numCh1_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[23]_i_1_n_4 ,\numCh1_reg[23]_i_1_n_5 ,\numCh1_reg[23]_i_1_n_6 ,\numCh1_reg[23]_i_1_n_7 }),
        .S(data_o_num1[23:20]));
  FDCE \numCh1_reg[24] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[27]_i_1_n_7 ),
        .Q(data_o_num1[24]));
  FDCE \numCh1_reg[25] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[27]_i_1_n_6 ),
        .Q(data_o_num1[25]));
  FDCE \numCh1_reg[26] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[27]_i_1_n_5 ),
        .Q(data_o_num1[26]));
  FDCE \numCh1_reg[27] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[27]_i_1_n_4 ),
        .Q(data_o_num1[27]));
  CARRY4 \numCh1_reg[27]_i_1 
       (.CI(\numCh1_reg[23]_i_1_n_0 ),
        .CO({\numCh1_reg[27]_i_1_n_0 ,\numCh1_reg[27]_i_1_n_1 ,\numCh1_reg[27]_i_1_n_2 ,\numCh1_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[27]_i_1_n_4 ,\numCh1_reg[27]_i_1_n_5 ,\numCh1_reg[27]_i_1_n_6 ,\numCh1_reg[27]_i_1_n_7 }),
        .S(data_o_num1[27:24]));
  FDCE \numCh1_reg[28] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[31]_i_1_n_7 ),
        .Q(data_o_num1[28]));
  FDCE \numCh1_reg[29] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[31]_i_1_n_6 ),
        .Q(data_o_num1[29]));
  FDCE \numCh1_reg[2] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[3]_i_1_n_5 ),
        .Q(data_o_num1[2]));
  FDCE \numCh1_reg[30] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[31]_i_1_n_5 ),
        .Q(data_o_num1[30]));
  FDCE \numCh1_reg[31] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[31]_i_1_n_4 ),
        .Q(data_o_num1[31]));
  CARRY4 \numCh1_reg[31]_i_1 
       (.CI(\numCh1_reg[27]_i_1_n_0 ),
        .CO({\numCh1_reg[31]_i_1_n_0 ,\numCh1_reg[31]_i_1_n_1 ,\numCh1_reg[31]_i_1_n_2 ,\numCh1_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[31]_i_1_n_4 ,\numCh1_reg[31]_i_1_n_5 ,\numCh1_reg[31]_i_1_n_6 ,\numCh1_reg[31]_i_1_n_7 }),
        .S(data_o_num1[31:28]));
  FDCE \numCh1_reg[32] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[35]_i_1_n_7 ),
        .Q(data_o_num1[32]));
  FDCE \numCh1_reg[33] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[35]_i_1_n_6 ),
        .Q(data_o_num1[33]));
  FDCE \numCh1_reg[34] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[35]_i_1_n_5 ),
        .Q(data_o_num1[34]));
  FDCE \numCh1_reg[35] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[35]_i_1_n_4 ),
        .Q(data_o_num1[35]));
  CARRY4 \numCh1_reg[35]_i_1 
       (.CI(\numCh1_reg[31]_i_1_n_0 ),
        .CO({\numCh1_reg[35]_i_1_n_0 ,\numCh1_reg[35]_i_1_n_1 ,\numCh1_reg[35]_i_1_n_2 ,\numCh1_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[35]_i_1_n_4 ,\numCh1_reg[35]_i_1_n_5 ,\numCh1_reg[35]_i_1_n_6 ,\numCh1_reg[35]_i_1_n_7 }),
        .S(data_o_num1[35:32]));
  FDCE \numCh1_reg[36] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[39]_i_1_n_7 ),
        .Q(data_o_num1[36]));
  FDCE \numCh1_reg[37] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[39]_i_1_n_6 ),
        .Q(data_o_num1[37]));
  FDCE \numCh1_reg[38] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[39]_i_1_n_5 ),
        .Q(data_o_num1[38]));
  FDCE \numCh1_reg[39] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[39]_i_1_n_4 ),
        .Q(data_o_num1[39]));
  CARRY4 \numCh1_reg[39]_i_1 
       (.CI(\numCh1_reg[35]_i_1_n_0 ),
        .CO({\numCh1_reg[39]_i_1_n_0 ,\numCh1_reg[39]_i_1_n_1 ,\numCh1_reg[39]_i_1_n_2 ,\numCh1_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[39]_i_1_n_4 ,\numCh1_reg[39]_i_1_n_5 ,\numCh1_reg[39]_i_1_n_6 ,\numCh1_reg[39]_i_1_n_7 }),
        .S(data_o_num1[39:36]));
  FDCE \numCh1_reg[3] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[3]_i_1_n_4 ),
        .Q(data_o_num1[3]));
  CARRY4 \numCh1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\numCh1_reg[3]_i_1_n_0 ,\numCh1_reg[3]_i_1_n_1 ,\numCh1_reg[3]_i_1_n_2 ,\numCh1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\numCh1_reg[3]_i_1_n_4 ,\numCh1_reg[3]_i_1_n_5 ,\numCh1_reg[3]_i_1_n_6 ,\numCh1_reg[3]_i_1_n_7 }),
        .S({data_o_num1[3:1],\numCh1[3]_i_2_n_0 }));
  FDCE \numCh1_reg[40] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[43]_i_1_n_7 ),
        .Q(data_o_num1[40]));
  FDCE \numCh1_reg[41] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[43]_i_1_n_6 ),
        .Q(data_o_num1[41]));
  FDCE \numCh1_reg[42] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[43]_i_1_n_5 ),
        .Q(data_o_num1[42]));
  FDCE \numCh1_reg[43] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[43]_i_1_n_4 ),
        .Q(data_o_num1[43]));
  CARRY4 \numCh1_reg[43]_i_1 
       (.CI(\numCh1_reg[39]_i_1_n_0 ),
        .CO({\numCh1_reg[43]_i_1_n_0 ,\numCh1_reg[43]_i_1_n_1 ,\numCh1_reg[43]_i_1_n_2 ,\numCh1_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[43]_i_1_n_4 ,\numCh1_reg[43]_i_1_n_5 ,\numCh1_reg[43]_i_1_n_6 ,\numCh1_reg[43]_i_1_n_7 }),
        .S(data_o_num1[43:40]));
  FDCE \numCh1_reg[44] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[47]_i_1_n_7 ),
        .Q(data_o_num1[44]));
  FDCE \numCh1_reg[45] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[47]_i_1_n_6 ),
        .Q(data_o_num1[45]));
  FDCE \numCh1_reg[46] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[47]_i_1_n_5 ),
        .Q(data_o_num1[46]));
  FDCE \numCh1_reg[47] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[47]_i_1_n_4 ),
        .Q(data_o_num1[47]));
  CARRY4 \numCh1_reg[47]_i_1 
       (.CI(\numCh1_reg[43]_i_1_n_0 ),
        .CO({\numCh1_reg[47]_i_1_n_0 ,\numCh1_reg[47]_i_1_n_1 ,\numCh1_reg[47]_i_1_n_2 ,\numCh1_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[47]_i_1_n_4 ,\numCh1_reg[47]_i_1_n_5 ,\numCh1_reg[47]_i_1_n_6 ,\numCh1_reg[47]_i_1_n_7 }),
        .S(data_o_num1[47:44]));
  FDCE \numCh1_reg[48] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[51]_i_1_n_7 ),
        .Q(data_o_num1[48]));
  FDCE \numCh1_reg[49] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[51]_i_1_n_6 ),
        .Q(data_o_num1[49]));
  FDCE \numCh1_reg[4] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[7]_i_1_n_7 ),
        .Q(data_o_num1[4]));
  FDCE \numCh1_reg[50] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[51]_i_1_n_5 ),
        .Q(data_o_num1[50]));
  FDCE \numCh1_reg[51] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[51]_i_1_n_4 ),
        .Q(data_o_num1[51]));
  CARRY4 \numCh1_reg[51]_i_1 
       (.CI(\numCh1_reg[47]_i_1_n_0 ),
        .CO({\numCh1_reg[51]_i_1_n_0 ,\numCh1_reg[51]_i_1_n_1 ,\numCh1_reg[51]_i_1_n_2 ,\numCh1_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[51]_i_1_n_4 ,\numCh1_reg[51]_i_1_n_5 ,\numCh1_reg[51]_i_1_n_6 ,\numCh1_reg[51]_i_1_n_7 }),
        .S(data_o_num1[51:48]));
  FDCE \numCh1_reg[52] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[55]_i_1_n_7 ),
        .Q(data_o_num1[52]));
  FDCE \numCh1_reg[53] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[55]_i_1_n_6 ),
        .Q(data_o_num1[53]));
  FDCE \numCh1_reg[54] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[55]_i_1_n_5 ),
        .Q(data_o_num1[54]));
  FDCE \numCh1_reg[55] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[55]_i_1_n_4 ),
        .Q(data_o_num1[55]));
  CARRY4 \numCh1_reg[55]_i_1 
       (.CI(\numCh1_reg[51]_i_1_n_0 ),
        .CO({\numCh1_reg[55]_i_1_n_0 ,\numCh1_reg[55]_i_1_n_1 ,\numCh1_reg[55]_i_1_n_2 ,\numCh1_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[55]_i_1_n_4 ,\numCh1_reg[55]_i_1_n_5 ,\numCh1_reg[55]_i_1_n_6 ,\numCh1_reg[55]_i_1_n_7 }),
        .S(data_o_num1[55:52]));
  FDCE \numCh1_reg[56] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[59]_i_1_n_7 ),
        .Q(data_o_num1[56]));
  FDCE \numCh1_reg[57] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[59]_i_1_n_6 ),
        .Q(data_o_num1[57]));
  FDCE \numCh1_reg[58] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[59]_i_1_n_5 ),
        .Q(data_o_num1[58]));
  FDCE \numCh1_reg[59] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[59]_i_1_n_4 ),
        .Q(data_o_num1[59]));
  CARRY4 \numCh1_reg[59]_i_1 
       (.CI(\numCh1_reg[55]_i_1_n_0 ),
        .CO({\numCh1_reg[59]_i_1_n_0 ,\numCh1_reg[59]_i_1_n_1 ,\numCh1_reg[59]_i_1_n_2 ,\numCh1_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[59]_i_1_n_4 ,\numCh1_reg[59]_i_1_n_5 ,\numCh1_reg[59]_i_1_n_6 ,\numCh1_reg[59]_i_1_n_7 }),
        .S(data_o_num1[59:56]));
  FDCE \numCh1_reg[5] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[7]_i_1_n_6 ),
        .Q(data_o_num1[5]));
  FDCE \numCh1_reg[60] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[63]_i_2_n_7 ),
        .Q(data_o_num1[60]));
  FDCE \numCh1_reg[61] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[63]_i_2_n_6 ),
        .Q(data_o_num1[61]));
  FDCE \numCh1_reg[62] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[63]_i_2_n_5 ),
        .Q(data_o_num1[62]));
  FDCE \numCh1_reg[63] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[63]_i_2_n_4 ),
        .Q(data_o_num1[63]));
  CARRY4 \numCh1_reg[63]_i_2 
       (.CI(\numCh1_reg[59]_i_1_n_0 ),
        .CO({\NLW_numCh1_reg[63]_i_2_CO_UNCONNECTED [3],\numCh1_reg[63]_i_2_n_1 ,\numCh1_reg[63]_i_2_n_2 ,\numCh1_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[63]_i_2_n_4 ,\numCh1_reg[63]_i_2_n_5 ,\numCh1_reg[63]_i_2_n_6 ,\numCh1_reg[63]_i_2_n_7 }),
        .S(data_o_num1[63:60]));
  FDCE \numCh1_reg[6] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[7]_i_1_n_5 ),
        .Q(data_o_num1[6]));
  FDCE \numCh1_reg[7] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[7]_i_1_n_4 ),
        .Q(data_o_num1[7]));
  CARRY4 \numCh1_reg[7]_i_1 
       (.CI(\numCh1_reg[3]_i_1_n_0 ),
        .CO({\numCh1_reg[7]_i_1_n_0 ,\numCh1_reg[7]_i_1_n_1 ,\numCh1_reg[7]_i_1_n_2 ,\numCh1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh1_reg[7]_i_1_n_4 ,\numCh1_reg[7]_i_1_n_5 ,\numCh1_reg[7]_i_1_n_6 ,\numCh1_reg[7]_i_1_n_7 }),
        .S(data_o_num1[7:4]));
  FDCE \numCh1_reg[8] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[11]_i_1_n_7 ),
        .Q(data_o_num1[8]));
  FDCE \numCh1_reg[9] 
       (.C(clk_i),
        .CE(numCh1),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh1_reg[11]_i_1_n_6 ),
        .Q(data_o_num1[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \numCh2[3]_i_2 
       (.I0(data_o_num2[0]),
        .O(\numCh2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \numCh2[63]_i_1 
       (.I0(data_vd_i),
        .I1(select_i),
        .O(numCh2));
  FDCE \numCh2_reg[0] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[3]_i_1_n_7 ),
        .Q(data_o_num2[0]));
  FDCE \numCh2_reg[10] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[11]_i_1_n_5 ),
        .Q(data_o_num2[10]));
  FDCE \numCh2_reg[11] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[11]_i_1_n_4 ),
        .Q(data_o_num2[11]));
  CARRY4 \numCh2_reg[11]_i_1 
       (.CI(\numCh2_reg[7]_i_1_n_0 ),
        .CO({\numCh2_reg[11]_i_1_n_0 ,\numCh2_reg[11]_i_1_n_1 ,\numCh2_reg[11]_i_1_n_2 ,\numCh2_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[11]_i_1_n_4 ,\numCh2_reg[11]_i_1_n_5 ,\numCh2_reg[11]_i_1_n_6 ,\numCh2_reg[11]_i_1_n_7 }),
        .S(data_o_num2[11:8]));
  FDCE \numCh2_reg[12] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[15]_i_1_n_7 ),
        .Q(data_o_num2[12]));
  FDCE \numCh2_reg[13] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[15]_i_1_n_6 ),
        .Q(data_o_num2[13]));
  FDCE \numCh2_reg[14] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[15]_i_1_n_5 ),
        .Q(data_o_num2[14]));
  FDCE \numCh2_reg[15] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[15]_i_1_n_4 ),
        .Q(data_o_num2[15]));
  CARRY4 \numCh2_reg[15]_i_1 
       (.CI(\numCh2_reg[11]_i_1_n_0 ),
        .CO({\numCh2_reg[15]_i_1_n_0 ,\numCh2_reg[15]_i_1_n_1 ,\numCh2_reg[15]_i_1_n_2 ,\numCh2_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[15]_i_1_n_4 ,\numCh2_reg[15]_i_1_n_5 ,\numCh2_reg[15]_i_1_n_6 ,\numCh2_reg[15]_i_1_n_7 }),
        .S(data_o_num2[15:12]));
  FDCE \numCh2_reg[16] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[19]_i_1_n_7 ),
        .Q(data_o_num2[16]));
  FDCE \numCh2_reg[17] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[19]_i_1_n_6 ),
        .Q(data_o_num2[17]));
  FDCE \numCh2_reg[18] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[19]_i_1_n_5 ),
        .Q(data_o_num2[18]));
  FDCE \numCh2_reg[19] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[19]_i_1_n_4 ),
        .Q(data_o_num2[19]));
  CARRY4 \numCh2_reg[19]_i_1 
       (.CI(\numCh2_reg[15]_i_1_n_0 ),
        .CO({\numCh2_reg[19]_i_1_n_0 ,\numCh2_reg[19]_i_1_n_1 ,\numCh2_reg[19]_i_1_n_2 ,\numCh2_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[19]_i_1_n_4 ,\numCh2_reg[19]_i_1_n_5 ,\numCh2_reg[19]_i_1_n_6 ,\numCh2_reg[19]_i_1_n_7 }),
        .S(data_o_num2[19:16]));
  FDCE \numCh2_reg[1] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[3]_i_1_n_6 ),
        .Q(data_o_num2[1]));
  FDCE \numCh2_reg[20] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[23]_i_1_n_7 ),
        .Q(data_o_num2[20]));
  FDCE \numCh2_reg[21] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[23]_i_1_n_6 ),
        .Q(data_o_num2[21]));
  FDCE \numCh2_reg[22] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[23]_i_1_n_5 ),
        .Q(data_o_num2[22]));
  FDCE \numCh2_reg[23] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[23]_i_1_n_4 ),
        .Q(data_o_num2[23]));
  CARRY4 \numCh2_reg[23]_i_1 
       (.CI(\numCh2_reg[19]_i_1_n_0 ),
        .CO({\numCh2_reg[23]_i_1_n_0 ,\numCh2_reg[23]_i_1_n_1 ,\numCh2_reg[23]_i_1_n_2 ,\numCh2_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[23]_i_1_n_4 ,\numCh2_reg[23]_i_1_n_5 ,\numCh2_reg[23]_i_1_n_6 ,\numCh2_reg[23]_i_1_n_7 }),
        .S(data_o_num2[23:20]));
  FDCE \numCh2_reg[24] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[27]_i_1_n_7 ),
        .Q(data_o_num2[24]));
  FDCE \numCh2_reg[25] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[27]_i_1_n_6 ),
        .Q(data_o_num2[25]));
  FDCE \numCh2_reg[26] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[27]_i_1_n_5 ),
        .Q(data_o_num2[26]));
  FDCE \numCh2_reg[27] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[27]_i_1_n_4 ),
        .Q(data_o_num2[27]));
  CARRY4 \numCh2_reg[27]_i_1 
       (.CI(\numCh2_reg[23]_i_1_n_0 ),
        .CO({\numCh2_reg[27]_i_1_n_0 ,\numCh2_reg[27]_i_1_n_1 ,\numCh2_reg[27]_i_1_n_2 ,\numCh2_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[27]_i_1_n_4 ,\numCh2_reg[27]_i_1_n_5 ,\numCh2_reg[27]_i_1_n_6 ,\numCh2_reg[27]_i_1_n_7 }),
        .S(data_o_num2[27:24]));
  FDCE \numCh2_reg[28] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[31]_i_1_n_7 ),
        .Q(data_o_num2[28]));
  FDCE \numCh2_reg[29] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[31]_i_1_n_6 ),
        .Q(data_o_num2[29]));
  FDCE \numCh2_reg[2] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[3]_i_1_n_5 ),
        .Q(data_o_num2[2]));
  FDCE \numCh2_reg[30] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[31]_i_1_n_5 ),
        .Q(data_o_num2[30]));
  FDCE \numCh2_reg[31] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[31]_i_1_n_4 ),
        .Q(data_o_num2[31]));
  CARRY4 \numCh2_reg[31]_i_1 
       (.CI(\numCh2_reg[27]_i_1_n_0 ),
        .CO({\numCh2_reg[31]_i_1_n_0 ,\numCh2_reg[31]_i_1_n_1 ,\numCh2_reg[31]_i_1_n_2 ,\numCh2_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[31]_i_1_n_4 ,\numCh2_reg[31]_i_1_n_5 ,\numCh2_reg[31]_i_1_n_6 ,\numCh2_reg[31]_i_1_n_7 }),
        .S(data_o_num2[31:28]));
  FDCE \numCh2_reg[32] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[35]_i_1_n_7 ),
        .Q(data_o_num2[32]));
  FDCE \numCh2_reg[33] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[35]_i_1_n_6 ),
        .Q(data_o_num2[33]));
  FDCE \numCh2_reg[34] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[35]_i_1_n_5 ),
        .Q(data_o_num2[34]));
  FDCE \numCh2_reg[35] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[35]_i_1_n_4 ),
        .Q(data_o_num2[35]));
  CARRY4 \numCh2_reg[35]_i_1 
       (.CI(\numCh2_reg[31]_i_1_n_0 ),
        .CO({\numCh2_reg[35]_i_1_n_0 ,\numCh2_reg[35]_i_1_n_1 ,\numCh2_reg[35]_i_1_n_2 ,\numCh2_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[35]_i_1_n_4 ,\numCh2_reg[35]_i_1_n_5 ,\numCh2_reg[35]_i_1_n_6 ,\numCh2_reg[35]_i_1_n_7 }),
        .S(data_o_num2[35:32]));
  FDCE \numCh2_reg[36] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[39]_i_1_n_7 ),
        .Q(data_o_num2[36]));
  FDCE \numCh2_reg[37] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[39]_i_1_n_6 ),
        .Q(data_o_num2[37]));
  FDCE \numCh2_reg[38] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[39]_i_1_n_5 ),
        .Q(data_o_num2[38]));
  FDCE \numCh2_reg[39] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[39]_i_1_n_4 ),
        .Q(data_o_num2[39]));
  CARRY4 \numCh2_reg[39]_i_1 
       (.CI(\numCh2_reg[35]_i_1_n_0 ),
        .CO({\numCh2_reg[39]_i_1_n_0 ,\numCh2_reg[39]_i_1_n_1 ,\numCh2_reg[39]_i_1_n_2 ,\numCh2_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[39]_i_1_n_4 ,\numCh2_reg[39]_i_1_n_5 ,\numCh2_reg[39]_i_1_n_6 ,\numCh2_reg[39]_i_1_n_7 }),
        .S(data_o_num2[39:36]));
  FDCE \numCh2_reg[3] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[3]_i_1_n_4 ),
        .Q(data_o_num2[3]));
  CARRY4 \numCh2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\numCh2_reg[3]_i_1_n_0 ,\numCh2_reg[3]_i_1_n_1 ,\numCh2_reg[3]_i_1_n_2 ,\numCh2_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\numCh2_reg[3]_i_1_n_4 ,\numCh2_reg[3]_i_1_n_5 ,\numCh2_reg[3]_i_1_n_6 ,\numCh2_reg[3]_i_1_n_7 }),
        .S({data_o_num2[3:1],\numCh2[3]_i_2_n_0 }));
  FDCE \numCh2_reg[40] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[43]_i_1_n_7 ),
        .Q(data_o_num2[40]));
  FDCE \numCh2_reg[41] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[43]_i_1_n_6 ),
        .Q(data_o_num2[41]));
  FDCE \numCh2_reg[42] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[43]_i_1_n_5 ),
        .Q(data_o_num2[42]));
  FDCE \numCh2_reg[43] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[43]_i_1_n_4 ),
        .Q(data_o_num2[43]));
  CARRY4 \numCh2_reg[43]_i_1 
       (.CI(\numCh2_reg[39]_i_1_n_0 ),
        .CO({\numCh2_reg[43]_i_1_n_0 ,\numCh2_reg[43]_i_1_n_1 ,\numCh2_reg[43]_i_1_n_2 ,\numCh2_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[43]_i_1_n_4 ,\numCh2_reg[43]_i_1_n_5 ,\numCh2_reg[43]_i_1_n_6 ,\numCh2_reg[43]_i_1_n_7 }),
        .S(data_o_num2[43:40]));
  FDCE \numCh2_reg[44] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[47]_i_1_n_7 ),
        .Q(data_o_num2[44]));
  FDCE \numCh2_reg[45] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[47]_i_1_n_6 ),
        .Q(data_o_num2[45]));
  FDCE \numCh2_reg[46] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[47]_i_1_n_5 ),
        .Q(data_o_num2[46]));
  FDCE \numCh2_reg[47] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[47]_i_1_n_4 ),
        .Q(data_o_num2[47]));
  CARRY4 \numCh2_reg[47]_i_1 
       (.CI(\numCh2_reg[43]_i_1_n_0 ),
        .CO({\numCh2_reg[47]_i_1_n_0 ,\numCh2_reg[47]_i_1_n_1 ,\numCh2_reg[47]_i_1_n_2 ,\numCh2_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[47]_i_1_n_4 ,\numCh2_reg[47]_i_1_n_5 ,\numCh2_reg[47]_i_1_n_6 ,\numCh2_reg[47]_i_1_n_7 }),
        .S(data_o_num2[47:44]));
  FDCE \numCh2_reg[48] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[51]_i_1_n_7 ),
        .Q(data_o_num2[48]));
  FDCE \numCh2_reg[49] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[51]_i_1_n_6 ),
        .Q(data_o_num2[49]));
  FDCE \numCh2_reg[4] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[7]_i_1_n_7 ),
        .Q(data_o_num2[4]));
  FDCE \numCh2_reg[50] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[51]_i_1_n_5 ),
        .Q(data_o_num2[50]));
  FDCE \numCh2_reg[51] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[51]_i_1_n_4 ),
        .Q(data_o_num2[51]));
  CARRY4 \numCh2_reg[51]_i_1 
       (.CI(\numCh2_reg[47]_i_1_n_0 ),
        .CO({\numCh2_reg[51]_i_1_n_0 ,\numCh2_reg[51]_i_1_n_1 ,\numCh2_reg[51]_i_1_n_2 ,\numCh2_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[51]_i_1_n_4 ,\numCh2_reg[51]_i_1_n_5 ,\numCh2_reg[51]_i_1_n_6 ,\numCh2_reg[51]_i_1_n_7 }),
        .S(data_o_num2[51:48]));
  FDCE \numCh2_reg[52] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[55]_i_1_n_7 ),
        .Q(data_o_num2[52]));
  FDCE \numCh2_reg[53] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[55]_i_1_n_6 ),
        .Q(data_o_num2[53]));
  FDCE \numCh2_reg[54] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[55]_i_1_n_5 ),
        .Q(data_o_num2[54]));
  FDCE \numCh2_reg[55] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[55]_i_1_n_4 ),
        .Q(data_o_num2[55]));
  CARRY4 \numCh2_reg[55]_i_1 
       (.CI(\numCh2_reg[51]_i_1_n_0 ),
        .CO({\numCh2_reg[55]_i_1_n_0 ,\numCh2_reg[55]_i_1_n_1 ,\numCh2_reg[55]_i_1_n_2 ,\numCh2_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[55]_i_1_n_4 ,\numCh2_reg[55]_i_1_n_5 ,\numCh2_reg[55]_i_1_n_6 ,\numCh2_reg[55]_i_1_n_7 }),
        .S(data_o_num2[55:52]));
  FDCE \numCh2_reg[56] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[59]_i_1_n_7 ),
        .Q(data_o_num2[56]));
  FDCE \numCh2_reg[57] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[59]_i_1_n_6 ),
        .Q(data_o_num2[57]));
  FDCE \numCh2_reg[58] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[59]_i_1_n_5 ),
        .Q(data_o_num2[58]));
  FDCE \numCh2_reg[59] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[59]_i_1_n_4 ),
        .Q(data_o_num2[59]));
  CARRY4 \numCh2_reg[59]_i_1 
       (.CI(\numCh2_reg[55]_i_1_n_0 ),
        .CO({\numCh2_reg[59]_i_1_n_0 ,\numCh2_reg[59]_i_1_n_1 ,\numCh2_reg[59]_i_1_n_2 ,\numCh2_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[59]_i_1_n_4 ,\numCh2_reg[59]_i_1_n_5 ,\numCh2_reg[59]_i_1_n_6 ,\numCh2_reg[59]_i_1_n_7 }),
        .S(data_o_num2[59:56]));
  FDCE \numCh2_reg[5] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[7]_i_1_n_6 ),
        .Q(data_o_num2[5]));
  FDCE \numCh2_reg[60] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[63]_i_2_n_7 ),
        .Q(data_o_num2[60]));
  FDCE \numCh2_reg[61] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[63]_i_2_n_6 ),
        .Q(data_o_num2[61]));
  FDCE \numCh2_reg[62] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[63]_i_2_n_5 ),
        .Q(data_o_num2[62]));
  FDCE \numCh2_reg[63] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[63]_i_2_n_4 ),
        .Q(data_o_num2[63]));
  CARRY4 \numCh2_reg[63]_i_2 
       (.CI(\numCh2_reg[59]_i_1_n_0 ),
        .CO({\NLW_numCh2_reg[63]_i_2_CO_UNCONNECTED [3],\numCh2_reg[63]_i_2_n_1 ,\numCh2_reg[63]_i_2_n_2 ,\numCh2_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[63]_i_2_n_4 ,\numCh2_reg[63]_i_2_n_5 ,\numCh2_reg[63]_i_2_n_6 ,\numCh2_reg[63]_i_2_n_7 }),
        .S(data_o_num2[63:60]));
  FDCE \numCh2_reg[6] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[7]_i_1_n_5 ),
        .Q(data_o_num2[6]));
  FDCE \numCh2_reg[7] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[7]_i_1_n_4 ),
        .Q(data_o_num2[7]));
  CARRY4 \numCh2_reg[7]_i_1 
       (.CI(\numCh2_reg[3]_i_1_n_0 ),
        .CO({\numCh2_reg[7]_i_1_n_0 ,\numCh2_reg[7]_i_1_n_1 ,\numCh2_reg[7]_i_1_n_2 ,\numCh2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\numCh2_reg[7]_i_1_n_4 ,\numCh2_reg[7]_i_1_n_5 ,\numCh2_reg[7]_i_1_n_6 ,\numCh2_reg[7]_i_1_n_7 }),
        .S(data_o_num2[7:4]));
  FDCE \numCh2_reg[8] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[11]_i_1_n_7 ),
        .Q(data_o_num2[8]));
  FDCE \numCh2_reg[9] 
       (.C(clk_i),
        .CE(numCh2),
        .CLR(\numCh1[63]_i_3_n_0 ),
        .D(\numCh2_reg[11]_i_1_n_6 ),
        .Q(data_o_num2[9]));
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
