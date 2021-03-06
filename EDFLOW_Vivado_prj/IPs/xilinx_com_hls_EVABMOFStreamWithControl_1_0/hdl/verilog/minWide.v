// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module minWide (
        ap_clk,
        ap_rst,
        inData_V,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [111:0] inData_V;
output  [15:0] ap_return_0;
output  [7:0] ap_return_1;
input   ap_ce;

wire   [0:0] val_assign_fu_72_p2;
reg   [0:0] val_assign_reg_271;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] val_assign_1_fu_96_p2;
reg   [0:0] val_assign_1_reg_276;
wire   [0:0] val_assign_2_fu_120_p2;
reg   [0:0] val_assign_2_reg_281;
wire   [15:0] tmp_1236_2_fu_126_p3;
reg   [15:0] tmp_1236_2_reg_286;
reg   [15:0] p_Result_932_3_reg_292;
reg   [15:0] p_Result_932_4_reg_298;
reg   [15:0] p_Result_932_5_reg_304;
wire    ap_block_pp0_stage0;
wire   [15:0] p_Result_s_fu_62_p4;
wire   [15:0] tmp_V_fu_58_p1;
wire   [15:0] p_Result_932_1_fu_86_p4;
wire   [15:0] tmp_s_fu_78_p3;
wire   [15:0] p_Result_932_2_fu_110_p4;
wire   [15:0] tmp_1236_1_fu_102_p3;
wire   [1:0] tmpIdx_1_cast_fu_164_p1;
wire   [1:0] tmpIdx_1_1_fu_167_p3;
wire   [0:0] val_assign_3_fu_178_p2;
wire   [0:0] tmp_fu_190_p2;
wire   [2:0] tmpIdx_1_2_fu_182_p3;
wire   [2:0] tmpIdx_1_1_cast_fu_174_p1;
wire   [15:0] tmp_1236_3_fu_203_p3;
wire   [0:0] val_assign_4_fu_209_p2;
wire   [15:0] tmp_1236_4_fu_214_p3;
wire   [0:0] val_assign_5_fu_221_p2;
wire   [0:0] tmp_35_fu_234_p2;
wire   [2:0] tmpIdx_1_4_fu_226_p3;
wire   [2:0] tmpIdx_1_3_fu_195_p3;
wire   [2:0] tmpIdx_1_5_fu_240_p3;
wire   [15:0] tmp_1236_5_fu_252_p3;
wire   [7:0] tmpIdx_1_5_cast_fu_248_p1;

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        p_Result_932_3_reg_292 <= {{inData_V[79:64]}};
        p_Result_932_4_reg_298 <= {{inData_V[95:80]}};
        p_Result_932_5_reg_304 <= {{inData_V[111:96]}};
        tmp_1236_2_reg_286 <= tmp_1236_2_fu_126_p3;
        val_assign_1_reg_276 <= val_assign_1_fu_96_p2;
        val_assign_2_reg_281 <= val_assign_2_fu_120_p2;
        val_assign_reg_271 <= val_assign_fu_72_p2;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return_0 = tmp_1236_5_fu_252_p3;

assign ap_return_1 = tmpIdx_1_5_cast_fu_248_p1;

assign p_Result_932_1_fu_86_p4 = {{inData_V[47:32]}};

assign p_Result_932_2_fu_110_p4 = {{inData_V[63:48]}};

assign p_Result_s_fu_62_p4 = {{inData_V[31:16]}};

assign tmpIdx_1_1_cast_fu_174_p1 = tmpIdx_1_1_fu_167_p3;

assign tmpIdx_1_1_fu_167_p3 = ((val_assign_1_reg_276[0:0] === 1'b1) ? 2'd2 : tmpIdx_1_cast_fu_164_p1);

assign tmpIdx_1_2_fu_182_p3 = ((val_assign_3_fu_178_p2[0:0] === 1'b1) ? 3'd4 : 3'd3);

assign tmpIdx_1_3_fu_195_p3 = ((tmp_fu_190_p2[0:0] === 1'b1) ? tmpIdx_1_2_fu_182_p3 : tmpIdx_1_1_cast_fu_174_p1);

assign tmpIdx_1_4_fu_226_p3 = ((val_assign_5_fu_221_p2[0:0] === 1'b1) ? 3'd6 : 3'd5);

assign tmpIdx_1_5_cast_fu_248_p1 = tmpIdx_1_5_fu_240_p3;

assign tmpIdx_1_5_fu_240_p3 = ((tmp_35_fu_234_p2[0:0] === 1'b1) ? tmpIdx_1_4_fu_226_p3 : tmpIdx_1_3_fu_195_p3);

assign tmpIdx_1_cast_fu_164_p1 = val_assign_reg_271;

assign tmp_1236_1_fu_102_p3 = ((val_assign_1_fu_96_p2[0:0] === 1'b1) ? p_Result_932_1_fu_86_p4 : tmp_s_fu_78_p3);

assign tmp_1236_2_fu_126_p3 = ((val_assign_2_fu_120_p2[0:0] === 1'b1) ? p_Result_932_2_fu_110_p4 : tmp_1236_1_fu_102_p3);

assign tmp_1236_3_fu_203_p3 = ((val_assign_3_fu_178_p2[0:0] === 1'b1) ? p_Result_932_3_reg_292 : tmp_1236_2_reg_286);

assign tmp_1236_4_fu_214_p3 = ((val_assign_4_fu_209_p2[0:0] === 1'b1) ? p_Result_932_4_reg_298 : tmp_1236_3_fu_203_p3);

assign tmp_1236_5_fu_252_p3 = ((val_assign_5_fu_221_p2[0:0] === 1'b1) ? p_Result_932_5_reg_304 : tmp_1236_4_fu_214_p3);

assign tmp_35_fu_234_p2 = (val_assign_5_fu_221_p2 | val_assign_4_fu_209_p2);

assign tmp_V_fu_58_p1 = inData_V[15:0];

assign tmp_fu_190_p2 = (val_assign_3_fu_178_p2 | val_assign_2_reg_281);

assign tmp_s_fu_78_p3 = ((val_assign_fu_72_p2[0:0] === 1'b1) ? p_Result_s_fu_62_p4 : tmp_V_fu_58_p1);

assign val_assign_1_fu_96_p2 = (($signed(p_Result_932_1_fu_86_p4) < $signed(tmp_s_fu_78_p3)) ? 1'b1 : 1'b0);

assign val_assign_2_fu_120_p2 = (($signed(p_Result_932_2_fu_110_p4) < $signed(tmp_1236_1_fu_102_p3)) ? 1'b1 : 1'b0);

assign val_assign_3_fu_178_p2 = (($signed(p_Result_932_3_reg_292) < $signed(tmp_1236_2_reg_286)) ? 1'b1 : 1'b0);

assign val_assign_4_fu_209_p2 = (($signed(p_Result_932_4_reg_298) < $signed(tmp_1236_3_fu_203_p3)) ? 1'b1 : 1'b0);

assign val_assign_5_fu_221_p2 = (($signed(p_Result_932_5_reg_304) < $signed(tmp_1236_4_fu_214_p3)) ? 1'b1 : 1'b0);

assign val_assign_fu_72_p2 = (($signed(p_Result_s_fu_62_p4) < $signed(tmp_V_fu_58_p1)) ? 1'b1 : 1'b0);

endmodule //minWide
