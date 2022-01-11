// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:38:05 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_SPI_Master_With_Sing_0_2/brd_SPI_Master_With_Sing_0_2_sim_netlist.v
// Design      : brd_SPI_Master_With_Sing_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_SPI_Master_With_Sing_0_2,SPI_Master_With_Single_CS,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SPI_Master_With_Single_CS,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_SPI_Master_With_Sing_0_2
   (i_Rst_L,
    i_Clk,
    i_TX_Count,
    i_TX_Byte,
    i_TX_DV,
    o_TX_Ready,
    o_RX_Count,
    o_RX_DV,
    o_RX_Byte,
    w_Master_Ready_do,
    r_RX_Bit_Count_do,
    r_TX_Bit_Count_do,
    o_SPI_Clk,
    i_SPI_MISO,
    o_SPI_MOSI,
    o_SPI_CS_n);
  input i_Rst_L;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_Clk, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input i_Clk;
  input [2:0]i_TX_Count;
  input [47:0]i_TX_Byte;
  input i_TX_DV;
  output o_TX_Ready;
  output [1:0]o_RX_Count;
  output o_RX_DV;
  output [47:0]o_RX_Byte;
  output w_Master_Ready_do;
  output [5:0]r_RX_Bit_Count_do;
  output [5:0]r_TX_Bit_Count_do;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 o_SPI_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME o_SPI_Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN brd_SPI_Master_With_Sing_0_2_o_SPI_Clk" *) output o_SPI_Clk;
  input i_SPI_MISO;
  output o_SPI_MOSI;
  output o_SPI_CS_n;

  wire i_Clk;
  wire i_Rst_L;
  wire i_SPI_MISO;
  wire [47:0]i_TX_Byte;
  wire [2:0]i_TX_Count;
  wire i_TX_DV;
  wire [47:0]o_RX_Byte;
  wire [1:0]o_RX_Count;
  wire o_RX_DV;
  wire o_SPI_CS_n;
  wire o_SPI_Clk;
  wire o_SPI_MOSI;
  wire o_TX_Ready;
  wire [5:0]r_RX_Bit_Count_do;
  wire [5:0]r_TX_Bit_Count_do;
  wire w_Master_Ready_do;

  brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS U0
       (.i_Clk(i_Clk),
        .i_Rst_L(i_Rst_L),
        .i_SPI_MISO(i_SPI_MISO),
        .i_TX_Byte(i_TX_Byte),
        .i_TX_Count(i_TX_Count),
        .i_TX_DV(i_TX_DV),
        .o_RX_Byte(o_RX_Byte),
        .o_RX_Count(o_RX_Count),
        .o_RX_DV(o_RX_DV),
        .o_SPI_CS_n(o_SPI_CS_n),
        .o_SPI_Clk(o_SPI_Clk),
        .o_SPI_MOSI(o_SPI_MOSI),
        .o_TX_Ready(o_TX_Ready),
        .r_RX_Bit_Count_do(r_RX_Bit_Count_do),
        .r_TX_Bit_Count_do(r_TX_Bit_Count_do),
        .w_Master_Ready_do(w_Master_Ready_do));
endmodule

