// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module combineOutputStream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        packetEventDataStrea_dout,
        packetEventDataStrea_empty_n,
        packetEventDataStrea_read,
        stageCornerStream_V_s_dout,
        stageCornerStream_V_s_empty_n,
        stageCornerStream_V_s_read,
        xStreamOut_V_V_TREADY,
        yStreamOut_V_V_TREADY,
        polStreamOut_V_V_TREADY,
        tsStreamOut_V_V_TREADY,
        isFinalCornerStream_s_TREADY,
        xStreamOut_V_V_TDATA,
        xStreamOut_V_V_TVALID,
        yStreamOut_V_V_TDATA,
        yStreamOut_V_V_TVALID,
        polStreamOut_V_V_TDATA,
        polStreamOut_V_V_TVALID,
        tsStreamOut_V_V_TDATA,
        tsStreamOut_V_V_TVALID,
        isFinalCornerStream_s_TDATA,
        isFinalCornerStream_s_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv64_0 = 64'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [95:0] packetEventDataStrea_dout;
input   packetEventDataStrea_empty_n;
output   packetEventDataStrea_read;
input  [0:0] stageCornerStream_V_s_dout;
input   stageCornerStream_V_s_empty_n;
output   stageCornerStream_V_s_read;
input   xStreamOut_V_V_TREADY;
input   yStreamOut_V_V_TREADY;
input   polStreamOut_V_V_TREADY;
input   tsStreamOut_V_V_TREADY;
input   isFinalCornerStream_s_TREADY;
output  [15:0] xStreamOut_V_V_TDATA;
output   xStreamOut_V_V_TVALID;
output  [15:0] yStreamOut_V_V_TDATA;
output   yStreamOut_V_V_TVALID;
output  [7:0] polStreamOut_V_V_TDATA;
output   polStreamOut_V_V_TVALID;
output  [63:0] tsStreamOut_V_V_TDATA;
output   tsStreamOut_V_V_TVALID;
output  [7:0] isFinalCornerStream_s_TDATA;
output   isFinalCornerStream_s_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg packetEventDataStrea_read;
reg stageCornerStream_V_s_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    xStreamOut_V_V_1_ack_in;
wire    yStreamOut_V_V_1_ack_in;
wire    polStreamOut_V_V_1_ack_in;
wire    tsStreamOut_V_V_1_ack_in;
wire    isFinalCornerStream_s_1_ack_in;
reg    ap_block_state1_io;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] xStreamOut_V_V_1_data_out;
reg    xStreamOut_V_V_1_vld_in;
wire    xStreamOut_V_V_1_vld_out;
wire    xStreamOut_V_V_1_ack_out;
reg   [15:0] xStreamOut_V_V_1_payload_A;
reg   [15:0] xStreamOut_V_V_1_payload_B;
reg    xStreamOut_V_V_1_sel_rd;
reg    xStreamOut_V_V_1_sel_wr;
wire    xStreamOut_V_V_1_sel;
wire    xStreamOut_V_V_1_load_A;
wire    xStreamOut_V_V_1_load_B;
reg   [1:0] xStreamOut_V_V_1_state;
wire    xStreamOut_V_V_1_state_cmp_full;
reg   [15:0] yStreamOut_V_V_1_data_out;
reg    yStreamOut_V_V_1_vld_in;
wire    yStreamOut_V_V_1_vld_out;
wire    yStreamOut_V_V_1_ack_out;
reg   [15:0] yStreamOut_V_V_1_payload_A;
reg   [15:0] yStreamOut_V_V_1_payload_B;
reg    yStreamOut_V_V_1_sel_rd;
reg    yStreamOut_V_V_1_sel_wr;
wire    yStreamOut_V_V_1_sel;
wire    yStreamOut_V_V_1_load_A;
wire    yStreamOut_V_V_1_load_B;
reg   [1:0] yStreamOut_V_V_1_state;
wire    yStreamOut_V_V_1_state_cmp_full;
reg   [7:0] polStreamOut_V_V_1_data_out;
reg    polStreamOut_V_V_1_vld_in;
wire    polStreamOut_V_V_1_vld_out;
wire    polStreamOut_V_V_1_ack_out;
reg   [7:0] polStreamOut_V_V_1_payload_A;
reg   [7:0] polStreamOut_V_V_1_payload_B;
reg    polStreamOut_V_V_1_sel_rd;
reg    polStreamOut_V_V_1_sel_wr;
wire    polStreamOut_V_V_1_sel;
wire    polStreamOut_V_V_1_load_A;
wire    polStreamOut_V_V_1_load_B;
reg   [1:0] polStreamOut_V_V_1_state;
wire    polStreamOut_V_V_1_state_cmp_full;
reg   [63:0] tsStreamOut_V_V_1_data_out;
reg    tsStreamOut_V_V_1_vld_in;
wire    tsStreamOut_V_V_1_vld_out;
wire    tsStreamOut_V_V_1_ack_out;
reg   [63:0] tsStreamOut_V_V_1_payload_A;
reg   [63:0] tsStreamOut_V_V_1_payload_B;
reg    tsStreamOut_V_V_1_sel_rd;
reg    tsStreamOut_V_V_1_sel_wr;
wire    tsStreamOut_V_V_1_sel;
wire    tsStreamOut_V_V_1_load_A;
wire    tsStreamOut_V_V_1_load_B;
reg   [1:0] tsStreamOut_V_V_1_state;
wire    tsStreamOut_V_V_1_state_cmp_full;
reg   [7:0] isFinalCornerStream_s_1_data_out;
reg    isFinalCornerStream_s_1_vld_in;
wire    isFinalCornerStream_s_1_vld_out;
wire    isFinalCornerStream_s_1_ack_out;
reg   [7:0] isFinalCornerStream_s_1_payload_A;
reg   [7:0] isFinalCornerStream_s_1_payload_B;
reg    isFinalCornerStream_s_1_sel_rd;
reg    isFinalCornerStream_s_1_sel_wr;
wire    isFinalCornerStream_s_1_sel;
wire    isFinalCornerStream_s_1_load_A;
wire    isFinalCornerStream_s_1_load_B;
reg   [1:0] isFinalCornerStream_s_1_state;
wire    isFinalCornerStream_s_1_state_cmp_full;
reg   [63:0] cornerEventsNum;
reg    packetEventDataStrea_blk_n;
wire    ap_block_pp0_stage0;
reg    stageCornerStream_V_s_blk_n;
reg    xStreamOut_V_V_TDATA_blk_n;
reg    yStreamOut_V_V_TDATA_blk_n;
reg    polStreamOut_V_V_TDATA_blk_n;
reg    tsStreamOut_V_V_TDATA_blk_n;
reg    isFinalCornerStream_s_TDATA_blk_n;
wire   [15:0] x_V_fu_134_p1;
wire   [63:0] p_Result_s_43_fu_157_p5;
reg   [0:0] tmp_V_reg_211;
wire   [7:0] tmp_V_16_cast_fu_170_p1;
wire   [7:0] tmp_V_18_cast_fu_175_p1;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] tmp_s_fu_184_p2;
reg    ap_block_pp0_stage0_01001;
wire   [62:0] p_Result_s_fu_147_p4;
wire   [0:0] pol_V_fu_139_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 xStreamOut_V_V_1_sel_rd = 1'b0;
#0 xStreamOut_V_V_1_sel_wr = 1'b0;
#0 xStreamOut_V_V_1_state = 2'd0;
#0 yStreamOut_V_V_1_sel_rd = 1'b0;
#0 yStreamOut_V_V_1_sel_wr = 1'b0;
#0 yStreamOut_V_V_1_state = 2'd0;
#0 polStreamOut_V_V_1_sel_rd = 1'b0;
#0 polStreamOut_V_V_1_sel_wr = 1'b0;
#0 polStreamOut_V_V_1_state = 2'd0;
#0 tsStreamOut_V_V_1_sel_rd = 1'b0;
#0 tsStreamOut_V_V_1_sel_wr = 1'b0;
#0 tsStreamOut_V_V_1_state = 2'd0;
#0 isFinalCornerStream_s_1_sel_rd = 1'b0;
#0 isFinalCornerStream_s_1_sel_wr = 1'b0;
#0 isFinalCornerStream_s_1_state = 2'd0;
#0 cornerEventsNum = 64'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        isFinalCornerStream_s_1_sel_rd <= 1'b0;
    end else begin
        if (((isFinalCornerStream_s_1_ack_out == 1'b1) & (isFinalCornerStream_s_1_vld_out == 1'b1))) begin
            isFinalCornerStream_s_1_sel_rd <= ~isFinalCornerStream_s_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        isFinalCornerStream_s_1_sel_wr <= 1'b0;
    end else begin
        if (((isFinalCornerStream_s_1_ack_in == 1'b1) & (isFinalCornerStream_s_1_vld_in == 1'b1))) begin
            isFinalCornerStream_s_1_sel_wr <= ~isFinalCornerStream_s_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        isFinalCornerStream_s_1_state <= 2'd0;
    end else begin
        if ((((isFinalCornerStream_s_1_vld_in == 1'b0) & (isFinalCornerStream_s_1_state == 2'd2)) | ((isFinalCornerStream_s_1_vld_in == 1'b0) & (isFinalCornerStream_s_1_ack_out == 1'b1) & (isFinalCornerStream_s_1_state == 2'd3)))) begin
            isFinalCornerStream_s_1_state <= 2'd2;
        end else if ((((isFinalCornerStream_s_1_ack_out == 1'b0) & (isFinalCornerStream_s_1_state == 2'd1)) | ((isFinalCornerStream_s_1_ack_out == 1'b0) & (isFinalCornerStream_s_1_vld_in == 1'b1) & (isFinalCornerStream_s_1_state == 2'd3)))) begin
            isFinalCornerStream_s_1_state <= 2'd1;
        end else if (((~((isFinalCornerStream_s_1_vld_in == 1'b0) & (isFinalCornerStream_s_1_ack_out == 1'b1)) & ~((isFinalCornerStream_s_1_ack_out == 1'b0) & (isFinalCornerStream_s_1_vld_in == 1'b1)) & (isFinalCornerStream_s_1_state == 2'd3)) | ((isFinalCornerStream_s_1_ack_out == 1'b1) & (isFinalCornerStream_s_1_state == 2'd1)) | ((isFinalCornerStream_s_1_vld_in == 1'b1) & (isFinalCornerStream_s_1_state == 2'd2)))) begin
            isFinalCornerStream_s_1_state <= 2'd3;
        end else begin
            isFinalCornerStream_s_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        polStreamOut_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((polStreamOut_V_V_1_ack_out == 1'b1) & (polStreamOut_V_V_1_vld_out == 1'b1))) begin
            polStreamOut_V_V_1_sel_rd <= ~polStreamOut_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        polStreamOut_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((polStreamOut_V_V_1_ack_in == 1'b1) & (polStreamOut_V_V_1_vld_in == 1'b1))) begin
            polStreamOut_V_V_1_sel_wr <= ~polStreamOut_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        polStreamOut_V_V_1_state <= 2'd0;
    end else begin
        if ((((polStreamOut_V_V_1_vld_in == 1'b0) & (polStreamOut_V_V_1_state == 2'd2)) | ((polStreamOut_V_V_1_vld_in == 1'b0) & (polStreamOut_V_V_1_ack_out == 1'b1) & (polStreamOut_V_V_1_state == 2'd3)))) begin
            polStreamOut_V_V_1_state <= 2'd2;
        end else if ((((polStreamOut_V_V_1_ack_out == 1'b0) & (polStreamOut_V_V_1_state == 2'd1)) | ((polStreamOut_V_V_1_ack_out == 1'b0) & (polStreamOut_V_V_1_vld_in == 1'b1) & (polStreamOut_V_V_1_state == 2'd3)))) begin
            polStreamOut_V_V_1_state <= 2'd1;
        end else if (((~((polStreamOut_V_V_1_vld_in == 1'b0) & (polStreamOut_V_V_1_ack_out == 1'b1)) & ~((polStreamOut_V_V_1_ack_out == 1'b0) & (polStreamOut_V_V_1_vld_in == 1'b1)) & (polStreamOut_V_V_1_state == 2'd3)) | ((polStreamOut_V_V_1_ack_out == 1'b1) & (polStreamOut_V_V_1_state == 2'd1)) | ((polStreamOut_V_V_1_vld_in == 1'b1) & (polStreamOut_V_V_1_state == 2'd2)))) begin
            polStreamOut_V_V_1_state <= 2'd3;
        end else begin
            polStreamOut_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tsStreamOut_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((tsStreamOut_V_V_1_ack_out == 1'b1) & (tsStreamOut_V_V_1_vld_out == 1'b1))) begin
            tsStreamOut_V_V_1_sel_rd <= ~tsStreamOut_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tsStreamOut_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((tsStreamOut_V_V_1_ack_in == 1'b1) & (tsStreamOut_V_V_1_vld_in == 1'b1))) begin
            tsStreamOut_V_V_1_sel_wr <= ~tsStreamOut_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tsStreamOut_V_V_1_state <= 2'd0;
    end else begin
        if ((((tsStreamOut_V_V_1_vld_in == 1'b0) & (tsStreamOut_V_V_1_state == 2'd2)) | ((tsStreamOut_V_V_1_vld_in == 1'b0) & (tsStreamOut_V_V_1_ack_out == 1'b1) & (tsStreamOut_V_V_1_state == 2'd3)))) begin
            tsStreamOut_V_V_1_state <= 2'd2;
        end else if ((((tsStreamOut_V_V_1_ack_out == 1'b0) & (tsStreamOut_V_V_1_state == 2'd1)) | ((tsStreamOut_V_V_1_ack_out == 1'b0) & (tsStreamOut_V_V_1_vld_in == 1'b1) & (tsStreamOut_V_V_1_state == 2'd3)))) begin
            tsStreamOut_V_V_1_state <= 2'd1;
        end else if (((~((tsStreamOut_V_V_1_vld_in == 1'b0) & (tsStreamOut_V_V_1_ack_out == 1'b1)) & ~((tsStreamOut_V_V_1_ack_out == 1'b0) & (tsStreamOut_V_V_1_vld_in == 1'b1)) & (tsStreamOut_V_V_1_state == 2'd3)) | ((tsStreamOut_V_V_1_ack_out == 1'b1) & (tsStreamOut_V_V_1_state == 2'd1)) | ((tsStreamOut_V_V_1_vld_in == 1'b1) & (tsStreamOut_V_V_1_state == 2'd2)))) begin
            tsStreamOut_V_V_1_state <= 2'd3;
        end else begin
            tsStreamOut_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        xStreamOut_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((xStreamOut_V_V_1_ack_out == 1'b1) & (xStreamOut_V_V_1_vld_out == 1'b1))) begin
            xStreamOut_V_V_1_sel_rd <= ~xStreamOut_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        xStreamOut_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((xStreamOut_V_V_1_vld_in == 1'b1) & (xStreamOut_V_V_1_ack_in == 1'b1))) begin
            xStreamOut_V_V_1_sel_wr <= ~xStreamOut_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        xStreamOut_V_V_1_state <= 2'd0;
    end else begin
        if ((((xStreamOut_V_V_1_vld_in == 1'b0) & (xStreamOut_V_V_1_state == 2'd2)) | ((xStreamOut_V_V_1_vld_in == 1'b0) & (xStreamOut_V_V_1_ack_out == 1'b1) & (xStreamOut_V_V_1_state == 2'd3)))) begin
            xStreamOut_V_V_1_state <= 2'd2;
        end else if ((((xStreamOut_V_V_1_ack_out == 1'b0) & (xStreamOut_V_V_1_state == 2'd1)) | ((xStreamOut_V_V_1_ack_out == 1'b0) & (xStreamOut_V_V_1_vld_in == 1'b1) & (xStreamOut_V_V_1_state == 2'd3)))) begin
            xStreamOut_V_V_1_state <= 2'd1;
        end else if (((~((xStreamOut_V_V_1_vld_in == 1'b0) & (xStreamOut_V_V_1_ack_out == 1'b1)) & ~((xStreamOut_V_V_1_ack_out == 1'b0) & (xStreamOut_V_V_1_vld_in == 1'b1)) & (xStreamOut_V_V_1_state == 2'd3)) | ((xStreamOut_V_V_1_ack_out == 1'b1) & (xStreamOut_V_V_1_state == 2'd1)) | ((xStreamOut_V_V_1_vld_in == 1'b1) & (xStreamOut_V_V_1_state == 2'd2)))) begin
            xStreamOut_V_V_1_state <= 2'd3;
        end else begin
            xStreamOut_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        yStreamOut_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((yStreamOut_V_V_1_ack_out == 1'b1) & (yStreamOut_V_V_1_vld_out == 1'b1))) begin
            yStreamOut_V_V_1_sel_rd <= ~yStreamOut_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        yStreamOut_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((yStreamOut_V_V_1_ack_in == 1'b1) & (yStreamOut_V_V_1_vld_in == 1'b1))) begin
            yStreamOut_V_V_1_sel_wr <= ~yStreamOut_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        yStreamOut_V_V_1_state <= 2'd0;
    end else begin
        if ((((yStreamOut_V_V_1_vld_in == 1'b0) & (yStreamOut_V_V_1_state == 2'd2)) | ((yStreamOut_V_V_1_vld_in == 1'b0) & (yStreamOut_V_V_1_ack_out == 1'b1) & (yStreamOut_V_V_1_state == 2'd3)))) begin
            yStreamOut_V_V_1_state <= 2'd2;
        end else if ((((yStreamOut_V_V_1_ack_out == 1'b0) & (yStreamOut_V_V_1_state == 2'd1)) | ((yStreamOut_V_V_1_ack_out == 1'b0) & (yStreamOut_V_V_1_vld_in == 1'b1) & (yStreamOut_V_V_1_state == 2'd3)))) begin
            yStreamOut_V_V_1_state <= 2'd1;
        end else if (((~((yStreamOut_V_V_1_vld_in == 1'b0) & (yStreamOut_V_V_1_ack_out == 1'b1)) & ~((yStreamOut_V_V_1_ack_out == 1'b0) & (yStreamOut_V_V_1_vld_in == 1'b1)) & (yStreamOut_V_V_1_state == 2'd3)) | ((yStreamOut_V_V_1_ack_out == 1'b1) & (yStreamOut_V_V_1_state == 2'd1)) | ((yStreamOut_V_V_1_vld_in == 1'b1) & (yStreamOut_V_V_1_state == 2'd2)))) begin
            yStreamOut_V_V_1_state <= 2'd3;
        end else begin
            yStreamOut_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_V_reg_211 == 1'd1))) begin
        cornerEventsNum <= tmp_s_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((isFinalCornerStream_s_1_load_A == 1'b1)) begin
        isFinalCornerStream_s_1_payload_A <= tmp_V_18_cast_fu_175_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((isFinalCornerStream_s_1_load_B == 1'b1)) begin
        isFinalCornerStream_s_1_payload_B <= tmp_V_18_cast_fu_175_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((polStreamOut_V_V_1_load_A == 1'b1)) begin
        polStreamOut_V_V_1_payload_A <= tmp_V_16_cast_fu_170_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((polStreamOut_V_V_1_load_B == 1'b1)) begin
        polStreamOut_V_V_1_payload_B <= tmp_V_16_cast_fu_170_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_V_reg_211 <= stageCornerStream_V_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((tsStreamOut_V_V_1_load_A == 1'b1)) begin
        tsStreamOut_V_V_1_payload_A <= p_Result_s_43_fu_157_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((tsStreamOut_V_V_1_load_B == 1'b1)) begin
        tsStreamOut_V_V_1_payload_B <= p_Result_s_43_fu_157_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((xStreamOut_V_V_1_load_A == 1'b1)) begin
        xStreamOut_V_V_1_payload_A <= x_V_fu_134_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((xStreamOut_V_V_1_load_B == 1'b1)) begin
        xStreamOut_V_V_1_payload_B <= x_V_fu_134_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((yStreamOut_V_V_1_load_A == 1'b1)) begin
        yStreamOut_V_V_1_payload_A <= {{packetEventDataStrea_dout[31:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((yStreamOut_V_V_1_load_B == 1'b1)) begin
        yStreamOut_V_V_1_payload_B <= {{packetEventDataStrea_dout[31:16]}};
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((isFinalCornerStream_s_1_sel == 1'b1)) begin
        isFinalCornerStream_s_1_data_out = isFinalCornerStream_s_1_payload_B;
    end else begin
        isFinalCornerStream_s_1_data_out = isFinalCornerStream_s_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        isFinalCornerStream_s_1_vld_in = 1'b1;
    end else begin
        isFinalCornerStream_s_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        isFinalCornerStream_s_TDATA_blk_n = isFinalCornerStream_s_1_state[1'd1];
    end else begin
        isFinalCornerStream_s_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        packetEventDataStrea_blk_n = packetEventDataStrea_empty_n;
    end else begin
        packetEventDataStrea_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        packetEventDataStrea_read = 1'b1;
    end else begin
        packetEventDataStrea_read = 1'b0;
    end
end

always @ (*) begin
    if ((polStreamOut_V_V_1_sel == 1'b1)) begin
        polStreamOut_V_V_1_data_out = polStreamOut_V_V_1_payload_B;
    end else begin
        polStreamOut_V_V_1_data_out = polStreamOut_V_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        polStreamOut_V_V_1_vld_in = 1'b1;
    end else begin
        polStreamOut_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        polStreamOut_V_V_TDATA_blk_n = polStreamOut_V_V_1_state[1'd1];
    end else begin
        polStreamOut_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stageCornerStream_V_s_blk_n = stageCornerStream_V_s_empty_n;
    end else begin
        stageCornerStream_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stageCornerStream_V_s_read = 1'b1;
    end else begin
        stageCornerStream_V_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((tsStreamOut_V_V_1_sel == 1'b1)) begin
        tsStreamOut_V_V_1_data_out = tsStreamOut_V_V_1_payload_B;
    end else begin
        tsStreamOut_V_V_1_data_out = tsStreamOut_V_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tsStreamOut_V_V_1_vld_in = 1'b1;
    end else begin
        tsStreamOut_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tsStreamOut_V_V_TDATA_blk_n = tsStreamOut_V_V_1_state[1'd1];
    end else begin
        tsStreamOut_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((xStreamOut_V_V_1_sel == 1'b1)) begin
        xStreamOut_V_V_1_data_out = xStreamOut_V_V_1_payload_B;
    end else begin
        xStreamOut_V_V_1_data_out = xStreamOut_V_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xStreamOut_V_V_1_vld_in = 1'b1;
    end else begin
        xStreamOut_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        xStreamOut_V_V_TDATA_blk_n = xStreamOut_V_V_1_state[1'd1];
    end else begin
        xStreamOut_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((yStreamOut_V_V_1_sel == 1'b1)) begin
        yStreamOut_V_V_1_data_out = yStreamOut_V_V_1_payload_B;
    end else begin
        yStreamOut_V_V_1_data_out = yStreamOut_V_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        yStreamOut_V_V_1_vld_in = 1'b1;
    end else begin
        yStreamOut_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        yStreamOut_V_V_TDATA_blk_n = yStreamOut_V_V_1_state[1'd1];
    end else begin
        yStreamOut_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((isFinalCornerStream_s_1_ack_in == 1'b0) | (tsStreamOut_V_V_1_ack_in == 1'b0) | (polStreamOut_V_V_1_ack_in == 1'b0) | (yStreamOut_V_V_1_ack_in == 1'b0) | (xStreamOut_V_V_1_ack_in == 1'b0))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (stageCornerStream_V_s_empty_n == 1'b0) | (packetEventDataStrea_empty_n == 1'b0) | (ap_done_reg == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((isFinalCornerStream_s_1_ack_in == 1'b0) | (tsStreamOut_V_V_1_ack_in == 1'b0) | (polStreamOut_V_V_1_ack_in == 1'b0) | (yStreamOut_V_V_1_ack_in == 1'b0) | (xStreamOut_V_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state2_io))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (stageCornerStream_V_s_empty_n == 1'b0) | (packetEventDataStrea_empty_n == 1'b0) | (1'b1 == ap_block_state1_io) | (ap_done_reg == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((isFinalCornerStream_s_1_ack_in == 1'b0) | (tsStreamOut_V_V_1_ack_in == 1'b0) | (polStreamOut_V_V_1_ack_in == 1'b0) | (yStreamOut_V_V_1_ack_in == 1'b0) | (xStreamOut_V_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state2_io))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (stageCornerStream_V_s_empty_n == 1'b0) | (packetEventDataStrea_empty_n == 1'b0) | (1'b1 == ap_block_state1_io) | (ap_done_reg == 1'b1))));
end

always @ (*) begin
    ap_block_state1_io = ((isFinalCornerStream_s_1_ack_in == 1'b0) | (tsStreamOut_V_V_1_ack_in == 1'b0) | (polStreamOut_V_V_1_ack_in == 1'b0) | (yStreamOut_V_V_1_ack_in == 1'b0) | (xStreamOut_V_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (stageCornerStream_V_s_empty_n == 1'b0) | (packetEventDataStrea_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_io = ((isFinalCornerStream_s_1_ack_in == 1'b0) | (tsStreamOut_V_V_1_ack_in == 1'b0) | (polStreamOut_V_V_1_ack_in == 1'b0) | (yStreamOut_V_V_1_ack_in == 1'b0) | (xStreamOut_V_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((isFinalCornerStream_s_1_ack_in == 1'b0) | (tsStreamOut_V_V_1_ack_in == 1'b0) | (polStreamOut_V_V_1_ack_in == 1'b0) | (yStreamOut_V_V_1_ack_in == 1'b0) | (xStreamOut_V_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign isFinalCornerStream_s_1_ack_in = isFinalCornerStream_s_1_state[1'd1];

assign isFinalCornerStream_s_1_ack_out = isFinalCornerStream_s_TREADY;

assign isFinalCornerStream_s_1_load_A = (isFinalCornerStream_s_1_state_cmp_full & ~isFinalCornerStream_s_1_sel_wr);

assign isFinalCornerStream_s_1_load_B = (isFinalCornerStream_s_1_state_cmp_full & isFinalCornerStream_s_1_sel_wr);

assign isFinalCornerStream_s_1_sel = isFinalCornerStream_s_1_sel_rd;

assign isFinalCornerStream_s_1_state_cmp_full = ((isFinalCornerStream_s_1_state != 2'd1) ? 1'b1 : 1'b0);

assign isFinalCornerStream_s_1_vld_out = isFinalCornerStream_s_1_state[1'd0];

assign isFinalCornerStream_s_TDATA = isFinalCornerStream_s_1_data_out;

assign isFinalCornerStream_s_TVALID = isFinalCornerStream_s_1_state[1'd0];

assign p_Result_s_43_fu_157_p5 = {{ap_const_lv64_0[63:63]}, {p_Result_s_fu_147_p4}};

assign p_Result_s_fu_147_p4 = {{packetEventDataStrea_dout[95:33]}};

assign polStreamOut_V_V_1_ack_in = polStreamOut_V_V_1_state[1'd1];

assign polStreamOut_V_V_1_ack_out = polStreamOut_V_V_TREADY;

assign polStreamOut_V_V_1_load_A = (polStreamOut_V_V_1_state_cmp_full & ~polStreamOut_V_V_1_sel_wr);

assign polStreamOut_V_V_1_load_B = (polStreamOut_V_V_1_state_cmp_full & polStreamOut_V_V_1_sel_wr);

assign polStreamOut_V_V_1_sel = polStreamOut_V_V_1_sel_rd;

assign polStreamOut_V_V_1_state_cmp_full = ((polStreamOut_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign polStreamOut_V_V_1_vld_out = polStreamOut_V_V_1_state[1'd0];

assign polStreamOut_V_V_TDATA = polStreamOut_V_V_1_data_out;

assign polStreamOut_V_V_TVALID = polStreamOut_V_V_1_state[1'd0];

assign pol_V_fu_139_p3 = packetEventDataStrea_dout[32'd32];

assign tmp_V_16_cast_fu_170_p1 = pol_V_fu_139_p3;

assign tmp_V_18_cast_fu_175_p1 = stageCornerStream_V_s_dout;

assign tmp_s_fu_184_p2 = (cornerEventsNum + 64'd1);

assign tsStreamOut_V_V_1_ack_in = tsStreamOut_V_V_1_state[1'd1];

assign tsStreamOut_V_V_1_ack_out = tsStreamOut_V_V_TREADY;

assign tsStreamOut_V_V_1_load_A = (tsStreamOut_V_V_1_state_cmp_full & ~tsStreamOut_V_V_1_sel_wr);

assign tsStreamOut_V_V_1_load_B = (tsStreamOut_V_V_1_state_cmp_full & tsStreamOut_V_V_1_sel_wr);

assign tsStreamOut_V_V_1_sel = tsStreamOut_V_V_1_sel_rd;

assign tsStreamOut_V_V_1_state_cmp_full = ((tsStreamOut_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign tsStreamOut_V_V_1_vld_out = tsStreamOut_V_V_1_state[1'd0];

assign tsStreamOut_V_V_TDATA = tsStreamOut_V_V_1_data_out;

assign tsStreamOut_V_V_TVALID = tsStreamOut_V_V_1_state[1'd0];

assign xStreamOut_V_V_1_ack_in = xStreamOut_V_V_1_state[1'd1];

assign xStreamOut_V_V_1_ack_out = xStreamOut_V_V_TREADY;

assign xStreamOut_V_V_1_load_A = (xStreamOut_V_V_1_state_cmp_full & ~xStreamOut_V_V_1_sel_wr);

assign xStreamOut_V_V_1_load_B = (xStreamOut_V_V_1_state_cmp_full & xStreamOut_V_V_1_sel_wr);

assign xStreamOut_V_V_1_sel = xStreamOut_V_V_1_sel_rd;

assign xStreamOut_V_V_1_state_cmp_full = ((xStreamOut_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign xStreamOut_V_V_1_vld_out = xStreamOut_V_V_1_state[1'd0];

assign xStreamOut_V_V_TDATA = xStreamOut_V_V_1_data_out;

assign xStreamOut_V_V_TVALID = xStreamOut_V_V_1_state[1'd0];

assign x_V_fu_134_p1 = packetEventDataStrea_dout[15:0];

assign yStreamOut_V_V_1_ack_in = yStreamOut_V_V_1_state[1'd1];

assign yStreamOut_V_V_1_ack_out = yStreamOut_V_V_TREADY;

assign yStreamOut_V_V_1_load_A = (yStreamOut_V_V_1_state_cmp_full & ~yStreamOut_V_V_1_sel_wr);

assign yStreamOut_V_V_1_load_B = (yStreamOut_V_V_1_state_cmp_full & yStreamOut_V_V_1_sel_wr);

assign yStreamOut_V_V_1_sel = yStreamOut_V_V_1_sel_rd;

assign yStreamOut_V_V_1_state_cmp_full = ((yStreamOut_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign yStreamOut_V_V_1_vld_out = yStreamOut_V_V_1_state[1'd0];

assign yStreamOut_V_V_TDATA = yStreamOut_V_V_1_data_out;

assign yStreamOut_V_V_TVALID = yStreamOut_V_V_1_state[1'd0];

endmodule //combineOutputStream
