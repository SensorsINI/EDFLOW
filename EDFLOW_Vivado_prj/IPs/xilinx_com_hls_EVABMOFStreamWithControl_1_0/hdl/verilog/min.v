// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module min (
        ap_clk,
        ap_rst,
        inArr_V_read,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [111:0] inArr_V_read;
output  [15:0] ap_return_0;
output  [7:0] ap_return_1;
input   ap_ce;

wire   [1:0] i_0_tmpIdx_3_fu_144_p3;
reg   [1:0] i_0_tmpIdx_3_reg_273;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [15:0] p_s_126_fu_152_p3;
reg   [15:0] p_s_126_reg_278;
reg   [15:0] tmp_38_reg_284;
reg   [15:0] tmp_39_reg_290;
reg   [15:0] tmp_41_reg_296;
wire    ap_block_pp0_stage0;
wire   [15:0] tmp_fu_62_p4;
wire   [15:0] tmp_V_fu_58_p1;
wire   [0:0] tmp_1_fu_72_p2;
wire   [15:0] tmp_s_fu_90_p4;
wire   [15:0] p_s_fu_82_p3;
wire   [0:0] tmp_2_fu_100_p2;
wire   [15:0] tmp_36_fu_114_p4;
wire   [15:0] p_s_125_fu_106_p3;
wire   [0:0] tmp_3_fu_124_p2;
wire   [0:0] tmp_37_fu_138_p2;
wire   [1:0] i_0_tmpIdx_2_fu_130_p3;
wire   [1:0] i_0_tmpIdx_1_cast_fu_78_p1;
wire   [0:0] tmp_4_fu_193_p2;
wire   [15:0] p_s_127_fu_197_p3;
wire   [0:0] tmp_5_fu_203_p2;
wire   [0:0] tmp_40_fu_216_p2;
wire   [2:0] i_0_tmpIdx_4_fu_208_p3;
wire   [2:0] i_0_tmpIdx_3_cast_fu_190_p1;
wire   [15:0] p_s_128_fu_230_p3;
wire   [0:0] tmp_6_fu_237_p2;
wire   [2:0] i_0_tmpIdx_5_fu_222_p3;
wire   [2:0] i_0_tmpIdx_6_fu_242_p3;
wire   [15:0] p_s_129_fu_254_p3;
wire   [7:0] i_0_tmpIdx_6_cast_fu_250_p1;

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        i_0_tmpIdx_3_reg_273 <= i_0_tmpIdx_3_fu_144_p3;
        p_s_126_reg_278 <= p_s_126_fu_152_p3;
        tmp_38_reg_284 <= {{inArr_V_read[79:64]}};
        tmp_39_reg_290 <= {{inArr_V_read[95:80]}};
        tmp_41_reg_296 <= {{inArr_V_read[111:96]}};
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return_0 = p_s_129_fu_254_p3;

assign ap_return_1 = i_0_tmpIdx_6_cast_fu_250_p1;

assign i_0_tmpIdx_1_cast_fu_78_p1 = tmp_1_fu_72_p2;

assign i_0_tmpIdx_2_fu_130_p3 = ((tmp_3_fu_124_p2[0:0] === 1'b1) ? 2'd3 : 2'd2);

assign i_0_tmpIdx_3_cast_fu_190_p1 = i_0_tmpIdx_3_reg_273;

assign i_0_tmpIdx_3_fu_144_p3 = ((tmp_37_fu_138_p2[0:0] === 1'b1) ? i_0_tmpIdx_2_fu_130_p3 : i_0_tmpIdx_1_cast_fu_78_p1);

assign i_0_tmpIdx_4_fu_208_p3 = ((tmp_5_fu_203_p2[0:0] === 1'b1) ? 3'd5 : 3'd4);

assign i_0_tmpIdx_5_fu_222_p3 = ((tmp_40_fu_216_p2[0:0] === 1'b1) ? i_0_tmpIdx_4_fu_208_p3 : i_0_tmpIdx_3_cast_fu_190_p1);

assign i_0_tmpIdx_6_cast_fu_250_p1 = i_0_tmpIdx_6_fu_242_p3;

assign i_0_tmpIdx_6_fu_242_p3 = ((tmp_6_fu_237_p2[0:0] === 1'b1) ? 3'd6 : i_0_tmpIdx_5_fu_222_p3);

assign p_s_125_fu_106_p3 = ((tmp_2_fu_100_p2[0:0] === 1'b1) ? tmp_s_fu_90_p4 : p_s_fu_82_p3);

assign p_s_126_fu_152_p3 = ((tmp_3_fu_124_p2[0:0] === 1'b1) ? tmp_36_fu_114_p4 : p_s_125_fu_106_p3);

assign p_s_127_fu_197_p3 = ((tmp_4_fu_193_p2[0:0] === 1'b1) ? tmp_38_reg_284 : p_s_126_reg_278);

assign p_s_128_fu_230_p3 = ((tmp_5_fu_203_p2[0:0] === 1'b1) ? tmp_39_reg_290 : p_s_127_fu_197_p3);

assign p_s_129_fu_254_p3 = ((tmp_6_fu_237_p2[0:0] === 1'b1) ? tmp_41_reg_296 : p_s_128_fu_230_p3);

assign p_s_fu_82_p3 = ((tmp_1_fu_72_p2[0:0] === 1'b1) ? tmp_fu_62_p4 : tmp_V_fu_58_p1);

assign tmp_1_fu_72_p2 = (($signed(tmp_fu_62_p4) < $signed(tmp_V_fu_58_p1)) ? 1'b1 : 1'b0);

assign tmp_2_fu_100_p2 = (($signed(tmp_s_fu_90_p4) < $signed(p_s_fu_82_p3)) ? 1'b1 : 1'b0);

assign tmp_36_fu_114_p4 = {{inArr_V_read[63:48]}};

assign tmp_37_fu_138_p2 = (tmp_3_fu_124_p2 | tmp_2_fu_100_p2);

assign tmp_3_fu_124_p2 = (($signed(tmp_36_fu_114_p4) < $signed(p_s_125_fu_106_p3)) ? 1'b1 : 1'b0);

assign tmp_40_fu_216_p2 = (tmp_5_fu_203_p2 | tmp_4_fu_193_p2);

assign tmp_4_fu_193_p2 = (($signed(tmp_38_reg_284) < $signed(p_s_126_reg_278)) ? 1'b1 : 1'b0);

assign tmp_5_fu_203_p2 = (($signed(tmp_39_reg_290) < $signed(p_s_127_fu_197_p3)) ? 1'b1 : 1'b0);

assign tmp_6_fu_237_p2 = (($signed(tmp_41_reg_296) < $signed(p_s_128_fu_230_p3)) ? 1'b1 : 1'b0);

assign tmp_V_fu_58_p1 = inArr_V_read[15:0];

assign tmp_fu_62_p4 = {{inArr_V_read[31:16]}};

assign tmp_s_fu_90_p4 = {{inArr_V_read[47:32]}};

endmodule //min
