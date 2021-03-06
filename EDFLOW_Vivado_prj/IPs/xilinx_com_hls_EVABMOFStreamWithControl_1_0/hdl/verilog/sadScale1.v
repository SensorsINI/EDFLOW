// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sadScale1 (
        ap_clk,
        ap_rst,
        refBlock_0_V_read,
        refBlock_1_V_read,
        refBlock_2_V_read,
        refBlock_3_V_read,
        refBlock_4_V_read,
        refBlock_5_V_read,
        refBlock_6_V_read,
        refBlock_7_V_read,
        refBlock_8_V_read,
        refBlock_9_V_read,
        refBlock_10_V_read,
        refBlock_11_V_read,
        refBlock_12_V_read,
        targetBlocks_0_V_re,
        targetBlocks_1_V_re,
        targetBlocks_2_V_re,
        targetBlocks_3_V_re,
        targetBlocks_4_V_re,
        targetBlocks_5_V_re,
        targetBlocks_6_V_re,
        targetBlocks_7_V_re,
        targetBlocks_8_V_re,
        targetBlocks_9_V_re,
        targetBlocks_10_V_r,
        targetBlocks_11_V_r,
        targetBlocks_12_V_r,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [3:0] refBlock_0_V_read;
input  [3:0] refBlock_1_V_read;
input  [3:0] refBlock_2_V_read;
input  [3:0] refBlock_3_V_read;
input  [3:0] refBlock_4_V_read;
input  [3:0] refBlock_5_V_read;
input  [3:0] refBlock_6_V_read;
input  [3:0] refBlock_7_V_read;
input  [3:0] refBlock_8_V_read;
input  [3:0] refBlock_9_V_read;
input  [3:0] refBlock_10_V_read;
input  [3:0] refBlock_11_V_read;
input  [3:0] refBlock_12_V_read;
input  [3:0] targetBlocks_0_V_re;
input  [3:0] targetBlocks_1_V_re;
input  [3:0] targetBlocks_2_V_re;
input  [3:0] targetBlocks_3_V_re;
input  [3:0] targetBlocks_4_V_re;
input  [3:0] targetBlocks_5_V_re;
input  [3:0] targetBlocks_6_V_re;
input  [3:0] targetBlocks_7_V_re;
input  [3:0] targetBlocks_8_V_re;
input  [3:0] targetBlocks_9_V_re;
input  [3:0] targetBlocks_10_V_r;
input  [3:0] targetBlocks_11_V_r;
input  [3:0] targetBlocks_12_V_r;
output  [7:0] ap_return;
input   ap_ce;

