// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jul 21 18:38:02 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_LEDShifter_0_0/brd_LEDShifter_0_0_sim_netlist.v
// Design      : brd_LEDShifter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_LEDShifter_0_0,LEDShifter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "LEDShifter,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_LEDShifter_0_0
   (clk,
    rstn,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 39995998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK1" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW" *) input rstn;
  output [5:0]led;

  wire \<const0> ;
  wire clk;
  wire [5:1]\^led ;
  wire rstn;

  assign led[5:1] = \^led [5:1];
  assign led[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  brd_LEDShifter_0_0_LEDShifter U0
       (.clk(clk),
        .led(\^led ),
        .rstn(rstn));
endmodule

(* ORIG_REF_NAME = "LEDShifter" *) 
module brd_LEDShifter_0_0_LEDShifter
   (led,
    clk,
    rstn);
  output [4:0]led;
  input clk;
  input rstn;

  wire clk;
  wire [18:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[18]_i_2_n_0 ;
  wire [18:0]count_0;
  wire [18:1]data0;
  wire [4:0]led;
  wire rstn;
  wire shiftL;
  wire \shiftL[1]_i_1_n_0 ;
  wire \shiftL[5]_i_1_n_0 ;
  wire \shiftL[5]_i_3_n_0 ;
  wire [3:1]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:1],count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],data0[18:17]}),
        .S({1'b0,1'b0,count[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count[0]_i_3_n_0 ),
        .I2(\count[0]_i_4_n_0 ),
        .I3(\count[0]_i_5_n_0 ),
        .I4(count[0]),
        .O(count_0[0]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \count[0]_i_2 
       (.I0(count[4]),
        .I1(count[3]),
        .I2(count[5]),
        .I3(count[6]),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \count[0]_i_3 
       (.I0(count[17]),
        .I1(count[18]),
        .I2(count[15]),
        .I3(count[16]),
        .I4(count[2]),
        .I5(count[1]),
        .O(\count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \count[0]_i_4 
       (.I0(count[12]),
        .I1(count[11]),
        .I2(count[13]),
        .I3(count[14]),
        .O(\count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[0]_i_5 
       (.I0(count[8]),
        .I1(count[7]),
        .I2(count[10]),
        .I3(count[9]),
        .O(\count[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[10]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[10]),
        .O(count_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[11]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[11]),
        .O(count_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[12]),
        .O(count_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[13]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[13]),
        .O(count_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[14]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[14]),
        .O(count_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[15]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[15]),
        .O(count_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[16]),
        .O(count_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[17]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[17]),
        .O(count_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[18]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[18]),
        .O(count_0[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[18]_i_2 
       (.I0(rstn),
        .O(\count[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[1]),
        .O(count_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[2]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[2]),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[3]),
        .O(count_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[4]),
        .O(count_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[5]),
        .O(count_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[6]),
        .O(count_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[7]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[7]),
        .O(count_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[8]),
        .O(count_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_1 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .I1(data0[9]),
        .O(count_0[9]));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[0]),
        .Q(count[0]));
  FDCE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[10]),
        .Q(count[10]));
  FDCE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[11]),
        .Q(count[11]));
  FDCE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[12]),
        .Q(count[12]));
  FDCE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[13]),
        .Q(count[13]));
  FDCE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[14]),
        .Q(count[14]));
  FDCE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[15]),
        .Q(count[15]));
  FDCE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[16]),
        .Q(count[16]));
  FDCE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[17]),
        .Q(count[17]));
  FDCE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[18]),
        .Q(count[18]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[1]),
        .Q(count[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[2]),
        .Q(count[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[3]),
        .Q(count[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[4]),
        .Q(count[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[5]),
        .Q(count[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[6]),
        .Q(count[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[7]),
        .Q(count[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[8]),
        .Q(count[8]));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[18]_i_2_n_0 ),
        .D(count_0[9]),
        .Q(count[9]));
  LUT3 #(
    .INIT(8'hD1)) 
    \shiftL[1]_i_1 
       (.I0(led[4]),
        .I1(\shiftL[5]_i_3_n_0 ),
        .I2(led[0]),
        .O(\shiftL[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \shiftL[5]_i_1 
       (.I0(led[4]),
        .I1(\shiftL[5]_i_3_n_0 ),
        .O(\shiftL[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \shiftL[5]_i_2 
       (.I0(\shiftL[5]_i_3_n_0 ),
        .O(shiftL));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \shiftL[5]_i_3 
       (.I0(\count[0]_i_5_n_0 ),
        .I1(\count[0]_i_4_n_0 ),
        .I2(\count[0]_i_3_n_0 ),
        .I3(\count[0]_i_2_n_0 ),
        .I4(count[0]),
        .O(\shiftL[5]_i_3_n_0 ));
  FDRE \shiftL_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\shiftL[1]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDSE \shiftL_reg[2] 
       (.C(clk),
        .CE(shiftL),
        .D(led[0]),
        .Q(led[1]),
        .S(\shiftL[5]_i_1_n_0 ));
  FDSE \shiftL_reg[3] 
       (.C(clk),
        .CE(shiftL),
        .D(led[1]),
        .Q(led[2]),
        .S(\shiftL[5]_i_1_n_0 ));
  FDSE \shiftL_reg[4] 
       (.C(clk),
        .CE(shiftL),
        .D(led[2]),
        .Q(led[3]),
        .S(\shiftL[5]_i_1_n_0 ));
  FDSE \shiftL_reg[5] 
       (.C(clk),
        .CE(shiftL),
        .D(led[3]),
        .Q(led[4]),
        .S(\shiftL[5]_i_1_n_0 ));
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
