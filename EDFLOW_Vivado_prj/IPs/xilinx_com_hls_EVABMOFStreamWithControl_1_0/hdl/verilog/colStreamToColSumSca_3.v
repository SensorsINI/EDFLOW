// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module colStreamToColSumSca_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        colStream0_V_V_dout,
        colStream0_V_V_empty_n,
        colStream0_V_V_read,
        colStream1_V_V_dout,
        colStream1_V_V_empty_n,
        colStream1_V_V_read,
        refZeroCntStream_V_V_din,
        refZeroCntStream_V_V_full_n,
        refZeroCntStream_V_V_write,
        outStream_V_V_din,
        outStream_V_V_full_n,
        outStream_V_V_write,
        tagColValidCntStream_V_V_din,
        tagColValidCntStream_V_V_full_n,
        tagColValidCntStream_V_V_write,
        refTagValidCntStream_V_V_din,
        refTagValidCntStream_V_V_full_n,
        refTagValidCntStream_V_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [75:0] colStream0_V_V_dout;
input   colStream0_V_V_empty_n;
output   colStream0_V_V_read;
input  [75:0] colStream1_V_V_dout;
input   colStream1_V_V_empty_n;
output   colStream1_V_V_read;
output  [5:0] refZeroCntStream_V_V_din;
input   refZeroCntStream_V_V_full_n;
output   refZeroCntStream_V_V_write;
output  [111:0] outStream_V_V_din;
input   outStream_V_V_full_n;
output   outStream_V_V_write;
output  [41:0] tagColValidCntStream_V_V_din;
input   tagColValidCntStream_V_V_full_n;
output   tagColValidCntStream_V_V_write;
output  [41:0] refTagValidCntStream_V_V_din;
input   refTagValidCntStream_V_V_full_n;
output   refTagValidCntStream_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg colStream0_V_V_read;
reg colStream1_V_V_read;
reg refZeroCntStream_V_V_write;
reg outStream_V_V_write;
reg tagColValidCntStream_V_V_write;
reg refTagValidCntStream_V_V_write;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond_flatten_fu_610_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_state3_pp0_stage0_iter5;
reg    ap_enable_reg_pp0_iter5;
reg    ap_block_pp0_stage0_11001;
reg    colStream0_V_V_blk_n;
wire    ap_block_pp0_stage0;
reg    colStream1_V_V_blk_n;
reg    outStream_V_V_blk_n;
reg    refZeroCntStream_V_V_blk_n;
reg    tagColValidCntStream_V_V_blk_n;
reg    refTagValidCntStream_V_V_blk_n;
reg   [6:0] indvar_flatten2_reg_204;
wire   [3:0] in2_0_V_fu_290_p1;
reg   [3:0] in2_0_V_reg_749;
reg   [3:0] in2_1_V_reg_755;
reg   [3:0] in2_2_V_reg_761;
reg   [3:0] in1_3_V_reg_767;
reg   [3:0] in2_3_V_reg_773;
reg   [3:0] in1_4_V_reg_779;
reg   [3:0] in2_4_V_reg_785;
reg   [3:0] in1_5_V_reg_791;
reg   [3:0] in2_5_V_reg_797;
reg   [3:0] in1_6_V_reg_803;
reg   [3:0] in2_6_V_reg_809;
reg   [3:0] in1_7_V_reg_815;
reg   [3:0] in2_7_V_reg_821;
reg   [3:0] in1_8_V_reg_827;
reg   [3:0] in2_8_V_reg_833;
reg   [3:0] in1_9_V_reg_839;
reg   [3:0] in2_9_V_reg_845;
reg   [3:0] in1_10_V_reg_851;
reg   [3:0] in2_10_V_reg_857;
reg   [3:0] in1_11_V_reg_863;
reg   [3:0] in2_11_V_reg_869;
reg   [3:0] in1_12_V_reg_875;
reg   [3:0] in2_12_V_reg_881;
reg   [3:0] in1_13_V_reg_887;
reg   [3:0] in2_13_V_reg_893;
reg   [3:0] in1_14_V_reg_899;
reg   [3:0] in2_14_V_reg_905;
reg   [3:0] in1_15_V_reg_911;
reg   [3:0] in2_15_V_reg_917;
reg   [3:0] in2_16_V_reg_923;
reg   [3:0] in2_17_V_reg_929;
reg   [3:0] in2_18_V_reg_935;
wire   [6:0] indvar_flatten_next_fu_604_p2;
reg   [6:0] indvar_flatten_next_reg_941;
reg   [0:0] exitcond_flatten_reg_946;
reg   [0:0] exitcond_flatten_reg_946_pp0_iter1_reg;
reg   [0:0] exitcond_flatten_reg_946_pp0_iter2_reg;
reg   [0:0] exitcond_flatten_reg_946_pp0_iter3_reg;
reg   [0:0] exitcond_flatten_reg_946_pp0_iter4_reg;
reg   [5:0] tmp_V_200_reg_950;
reg   [5:0] tagColValidCnt_reg_955;
reg   [5:0] tagColValidCnt_1_reg_960;
reg   [5:0] tagColValidCnt_2_reg_965;
reg   [5:0] tagColValidCnt_3_reg_970;
reg   [5:0] tagColValidCnt_4_reg_975;
reg   [5:0] tagColValidCnt_5_reg_980;
reg   [5:0] tagColValidCnt_6_reg_985;
reg   [5:0] refTagValidPixCnt_reg_990;
reg   [5:0] refTagValidPixCnt_1_reg_995;
reg   [5:0] refTagValidPixCnt_2_reg_1000;
reg   [5:0] refTagValidPixCnt_3_reg_1005;
reg   [5:0] refTagValidPixCnt_4_reg_1010;
reg   [5:0] refTagValidPixCnt_5_reg_1015;
reg   [5:0] refTagValidPixCnt_6_reg_1020;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_0;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_1;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_2;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_3;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_4;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_5;
wire   [15:0] grp_colSADSumScale1_fu_218_ap_return_6;
reg    grp_colSADSumScale1_fu_218_ap_ce;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_0;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_1;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_2;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_3;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_4;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_5;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_6;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_7;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_8;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_9;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_10;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_11;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_12;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_13;
wire   [5:0] grp_colZeroCntScale1_fu_254_ap_return_14;
reg    grp_colZeroCntScale1_fu_254_ap_ce;
reg   [6:0] ap_phi_mux_indvar_flatten2_phi_fu_208_p6;
reg    ap_block_pp0_stage0_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to4;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_475;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