wire   [4:0] sum_0_V_fu_257_p2;
reg   [4:0] sum_0_V_reg_431;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] sum_1_V_fu_271_p2;
reg   [4:0] sum_1_V_reg_436;
wire   [4:0] sum_2_V_fu_285_p2;
reg   [4:0] sum_2_V_reg_441;
wire   [4:0] sum_3_V_fu_299_p2;
reg   [4:0] sum_3_V_reg_446;
wire   [4:0] sum_4_V_fu_313_p2;
reg   [4:0] sum_4_V_reg_451;
wire   [4:0] sum_5_V_fu_327_p2;
reg   [4:0] sum_5_V_reg_456;
wire   [4:0] sum_6_V_fu_341_p2;
reg   [4:0] sum_6_V_reg_461;
wire   [4:0] sum_7_V_fu_355_p2;
reg   [4:0] sum_7_V_reg_466;
wire   [4:0] sum_8_V_fu_369_p2;
reg   [4:0] sum_8_V_reg_471;
wire   [4:0] sum_9_V_fu_383_p2;
reg   [4:0] sum_9_V_reg_476;
wire   [4:0] sum_10_V_fu_397_p2;
reg   [4:0] sum_10_V_reg_481;
wire   [4:0] sum_11_V_fu_411_p2;
reg   [4:0] sum_11_V_reg_486;
wire   [4:0] sum_12_V_fu_425_p2;
reg   [4:0] sum_12_V_reg_491;
wire   [7:0] grp_sadSumScale1_fu_232_ap_return;
reg    grp_sadSumScale1_fu_232_ap_ce;
wire    ap_block_pp0_stage0;
wire   [4:0] sum_0_V_fu_257_p0;
wire   [4:0] sum_0_V_fu_257_p1;
wire   [4:0] sum_1_V_fu_271_p0;
wire   [4:0] sum_1_V_fu_271_p1;
wire   [4:0] sum_2_V_fu_285_p0;
wire   [4:0] sum_2_V_fu_285_p1;
wire   [4:0] sum_3_V_fu_299_p0;
wire   [4:0] sum_3_V_fu_299_p1;
wire   [4:0] sum_4_V_fu_313_p0;
wire   [4:0] sum_4_V_fu_313_p1;
wire   [4:0] sum_5_V_fu_327_p0;
wire   [4:0] sum_5_V_fu_327_p1;
wire   [4:0] sum_6_V_fu_341_p0;
wire   [4:0] sum_6_V_fu_341_p1;
wire   [4:0] sum_7_V_fu_355_p0;
wire   [4:0] sum_7_V_fu_355_p1;
wire   [4:0] sum_8_V_fu_369_p0;
wire   [4:0] sum_8_V_fu_369_p1;
wire   [4:0] sum_9_V_fu_383_p0;
wire   [4:0] sum_9_V_fu_383_p1;
wire   [4:0] sum_10_V_fu_397_p0;
wire   [4:0] sum_10_V_fu_397_p1;
wire   [4:0] sum_11_V_fu_411_p0;
wire   [4:0] sum_11_V_fu_411_p1;
wire   [4:0] sum_12_V_fu_425_p0;
wire   [4:0] sum_12_V_fu_425_p1;
reg   [3:0] refBlock_0_V_read_int_reg;
reg   [3:0] refBlock_1_V_read_int_reg;
reg   [3:0] refBlock_2_V_read_int_reg;
reg   [3:0] refBlock_3_V_read_int_reg;
reg   [3:0] refBlock_4_V_read_int_reg;
reg   [3:0] refBlock_5_V_read_int_reg;
reg   [3:0] refBlock_6_V_read_int_reg;
reg   [3:0] refBlock_7_V_read_int_reg;
reg   [3:0] refBlock_8_V_read_int_reg;
reg   [3:0] refBlock_9_V_read_int_reg;
reg   [3:0] refBlock_10_V_read_int_reg;
reg   [3:0] refBlock_11_V_read_int_reg;
reg   [3:0] refBlock_12_V_read_int_reg;
reg   [3:0] targetBlocks_0_V_re_int_reg;
reg   [3:0] targetBlocks_1_V_re_int_reg;
reg   [3:0] targetBlocks_2_V_re_int_reg;
reg   [3:0] targetBlocks_3_V_re_int_reg;
reg   [3:0] targetBlocks_4_V_re_int_reg;
reg   [3:0] targetBlocks_5_V_re_int_reg;
reg   [3:0] targetBlocks_6_V_re_int_reg;
reg   [3:0] targetBlocks_7_V_re_int_reg;
reg   [3:0] targetBlocks_8_V_re_int_reg;
reg   [3:0] targetBlocks_9_V_re_int_reg;
reg   [3:0] targetBlocks_10_V_r_int_reg;
reg   [3:0] targetBlocks_11_V_r_int_reg;
reg   [3:0] targetBlocks_12_V_r_int_reg;