(* ORIG_REF_NAME = "SPI_Master" *) 
module brd_SPI_Master_With_Sing_0_2_SPI_Master
   (w_Master_Ready_do,
    o_TX_Ready_reg_0,
    o_RX_DV,
    o_SPI_Clk,
    o_SPI_MOSI,
    Q,
    \FSM_onehot_r_SM_CS_reg[2] ,
    \FSM_onehot_r_SM_CS_reg[1] ,
    \FSM_onehot_r_SM_CS_reg[0] ,
    r_TX_Count_0,
    \r_TX_Bit_Count_do[5] ,
    o_TX_Ready,
    r_CS_n_reg,
    o_RX_Byte,
    i_Clk,
    i_TX_DV,
    out,
    r_CS_n_reg_0,
    in0,
    r_SM_CS1__2,
    r_CS_Inactive_Count,
    i_Rst_L,
    i_SPI_MISO,
    i_TX_Byte);
  output w_Master_Ready_do;
  output o_TX_Ready_reg_0;
  output o_RX_DV;
  output o_SPI_Clk;
  output o_SPI_MOSI;
  output [5:0]Q;
  output \FSM_onehot_r_SM_CS_reg[2] ;
  output \FSM_onehot_r_SM_CS_reg[1] ;
  output \FSM_onehot_r_SM_CS_reg[0] ;
  output r_TX_Count_0;
  output [5:0]\r_TX_Bit_Count_do[5] ;
  output o_TX_Ready;
  output r_CS_n_reg;
  output [47:0]o_RX_Byte;
  input i_Clk;
  input i_TX_DV;
  input [2:0]out;
  input r_CS_n_reg_0;
  input [2:0]in0;
  input r_SM_CS1__2;
  input [-1:0]r_CS_Inactive_Count;
  input i_Rst_L;
  input i_SPI_MISO;
  input [47:0]i_TX_Byte;

  wire \FSM_onehot_r_SM_CS[2]_i_2_n_0 ;
  wire \FSM_onehot_r_SM_CS_reg[0] ;
  wire \FSM_onehot_r_SM_CS_reg[1] ;
  wire \FSM_onehot_r_SM_CS_reg[2] ;
  wire [5:0]Q;
  wire i_Clk;
  wire i_Rst_L;
  wire i_SPI_MISO;
  wire [47:0]i_TX_Byte;
  wire i_TX_DV;
  wire [2:0]in0;
  wire [47:0]o_RX_Byte;
  wire \o_RX_Byte[0]_i_1_n_0 ;
  wire \o_RX_Byte[10]_i_1_n_0 ;
  wire \o_RX_Byte[11]_i_1_n_0 ;
  wire \o_RX_Byte[12]_i_1_n_0 ;
  wire \o_RX_Byte[13]_i_1_n_0 ;
  wire \o_RX_Byte[14]_i_1_n_0 ;
  wire \o_RX_Byte[15]_i_1_n_0 ;
  wire \o_RX_Byte[15]_i_2_n_0 ;
  wire \o_RX_Byte[16]_i_1_n_0 ;
  wire \o_RX_Byte[17]_i_1_n_0 ;
  wire \o_RX_Byte[18]_i_1_n_0 ;
  wire \o_RX_Byte[19]_i_1_n_0 ;
  wire \o_RX_Byte[1]_i_1_n_0 ;
  wire \o_RX_Byte[20]_i_1_n_0 ;
  wire \o_RX_Byte[21]_i_1_n_0 ;
  wire \o_RX_Byte[22]_i_1_n_0 ;
  wire \o_RX_Byte[23]_i_1_n_0 ;
  wire \o_RX_Byte[23]_i_2_n_0 ;
  wire \o_RX_Byte[24]_i_1_n_0 ;
  wire \o_RX_Byte[25]_i_1_n_0 ;
  wire \o_RX_Byte[26]_i_1_n_0 ;
  wire \o_RX_Byte[27]_i_1_n_0 ;
  wire \o_RX_Byte[28]_i_1_n_0 ;
  wire \o_RX_Byte[29]_i_1_n_0 ;
  wire \o_RX_Byte[2]_i_1_n_0 ;
  wire \o_RX_Byte[30]_i_1_n_0 ;
  wire \o_RX_Byte[31]_i_1_n_0 ;
  wire \o_RX_Byte[31]_i_2_n_0 ;
  wire \o_RX_Byte[32]_i_1_n_0 ;
  wire \o_RX_Byte[33]_i_1_n_0 ;
  wire \o_RX_Byte[34]_i_1_n_0 ;
  wire \o_RX_Byte[35]_i_1_n_0 ;
  wire \o_RX_Byte[36]_i_1_n_0 ;
  wire \o_RX_Byte[37]_i_1_n_0 ;
  wire \o_RX_Byte[38]_i_1_n_0 ;
  wire \o_RX_Byte[39]_i_1_n_0 ;
  wire \o_RX_Byte[39]_i_2_n_0 ;
  wire \o_RX_Byte[3]_i_1_n_0 ;
  wire \o_RX_Byte[40]_i_1_n_0 ;
  wire \o_RX_Byte[40]_i_2_n_0 ;
  wire \o_RX_Byte[41]_i_1_n_0 ;
  wire \o_RX_Byte[41]_i_2_n_0 ;
  wire \o_RX_Byte[42]_i_1_n_0 ;
  wire \o_RX_Byte[42]_i_2_n_0 ;
  wire \o_RX_Byte[43]_i_1_n_0 ;
  wire \o_RX_Byte[43]_i_2_n_0 ;
  wire \o_RX_Byte[44]_i_1_n_0 ;
  wire \o_RX_Byte[44]_i_2_n_0 ;
  wire \o_RX_Byte[45]_i_1_n_0 ;
  wire \o_RX_Byte[45]_i_2_n_0 ;
  wire \o_RX_Byte[46]_i_1_n_0 ;
  wire \o_RX_Byte[46]_i_2_n_0 ;
  wire \o_RX_Byte[47]_i_1_n_0 ;
  wire \o_RX_Byte[47]_i_2_n_0 ;
  wire \o_RX_Byte[47]_i_3_n_0 ;
  wire \o_RX_Byte[4]_i_1_n_0 ;
  wire \o_RX_Byte[5]_i_1_n_0 ;
  wire \o_RX_Byte[6]_i_1_n_0 ;
  wire \o_RX_Byte[7]_i_1_n_0 ;
  wire \o_RX_Byte[7]_i_2_n_0 ;
  wire \o_RX_Byte[8]_i_1_n_0 ;
  wire \o_RX_Byte[9]_i_1_n_0 ;
  wire o_RX_DV;
  wire o_RX_DV5_out;
  wire o_RX_DV_i_3_n_0;
  wire o_SPI_Clk;
  wire o_SPI_MOSI;
  wire o_SPI_MOSI_i_12_n_0;
  wire o_SPI_MOSI_i_13_n_0;
  wire o_SPI_MOSI_i_14_n_0;
  wire o_SPI_MOSI_i_15_n_0;
  wire o_SPI_MOSI_i_16_n_0;
  wire o_SPI_MOSI_i_17_n_0;
  wire o_SPI_MOSI_i_18_n_0;
  wire o_SPI_MOSI_i_19_n_0;
  wire o_SPI_MOSI_i_1_n_0;
  wire o_SPI_MOSI_i_20_n_0;
  wire o_SPI_MOSI_i_21_n_0;
  wire o_SPI_MOSI_i_22_n_0;
  wire o_SPI_MOSI_i_23_n_0;
  wire o_SPI_MOSI_i_2_n_0;
  wire o_SPI_MOSI_reg_i_10_n_0;
  wire o_SPI_MOSI_reg_i_11_n_0;
  wire o_SPI_MOSI_reg_i_3_n_0;
  wire o_SPI_MOSI_reg_i_4_n_0;
  wire o_SPI_MOSI_reg_i_5_n_0;
  wire o_SPI_MOSI_reg_i_6_n_0;
  wire o_SPI_MOSI_reg_i_7_n_0;
  wire o_SPI_MOSI_reg_i_8_n_0;
  wire o_SPI_MOSI_reg_i_9_n_0;
  wire o_TX_Ready;
  wire o_TX_Ready1__5;
  wire o_TX_Ready_i_1_n_0;
  wire o_TX_Ready_i_3_n_0;
  wire o_TX_Ready_reg_0;
  wire [2:0]out;
  wire [-1:0]r_CS_Inactive_Count;
  wire r_CS_n_reg;
  wire r_CS_n_reg_0;
  wire r_Leading_Edge;
  wire r_Leading_Edge6_in;
  wire r_Leading_Edge7_out;
  wire \r_RX_Bit_Count[0]_i_1_n_0 ;
  wire \r_RX_Bit_Count[1]_i_1_n_0 ;
  wire \r_RX_Bit_Count[2]_i_1_n_0 ;
  wire \r_RX_Bit_Count[3]_i_1_n_0 ;
  wire \r_RX_Bit_Count[4]_i_1_n_0 ;
  wire \r_RX_Bit_Count[5]_i_1_n_0 ;
  wire \r_RX_Bit_Count[5]_i_2_n_0 ;
  wire \r_RX_Bit_Count[5]_i_3_n_0 ;
  wire r_SM_CS1__2;
  wire r_SPI_Clk;
  wire [4:1]r_SPI_Clk_Count;
  wire \r_SPI_Clk_Count[0]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[4]_i_1_n_0 ;
  wire \r_SPI_Clk_Count_reg_n_0_[0] ;
  wire \r_SPI_Clk_Count_reg_n_0_[1] ;
  wire \r_SPI_Clk_Count_reg_n_0_[2] ;
  wire \r_SPI_Clk_Count_reg_n_0_[3] ;
  wire \r_SPI_Clk_Count_reg_n_0_[4] ;
  wire \r_SPI_Clk_Edges[0]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[1]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[2]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[3]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[4]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[5]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[5]_i_2_n_0 ;
  wire \r_SPI_Clk_Edges[6]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[7]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[7]_i_2_n_0 ;
  wire \r_SPI_Clk_Edges[7]_i_3_n_0 ;
  wire \r_SPI_Clk_Edges[7]_i_4_n_0 ;
  wire [7:0]r_SPI_Clk_Edges_reg__0;
  wire r_SPI_Clk_i_1_n_0;
  wire \r_TX_Bit_Count[0]_i_1_n_0 ;
  wire \r_TX_Bit_Count[1]_i_1_n_0 ;
  wire \r_TX_Bit_Count[2]_i_1_n_0 ;
  wire \r_TX_Bit_Count[3]_i_1_n_0 ;
  wire \r_TX_Bit_Count[4]_i_1_n_0 ;
  wire \r_TX_Bit_Count[5]_i_1_n_0 ;
  wire \r_TX_Bit_Count[5]_i_2_n_0 ;
  wire \r_TX_Bit_Count[5]_i_3_n_0 ;
  wire [5:0]\r_TX_Bit_Count_do[5] ;
  wire [47:0]r_TX_Byte;
  wire r_TX_Count_0;
  wire r_TX_DV;
  wire r_Trailing_Edge4_out;
  wire r_Trailing_Edge_i_2_n_0;
  wire r_Trailing_Edge_reg_n_0;
  wire w_Master_Ready_do;

  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \FSM_onehot_r_SM_CS[0]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(r_CS_n_reg_0),
        .I3(i_TX_DV),
        .I4(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .I5(in0[0]),
        .O(\FSM_onehot_r_SM_CS_reg[0] ));
  LUT5 #(
    .INIT(32'hAAFFAA80)) 
    \FSM_onehot_r_SM_CS[1]_i_1 
       (.I0(out[0]),
        .I1(r_CS_n_reg_0),
        .I2(i_TX_DV),
        .I3(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .I4(in0[1]),
        .O(\FSM_onehot_r_SM_CS_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \FSM_onehot_r_SM_CS[2]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(r_CS_n_reg_0),
        .I3(i_TX_DV),
        .I4(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .I5(in0[2]),
        .O(\FSM_onehot_r_SM_CS_reg[2] ));
  LUT6 #(
    .INIT(64'h080808FF08080808)) 
    \FSM_onehot_r_SM_CS[2]_i_2 
       (.I0(out[1]),
        .I1(w_Master_Ready_do),
        .I2(r_SM_CS1__2),
        .I3(r_CS_Inactive_Count[-1]),
        .I4(r_CS_Inactive_Count[0]),
        .I5(out[2]),
        .O(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[0]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[40]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[0]),
        .O(\o_RX_Byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[10]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[42]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[10]),
        .O(\o_RX_Byte[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[11]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[43]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[11]),
        .O(\o_RX_Byte[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[12]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[44]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[12]),
        .O(\o_RX_Byte[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[13]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[45]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[13]),
        .O(\o_RX_Byte[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[14]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[46]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[14]),
        .O(\o_RX_Byte[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[15]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[47]_i_3_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[15]),
        .O(\o_RX_Byte[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_RX_Byte[15]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\o_RX_Byte[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[16]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[40]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[16]),
        .O(\o_RX_Byte[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[17]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[41]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[17]),
        .O(\o_RX_Byte[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[18]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[42]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[18]),
        .O(\o_RX_Byte[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[19]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[43]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[19]),
        .O(\o_RX_Byte[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[1]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[41]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[1]),
        .O(\o_RX_Byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[20]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[44]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[20]),
        .O(\o_RX_Byte[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[21]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[45]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[21]),
        .O(\o_RX_Byte[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[22]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[46]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[22]),
        .O(\o_RX_Byte[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[23]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[23]_i_2_n_0 ),
        .I2(\o_RX_Byte[47]_i_3_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[23]),
        .O(\o_RX_Byte[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_RX_Byte[23]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\o_RX_Byte[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[24]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[40]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[24]),
        .O(\o_RX_Byte[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[25]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[41]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[25]),
        .O(\o_RX_Byte[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[26]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[42]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[26]),
        .O(\o_RX_Byte[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[27]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[43]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[27]),
        .O(\o_RX_Byte[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[28]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[44]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[28]),
        .O(\o_RX_Byte[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[29]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[45]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[29]),
        .O(\o_RX_Byte[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[2]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[42]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[2]),
        .O(\o_RX_Byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[30]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[46]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[30]),
        .O(\o_RX_Byte[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[31]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[31]_i_2_n_0 ),
        .I2(\o_RX_Byte[47]_i_3_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[31]),
        .O(\o_RX_Byte[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \o_RX_Byte[31]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\o_RX_Byte[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[32]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[40]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[32]),
        .O(\o_RX_Byte[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[33]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[41]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[33]),
        .O(\o_RX_Byte[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[34]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[42]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[34]),
        .O(\o_RX_Byte[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[35]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[43]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[35]),
        .O(\o_RX_Byte[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[36]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[44]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[36]),
        .O(\o_RX_Byte[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[37]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[45]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[37]),
        .O(\o_RX_Byte[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[38]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[46]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[38]),
        .O(\o_RX_Byte[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[39]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[39]_i_2_n_0 ),
        .I2(\o_RX_Byte[47]_i_3_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[39]),
        .O(\o_RX_Byte[39]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \o_RX_Byte[39]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\o_RX_Byte[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[3]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[43]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[3]),
        .O(\o_RX_Byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[40]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[40]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[40]),
        .O(\o_RX_Byte[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_RX_Byte[40]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\o_RX_Byte[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[41]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[41]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[41]),
        .O(\o_RX_Byte[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_RX_Byte[41]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\o_RX_Byte[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[42]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[42]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[42]),
        .O(\o_RX_Byte[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_RX_Byte[42]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\o_RX_Byte[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[43]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[43]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[43]),
        .O(\o_RX_Byte[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \o_RX_Byte[43]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\o_RX_Byte[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[44]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[44]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[44]),
        .O(\o_RX_Byte[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_RX_Byte[44]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\o_RX_Byte[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[45]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[45]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[45]),
        .O(\o_RX_Byte[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_RX_Byte[45]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\o_RX_Byte[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[46]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[46]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[46]),
        .O(\o_RX_Byte[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_RX_Byte[46]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\o_RX_Byte[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[47]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[47]_i_2_n_0 ),
        .I2(\o_RX_Byte[47]_i_3_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[47]),
        .O(\o_RX_Byte[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_RX_Byte[47]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\o_RX_Byte[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_RX_Byte[47]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\o_RX_Byte[47]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[4]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[44]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[4]),
        .O(\o_RX_Byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[5]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[45]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[5]),
        .O(\o_RX_Byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[6]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[46]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[6]),
        .O(\o_RX_Byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[7]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[7]_i_2_n_0 ),
        .I2(\o_RX_Byte[47]_i_3_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[7]),
        .O(\o_RX_Byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_RX_Byte[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\o_RX_Byte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[8]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[40]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[8]),
        .O(\o_RX_Byte[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \o_RX_Byte[9]_i_1 
       (.I0(i_SPI_MISO),
        .I1(\o_RX_Byte[15]_i_2_n_0 ),
        .I2(\o_RX_Byte[41]_i_2_n_0 ),
        .I3(r_Leading_Edge),
        .I4(w_Master_Ready_do),
        .I5(o_RX_Byte[9]),
        .O(\o_RX_Byte[9]_i_1_n_0 ));
  FDCE \o_RX_Byte_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[0]_i_1_n_0 ),
        .Q(o_RX_Byte[0]));
  FDCE \o_RX_Byte_reg[10] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[10]_i_1_n_0 ),
        .Q(o_RX_Byte[10]));
  FDCE \o_RX_Byte_reg[11] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[11]_i_1_n_0 ),
        .Q(o_RX_Byte[11]));
  FDCE \o_RX_Byte_reg[12] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[12]_i_1_n_0 ),
        .Q(o_RX_Byte[12]));
  FDCE \o_RX_Byte_reg[13] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[13]_i_1_n_0 ),
        .Q(o_RX_Byte[13]));
  FDCE \o_RX_Byte_reg[14] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[14]_i_1_n_0 ),
        .Q(o_RX_Byte[14]));
  FDCE \o_RX_Byte_reg[15] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[15]_i_1_n_0 ),
        .Q(o_RX_Byte[15]));
  FDCE \o_RX_Byte_reg[16] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[16]_i_1_n_0 ),
        .Q(o_RX_Byte[16]));
  FDCE \o_RX_Byte_reg[17] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[17]_i_1_n_0 ),
        .Q(o_RX_Byte[17]));
  FDCE \o_RX_Byte_reg[18] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[18]_i_1_n_0 ),
        .Q(o_RX_Byte[18]));
  FDCE \o_RX_Byte_reg[19] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[19]_i_1_n_0 ),
        .Q(o_RX_Byte[19]));
  FDCE \o_RX_Byte_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[1]_i_1_n_0 ),
        .Q(o_RX_Byte[1]));
  FDCE \o_RX_Byte_reg[20] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[20]_i_1_n_0 ),
        .Q(o_RX_Byte[20]));
  FDCE \o_RX_Byte_reg[21] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[21]_i_1_n_0 ),
        .Q(o_RX_Byte[21]));
  FDCE \o_RX_Byte_reg[22] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[22]_i_1_n_0 ),
        .Q(o_RX_Byte[22]));
  FDCE \o_RX_Byte_reg[23] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[23]_i_1_n_0 ),
        .Q(o_RX_Byte[23]));
  FDCE \o_RX_Byte_reg[24] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[24]_i_1_n_0 ),
        .Q(o_RX_Byte[24]));
  FDCE \o_RX_Byte_reg[25] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[25]_i_1_n_0 ),
        .Q(o_RX_Byte[25]));
  FDCE \o_RX_Byte_reg[26] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[26]_i_1_n_0 ),
        .Q(o_RX_Byte[26]));
  FDCE \o_RX_Byte_reg[27] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[27]_i_1_n_0 ),
        .Q(o_RX_Byte[27]));
  FDCE \o_RX_Byte_reg[28] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[28]_i_1_n_0 ),
        .Q(o_RX_Byte[28]));
  FDCE \o_RX_Byte_reg[29] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[29]_i_1_n_0 ),
        .Q(o_RX_Byte[29]));
  FDCE \o_RX_Byte_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[2]_i_1_n_0 ),
        .Q(o_RX_Byte[2]));
  FDCE \o_RX_Byte_reg[30] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[30]_i_1_n_0 ),
        .Q(o_RX_Byte[30]));
  FDCE \o_RX_Byte_reg[31] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[31]_i_1_n_0 ),
        .Q(o_RX_Byte[31]));
  FDCE \o_RX_Byte_reg[32] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[32]_i_1_n_0 ),
        .Q(o_RX_Byte[32]));
  FDCE \o_RX_Byte_reg[33] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[33]_i_1_n_0 ),
        .Q(o_RX_Byte[33]));
  FDCE \o_RX_Byte_reg[34] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[34]_i_1_n_0 ),
        .Q(o_RX_Byte[34]));
  FDCE \o_RX_Byte_reg[35] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[35]_i_1_n_0 ),
        .Q(o_RX_Byte[35]));
  FDCE \o_RX_Byte_reg[36] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[36]_i_1_n_0 ),
        .Q(o_RX_Byte[36]));
  FDCE \o_RX_Byte_reg[37] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[37]_i_1_n_0 ),
        .Q(o_RX_Byte[37]));
  FDCE \o_RX_Byte_reg[38] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[38]_i_1_n_0 ),
        .Q(o_RX_Byte[38]));
  FDCE \o_RX_Byte_reg[39] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[39]_i_1_n_0 ),
        .Q(o_RX_Byte[39]));
  FDCE \o_RX_Byte_reg[3] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[3]_i_1_n_0 ),
        .Q(o_RX_Byte[3]));
  FDCE \o_RX_Byte_reg[40] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[40]_i_1_n_0 ),
        .Q(o_RX_Byte[40]));
  FDCE \o_RX_Byte_reg[41] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[41]_i_1_n_0 ),
        .Q(o_RX_Byte[41]));
  FDCE \o_RX_Byte_reg[42] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[42]_i_1_n_0 ),
        .Q(o_RX_Byte[42]));
  FDCE \o_RX_Byte_reg[43] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[43]_i_1_n_0 ),
        .Q(o_RX_Byte[43]));
  FDCE \o_RX_Byte_reg[44] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[44]_i_1_n_0 ),
        .Q(o_RX_Byte[44]));
  FDCE \o_RX_Byte_reg[45] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[45]_i_1_n_0 ),
        .Q(o_RX_Byte[45]));
  FDCE \o_RX_Byte_reg[46] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[46]_i_1_n_0 ),
        .Q(o_RX_Byte[46]));
  FDCE \o_RX_Byte_reg[47] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[47]_i_1_n_0 ),
        .Q(o_RX_Byte[47]));
  FDCE \o_RX_Byte_reg[4] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[4]_i_1_n_0 ),
        .Q(o_RX_Byte[4]));
  FDCE \o_RX_Byte_reg[5] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[5]_i_1_n_0 ),
        .Q(o_RX_Byte[5]));
  FDCE \o_RX_Byte_reg[6] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[6]_i_1_n_0 ),
        .Q(o_RX_Byte[6]));
  FDCE \o_RX_Byte_reg[7] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[7]_i_1_n_0 ),
        .Q(o_RX_Byte[7]));
  FDCE \o_RX_Byte_reg[8] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[8]_i_1_n_0 ),
        .Q(o_RX_Byte[8]));
  FDCE \o_RX_Byte_reg[9] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(\o_RX_Byte[9]_i_1_n_0 ),
        .Q(o_RX_Byte[9]));
  LUT3 #(
    .INIT(8'h20)) 
    o_RX_DV_i_1
       (.I0(o_RX_DV_i_3_n_0),
        .I1(w_Master_Ready_do),
        .I2(r_Leading_Edge),
        .O(o_RX_DV5_out));
  LUT1 #(
    .INIT(2'h1)) 
    o_RX_DV_i_2
       (.I0(i_Rst_L),
        .O(o_TX_Ready_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_RX_DV_i_3
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(o_RX_DV_i_3_n_0));
  FDCE o_RX_DV_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(o_RX_DV5_out),
        .Q(o_RX_DV));
  FDCE o_SPI_Clk_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(r_SPI_Clk),
        .Q(o_SPI_Clk));
  LUT6 #(
    .INIT(64'hFFFFAACF0000AAC0)) 
    o_SPI_MOSI_i_1
       (.I0(r_TX_Byte[47]),
        .I1(o_SPI_MOSI_i_2_n_0),
        .I2(r_Trailing_Edge_reg_n_0),
        .I3(r_TX_DV),
        .I4(w_Master_Ready_do),
        .I5(o_SPI_MOSI),
        .O(o_SPI_MOSI_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_12
       (.I0(r_TX_Byte[35]),
        .I1(r_TX_Byte[34]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[33]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[32]),
        .O(o_SPI_MOSI_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_13
       (.I0(r_TX_Byte[39]),
        .I1(r_TX_Byte[38]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[37]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[36]),
        .O(o_SPI_MOSI_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_14
       (.I0(r_TX_Byte[43]),
        .I1(r_TX_Byte[42]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[41]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[40]),
        .O(o_SPI_MOSI_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_15
       (.I0(r_TX_Byte[47]),
        .I1(r_TX_Byte[46]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[45]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[44]),
        .O(o_SPI_MOSI_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_16
       (.I0(r_TX_Byte[19]),
        .I1(r_TX_Byte[18]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[17]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[16]),
        .O(o_SPI_MOSI_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_17
       (.I0(r_TX_Byte[23]),
        .I1(r_TX_Byte[22]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[21]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[20]),
        .O(o_SPI_MOSI_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_18
       (.I0(r_TX_Byte[27]),
        .I1(r_TX_Byte[26]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[25]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[24]),
        .O(o_SPI_MOSI_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_19
       (.I0(r_TX_Byte[31]),
        .I1(r_TX_Byte[30]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[29]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[28]),
        .O(o_SPI_MOSI_i_19_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    o_SPI_MOSI_i_2
       (.I0(o_SPI_MOSI_reg_i_3_n_0),
        .I1(\r_TX_Bit_Count_do[5] [5]),
        .I2(o_SPI_MOSI_reg_i_4_n_0),
        .I3(\r_TX_Bit_Count_do[5] [4]),
        .I4(o_SPI_MOSI_reg_i_5_n_0),
        .O(o_SPI_MOSI_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_20
       (.I0(r_TX_Byte[3]),
        .I1(r_TX_Byte[2]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[1]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[0]),
        .O(o_SPI_MOSI_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_21
       (.I0(r_TX_Byte[7]),
        .I1(r_TX_Byte[6]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[5]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[4]),
        .O(o_SPI_MOSI_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_22
       (.I0(r_TX_Byte[11]),
        .I1(r_TX_Byte[10]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[9]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[8]),
        .O(o_SPI_MOSI_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_SPI_MOSI_i_23
       (.I0(r_TX_Byte[15]),
        .I1(r_TX_Byte[14]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_Byte[13]),
        .I4(\r_TX_Bit_Count_do[5] [0]),
        .I5(r_TX_Byte[12]),
        .O(o_SPI_MOSI_i_23_n_0));
  FDCE o_SPI_MOSI_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(o_SPI_MOSI_i_1_n_0),
        .Q(o_SPI_MOSI));
  MUXF7 o_SPI_MOSI_reg_i_10
       (.I0(o_SPI_MOSI_i_20_n_0),
        .I1(o_SPI_MOSI_i_21_n_0),
        .O(o_SPI_MOSI_reg_i_10_n_0),
        .S(\r_TX_Bit_Count_do[5] [2]));
  MUXF7 o_SPI_MOSI_reg_i_11
       (.I0(o_SPI_MOSI_i_22_n_0),
        .I1(o_SPI_MOSI_i_23_n_0),
        .O(o_SPI_MOSI_reg_i_11_n_0),
        .S(\r_TX_Bit_Count_do[5] [2]));
  MUXF8 o_SPI_MOSI_reg_i_3
       (.I0(o_SPI_MOSI_reg_i_6_n_0),
        .I1(o_SPI_MOSI_reg_i_7_n_0),
        .O(o_SPI_MOSI_reg_i_3_n_0),
        .S(\r_TX_Bit_Count_do[5] [3]));
  MUXF8 o_SPI_MOSI_reg_i_4
       (.I0(o_SPI_MOSI_reg_i_8_n_0),
        .I1(o_SPI_MOSI_reg_i_9_n_0),
        .O(o_SPI_MOSI_reg_i_4_n_0),
        .S(\r_TX_Bit_Count_do[5] [3]));
  MUXF8 o_SPI_MOSI_reg_i_5
       (.I0(o_SPI_MOSI_reg_i_10_n_0),
        .I1(o_SPI_MOSI_reg_i_11_n_0),
        .O(o_SPI_MOSI_reg_i_5_n_0),
        .S(\r_TX_Bit_Count_do[5] [3]));
  MUXF7 o_SPI_MOSI_reg_i_6
       (.I0(o_SPI_MOSI_i_12_n_0),
        .I1(o_SPI_MOSI_i_13_n_0),
        .O(o_SPI_MOSI_reg_i_6_n_0),
        .S(\r_TX_Bit_Count_do[5] [2]));
  MUXF7 o_SPI_MOSI_reg_i_7
       (.I0(o_SPI_MOSI_i_14_n_0),
        .I1(o_SPI_MOSI_i_15_n_0),
        .O(o_SPI_MOSI_reg_i_7_n_0),
        .S(\r_TX_Bit_Count_do[5] [2]));
  MUXF7 o_SPI_MOSI_reg_i_8
       (.I0(o_SPI_MOSI_i_16_n_0),
        .I1(o_SPI_MOSI_i_17_n_0),
        .O(o_SPI_MOSI_reg_i_8_n_0),
        .S(\r_TX_Bit_Count_do[5] [2]));
  MUXF7 o_SPI_MOSI_reg_i_9
       (.I0(o_SPI_MOSI_i_18_n_0),
        .I1(o_SPI_MOSI_i_19_n_0),
        .O(o_SPI_MOSI_reg_i_9_n_0),
        .S(\r_TX_Bit_Count_do[5] [2]));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    o_TX_Ready_INST_0
       (.I0(out[1]),
        .I1(w_Master_Ready_do),
        .I2(r_SM_CS1__2),
        .I3(out[0]),
        .I4(i_TX_DV),
        .O(o_TX_Ready));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    o_TX_Ready_i_1
       (.I0(i_TX_DV),
        .I1(o_TX_Ready1__5),
        .O(o_TX_Ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    o_TX_Ready_i_2
       (.I0(r_SPI_Clk_Edges_reg__0[0]),
        .I1(r_SPI_Clk_Edges_reg__0[1]),
        .I2(r_SPI_Clk_Edges_reg__0[2]),
        .I3(r_SPI_Clk_Edges_reg__0[3]),
        .I4(o_TX_Ready_i_3_n_0),
        .O(o_TX_Ready1__5));
  LUT4 #(
    .INIT(16'h0001)) 
    o_TX_Ready_i_3
       (.I0(r_SPI_Clk_Edges_reg__0[6]),
        .I1(r_SPI_Clk_Edges_reg__0[7]),
        .I2(r_SPI_Clk_Edges_reg__0[5]),
        .I3(r_SPI_Clk_Edges_reg__0[4]),
        .O(o_TX_Ready_i_3_n_0));
  FDCE o_TX_Ready_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(o_TX_Ready_i_1_n_0),
        .Q(w_Master_Ready_do));
  LUT6 #(
    .INIT(64'hAA2AFF2A2A2A2A2A)) 
    r_CS_n_i_1
       (.I0(r_CS_n_reg_0),
        .I1(i_TX_DV),
        .I2(out[0]),
        .I3(w_Master_Ready_do),
        .I4(r_SM_CS1__2),
        .I5(out[1]),
        .O(r_CS_n_reg));
  LUT3 #(
    .INIT(8'h40)) 
    r_Leading_Edge_i_1
       (.I0(i_TX_DV),
        .I1(o_TX_Ready1__5),
        .I2(r_Leading_Edge6_in),
        .O(r_Leading_Edge7_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    r_Leading_Edge_i_2
       (.I0(\r_SPI_Clk_Count_reg_n_0_[4] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[3] ),
        .I4(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .O(r_Leading_Edge6_in));
  FDCE r_Leading_Edge_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(r_Leading_Edge7_out),
        .Q(r_Leading_Edge));
  LUT2 #(
    .INIT(4'hB)) 
    \r_RX_Bit_Count[0]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(Q[0]),
        .O(\r_RX_Bit_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \r_RX_Bit_Count[1]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\r_RX_Bit_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEEEB)) 
    \r_RX_Bit_Count[2]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\r_RX_Bit_Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEB)) 
    \r_RX_Bit_Count[3]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\r_RX_Bit_Count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA9)) 
    \r_RX_Bit_Count[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(w_Master_Ready_do),
        .O(\r_RX_Bit_Count[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_RX_Bit_Count[5]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(r_Leading_Edge),
        .O(\r_RX_Bit_Count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEEEB)) 
    \r_RX_Bit_Count[5]_i_2 
       (.I0(w_Master_Ready_do),
        .I1(Q[5]),
        .I2(\r_RX_Bit_Count[5]_i_3_n_0 ),
        .I3(Q[4]),
        .O(\r_RX_Bit_Count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_RX_Bit_Count[5]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\r_RX_Bit_Count[5]_i_3_n_0 ));
  FDPE \r_RX_Bit_Count_reg[0] 
       (.C(i_Clk),
        .CE(\r_RX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_RX_Bit_Count[0]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(Q[0]));
  FDPE \r_RX_Bit_Count_reg[1] 
       (.C(i_Clk),
        .CE(\r_RX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_RX_Bit_Count[1]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(Q[1]));
  FDPE \r_RX_Bit_Count_reg[2] 
       (.C(i_Clk),
        .CE(\r_RX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_RX_Bit_Count[2]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(Q[2]));
  FDPE \r_RX_Bit_Count_reg[3] 
       (.C(i_Clk),
        .CE(\r_RX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_RX_Bit_Count[3]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(Q[3]));
  FDCE \r_RX_Bit_Count_reg[4] 
       (.C(i_Clk),
        .CE(\r_RX_Bit_Count[5]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_RX_Bit_Count[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDPE \r_RX_Bit_Count_reg[5] 
       (.C(i_Clk),
        .CE(\r_RX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_RX_Bit_Count[5]_i_2_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_SPI_Clk_Count[0]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(\r_SPI_Clk_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_SPI_Clk_Count[1]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(r_SPI_Clk_Count[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55A2FF00)) 
    \r_SPI_Clk_Count[2]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[4] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[3] ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I4(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(r_SPI_Clk_Count[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_SPI_Clk_Count[3]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[3] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(r_SPI_Clk_Count[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_SPI_Clk_Count[4]_i_1 
       (.I0(o_TX_Ready1__5),
        .I1(i_TX_DV),
        .O(\r_SPI_Clk_Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6CC4CCCC)) 
    \r_SPI_Clk_Count[4]_i_2 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[4] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[3] ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I4(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(r_SPI_Clk_Count[4]));
  FDCE \r_SPI_Clk_Count_reg[0] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Count[4]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Count[0]_i_1_n_0 ),
        .Q(\r_SPI_Clk_Count_reg_n_0_[0] ));
  FDCE \r_SPI_Clk_Count_reg[1] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Count[4]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(r_SPI_Clk_Count[1]),
        .Q(\r_SPI_Clk_Count_reg_n_0_[1] ));
  FDCE \r_SPI_Clk_Count_reg[2] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Count[4]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(r_SPI_Clk_Count[2]),
        .Q(\r_SPI_Clk_Count_reg_n_0_[2] ));
  FDCE \r_SPI_Clk_Count_reg[3] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Count[4]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(r_SPI_Clk_Count[3]),
        .Q(\r_SPI_Clk_Count_reg_n_0_[3] ));
  FDCE \r_SPI_Clk_Count_reg[4] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Count[4]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(r_SPI_Clk_Count[4]),
        .Q(\r_SPI_Clk_Count_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_SPI_Clk_Edges[0]_i_1 
       (.I0(r_SPI_Clk_Edges_reg__0[0]),
        .I1(i_TX_DV),
        .O(\r_SPI_Clk_Edges[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \r_SPI_Clk_Edges[1]_i_1 
       (.I0(r_SPI_Clk_Edges_reg__0[1]),
        .I1(r_SPI_Clk_Edges_reg__0[0]),
        .I2(i_TX_DV),
        .O(\r_SPI_Clk_Edges[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00A9)) 
    \r_SPI_Clk_Edges[2]_i_1 
       (.I0(r_SPI_Clk_Edges_reg__0[2]),
        .I1(r_SPI_Clk_Edges_reg__0[0]),
        .I2(r_SPI_Clk_Edges_reg__0[1]),
        .I3(i_TX_DV),
        .O(\r_SPI_Clk_Edges[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000AAA9)) 
    \r_SPI_Clk_Edges[3]_i_1 
       (.I0(r_SPI_Clk_Edges_reg__0[3]),
        .I1(r_SPI_Clk_Edges_reg__0[1]),
        .I2(r_SPI_Clk_Edges_reg__0[0]),
        .I3(r_SPI_Clk_Edges_reg__0[2]),
        .I4(i_TX_DV),
        .O(\r_SPI_Clk_Edges[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA9)) 
    \r_SPI_Clk_Edges[4]_i_1 
       (.I0(r_SPI_Clk_Edges_reg__0[4]),
        .I1(r_SPI_Clk_Edges_reg__0[2]),
        .I2(r_SPI_Clk_Edges_reg__0[0]),
        .I3(r_SPI_Clk_Edges_reg__0[1]),
        .I4(r_SPI_Clk_Edges_reg__0[3]),
        .I5(i_TX_DV),
        .O(\r_SPI_Clk_Edges[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEB)) 
    \r_SPI_Clk_Edges[5]_i_1 
       (.I0(i_TX_DV),
        .I1(r_SPI_Clk_Edges_reg__0[5]),
        .I2(r_SPI_Clk_Edges_reg__0[3]),
        .I3(\r_SPI_Clk_Edges[5]_i_2_n_0 ),
        .I4(r_SPI_Clk_Edges_reg__0[2]),
        .I5(r_SPI_Clk_Edges_reg__0[4]),
        .O(\r_SPI_Clk_Edges[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_SPI_Clk_Edges[5]_i_2 
       (.I0(r_SPI_Clk_Edges_reg__0[0]),
        .I1(r_SPI_Clk_Edges_reg__0[1]),
        .O(\r_SPI_Clk_Edges[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \r_SPI_Clk_Edges[6]_i_1 
       (.I0(i_TX_DV),
        .I1(r_SPI_Clk_Edges_reg__0[6]),
        .I2(\r_SPI_Clk_Edges[7]_i_4_n_0 ),
        .O(\r_SPI_Clk_Edges[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \r_SPI_Clk_Edges[7]_i_1 
       (.I0(i_TX_DV),
        .I1(\r_SPI_Clk_Edges[7]_i_3_n_0 ),
        .I2(o_TX_Ready1__5),
        .O(\r_SPI_Clk_Edges[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00A9)) 
    \r_SPI_Clk_Edges[7]_i_2 
       (.I0(r_SPI_Clk_Edges_reg__0[7]),
        .I1(\r_SPI_Clk_Edges[7]_i_4_n_0 ),
        .I2(r_SPI_Clk_Edges_reg__0[6]),
        .I3(i_TX_DV),
        .O(\r_SPI_Clk_Edges[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00102000)) 
    \r_SPI_Clk_Edges[7]_i_3 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[4] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I4(\r_SPI_Clk_Count_reg_n_0_[3] ),
        .O(\r_SPI_Clk_Edges[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_SPI_Clk_Edges[7]_i_4 
       (.I0(r_SPI_Clk_Edges_reg__0[4]),
        .I1(r_SPI_Clk_Edges_reg__0[2]),
        .I2(r_SPI_Clk_Edges_reg__0[0]),
        .I3(r_SPI_Clk_Edges_reg__0[1]),
        .I4(r_SPI_Clk_Edges_reg__0[3]),
        .I5(r_SPI_Clk_Edges_reg__0[5]),
        .O(\r_SPI_Clk_Edges[7]_i_4_n_0 ));
  FDCE \r_SPI_Clk_Edges_reg[0] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[0]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[0]));
  FDCE \r_SPI_Clk_Edges_reg[1] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[1]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[1]));
  FDCE \r_SPI_Clk_Edges_reg[2] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[2]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[2]));
  FDCE \r_SPI_Clk_Edges_reg[3] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[3]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[3]));
  FDCE \r_SPI_Clk_Edges_reg[4] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[4]));
  FDCE \r_SPI_Clk_Edges_reg[5] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[5]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[5]));
  FDCE \r_SPI_Clk_Edges_reg[6] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[6]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[6]));
  FDCE \r_SPI_Clk_Edges_reg[7] 
       (.C(i_Clk),
        .CE(\r_SPI_Clk_Edges[7]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_SPI_Clk_Edges[7]_i_2_n_0 ),
        .Q(r_SPI_Clk_Edges_reg__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    r_SPI_Clk_i_1
       (.I0(\r_SPI_Clk_Edges[7]_i_3_n_0 ),
        .I1(o_TX_Ready1__5),
        .I2(i_TX_DV),
        .I3(r_SPI_Clk),
        .O(r_SPI_Clk_i_1_n_0));
  FDCE r_SPI_Clk_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(r_SPI_Clk_i_1_n_0),
        .Q(r_SPI_Clk));
  LUT3 #(
    .INIT(8'hAB)) 
    \r_TX_Bit_Count[0]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(\r_TX_Bit_Count_do[5] [0]),
        .I2(r_TX_DV),
        .O(\r_TX_Bit_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEB)) 
    \r_TX_Bit_Count[1]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(\r_TX_Bit_Count_do[5] [0]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(r_TX_DV),
        .O(\r_TX_Bit_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFEAB)) 
    \r_TX_Bit_Count[2]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(\r_TX_Bit_Count_do[5] [1]),
        .I2(\r_TX_Bit_Count_do[5] [0]),
        .I3(\r_TX_Bit_Count_do[5] [2]),
        .I4(r_TX_DV),
        .O(\r_TX_Bit_Count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAB)) 
    \r_TX_Bit_Count[3]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(\r_TX_Bit_Count_do[5] [2]),
        .I2(\r_TX_Bit_Count_do[5] [0]),
        .I3(\r_TX_Bit_Count_do[5] [1]),
        .I4(\r_TX_Bit_Count_do[5] [3]),
        .I5(r_TX_DV),
        .O(\r_TX_Bit_Count[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \r_TX_Bit_Count[4]_i_1 
       (.I0(\r_TX_Bit_Count[5]_i_3_n_0 ),
        .I1(\r_TX_Bit_Count_do[5] [4]),
        .I2(r_TX_DV),
        .I3(w_Master_Ready_do),
        .O(\r_TX_Bit_Count[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \r_TX_Bit_Count[5]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(r_Trailing_Edge_reg_n_0),
        .I2(r_TX_DV),
        .O(\r_TX_Bit_Count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEAB)) 
    \r_TX_Bit_Count[5]_i_2 
       (.I0(w_Master_Ready_do),
        .I1(\r_TX_Bit_Count_do[5] [4]),
        .I2(\r_TX_Bit_Count[5]_i_3_n_0 ),
        .I3(\r_TX_Bit_Count_do[5] [5]),
        .I4(r_TX_DV),
        .O(\r_TX_Bit_Count[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_TX_Bit_Count[5]_i_3 
       (.I0(\r_TX_Bit_Count_do[5] [2]),
        .I1(\r_TX_Bit_Count_do[5] [0]),
        .I2(\r_TX_Bit_Count_do[5] [1]),
        .I3(\r_TX_Bit_Count_do[5] [3]),
        .O(\r_TX_Bit_Count[5]_i_3_n_0 ));
  FDPE \r_TX_Bit_Count_reg[0] 
       (.C(i_Clk),
        .CE(\r_TX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_TX_Bit_Count[0]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(\r_TX_Bit_Count_do[5] [0]));
  FDPE \r_TX_Bit_Count_reg[1] 
       (.C(i_Clk),
        .CE(\r_TX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_TX_Bit_Count[1]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(\r_TX_Bit_Count_do[5] [1]));
  FDPE \r_TX_Bit_Count_reg[2] 
       (.C(i_Clk),
        .CE(\r_TX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_TX_Bit_Count[2]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(\r_TX_Bit_Count_do[5] [2]));
  FDPE \r_TX_Bit_Count_reg[3] 
       (.C(i_Clk),
        .CE(\r_TX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_TX_Bit_Count[3]_i_1_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(\r_TX_Bit_Count_do[5] [3]));
  FDCE \r_TX_Bit_Count_reg[4] 
       (.C(i_Clk),
        .CE(\r_TX_Bit_Count[5]_i_1_n_0 ),
        .CLR(o_TX_Ready_reg_0),
        .D(\r_TX_Bit_Count[4]_i_1_n_0 ),
        .Q(\r_TX_Bit_Count_do[5] [4]));
  FDPE \r_TX_Bit_Count_reg[5] 
       (.C(i_Clk),
        .CE(\r_TX_Bit_Count[5]_i_1_n_0 ),
        .D(\r_TX_Bit_Count[5]_i_2_n_0 ),
        .PRE(o_TX_Ready_reg_0),
        .Q(\r_TX_Bit_Count_do[5] [5]));
  FDCE \r_TX_Byte_reg[0] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[0]),
        .Q(r_TX_Byte[0]));
  FDCE \r_TX_Byte_reg[10] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[10]),
        .Q(r_TX_Byte[10]));
  FDCE \r_TX_Byte_reg[11] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[11]),
        .Q(r_TX_Byte[11]));
  FDCE \r_TX_Byte_reg[12] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[12]),
        .Q(r_TX_Byte[12]));
  FDCE \r_TX_Byte_reg[13] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[13]),
        .Q(r_TX_Byte[13]));
  FDCE \r_TX_Byte_reg[14] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[14]),
        .Q(r_TX_Byte[14]));
  FDCE \r_TX_Byte_reg[15] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[15]),
        .Q(r_TX_Byte[15]));
  FDCE \r_TX_Byte_reg[16] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[16]),
        .Q(r_TX_Byte[16]));
  FDCE \r_TX_Byte_reg[17] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[17]),
        .Q(r_TX_Byte[17]));
  FDCE \r_TX_Byte_reg[18] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[18]),
        .Q(r_TX_Byte[18]));
  FDCE \r_TX_Byte_reg[19] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[19]),
        .Q(r_TX_Byte[19]));
  FDCE \r_TX_Byte_reg[1] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[1]),
        .Q(r_TX_Byte[1]));
  FDCE \r_TX_Byte_reg[20] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[20]),
        .Q(r_TX_Byte[20]));
  FDCE \r_TX_Byte_reg[21] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[21]),
        .Q(r_TX_Byte[21]));
  FDCE \r_TX_Byte_reg[22] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[22]),
        .Q(r_TX_Byte[22]));
  FDCE \r_TX_Byte_reg[23] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[23]),
        .Q(r_TX_Byte[23]));
  FDCE \r_TX_Byte_reg[24] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[24]),
        .Q(r_TX_Byte[24]));
  FDCE \r_TX_Byte_reg[25] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[25]),
        .Q(r_TX_Byte[25]));
  FDCE \r_TX_Byte_reg[26] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[26]),
        .Q(r_TX_Byte[26]));
  FDCE \r_TX_Byte_reg[27] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[27]),
        .Q(r_TX_Byte[27]));
  FDCE \r_TX_Byte_reg[28] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[28]),
        .Q(r_TX_Byte[28]));
  FDCE \r_TX_Byte_reg[29] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[29]),
        .Q(r_TX_Byte[29]));
  FDCE \r_TX_Byte_reg[2] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[2]),
        .Q(r_TX_Byte[2]));
  FDCE \r_TX_Byte_reg[30] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[30]),
        .Q(r_TX_Byte[30]));
  FDCE \r_TX_Byte_reg[31] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[31]),
        .Q(r_TX_Byte[31]));
  FDCE \r_TX_Byte_reg[32] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[32]),
        .Q(r_TX_Byte[32]));
  FDCE \r_TX_Byte_reg[33] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[33]),
        .Q(r_TX_Byte[33]));
  FDCE \r_TX_Byte_reg[34] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[34]),
        .Q(r_TX_Byte[34]));
  FDCE \r_TX_Byte_reg[35] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[35]),
        .Q(r_TX_Byte[35]));
  FDCE \r_TX_Byte_reg[36] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[36]),
        .Q(r_TX_Byte[36]));
  FDCE \r_TX_Byte_reg[37] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[37]),
        .Q(r_TX_Byte[37]));
  FDCE \r_TX_Byte_reg[38] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[38]),
        .Q(r_TX_Byte[38]));
  FDCE \r_TX_Byte_reg[39] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[39]),
        .Q(r_TX_Byte[39]));
  FDCE \r_TX_Byte_reg[3] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[3]),
        .Q(r_TX_Byte[3]));
  FDCE \r_TX_Byte_reg[40] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[40]),
        .Q(r_TX_Byte[40]));
  FDCE \r_TX_Byte_reg[41] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[41]),
        .Q(r_TX_Byte[41]));
  FDCE \r_TX_Byte_reg[42] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[42]),
        .Q(r_TX_Byte[42]));
  FDCE \r_TX_Byte_reg[43] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[43]),
        .Q(r_TX_Byte[43]));
  FDCE \r_TX_Byte_reg[44] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[44]),
        .Q(r_TX_Byte[44]));
  FDCE \r_TX_Byte_reg[45] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[45]),
        .Q(r_TX_Byte[45]));
  FDCE \r_TX_Byte_reg[46] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[46]),
        .Q(r_TX_Byte[46]));
  FDCE \r_TX_Byte_reg[47] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[47]),
        .Q(r_TX_Byte[47]));
  FDCE \r_TX_Byte_reg[4] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[4]),
        .Q(r_TX_Byte[4]));
  FDCE \r_TX_Byte_reg[5] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[5]),
        .Q(r_TX_Byte[5]));
  FDCE \r_TX_Byte_reg[6] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[6]),
        .Q(r_TX_Byte[6]));
  FDCE \r_TX_Byte_reg[7] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[7]),
        .Q(r_TX_Byte[7]));
  FDCE \r_TX_Byte_reg[8] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[8]),
        .Q(r_TX_Byte[8]));
  FDCE \r_TX_Byte_reg[9] 
       (.C(i_Clk),
        .CE(i_TX_DV),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_Byte[9]),
        .Q(r_TX_Byte[9]));
  LUT6 #(
    .INIT(64'hF800880088008800)) 
    \r_TX_Count[2]_i_3 
       (.I0(r_CS_n_reg_0),
        .I1(out[0]),
        .I2(w_Master_Ready_do),
        .I3(i_TX_DV),
        .I4(r_SM_CS1__2),
        .I5(out[1]),
        .O(r_TX_Count_0));
  FDCE r_TX_DV_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(i_TX_DV),
        .Q(r_TX_DV));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    r_Trailing_Edge_i_1
       (.I0(i_TX_DV),
        .I1(o_TX_Ready1__5),
        .I2(\r_SPI_Clk_Count_reg_n_0_[4] ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I4(r_Trailing_Edge_i_2_n_0),
        .I5(\r_SPI_Clk_Count_reg_n_0_[3] ),
        .O(r_Trailing_Edge4_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    r_Trailing_Edge_i_2
       (.I0(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(r_Trailing_Edge_i_2_n_0));
  FDCE r_Trailing_Edge_reg
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(o_TX_Ready_reg_0),
        .D(r_Trailing_Edge4_out),
        .Q(r_Trailing_Edge_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SPI_Master_With_Single_CS" *) 
module brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS
   (w_Master_Ready_do,
    r_RX_Bit_Count_do,
    o_SPI_CS_n,
    o_RX_DV,
    o_RX_Byte,
    r_TX_Bit_Count_do,
    o_SPI_Clk,
    o_RX_Count,
    o_TX_Ready,
    o_SPI_MOSI,
    i_TX_DV,
    i_TX_Count,
    i_Clk,
    i_SPI_MISO,
    i_TX_Byte,
    i_Rst_L);
  output w_Master_Ready_do;
  output [5:0]r_RX_Bit_Count_do;
  output o_SPI_CS_n;
  output o_RX_DV;
  output [47:0]o_RX_Byte;
  output [5:0]r_TX_Bit_Count_do;
  output o_SPI_Clk;
  output [1:0]o_RX_Count;
  output o_TX_Ready;
  output o_SPI_MOSI;
  input i_TX_DV;
  input [2:0]i_TX_Count;
  input i_Clk;
  input i_SPI_MISO;
  input [47:0]i_TX_Byte;
  input i_Rst_L;

  (* RTL_KEEP = "yes" *) wire \FSM_onehot_r_SM_CS_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_r_SM_CS_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_r_SM_CS_reg_n_0_[2] ;
  wire SPI_Master_Inst_n_1;
  wire SPI_Master_Inst_n_11;
  wire SPI_Master_Inst_n_12;
  wire SPI_Master_Inst_n_13;
  wire SPI_Master_Inst_n_22;
  wire i_Clk;
  wire i_Rst_L;
  wire i_SPI_MISO;
  wire [47:0]i_TX_Byte;
  wire [2:0]i_TX_Count;
  wire i_TX_DV;
  wire [47:0]o_RX_Byte;
  wire [1:0]o_RX_Count;
  wire \o_RX_Count[0]_i_1_n_0 ;
  wire \o_RX_Count[1]_i_1_n_0 ;
  wire o_RX_DV;
  wire o_SPI_CS_n;
  wire o_SPI_Clk;
  wire o_SPI_MOSI;
  wire o_TX_Ready;
  wire [-1:0]r_CS_Inactive_Count;
  wire \r_CS_Inactive_Count[-1]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[0]_i_1_n_0 ;
  wire [5:0]r_RX_Bit_Count_do;
  wire r_SM_CS1__2;
  wire [5:0]r_TX_Bit_Count_do;
  wire [2:0]r_TX_Count;
  wire \r_TX_Count[0]_i_1_n_0 ;
  wire \r_TX_Count[1]_i_1_n_0 ;
  wire \r_TX_Count[1]_i_2_n_0 ;
  wire \r_TX_Count[2]_i_1_n_0 ;
  wire \r_TX_Count[2]_i_2_n_0 ;
  wire r_TX_Count_0;
  wire w_Master_Ready_do;

  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_SM_CS_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_13),
        .PRE(SPI_Master_Inst_n_1),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_CS_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(SPI_Master_Inst_n_12),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_CS_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(SPI_Master_Inst_n_11),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[2] ));
  brd_SPI_Master_With_Sing_0_2_SPI_Master SPI_Master_Inst
       (.\FSM_onehot_r_SM_CS_reg[0] (SPI_Master_Inst_n_13),
        .\FSM_onehot_r_SM_CS_reg[1] (SPI_Master_Inst_n_12),
        .\FSM_onehot_r_SM_CS_reg[2] (SPI_Master_Inst_n_11),
        .Q(r_RX_Bit_Count_do),
        .i_Clk(i_Clk),
        .i_Rst_L(i_Rst_L),
        .i_SPI_MISO(i_SPI_MISO),
        .i_TX_Byte(i_TX_Byte),
        .i_TX_DV(i_TX_DV),
        .in0({\FSM_onehot_r_SM_CS_reg_n_0_[2] ,\FSM_onehot_r_SM_CS_reg_n_0_[1] ,\FSM_onehot_r_SM_CS_reg_n_0_[0] }),
        .o_RX_Byte(o_RX_Byte),
        .o_RX_DV(o_RX_DV),
        .o_SPI_Clk(o_SPI_Clk),
        .o_SPI_MOSI(o_SPI_MOSI),
        .o_TX_Ready(o_TX_Ready),
        .o_TX_Ready_reg_0(SPI_Master_Inst_n_1),
        .out({\FSM_onehot_r_SM_CS_reg_n_0_[2] ,\FSM_onehot_r_SM_CS_reg_n_0_[1] ,\FSM_onehot_r_SM_CS_reg_n_0_[0] }),
        .r_CS_Inactive_Count(r_CS_Inactive_Count),
        .r_CS_n_reg(SPI_Master_Inst_n_22),
        .r_CS_n_reg_0(o_SPI_CS_n),
        .r_SM_CS1__2(r_SM_CS1__2),
        .\r_TX_Bit_Count_do[5] (r_TX_Bit_Count_do),
        .r_TX_Count_0(r_TX_Count_0),
        .w_Master_Ready_do(w_Master_Ready_do));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \o_RX_Count[0]_i_1 
       (.I0(o_RX_Count[0]),
        .I1(o_RX_DV),
        .I2(o_SPI_CS_n),
        .O(\o_RX_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \o_RX_Count[1]_i_1 
       (.I0(o_RX_Count[1]),
        .I1(o_RX_DV),
        .I2(o_RX_Count[0]),
        .I3(o_SPI_CS_n),
        .O(\o_RX_Count[1]_i_1_n_0 ));
  FDRE \o_RX_Count_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\o_RX_Count[0]_i_1_n_0 ),
        .Q(o_RX_Count[0]),
        .R(1'b0));
  FDRE \o_RX_Count_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\o_RX_Count[1]_i_1_n_0 ),
        .Q(o_RX_Count[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    o_TX_Ready_INST_0_i_1
       (.I0(r_TX_Count[1]),
        .I1(r_TX_Count[2]),
        .I2(r_TX_Count[0]),
        .O(r_SM_CS1__2));
  LUT6 #(
    .INIT(64'hFF000020DF00DF00)) 
    \r_CS_Inactive_Count[-1]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(r_SM_CS1__2),
        .I2(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I3(r_CS_Inactive_Count[-1]),
        .I4(r_CS_Inactive_Count[0]),
        .I5(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .O(\r_CS_Inactive_Count[-1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF20FFFF2020)) 
    \r_CS_Inactive_Count[0]_i_1 
       (.I0(w_Master_Ready_do),
        .I1(r_SM_CS1__2),
        .I2(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I3(r_CS_Inactive_Count[-1]),
        .I4(r_CS_Inactive_Count[0]),
        .I5(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .O(\r_CS_Inactive_Count[0]_i_1_n_0 ));
  FDCE \r_CS_Inactive_Count_reg[-1] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(\r_CS_Inactive_Count[-1]_i_1_n_0 ),
        .Q(r_CS_Inactive_Count[-1]));
  FDPE \r_CS_Inactive_Count_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_CS_Inactive_Count[0]_i_1_n_0 ),
        .PRE(SPI_Master_Inst_n_1),
        .Q(r_CS_Inactive_Count[0]));
  FDPE r_CS_n_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_22),
        .PRE(SPI_Master_Inst_n_1),
        .Q(o_SPI_CS_n));
  LUT5 #(
    .INIT(32'h44FFF400)) 
    \r_TX_Count[0]_i_1 
       (.I0(i_TX_Count[0]),
        .I1(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I2(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I3(r_TX_Count_0),
        .I4(r_TX_Count[0]),
        .O(\r_TX_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_TX_Count[1]_i_1 
       (.I0(\r_TX_Count[1]_i_2_n_0 ),
        .I1(r_TX_Count_0),
        .I2(r_TX_Count[1]),
        .O(\r_TX_Count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9090FF90909090)) 
    \r_TX_Count[1]_i_2 
       (.I0(i_TX_Count[0]),
        .I1(i_TX_Count[1]),
        .I2(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I3(r_TX_Count[0]),
        .I4(r_TX_Count[1]),
        .I5(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .O(\r_TX_Count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFFABAA0000)) 
    \r_TX_Count[2]_i_1 
       (.I0(\r_TX_Count[2]_i_2_n_0 ),
        .I1(r_TX_Count[1]),
        .I2(r_TX_Count[0]),
        .I3(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I4(r_TX_Count_0),
        .I5(r_TX_Count[2]),
        .O(\r_TX_Count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8882)) 
    \r_TX_Count[2]_i_2 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I1(i_TX_Count[2]),
        .I2(i_TX_Count[0]),
        .I3(i_TX_Count[1]),
        .O(\r_TX_Count[2]_i_2_n_0 ));
  FDCE \r_TX_Count_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(\r_TX_Count[0]_i_1_n_0 ),
        .Q(r_TX_Count[0]));
  FDCE \r_TX_Count_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(\r_TX_Count[1]_i_1_n_0 ),
        .Q(r_TX_Count[1]));
  FDCE \r_TX_Count_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .CLR(SPI_Master_Inst_n_1),
        .D(\r_TX_Count[2]_i_1_n_0 ),
        .Q(r_TX_Count[2]));
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