colSADSumScale1 grp_colSADSumScale1_fu_218(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .t1Col_3_V_read(in1_3_V_reg_767),
    .t1Col_4_V_read(in1_4_V_reg_779),
    .t1Col_5_V_read(in1_5_V_reg_791),
    .t1Col_6_V_read(in1_6_V_reg_803),
    .t1Col_7_V_read(in1_7_V_reg_815),
    .t1Col_8_V_read(in1_8_V_reg_827),
    .t1Col_9_V_read(in1_9_V_reg_839),
    .t1Col_10_V_read(in1_10_V_reg_851),
    .t1Col_11_V_read(in1_11_V_reg_863),
    .t1Col_12_V_read(in1_12_V_reg_875),
    .t1Col_13_V_read(in1_13_V_reg_887),
    .t1Col_14_V_read(in1_14_V_reg_899),
    .t1Col_15_V_read(in1_15_V_reg_911),
    .t2Col_0_V_read(in2_0_V_reg_749),
    .t2Col_1_V_read(in2_1_V_reg_755),
    .t2Col_2_V_read(in2_2_V_reg_761),
    .t2Col_3_V_read(in2_3_V_reg_773),
    .t2Col_4_V_read(in2_4_V_reg_785),
    .t2Col_5_V_read(in2_5_V_reg_797),
    .t2Col_6_V_read(in2_6_V_reg_809),
    .t2Col_7_V_read(in2_7_V_reg_821),
    .t2Col_8_V_read(in2_8_V_reg_833),
    .t2Col_9_V_read(in2_9_V_reg_845),
    .t2Col_10_V_read(in2_10_V_reg_857),
    .t2Col_11_V_read(in2_11_V_reg_869),
    .t2Col_12_V_read(in2_12_V_reg_881),
    .t2Col_13_V_read(in2_13_V_reg_893),
    .t2Col_14_V_read(in2_14_V_reg_905),
    .t2Col_15_V_read(in2_15_V_reg_917),
    .t2Col_16_V_read(in2_16_V_reg_923),
    .t2Col_17_V_read(in2_17_V_reg_929),
    .t2Col_18_V_read(in2_18_V_reg_935),
    .ap_return_0(grp_colSADSumScale1_fu_218_ap_return_0),
    .ap_return_1(grp_colSADSumScale1_fu_218_ap_return_1),
    .ap_return_2(grp_colSADSumScale1_fu_218_ap_return_2),
    .ap_return_3(grp_colSADSumScale1_fu_218_ap_return_3),
    .ap_return_4(grp_colSADSumScale1_fu_218_ap_return_4),
    .ap_return_5(grp_colSADSumScale1_fu_218_ap_return_5),
    .ap_return_6(grp_colSADSumScale1_fu_218_ap_return_6),
    .ap_ce(grp_colSADSumScale1_fu_218_ap_ce)
);