sadSumScale1 grp_sadSumScale1_fu_232(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .sum_0_V_read(sum_0_V_reg_431),
    .sum_1_V_read(sum_1_V_reg_436),
    .sum_2_V_read(sum_2_V_reg_441),
    .sum_3_V_read(sum_3_V_reg_446),
    .sum_4_V_read(sum_4_V_reg_451),
    .sum_5_V_read(sum_5_V_reg_456),
    .sum_6_V_read(sum_6_V_reg_461),
    .sum_7_V_read(sum_7_V_reg_466),
    .sum_8_V_read(sum_8_V_reg_471),
    .sum_9_V_read(sum_9_V_reg_476),
    .sum_10_V_read(sum_10_V_reg_481),
    .sum_11_V_read(sum_11_V_reg_486),
    .sum_12_V_read(sum_12_V_reg_491),
    .ap_return(grp_sadSumScale1_fu_232_ap_return),
    .ap_ce(grp_sadSumScale1_fu_232_ap_ce)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U208(
    .din0(sum_0_V_fu_257_p0),
    .din1(sum_0_V_fu_257_p1),
    .dout(sum_0_V_fu_257_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U209(
    .din0(sum_1_V_fu_271_p0),
    .din1(sum_1_V_fu_271_p1),
    .dout(sum_1_V_fu_271_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U210(
    .din0(sum_2_V_fu_285_p0),
    .din1(sum_2_V_fu_285_p1),
    .dout(sum_2_V_fu_285_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U211(
    .din0(sum_3_V_fu_299_p0),
    .din1(sum_3_V_fu_299_p1),
    .dout(sum_3_V_fu_299_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U212(
    .din0(sum_4_V_fu_313_p0),
    .din1(sum_4_V_fu_313_p1),
    .dout(sum_4_V_fu_313_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U213(
    .din0(sum_5_V_fu_327_p0),
    .din1(sum_5_V_fu_327_p1),
    .dout(sum_5_V_fu_327_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U214(
    .din0(sum_6_V_fu_341_p0),
    .din1(sum_6_V_fu_341_p1),
    .dout(sum_6_V_fu_341_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U215(
    .din0(sum_7_V_fu_355_p0),
    .din1(sum_7_V_fu_355_p1),
    .dout(sum_7_V_fu_355_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U216(
    .din0(sum_8_V_fu_369_p0),
    .din1(sum_8_V_fu_369_p1),
    .dout(sum_8_V_fu_369_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U217(
    .din0(sum_9_V_fu_383_p0),
    .din1(sum_9_V_fu_383_p1),
    .dout(sum_9_V_fu_383_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U218(
    .din0(sum_10_V_fu_397_p0),
    .din1(sum_10_V_fu_397_p1),
    .dout(sum_10_V_fu_397_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U219(
    .din0(sum_11_V_fu_411_p0),
    .din1(sum_11_V_fu_411_p1),
    .dout(sum_11_V_fu_411_p2)
);

EVABMOFStreamWithMgi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
EVABMOFStreamWithMgi_U220(
    .din0(sum_12_V_fu_425_p0),
    .din1(sum_12_V_fu_425_p1),
    .dout(sum_12_V_fu_425_p2)
);

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        refBlock_0_V_read_int_reg <= refBlock_0_V_read;
        refBlock_10_V_read_int_reg <= refBlock_10_V_read;
        refBlock_11_V_read_int_reg <= refBlock_11_V_read;
        refBlock_12_V_read_int_reg <= refBlock_12_V_read;
        refBlock_1_V_read_int_reg <= refBlock_1_V_read;
        refBlock_2_V_read_int_reg <= refBlock_2_V_read;
        refBlock_3_V_read_int_reg <= refBlock_3_V_read;
        refBlock_4_V_read_int_reg <= refBlock_4_V_read;
        refBlock_5_V_read_int_reg <= refBlock_5_V_read;
        refBlock_6_V_read_int_reg <= refBlock_6_V_read;
        refBlock_7_V_read_int_reg <= refBlock_7_V_read;
        refBlock_8_V_read_int_reg <= refBlock_8_V_read;
        refBlock_9_V_read_int_reg <= refBlock_9_V_read;
        targetBlocks_0_V_re_int_reg <= targetBlocks_0_V_re;
        targetBlocks_10_V_r_int_reg <= targetBlocks_10_V_r;
        targetBlocks_11_V_r_int_reg <= targetBlocks_11_V_r;
        targetBlocks_12_V_r_int_reg <= targetBlocks_12_V_r;
        targetBlocks_1_V_re_int_reg <= targetBlocks_1_V_re;
        targetBlocks_2_V_re_int_reg <= targetBlocks_2_V_re;
        targetBlocks_3_V_re_int_reg <= targetBlocks_3_V_re;
        targetBlocks_4_V_re_int_reg <= targetBlocks_4_V_re;
        targetBlocks_5_V_re_int_reg <= targetBlocks_5_V_re;
        targetBlocks_6_V_re_int_reg <= targetBlocks_6_V_re;
        targetBlocks_7_V_re_int_reg <= targetBlocks_7_V_re;
        targetBlocks_8_V_re_int_reg <= targetBlocks_8_V_re;
        targetBlocks_9_V_re_int_reg <= targetBlocks_9_V_re;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        sum_0_V_reg_431 <= sum_0_V_fu_257_p2;
        sum_10_V_reg_481 <= sum_10_V_fu_397_p2;
        sum_11_V_reg_486 <= sum_11_V_fu_411_p2;
        sum_12_V_reg_491 <= sum_12_V_fu_425_p2;
        sum_1_V_reg_436 <= sum_1_V_fu_271_p2;
        sum_2_V_reg_441 <= sum_2_V_fu_285_p2;
        sum_3_V_reg_446 <= sum_3_V_fu_299_p2;
        sum_4_V_reg_451 <= sum_4_V_fu_313_p2;
        sum_5_V_reg_456 <= sum_5_V_fu_327_p2;
        sum_6_V_reg_461 <= sum_6_V_fu_341_p2;
        sum_7_V_reg_466 <= sum_7_V_fu_355_p2;
        sum_8_V_reg_471 <= sum_8_V_fu_369_p2;
        sum_9_V_reg_476 <= sum_9_V_fu_383_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_sadSumScale1_fu_232_ap_ce = 1'b1;
    end else begin
        grp_sadSumScale1_fu_232_ap_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_return = grp_sadSumScale1_fu_232_ap_return;

assign sum_0_V_fu_257_p0 = refBlock_0_V_read_int_reg;

assign sum_0_V_fu_257_p1 = targetBlocks_0_V_re_int_reg;

assign sum_10_V_fu_397_p0 = refBlock_10_V_read_int_reg;

assign sum_10_V_fu_397_p1 = targetBlocks_10_V_r_int_reg;

assign sum_11_V_fu_411_p0 = refBlock_11_V_read_int_reg;

assign sum_11_V_fu_411_p1 = targetBlocks_11_V_r_int_reg;

assign sum_12_V_fu_425_p0 = refBlock_12_V_read_int_reg;

assign sum_12_V_fu_425_p1 = targetBlocks_12_V_r_int_reg;

assign sum_1_V_fu_271_p0 = refBlock_1_V_read_int_reg;

assign sum_1_V_fu_271_p1 = targetBlocks_1_V_re_int_reg;

assign sum_2_V_fu_285_p0 = refBlock_2_V_read_int_reg;

assign sum_2_V_fu_285_p1 = targetBlocks_2_V_re_int_reg;

assign sum_3_V_fu_299_p0 = refBlock_3_V_read_int_reg;

assign sum_3_V_fu_299_p1 = targetBlocks_3_V_re_int_reg;

assign sum_4_V_fu_313_p0 = refBlock_4_V_read_int_reg;

assign sum_4_V_fu_313_p1 = targetBlocks_4_V_re_int_reg;

assign sum_5_V_fu_327_p0 = refBlock_5_V_read_int_reg;

assign sum_5_V_fu_327_p1 = targetBlocks_5_V_re_int_reg;

assign sum_6_V_fu_341_p0 = refBlock_6_V_read_int_reg;

assign sum_6_V_fu_341_p1 = targetBlocks_6_V_re_int_reg;

assign sum_7_V_fu_355_p0 = refBlock_7_V_read_int_reg;

assign sum_7_V_fu_355_p1 = targetBlocks_7_V_re_int_reg;

assign sum_8_V_fu_369_p0 = refBlock_8_V_read_int_reg;

assign sum_8_V_fu_369_p1 = targetBlocks_8_V_re_int_reg;

assign sum_9_V_fu_383_p0 = refBlock_9_V_read_int_reg;

assign sum_9_V_fu_383_p1 = targetBlocks_9_V_re_int_reg;

endmodule //sadScale1