colZeroCntScale1 grp_colZeroCntScale1_fu_254(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .t1Col_3_V_read(in1_3_V_reg_767),
    .t1Col_4_V_read(in1_4_V_reg_779),
    .t1Col_5_V_read(in1_5_V_reg_791),
    .t1Col_6_V_read(in1_6_V_reg_803),
    .t1Col_7_V_read(in1_7_V_reg_815),
    .t1Col_8_V_read(in1_8_V_reg_827),
    .t1Col_9_V_read(in1_9_V_reg_839),
    .t1Col_10_V_read(in1_10_V_reg_851),
    .t1Col_11_V_read(in1_11_V_reg_863),
    .t1Col_12_V_read(in1_12_V_reg_875),
    .t1Col_13_V_read(in1_13_V_reg_887),
    .t1Col_14_V_read(in1_14_V_reg_899),
    .t1Col_15_V_read(in1_15_V_reg_911),
    .t2Col_0_V_read(in2_0_V_reg_749),
    .t2Col_1_V_read(in2_1_V_reg_755),
    .t2Col_2_V_read(in2_2_V_reg_761),
    .t2Col_3_V_read(in2_3_V_reg_773),
    .t2Col_4_V_read(in2_4_V_reg_785),
    .t2Col_5_V_read(in2_5_V_reg_797),
    .t2Col_6_V_read(in2_6_V_reg_809),
    .t2Col_7_V_read(in2_7_V_reg_821),
    .t2Col_8_V_read(in2_8_V_reg_833),
    .t2Col_9_V_read(in2_9_V_reg_845),
    .t2Col_10_V_read(in2_10_V_reg_857),
    .t2Col_11_V_read(in2_11_V_reg_869),
    .t2Col_12_V_read(in2_12_V_reg_881),
    .t2Col_13_V_read(in2_13_V_reg_893),
    .t2Col_14_V_read(in2_14_V_reg_905),
    .t2Col_15_V_read(in2_15_V_reg_917),
    .t2Col_16_V_read(in2_16_V_reg_923),
    .t2Col_17_V_read(in2_17_V_reg_929),
    .t2Col_18_V_read(in2_18_V_reg_935),
    .ap_return_0(grp_colZeroCntScale1_fu_254_ap_return_0),
    .ap_return_1(grp_colZeroCntScale1_fu_254_ap_return_1),
    .ap_return_2(grp_colZeroCntScale1_fu_254_ap_return_2),
    .ap_return_3(grp_colZeroCntScale1_fu_254_ap_return_3),
    .ap_return_4(grp_colZeroCntScale1_fu_254_ap_return_4),
    .ap_return_5(grp_colZeroCntScale1_fu_254_ap_return_5),
    .ap_return_6(grp_colZeroCntScale1_fu_254_ap_return_6),
    .ap_return_7(grp_colZeroCntScale1_fu_254_ap_return_7),
    .ap_return_8(grp_colZeroCntScale1_fu_254_ap_return_8),
    .ap_return_9(grp_colZeroCntScale1_fu_254_ap_return_9),
    .ap_return_10(grp_colZeroCntScale1_fu_254_ap_return_10),
    .ap_return_11(grp_colZeroCntScale1_fu_254_ap_return_11),
    .ap_return_12(grp_colZeroCntScale1_fu_254_ap_return_12),
    .ap_return_13(grp_colZeroCntScale1_fu_254_ap_return_13),
    .ap_return_14(grp_colZeroCntScale1_fu_254_ap_return_14),
    .ap_ce(grp_colZeroCntScale1_fu_254_ap_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_946 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_reg_204 <= indvar_flatten_next_reg_941;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_946 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        indvar_flatten2_reg_204 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_946 <= exitcond_flatten_fu_610_p2;
        exitcond_flatten_reg_946_pp0_iter1_reg <= exitcond_flatten_reg_946;
        in1_10_V_reg_851 <= {{colStream0_V_V_dout[43:40]}};
        in1_11_V_reg_863 <= {{colStream0_V_V_dout[47:44]}};
        in1_12_V_reg_875 <= {{colStream0_V_V_dout[51:48]}};
        in1_13_V_reg_887 <= {{colStream0_V_V_dout[55:52]}};
        in1_14_V_reg_899 <= {{colStream0_V_V_dout[59:56]}};
        in1_15_V_reg_911 <= {{colStream0_V_V_dout[63:60]}};
        in1_3_V_reg_767 <= {{colStream0_V_V_dout[15:12]}};
        in1_4_V_reg_779 <= {{colStream0_V_V_dout[19:16]}};
        in1_5_V_reg_791 <= {{colStream0_V_V_dout[23:20]}};
        in1_6_V_reg_803 <= {{colStream0_V_V_dout[27:24]}};
        in1_7_V_reg_815 <= {{colStream0_V_V_dout[31:28]}};
        in1_8_V_reg_827 <= {{colStream0_V_V_dout[35:32]}};
        in1_9_V_reg_839 <= {{colStream0_V_V_dout[39:36]}};
        in2_0_V_reg_749 <= in2_0_V_fu_290_p1;
        in2_10_V_reg_857 <= {{colStream1_V_V_dout[43:40]}};
        in2_11_V_reg_869 <= {{colStream1_V_V_dout[47:44]}};
        in2_12_V_reg_881 <= {{colStream1_V_V_dout[51:48]}};
        in2_13_V_reg_893 <= {{colStream1_V_V_dout[55:52]}};
        in2_14_V_reg_905 <= {{colStream1_V_V_dout[59:56]}};
        in2_15_V_reg_917 <= {{colStream1_V_V_dout[63:60]}};
        in2_16_V_reg_923 <= {{colStream1_V_V_dout[67:64]}};
        in2_17_V_reg_929 <= {{colStream1_V_V_dout[71:68]}};
        in2_18_V_reg_935 <= {{colStream1_V_V_dout[75:72]}};
        in2_1_V_reg_755 <= {{colStream1_V_V_dout[7:4]}};
        in2_2_V_reg_761 <= {{colStream1_V_V_dout[11:8]}};
        in2_3_V_reg_773 <= {{colStream1_V_V_dout[15:12]}};
        in2_4_V_reg_785 <= {{colStream1_V_V_dout[19:16]}};
        in2_5_V_reg_797 <= {{colStream1_V_V_dout[23:20]}};
        in2_6_V_reg_809 <= {{colStream1_V_V_dout[27:24]}};
        in2_7_V_reg_821 <= {{colStream1_V_V_dout[31:28]}};
        in2_8_V_reg_833 <= {{colStream1_V_V_dout[35:32]}};
        in2_9_V_reg_845 <= {{colStream1_V_V_dout[39:36]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        exitcond_flatten_reg_946_pp0_iter2_reg <= exitcond_flatten_reg_946_pp0_iter1_reg;
        exitcond_flatten_reg_946_pp0_iter3_reg <= exitcond_flatten_reg_946_pp0_iter2_reg;
        exitcond_flatten_reg_946_pp0_iter4_reg <= exitcond_flatten_reg_946_pp0_iter3_reg;
        refTagValidPixCnt_1_reg_995 <= grp_colZeroCntScale1_fu_254_ap_return_9;
        refTagValidPixCnt_2_reg_1000 <= grp_colZeroCntScale1_fu_254_ap_return_10;
        refTagValidPixCnt_3_reg_1005 <= grp_colZeroCntScale1_fu_254_ap_return_11;
        refTagValidPixCnt_4_reg_1010 <= grp_colZeroCntScale1_fu_254_ap_return_12;
        refTagValidPixCnt_5_reg_1015 <= grp_colZeroCntScale1_fu_254_ap_return_13;
        refTagValidPixCnt_6_reg_1020 <= grp_colZeroCntScale1_fu_254_ap_return_14;
        refTagValidPixCnt_reg_990 <= grp_colZeroCntScale1_fu_254_ap_return_8;
        tagColValidCnt_1_reg_960 <= grp_colZeroCntScale1_fu_254_ap_return_2;
        tagColValidCnt_2_reg_965 <= grp_colZeroCntScale1_fu_254_ap_return_3;
        tagColValidCnt_3_reg_970 <= grp_colZeroCntScale1_fu_254_ap_return_4;
        tagColValidCnt_4_reg_975 <= grp_colZeroCntScale1_fu_254_ap_return_5;
        tagColValidCnt_5_reg_980 <= grp_colZeroCntScale1_fu_254_ap_return_6;
        tagColValidCnt_6_reg_985 <= grp_colZeroCntScale1_fu_254_ap_return_7;
        tagColValidCnt_reg_955 <= grp_colZeroCntScale1_fu_254_ap_return_1;
        tmp_V_200_reg_950 <= grp_colZeroCntScale1_fu_254_ap_return_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_next_reg_941 <= indvar_flatten_next_fu_604_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_946_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_475)) begin
        if ((exitcond_flatten_reg_946 == 1'd1)) begin
            ap_phi_mux_indvar_flatten2_phi_fu_208_p6 = 7'd0;
        end else if ((exitcond_flatten_reg_946 == 1'd0)) begin
            ap_phi_mux_indvar_flatten2_phi_fu_208_p6 = indvar_flatten_next_reg_941;
        end else begin
            ap_phi_mux_indvar_flatten2_phi_fu_208_p6 = indvar_flatten2_reg_204;
        end
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_208_p6 = indvar_flatten2_reg_204;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_610_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        colStream0_V_V_blk_n = colStream0_V_V_empty_n;
    end else begin
        colStream0_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        colStream0_V_V_read = 1'b1;
    end else begin
        colStream0_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        colStream1_V_V_blk_n = colStream1_V_V_empty_n;
    end else begin
        colStream1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        colStream1_V_V_read = 1'b1;
    end else begin
        colStream1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_colSADSumScale1_fu_218_ap_ce = 1'b1;
    end else begin
        grp_colSADSumScale1_fu_218_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_colZeroCntScale1_fu_254_ap_ce = 1'b1;
    end else begin
        grp_colZeroCntScale1_fu_254_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        outStream_V_V_blk_n = outStream_V_V_full_n;
    end else begin
        outStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        outStream_V_V_write = 1'b1;
    end else begin
        outStream_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        refTagValidCntStream_V_V_blk_n = refTagValidCntStream_V_V_full_n;
    end else begin
        refTagValidCntStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        refTagValidCntStream_V_V_write = 1'b1;
    end else begin
        refTagValidCntStream_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        refZeroCntStream_V_V_blk_n = refZeroCntStream_V_V_full_n;
    end else begin
        refZeroCntStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        refZeroCntStream_V_V_write = 1'b1;
    end else begin
        refZeroCntStream_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tagColValidCntStream_V_V_blk_n = tagColValidCntStream_V_V_full_n;
    end else begin
        tagColValidCntStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tagColValidCntStream_V_V_write = 1'b1;
    end else begin
        tagColValidCntStream_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter5 == 1'b1) & ((refTagValidCntStream_V_V_full_n == 1'b0) | (tagColValidCntStream_V_V_full_n == 1'b0) | (outStream_V_V_full_n == 1'b0) | (refZeroCntStream_V_V_full_n == 1'b0))) | ((ap_start == 1'b1) & ((colStream1_V_V_empty_n == 1'b0) | (colStream0_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter5 == 1'b1) & ((refTagValidCntStream_V_V_full_n == 1'b0) | (tagColValidCntStream_V_V_full_n == 1'b0) | (outStream_V_V_full_n == 1'b0) | (refZeroCntStream_V_V_full_n == 1'b0))) | ((ap_start == 1'b1) & ((colStream1_V_V_empty_n == 1'b0) | (colStream0_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter5 == 1'b1) & ((refTagValidCntStream_V_V_full_n == 1'b0) | (tagColValidCntStream_V_V_full_n == 1'b0) | (outStream_V_V_full_n == 1'b0) | (refZeroCntStream_V_V_full_n == 1'b0))) | ((ap_start == 1'b1) & ((colStream1_V_V_empty_n == 1'b0) | (colStream0_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((colStream1_V_V_empty_n == 1'b0) | (colStream0_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter5 = ((refTagValidCntStream_V_V_full_n == 1'b0) | (tagColValidCntStream_V_V_full_n == 1'b0) | (outStream_V_V_full_n == 1'b0) | (refZeroCntStream_V_V_full_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_475 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign exitcond_flatten_fu_610_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_208_p6 == 7'd90) ? 1'b1 : 1'b0);

assign in2_0_V_fu_290_p1 = colStream1_V_V_dout[3:0];

assign indvar_flatten_next_fu_604_p2 = (7'd1 + ap_phi_mux_indvar_flatten2_phi_fu_208_p6);

assign outStream_V_V_din = {{{{{{{grp_colSADSumScale1_fu_218_ap_return_6}, {grp_colSADSumScale1_fu_218_ap_return_5}}, {grp_colSADSumScale1_fu_218_ap_return_4}}, {grp_colSADSumScale1_fu_218_ap_return_3}}, {grp_colSADSumScale1_fu_218_ap_return_2}}, {grp_colSADSumScale1_fu_218_ap_return_1}}, {grp_colSADSumScale1_fu_218_ap_return_0}};

assign refTagValidCntStream_V_V_din = {{{{{{{refTagValidPixCnt_6_reg_1020}, {refTagValidPixCnt_5_reg_1015}}, {refTagValidPixCnt_4_reg_1010}}, {refTagValidPixCnt_3_reg_1005}}, {refTagValidPixCnt_2_reg_1000}}, {refTagValidPixCnt_1_reg_995}}, {refTagValidPixCnt_reg_990}};

assign refZeroCntStream_V_V_din = tmp_V_200_reg_950;

assign tagColValidCntStream_V_V_din = {{{{{{{tagColValidCnt_6_reg_985}, {tagColValidCnt_5_reg_980}}, {tagColValidCnt_4_reg_975}}, {tagColValidCnt_3_reg_970}}, {tagColValidCnt_2_reg_965}}, {tagColValidCnt_1_reg_960}}, {tagColValidCnt_reg_955}};

endmodule //colStreamToColSumSca_3
