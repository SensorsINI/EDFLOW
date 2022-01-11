// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:41:22 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_usb_cdc_core_0_0/brd_usb_cdc_core_0_0_sim_netlist.v
// Design      : brd_usb_cdc_core_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_usb_cdc_core_0_0,usb_cdc_core,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "usb_cdc_core,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_usb_cdc_core_0_0
   (clk_i,
    rst_i,
    enable_i,
    utmi_data_in_i,
    utmi_txready_i,
    utmi_rxvalid_i,
    utmi_rxactive_i,
    utmi_rxerror_i,
    utmi_linestate_i,
    inport_valid_i,
    inport_data_i,
    outport_accept_i,
    ctrl_host_ack_i,
    setup_token_valid_intr_o,
    setup_valid_conter_q_o,
    state_r_do,
    usb_rst_time_do,
    token_valid_w_do,
    token_dev_w_do,
    token_ep_w_do,
    current_addr_i_do,
    reg_dev_addr_i_do,
    ctrl_sending_r_do,
    ctrl_send_accept_w_do,
    desc_addr_q_do,
    setup_valid_q_do,
    setup_frame_q_do,
    rx_last_w_do,
    bmRequestType_w_do,
    bRequest_w_do,
    wValue_w_do,
    usb_reset_w_do,
    usb_reset_counter_q_do,
    debug_counter_q_do,
    current_token_debug_counter_q_do,
    token_valid_counter_q_do,
    setup_wr_idx_q_do,
    ep0_rx_valid_w_do,
    rx_strb_w_do,
    ctrl_txvalid_q_do,
    ctrl_txdata_q_do,
    ctrl_txstall_q_do,
    ctrl_stall_r_do,
    ctrl_ack_r_do,
    readAXIBRAM_r_do,
    sie_tx_state_q_o,
    usbf_tx_valid_q_do,
    usbf_tx_pid_q_do,
    usbf_state_q_do,
    usbf_ep_data_bit_r_do,
    usbf_new_data_bit_r_do,
    data_complete_o_do,
    setup_resp_valid_delay_q_do,
    token_valid_cnt_q_do,
    status_stage_w_do,
    ep2_tx_data_valid_w_do,
    ep2_tx_data_w_do,
    ep2_tx_data_last_w_do,
    ep2_tx_data_accept_w_do,
    inport_valid_q_do,
    usbfrx_shift_en_w_do,
    usbfrx_data_w_do,
    usbfrx_data_ready_w_do,
    usbfrx_crc_byte_w_do,
    usbfrx_rx_active_w_do,
    vendorReqRecived_o,
    axi_bram_addr_o,
    axi_bram_w_data_o,
    axi_bram_r_data_i,
    utmi_data_out_o,
    utmi_txvalid_o,
    utmi_op_mode_o,
    utmi_xcvrselect_o,
    utmi_termselect_o,
    utmi_dppulldown_o,
    utmi_dmpulldown_o,
    tx_sent_data_counter_o,
    inport_accept_o,
    outport_valid_o,
    outport_data_o,
    rx_out_do,
    ep0_rx_setup_w_do);
  input clk_i;
  input rst_i;
  input enable_i;
  input [7:0]utmi_data_in_i;
  input utmi_txready_i;
  input utmi_rxvalid_i;
  input utmi_rxactive_i;
  input utmi_rxerror_i;
  input [1:0]utmi_linestate_i;
  input inport_valid_i;
  input [7:0]inport_data_i;
  input outport_accept_i;
  input ctrl_host_ack_i;
  output setup_token_valid_intr_o;
  output [15:0]setup_valid_conter_q_o;
  output [2:0]state_r_do;
  output [31:0]usb_rst_time_do;
  output token_valid_w_do;
  output [6:0]token_dev_w_do;
  output [3:0]token_ep_w_do;
  output [6:0]current_addr_i_do;
  output [6:0]reg_dev_addr_i_do;
  output ctrl_sending_r_do;
  output ctrl_send_accept_w_do;
  output [6:0]desc_addr_q_do;
  output setup_valid_q_do;
  output setup_frame_q_do;
  output rx_last_w_do;
  output [7:0]bmRequestType_w_do;
  output [7:0]bRequest_w_do;
  output [15:0]wValue_w_do;
  output usb_reset_w_do;
  output [7:0]usb_reset_counter_q_do;
  output [63:0]debug_counter_q_do;
  output [63:0]current_token_debug_counter_q_do;
  output [7:0]token_valid_counter_q_do;
  output [2:0]setup_wr_idx_q_do;
  output ep0_rx_valid_w_do;
  output rx_strb_w_do;
  output ctrl_txvalid_q_do;
  output [7:0]ctrl_txdata_q_do;
  output ctrl_txstall_q_do;
  output ctrl_stall_r_do;
  output ctrl_ack_r_do;
  output readAXIBRAM_r_do;
  output [2:0]sie_tx_state_q_o;
  output usbf_tx_valid_q_do;
  output [7:0]usbf_tx_pid_q_do;
  output [2:0]usbf_state_q_do;
  output usbf_ep_data_bit_r_do;
  output usbf_new_data_bit_r_do;
  output data_complete_o_do;
  output setup_resp_valid_delay_q_do;
  output [31:0]token_valid_cnt_q_do;
  output status_stage_w_do;
  output ep2_tx_data_valid_w_do;
  output [7:0]ep2_tx_data_w_do;
  output ep2_tx_data_last_w_do;
  output ep2_tx_data_accept_w_do;
  output inport_valid_q_do;
  output usbfrx_shift_en_w_do;
  output [7:0]usbfrx_data_w_do;
  output usbfrx_data_ready_w_do;
  output usbfrx_crc_byte_w_do;
  output usbfrx_rx_active_w_do;
  output vendorReqRecived_o;
  output [1:0]axi_bram_addr_o;
  output [7:0]axi_bram_w_data_o;
  input [7:0]axi_bram_r_data_i;
  output [7:0]utmi_data_out_o;
  output utmi_txvalid_o;
  output [1:0]utmi_op_mode_o;
  output [1:0]utmi_xcvrselect_o;
  output utmi_termselect_o;
  output utmi_dppulldown_o;
  output utmi_dmpulldown_o;
  output [15:0]tx_sent_data_counter_o;
  output inport_accept_o;
  output outport_valid_o;
  output [7:0]outport_data_o;
  output rx_out_do;
  output ep0_rx_setup_w_do;

  wire \<const0> ;
  wire [1:0]axi_bram_addr_o;
  wire [7:0]axi_bram_r_data_i;
  wire [7:0]axi_bram_w_data_o;
  wire [7:0]bRequest_w_do;
  wire [7:0]bmRequestType_w_do;
  wire clk_i;
  wire ctrl_ack_r_do;
  wire ctrl_host_ack_i;
  wire ctrl_send_accept_w_do;
  wire ctrl_sending_r_do;
  wire ctrl_stall_r_do;
  wire [7:0]ctrl_txdata_q_do;
  wire ctrl_txstall_q_do;
  wire ctrl_txvalid_q_do;
  wire [6:0]current_addr_i_do;
  wire [63:0]current_token_debug_counter_q_do;
  wire data_complete_o_do;
  wire [63:0]debug_counter_q_do;
  wire [6:0]desc_addr_q_do;
  wire enable_i;
  wire ep0_rx_setup_w_do;
  wire ep0_rx_valid_w_do;
  wire ep2_tx_data_accept_w_do;
  wire ep2_tx_data_last_w_do;
  wire ep2_tx_data_valid_w_do;
  wire [7:0]ep2_tx_data_w_do;
  wire inport_accept_o;
  wire [7:0]inport_data_i;
  wire inport_valid_i;
  wire inport_valid_q_do;
  wire outport_accept_i;
  wire [7:0]outport_data_o;
  wire outport_valid_o;
  wire readAXIBRAM_r_do;
  wire [6:0]reg_dev_addr_i_do;
  wire rst_i;
  wire rx_last_w_do;
  wire rx_out_do;
  wire rx_strb_w_do;
  wire setup_frame_q_do;
  wire setup_resp_valid_delay_q_do;
  wire setup_token_valid_intr_o;
  wire [15:0]setup_valid_conter_q_o;
  wire setup_valid_q_do;
  wire [2:0]setup_wr_idx_q_do;
  wire [2:0]sie_tx_state_q_o;
  wire [2:0]state_r_do;
  wire status_stage_w_do;
  wire [6:0]token_dev_w_do;
  wire [3:0]token_ep_w_do;
  wire [25:0]\^token_valid_cnt_q_do ;
  wire [7:0]token_valid_counter_q_do;
  wire token_valid_w_do;
  wire [15:0]tx_sent_data_counter_o;
  wire [7:0]usb_reset_counter_q_do;
  wire usb_reset_w_do;
  wire [19:0]\^usb_rst_time_do ;
  wire usbf_ep_data_bit_r_do;
  wire usbf_new_data_bit_r_do;
  wire [2:0]usbf_state_q_do;
  wire [7:0]\^usbf_tx_pid_q_do ;
  wire usbf_tx_valid_q_do;
  wire usbfrx_crc_byte_w_do;
  wire usbfrx_data_ready_w_do;
  wire [7:0]usbfrx_data_w_do;
  wire usbfrx_rx_active_w_do;
  wire usbfrx_shift_en_w_do;
  wire [7:0]utmi_data_in_i;
  wire [7:0]utmi_data_out_o;
  wire [1:0]utmi_linestate_i;
  wire [0:0]\^utmi_op_mode_o ;
  wire utmi_rxactive_i;
  wire utmi_rxvalid_i;
  wire utmi_termselect_o;
  wire utmi_txready_i;
  wire utmi_txvalid_o;
  wire [0:0]\^utmi_xcvrselect_o ;
  wire vendorReqRecived_o;
  wire [15:0]wValue_w_do;

  assign token_valid_cnt_q_do[31] = \<const0> ;
  assign token_valid_cnt_q_do[30] = \<const0> ;
  assign token_valid_cnt_q_do[29] = \<const0> ;
  assign token_valid_cnt_q_do[28] = \<const0> ;
  assign token_valid_cnt_q_do[27] = \<const0> ;
  assign token_valid_cnt_q_do[26] = \<const0> ;
  assign token_valid_cnt_q_do[25:0] = \^token_valid_cnt_q_do [25:0];
  assign usb_rst_time_do[31] = \<const0> ;
  assign usb_rst_time_do[30] = \<const0> ;
  assign usb_rst_time_do[29] = \<const0> ;
  assign usb_rst_time_do[28] = \<const0> ;
  assign usb_rst_time_do[27] = \<const0> ;
  assign usb_rst_time_do[26] = \<const0> ;
  assign usb_rst_time_do[25] = \<const0> ;
  assign usb_rst_time_do[24] = \<const0> ;
  assign usb_rst_time_do[23] = \<const0> ;
  assign usb_rst_time_do[22] = \<const0> ;
  assign usb_rst_time_do[21] = \<const0> ;
  assign usb_rst_time_do[20] = \<const0> ;
  assign usb_rst_time_do[19:0] = \^usb_rst_time_do [19:0];
  assign usbf_tx_pid_q_do[7:6] = \^usbf_tx_pid_q_do [7:6];
  assign usbf_tx_pid_q_do[5] = \<const0> ;
  assign usbf_tx_pid_q_do[4:0] = \^usbf_tx_pid_q_do [4:0];
  assign utmi_dmpulldown_o = \<const0> ;
  assign utmi_dppulldown_o = \<const0> ;
  assign utmi_op_mode_o[1] = state_r_do[1];
  assign utmi_op_mode_o[0] = \^utmi_op_mode_o [0];
  assign utmi_xcvrselect_o[1] = \<const0> ;
  assign utmi_xcvrselect_o[0] = \^utmi_xcvrselect_o [0];
  GND GND
       (.G(\<const0> ));
  brd_usb_cdc_core_0_0_usb_cdc_core U0
       (.E(inport_accept_o),
        .Q(usbfrx_crc_byte_w_do),
        .axi_bram_addr_o(axi_bram_addr_o),
        .axi_bram_r_data_i(axi_bram_r_data_i),
        .axi_bram_w_data_o(axi_bram_w_data_o),
        .\bRequest_w_do[7] (bRequest_w_do),
        .\bmRequestType_w_do[7] (bmRequestType_w_do),
        .clk_i(clk_i),
        .ctrl_ack_r_do(ctrl_ack_r_do),
        .ctrl_host_ack_i(ctrl_host_ack_i),
        .ctrl_send_accept_w_do(ctrl_send_accept_w_do),
        .ctrl_sending_r_do(ctrl_sending_r_do),
        .ctrl_stall_r_do(ctrl_stall_r_do),
        .ctrl_txdata_q_do(ctrl_txdata_q_do),
        .ctrl_txstall_q_do(ctrl_txstall_q_do),
        .ctrl_txvalid_q_do(ctrl_txvalid_q_do),
        .current_addr_i_do(current_addr_i_do),
        .current_token_debug_counter_q_do(current_token_debug_counter_q_do),
        .data_complete_o_do(data_complete_o_do),
        .debug_counter_q_do(debug_counter_q_do),
        .\desc_addr_q_do[6] (desc_addr_q_do),
        .enable_i(enable_i),
        .ep0_rx_setup_w_do(ep0_rx_setup_w_do),
        .ep0_rx_valid_w_do(ep0_rx_valid_w_do),
        .ep2_tx_data_accept_w_do(ep2_tx_data_accept_w_do),
        .ep2_tx_data_last_w_do(ep2_tx_data_last_w_do),
        .ep2_tx_data_valid_w_do(ep2_tx_data_valid_w_do),
        .ep2_tx_data_w_do(ep2_tx_data_w_do),
        .inport_data_i(inport_data_i),
        .inport_valid_i(inport_valid_i),
        .inport_valid_q_do(inport_valid_q_do),
        .outport_accept_i(outport_accept_i),
        .outport_data_o(outport_data_o),
        .outport_valid_o(outport_valid_o),
        .readAXIBRAM_r_do(readAXIBRAM_r_do),
        .reg_dev_addr_i_do(reg_dev_addr_i_do),
        .rst_i(rst_i),
        .rx_last_w_do(rx_last_w_do),
        .rx_out_do(rx_out_do),
        .rx_strb_w_do(rx_strb_w_do),
        .setup_frame_q_do(setup_frame_q_do),
        .setup_resp_valid_delay_q_do(setup_resp_valid_delay_q_do),
        .setup_token_valid_intr_o(setup_token_valid_intr_o),
        .setup_valid_conter_q_o(setup_valid_conter_q_o),
        .setup_valid_q_do(setup_valid_q_do),
        .\setup_wr_idx_q_do[0] (setup_wr_idx_q_do[0]),
        .\setup_wr_idx_q_do[1] (setup_wr_idx_q_do[1]),
        .\setup_wr_idx_q_do[2] (setup_wr_idx_q_do[2]),
        .sie_tx_state_q_o(sie_tx_state_q_o),
        .state_r_do(state_r_do),
        .status_stage_w_do(status_stage_w_do),
        .token_dev_w_do(token_dev_w_do),
        .\token_ep_w_do[0] (token_ep_w_do[0]),
        .\token_ep_w_do[1] (token_ep_w_do[1]),
        .\token_ep_w_do[2] (token_ep_w_do[2]),
        .\token_ep_w_do[3] (token_ep_w_do[3]),
        .\token_valid_cnt_q_do[25] (\^token_valid_cnt_q_do ),
        .token_valid_counter_q_do(token_valid_counter_q_do),
        .token_valid_w_do(token_valid_w_do),
        .tx_sent_data_counter_o(tx_sent_data_counter_o),
        .usb_reset_counter_q_do(usb_reset_counter_q_do),
        .usb_reset_w_do(usb_reset_w_do),
        .\usb_rst_time_do[19] (\^usb_rst_time_do ),
        .usbf_ep_data_bit_r_do(usbf_ep_data_bit_r_do),
        .usbf_new_data_bit_r_do(usbf_new_data_bit_r_do),
        .\usbf_state_q_do[0] (usbf_state_q_do[0]),
        .\usbf_state_q_do[1] (usbf_state_q_do[1]),
        .\usbf_state_q_do[2] (usbf_state_q_do[2]),
        .usbf_tx_pid_q_do({\^usbf_tx_pid_q_do [7:6],\^usbf_tx_pid_q_do [4:0]}),
        .usbf_tx_valid_q_do(usbf_tx_valid_q_do),
        .usbfrx_data_ready_w_do(usbfrx_data_ready_w_do),
        .\usbfrx_data_w_do[0] (usbfrx_data_w_do[0]),
        .\usbfrx_data_w_do[1] (usbfrx_data_w_do[1]),
        .\usbfrx_data_w_do[2] (usbfrx_data_w_do[2]),
        .\usbfrx_data_w_do[3] (usbfrx_data_w_do[3]),
        .\usbfrx_data_w_do[4] (usbfrx_data_w_do[4]),
        .\usbfrx_data_w_do[5] (usbfrx_data_w_do[5]),
        .\usbfrx_data_w_do[6] (usbfrx_data_w_do[6]),
        .\usbfrx_data_w_do[7] (usbfrx_data_w_do[7]),
        .usbfrx_rx_active_w_do(usbfrx_rx_active_w_do),
        .usbfrx_shift_en_w_do(usbfrx_shift_en_w_do),
        .utmi_data_in_i(utmi_data_in_i),
        .utmi_data_out_o({utmi_data_out_o[5],utmi_data_out_o[1:0]}),
        .\utmi_data_out_o[3] (utmi_data_out_o[3]),
        .\utmi_data_out_o[4] (utmi_data_out_o[4]),
        .\utmi_data_out_o[6] (utmi_data_out_o[6]),
        .\utmi_data_out_o[7] (utmi_data_out_o[7]),
        .utmi_data_out_o_2_sp_1(utmi_data_out_o[2]),
        .utmi_linestate_i(utmi_linestate_i),
        .utmi_op_mode_o(\^utmi_op_mode_o ),
        .utmi_rxactive_i(utmi_rxactive_i),
        .utmi_rxvalid_i(utmi_rxvalid_i),
        .utmi_termselect_o(utmi_termselect_o),
        .utmi_txready_i(utmi_txready_i),
        .utmi_txvalid_o(utmi_txvalid_o),
        .utmi_xcvrselect_o(\^utmi_xcvrselect_o ),
        .vendorReqRecived_o(vendorReqRecived_o),
        .wValue_w_do(wValue_w_do[7:0]),
        .\wValue_w_do[15] (wValue_w_do[15:8]));
endmodule

(* ORIG_REF_NAME = "usb_cdc_core" *) 
module brd_usb_cdc_core_0_0_usb_cdc_core
   (usbfrx_shift_en_w_do,
    \usbfrx_data_w_do[7] ,
    \usbfrx_data_w_do[6] ,
    \usbfrx_data_w_do[5] ,
    \usbfrx_data_w_do[4] ,
    \usbfrx_data_w_do[3] ,
    \usbfrx_data_w_do[2] ,
    \usbfrx_data_w_do[1] ,
    \usbfrx_data_w_do[0] ,
    usbfrx_rx_active_w_do,
    ep2_tx_data_accept_w_do,
    \token_ep_w_do[0] ,
    \token_ep_w_do[1] ,
    \token_ep_w_do[3] ,
    \token_ep_w_do[2] ,
    \usbf_state_q_do[0] ,
    usbf_ep_data_bit_r_do,
    ep2_tx_data_valid_w_do,
    ctrl_txvalid_q_do,
    ctrl_txstall_q_do,
    setup_resp_valid_delay_q_do,
    usb_reset_w_do,
    Q,
    data_complete_o_do,
    \usbf_state_q_do[1] ,
    setup_valid_q_do,
    \bmRequestType_w_do[7] ,
    \desc_addr_q_do[6] ,
    \wValue_w_do[15] ,
    setup_valid_conter_q_o,
    state_r_do,
    utmi_data_out_o_2_sp_1,
    \utmi_data_out_o[3] ,
    \utmi_data_out_o[6] ,
    \utmi_data_out_o[4] ,
    \token_valid_cnt_q_do[25] ,
    token_valid_w_do,
    \usbf_state_q_do[2] ,
    usbf_tx_pid_q_do,
    tx_sent_data_counter_o,
    usbfrx_data_ready_w_do,
    token_dev_w_do,
    current_addr_i_do,
    rx_strb_w_do,
    outport_data_o,
    usbf_tx_valid_q_do,
    rx_out_do,
    wValue_w_do,
    \bRequest_w_do[7] ,
    \usb_rst_time_do[19] ,
    \setup_wr_idx_q_do[0] ,
    \setup_wr_idx_q_do[1] ,
    ep0_rx_setup_w_do,
    \setup_wr_idx_q_do[2] ,
    current_token_debug_counter_q_do,
    debug_counter_q_do,
    ctrl_txdata_q_do,
    inport_valid_q_do,
    E,
    ep2_tx_data_w_do,
    reg_dev_addr_i_do,
    usb_reset_counter_q_do,
    token_valid_counter_q_do,
    \utmi_data_out_o[7] ,
    utmi_data_out_o,
    sie_tx_state_q_o,
    utmi_txvalid_o,
    ep2_tx_data_last_w_do,
    usbf_new_data_bit_r_do,
    status_stage_w_do,
    ep0_rx_valid_w_do,
    setup_frame_q_do,
    ctrl_send_accept_w_do,
    ctrl_sending_r_do,
    ctrl_ack_r_do,
    ctrl_stall_r_do,
    outport_valid_o,
    rx_last_w_do,
    setup_token_valid_intr_o,
    axi_bram_addr_o,
    readAXIBRAM_r_do,
    vendorReqRecived_o,
    utmi_termselect_o,
    utmi_op_mode_o,
    utmi_xcvrselect_o,
    axi_bram_w_data_o,
    clk_i,
    rst_i,
    utmi_data_in_i,
    utmi_rxactive_i,
    outport_accept_i,
    utmi_linestate_i,
    utmi_rxvalid_i,
    ctrl_host_ack_i,
    inport_data_i,
    utmi_txready_i,
    axi_bram_r_data_i,
    enable_i,
    inport_valid_i);
  output usbfrx_shift_en_w_do;
  output \usbfrx_data_w_do[7] ;
  output \usbfrx_data_w_do[6] ;
  output \usbfrx_data_w_do[5] ;
  output \usbfrx_data_w_do[4] ;
  output \usbfrx_data_w_do[3] ;
  output \usbfrx_data_w_do[2] ;
  output \usbfrx_data_w_do[1] ;
  output \usbfrx_data_w_do[0] ;
  output usbfrx_rx_active_w_do;
  output ep2_tx_data_accept_w_do;
  output \token_ep_w_do[0] ;
  output \token_ep_w_do[1] ;
  output \token_ep_w_do[3] ;
  output \token_ep_w_do[2] ;
  output \usbf_state_q_do[0] ;
  output usbf_ep_data_bit_r_do;
  output ep2_tx_data_valid_w_do;
  output ctrl_txvalid_q_do;
  output ctrl_txstall_q_do;
  output setup_resp_valid_delay_q_do;
  output usb_reset_w_do;
  output [0:0]Q;
  output data_complete_o_do;
  output \usbf_state_q_do[1] ;
  output setup_valid_q_do;
  output [7:0]\bmRequestType_w_do[7] ;
  output [6:0]\desc_addr_q_do[6] ;
  output [7:0]\wValue_w_do[15] ;
  output [15:0]setup_valid_conter_q_o;
  output [2:0]state_r_do;
  output utmi_data_out_o_2_sp_1;
  output \utmi_data_out_o[3] ;
  output \utmi_data_out_o[6] ;
  output \utmi_data_out_o[4] ;
  output [25:0]\token_valid_cnt_q_do[25] ;
  output token_valid_w_do;
  output \usbf_state_q_do[2] ;
  output [6:0]usbf_tx_pid_q_do;
  output [15:0]tx_sent_data_counter_o;
  output [0:0]usbfrx_data_ready_w_do;
  output [6:0]token_dev_w_do;
  output [6:0]current_addr_i_do;
  output rx_strb_w_do;
  output [7:0]outport_data_o;
  output usbf_tx_valid_q_do;
  output rx_out_do;
  output [7:0]wValue_w_do;
  output [7:0]\bRequest_w_do[7] ;
  output [19:0]\usb_rst_time_do[19] ;
  output \setup_wr_idx_q_do[0] ;
  output \setup_wr_idx_q_do[1] ;
  output ep0_rx_setup_w_do;
  output \setup_wr_idx_q_do[2] ;
  output [63:0]current_token_debug_counter_q_do;
  output [63:0]debug_counter_q_do;
  output [7:0]ctrl_txdata_q_do;
  output inport_valid_q_do;
  output [0:0]E;
  output [7:0]ep2_tx_data_w_do;
  output [6:0]reg_dev_addr_i_do;
  output [7:0]usb_reset_counter_q_do;
  output [7:0]token_valid_counter_q_do;
  output \utmi_data_out_o[7] ;
  output [2:0]utmi_data_out_o;
  output [2:0]sie_tx_state_q_o;
  output utmi_txvalid_o;
  output ep2_tx_data_last_w_do;
  output usbf_new_data_bit_r_do;
  output status_stage_w_do;
  output ep0_rx_valid_w_do;
  output setup_frame_q_do;
  output ctrl_send_accept_w_do;
  output ctrl_sending_r_do;
  output ctrl_ack_r_do;
  output ctrl_stall_r_do;
  output outport_valid_o;
  output rx_last_w_do;
  output setup_token_valid_intr_o;
  output [1:0]axi_bram_addr_o;
  output readAXIBRAM_r_do;
  output vendorReqRecived_o;
  output utmi_termselect_o;
  output [0:0]utmi_op_mode_o;
  output [0:0]utmi_xcvrselect_o;
  output [7:0]axi_bram_w_data_o;
  input clk_i;
  input rst_i;
  input [7:0]utmi_data_in_i;
  input utmi_rxactive_i;
  input outport_accept_i;
  input [1:0]utmi_linestate_i;
  input utmi_rxvalid_i;
  input ctrl_host_ack_i;
  input [7:0]inport_data_i;
  input utmi_txready_i;
  input [7:0]axi_bram_r_data_i;
  input enable_i;
  input inport_valid_i;

  wire [0:0]E;
  wire \FSM_sequential_state_q[1]_i_3__1_n_0 ;
  wire \FSM_sequential_state_q[1]_i_4__1_n_0 ;
  wire \FSM_sequential_state_q[2]_i_10_n_0 ;
  wire \FSM_sequential_state_q[2]_i_11_n_0 ;
  wire \FSM_sequential_state_q[2]_i_12_n_0 ;
  wire \FSM_sequential_state_q[2]_i_13_n_0 ;
  wire \FSM_sequential_state_q[2]_i_14_n_0 ;
  wire \FSM_sequential_state_q[2]_i_2__1_n_0 ;
  wire \FSM_sequential_state_q[2]_i_3__1_n_0 ;
  wire \FSM_sequential_state_q[2]_i_4__1_n_0 ;
  wire \FSM_sequential_state_q[2]_i_5__1_n_0 ;
  wire \FSM_sequential_state_q[2]_i_6__0_n_0 ;
  wire \FSM_sequential_state_q[2]_i_7_n_0 ;
  wire \FSM_sequential_state_q[2]_i_8_n_0 ;
  wire \FSM_sequential_state_q[2]_i_9_n_0 ;
  wire [0:0]Q;
  wire [1:0]axi_bram_addr_o;
  wire [1:0]axi_bram_addr_q_reg;
  wire [7:0]axi_bram_r_data_i;
  wire [7:0]axi_bram_w_data_o;
  wire \axi_bram_w_data_o[0]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[0]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[1]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[1]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[2]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[2]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[3]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[3]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[4]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[4]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[5]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[5]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[6]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[6]_INST_0_i_2_n_0 ;
  wire \axi_bram_w_data_o[7]_INST_0_i_1_n_0 ;
  wire \axi_bram_w_data_o[7]_INST_0_i_2_n_0 ;
  wire [7:0]\bRequest_w_do[7] ;
  wire [7:0]\bmRequestType_w_do[7] ;
  wire chirp_count_q;
  wire \chirp_count_q[0]_i_1_n_0 ;
  wire \chirp_count_q[1]_i_1_n_0 ;
  wire \chirp_count_q[2]_i_1_n_0 ;
  wire \chirp_count_q[3]_i_1_n_0 ;
  wire \chirp_count_q[4]_i_1_n_0 ;
  wire \chirp_count_q[5]_i_1_n_0 ;
  wire \chirp_count_q[5]_i_2_n_0 ;
  wire \chirp_count_q[6]_i_1_n_0 ;
  wire \chirp_count_q[7]_i_2_n_0 ;
  wire \chirp_count_q[7]_i_3_n_0 ;
  wire \chirp_count_q[7]_i_4_n_0 ;
  wire \chirp_count_q[7]_i_5_n_0 ;
  wire \chirp_count_q_reg_n_0_[0] ;
  wire \chirp_count_q_reg_n_0_[1] ;
  wire \chirp_count_q_reg_n_0_[2] ;
  wire \chirp_count_q_reg_n_0_[3] ;
  wire \chirp_count_q_reg_n_0_[4] ;
  wire \chirp_count_q_reg_n_0_[5] ;
  wire \chirp_count_q_reg_n_0_[6] ;
  wire \chirp_count_q_reg_n_0_[7] ;
  wire clk_i;
  wire ctrl_ack_r_do;
  wire ctrl_ack_r_do_INST_0_i_10_n_0;
  wire ctrl_ack_r_do_INST_0_i_11_n_0;
  wire ctrl_ack_r_do_INST_0_i_1_n_0;
  wire ctrl_ack_r_do_INST_0_i_2_n_0;
  wire ctrl_ack_r_do_INST_0_i_3_n_0;
  wire ctrl_ack_r_do_INST_0_i_4_n_0;
  wire ctrl_ack_r_do_INST_0_i_5_n_0;
  wire ctrl_ack_r_do_INST_0_i_6_n_0;
  wire ctrl_ack_r_do_INST_0_i_7_n_0;
  wire ctrl_ack_r_do_INST_0_i_8_n_0;
  wire ctrl_ack_r_do_INST_0_i_9_n_0;
  wire ctrl_host_ack_i;
  wire ctrl_send_accept_w_do;
  wire [5:0]ctrl_send_idx_q;
  wire [15:6]ctrl_send_idx_q__0;
  wire ctrl_sending_q_reg_n_0;
  wire \ctrl_sending_r1_inferred__0/i__carry__0_n_2 ;
  wire \ctrl_sending_r1_inferred__0/i__carry__0_n_3 ;
  wire \ctrl_sending_r1_inferred__0/i__carry_n_0 ;
  wire \ctrl_sending_r1_inferred__0/i__carry_n_1 ;
  wire \ctrl_sending_r1_inferred__0/i__carry_n_2 ;
  wire \ctrl_sending_r1_inferred__0/i__carry_n_3 ;
  wire [15:1]ctrl_sending_r2;
  wire ctrl_sending_r2_carry__0_n_0;
  wire ctrl_sending_r2_carry__0_n_1;
  wire ctrl_sending_r2_carry__0_n_2;
  wire ctrl_sending_r2_carry__0_n_3;
  wire ctrl_sending_r2_carry__1_n_0;
  wire ctrl_sending_r2_carry__1_n_1;
  wire ctrl_sending_r2_carry__1_n_2;
  wire ctrl_sending_r2_carry__1_n_3;
  wire ctrl_sending_r2_carry__2_n_2;
  wire ctrl_sending_r2_carry__2_n_3;
  wire ctrl_sending_r2_carry_n_0;
  wire ctrl_sending_r2_carry_n_1;
  wire ctrl_sending_r2_carry_n_2;
  wire ctrl_sending_r2_carry_n_3;
  wire ctrl_sending_r_do;
  wire ctrl_stall_r_do;
  wire ctrl_stall_r_do_INST_0_i_10_n_0;
  wire ctrl_stall_r_do_INST_0_i_1_n_0;
  wire ctrl_stall_r_do_INST_0_i_2_n_0;
  wire ctrl_stall_r_do_INST_0_i_3_n_0;
  wire ctrl_stall_r_do_INST_0_i_4_n_0;
  wire ctrl_stall_r_do_INST_0_i_5_n_0;
  wire ctrl_stall_r_do_INST_0_i_6_n_0;
  wire ctrl_stall_r_do_INST_0_i_7_n_0;
  wire ctrl_stall_r_do_INST_0_i_8_n_0;
  wire ctrl_stall_r_do_INST_0_i_9_n_0;
  wire \ctrl_txdata_q[0]_i_2_n_0 ;
  wire \ctrl_txdata_q[0]_i_3_n_0 ;
  wire \ctrl_txdata_q[0]_i_4_n_0 ;
  wire \ctrl_txdata_q[0]_i_5_n_0 ;
  wire \ctrl_txdata_q[0]_i_6_n_0 ;
  wire \ctrl_txdata_q[0]_i_7_n_0 ;
  wire \ctrl_txdata_q[0]_i_8_n_0 ;
  wire \ctrl_txdata_q[1]_i_10_n_0 ;
  wire \ctrl_txdata_q[1]_i_2_n_0 ;
  wire \ctrl_txdata_q[1]_i_4_n_0 ;
  wire \ctrl_txdata_q[1]_i_5_n_0 ;
  wire \ctrl_txdata_q[1]_i_6_n_0 ;
  wire \ctrl_txdata_q[1]_i_7_n_0 ;
  wire \ctrl_txdata_q[1]_i_8_n_0 ;
  wire \ctrl_txdata_q[1]_i_9_n_0 ;
  wire \ctrl_txdata_q[2]_i_10_n_0 ;
  wire \ctrl_txdata_q[2]_i_11_n_0 ;
  wire \ctrl_txdata_q[2]_i_12_n_0 ;
  wire \ctrl_txdata_q[2]_i_13_n_0 ;
  wire \ctrl_txdata_q[2]_i_2_n_0 ;
  wire \ctrl_txdata_q[2]_i_3_n_0 ;
  wire \ctrl_txdata_q[2]_i_4_n_0 ;
  wire \ctrl_txdata_q[2]_i_5_n_0 ;
  wire \ctrl_txdata_q[2]_i_6_n_0 ;
  wire \ctrl_txdata_q[2]_i_7_n_0 ;
  wire \ctrl_txdata_q[2]_i_8_n_0 ;
  wire \ctrl_txdata_q[2]_i_9_n_0 ;
  wire \ctrl_txdata_q[3]_i_2_n_0 ;
  wire \ctrl_txdata_q[3]_i_3_n_0 ;
  wire \ctrl_txdata_q[3]_i_4_n_0 ;
  wire \ctrl_txdata_q[3]_i_5_n_0 ;
  wire \ctrl_txdata_q[3]_i_6_n_0 ;
  wire \ctrl_txdata_q[3]_i_7_n_0 ;
  wire \ctrl_txdata_q[4]_i_2_n_0 ;
  wire \ctrl_txdata_q[4]_i_3_n_0 ;
  wire \ctrl_txdata_q[4]_i_4_n_0 ;
  wire \ctrl_txdata_q[4]_i_5_n_0 ;
  wire \ctrl_txdata_q[5]_i_2_n_0 ;
  wire \ctrl_txdata_q[5]_i_4_n_0 ;
  wire \ctrl_txdata_q[5]_i_5_n_0 ;
  wire \ctrl_txdata_q[5]_i_6_n_0 ;
  wire \ctrl_txdata_q[5]_i_7_n_0 ;
  wire \ctrl_txdata_q[6]_i_10_n_0 ;
  wire \ctrl_txdata_q[6]_i_11_n_0 ;
  wire \ctrl_txdata_q[6]_i_12_n_0 ;
  wire \ctrl_txdata_q[6]_i_13_n_0 ;
  wire \ctrl_txdata_q[6]_i_2_n_0 ;
  wire \ctrl_txdata_q[6]_i_3_n_0 ;
  wire \ctrl_txdata_q[6]_i_4_n_0 ;
  wire \ctrl_txdata_q[6]_i_5_n_0 ;
  wire \ctrl_txdata_q[6]_i_6_n_0 ;
  wire \ctrl_txdata_q[6]_i_7_n_0 ;
  wire \ctrl_txdata_q[6]_i_8_n_0 ;
  wire \ctrl_txdata_q[6]_i_9_n_0 ;
  wire \ctrl_txdata_q[7]_i_3_n_0 ;
  wire \ctrl_txdata_q[7]_i_4_n_0 ;
  wire \ctrl_txdata_q[7]_i_5_n_0 ;
  wire \ctrl_txdata_q[7]_i_6_n_0 ;
  wire \ctrl_txdata_q[7]_i_7_n_0 ;
  wire \ctrl_txdata_q[7]_i_8_n_0 ;
  wire [7:0]ctrl_txdata_q_do;
  wire \ctrl_txdata_q_reg[1]_i_3_n_0 ;
  wire \ctrl_txdata_q_reg[5]_i_3_n_0 ;
  wire ctrl_txlast_q_i_2_n_0;
  wire ctrl_txlast_q_i_3_n_0;
  wire ctrl_txlast_q_reg_n_0;
  wire ctrl_txstall_q_do;
  wire ctrl_txstrb_q_reg_n_0;
  wire ctrl_txvalid_q_do;
  wire ctrl_txvalid_q_i_10_n_0;
  wire ctrl_txvalid_q_i_11_n_0;
  wire ctrl_txvalid_q_i_12_n_0;
  wire ctrl_txvalid_q_i_3_n_0;
  wire ctrl_txvalid_q_i_6_n_0;
  wire ctrl_txvalid_q_i_7_n_0;
  wire ctrl_txvalid_q_i_9_n_0;
  wire [6:0]current_addr_i_do;
  wire [63:0]current_token_debug_counter_q_do;
  wire data_complete_o_do;
  wire \debug_counter_q[3]_i_2_n_0 ;
  wire [63:0]debug_counter_q_do;
  wire \debug_counter_q_reg[11]_i_1_n_0 ;
  wire \debug_counter_q_reg[11]_i_1_n_1 ;
  wire \debug_counter_q_reg[11]_i_1_n_2 ;
  wire \debug_counter_q_reg[11]_i_1_n_3 ;
  wire \debug_counter_q_reg[11]_i_1_n_4 ;
  wire \debug_counter_q_reg[11]_i_1_n_5 ;
  wire \debug_counter_q_reg[11]_i_1_n_6 ;
  wire \debug_counter_q_reg[11]_i_1_n_7 ;
  wire \debug_counter_q_reg[15]_i_1_n_0 ;
  wire \debug_counter_q_reg[15]_i_1_n_1 ;
  wire \debug_counter_q_reg[15]_i_1_n_2 ;
  wire \debug_counter_q_reg[15]_i_1_n_3 ;
  wire \debug_counter_q_reg[15]_i_1_n_4 ;
  wire \debug_counter_q_reg[15]_i_1_n_5 ;
  wire \debug_counter_q_reg[15]_i_1_n_6 ;
  wire \debug_counter_q_reg[15]_i_1_n_7 ;
  wire \debug_counter_q_reg[19]_i_1_n_0 ;
  wire \debug_counter_q_reg[19]_i_1_n_1 ;
  wire \debug_counter_q_reg[19]_i_1_n_2 ;
  wire \debug_counter_q_reg[19]_i_1_n_3 ;
  wire \debug_counter_q_reg[19]_i_1_n_4 ;
  wire \debug_counter_q_reg[19]_i_1_n_5 ;
  wire \debug_counter_q_reg[19]_i_1_n_6 ;
  wire \debug_counter_q_reg[19]_i_1_n_7 ;
  wire \debug_counter_q_reg[23]_i_1_n_0 ;
  wire \debug_counter_q_reg[23]_i_1_n_1 ;
  wire \debug_counter_q_reg[23]_i_1_n_2 ;
  wire \debug_counter_q_reg[23]_i_1_n_3 ;
  wire \debug_counter_q_reg[23]_i_1_n_4 ;
  wire \debug_counter_q_reg[23]_i_1_n_5 ;
  wire \debug_counter_q_reg[23]_i_1_n_6 ;
  wire \debug_counter_q_reg[23]_i_1_n_7 ;
  wire \debug_counter_q_reg[27]_i_1_n_0 ;
  wire \debug_counter_q_reg[27]_i_1_n_1 ;
  wire \debug_counter_q_reg[27]_i_1_n_2 ;
  wire \debug_counter_q_reg[27]_i_1_n_3 ;
  wire \debug_counter_q_reg[27]_i_1_n_4 ;
  wire \debug_counter_q_reg[27]_i_1_n_5 ;
  wire \debug_counter_q_reg[27]_i_1_n_6 ;
  wire \debug_counter_q_reg[27]_i_1_n_7 ;
  wire \debug_counter_q_reg[31]_i_1_n_0 ;
  wire \debug_counter_q_reg[31]_i_1_n_1 ;
  wire \debug_counter_q_reg[31]_i_1_n_2 ;
  wire \debug_counter_q_reg[31]_i_1_n_3 ;
  wire \debug_counter_q_reg[31]_i_1_n_4 ;
  wire \debug_counter_q_reg[31]_i_1_n_5 ;
  wire \debug_counter_q_reg[31]_i_1_n_6 ;
  wire \debug_counter_q_reg[31]_i_1_n_7 ;
  wire \debug_counter_q_reg[35]_i_1_n_0 ;
  wire \debug_counter_q_reg[35]_i_1_n_1 ;
  wire \debug_counter_q_reg[35]_i_1_n_2 ;
  wire \debug_counter_q_reg[35]_i_1_n_3 ;
  wire \debug_counter_q_reg[35]_i_1_n_4 ;
  wire \debug_counter_q_reg[35]_i_1_n_5 ;
  wire \debug_counter_q_reg[35]_i_1_n_6 ;
  wire \debug_counter_q_reg[35]_i_1_n_7 ;
  wire \debug_counter_q_reg[39]_i_1_n_0 ;
  wire \debug_counter_q_reg[39]_i_1_n_1 ;
  wire \debug_counter_q_reg[39]_i_1_n_2 ;
  wire \debug_counter_q_reg[39]_i_1_n_3 ;
  wire \debug_counter_q_reg[39]_i_1_n_4 ;
  wire \debug_counter_q_reg[39]_i_1_n_5 ;
  wire \debug_counter_q_reg[39]_i_1_n_6 ;
  wire \debug_counter_q_reg[39]_i_1_n_7 ;
  wire \debug_counter_q_reg[3]_i_1_n_0 ;
  wire \debug_counter_q_reg[3]_i_1_n_1 ;
  wire \debug_counter_q_reg[3]_i_1_n_2 ;
  wire \debug_counter_q_reg[3]_i_1_n_3 ;
  wire \debug_counter_q_reg[3]_i_1_n_4 ;
  wire \debug_counter_q_reg[3]_i_1_n_5 ;
  wire \debug_counter_q_reg[3]_i_1_n_6 ;
  wire \debug_counter_q_reg[3]_i_1_n_7 ;
  wire \debug_counter_q_reg[43]_i_1_n_0 ;
  wire \debug_counter_q_reg[43]_i_1_n_1 ;
  wire \debug_counter_q_reg[43]_i_1_n_2 ;
  wire \debug_counter_q_reg[43]_i_1_n_3 ;
  wire \debug_counter_q_reg[43]_i_1_n_4 ;
  wire \debug_counter_q_reg[43]_i_1_n_5 ;
  wire \debug_counter_q_reg[43]_i_1_n_6 ;
  wire \debug_counter_q_reg[43]_i_1_n_7 ;
  wire \debug_counter_q_reg[47]_i_1_n_0 ;
  wire \debug_counter_q_reg[47]_i_1_n_1 ;
  wire \debug_counter_q_reg[47]_i_1_n_2 ;
  wire \debug_counter_q_reg[47]_i_1_n_3 ;
  wire \debug_counter_q_reg[47]_i_1_n_4 ;
  wire \debug_counter_q_reg[47]_i_1_n_5 ;
  wire \debug_counter_q_reg[47]_i_1_n_6 ;
  wire \debug_counter_q_reg[47]_i_1_n_7 ;
  wire \debug_counter_q_reg[51]_i_1_n_0 ;
  wire \debug_counter_q_reg[51]_i_1_n_1 ;
  wire \debug_counter_q_reg[51]_i_1_n_2 ;
  wire \debug_counter_q_reg[51]_i_1_n_3 ;
  wire \debug_counter_q_reg[51]_i_1_n_4 ;
  wire \debug_counter_q_reg[51]_i_1_n_5 ;
  wire \debug_counter_q_reg[51]_i_1_n_6 ;
  wire \debug_counter_q_reg[51]_i_1_n_7 ;
  wire \debug_counter_q_reg[55]_i_1_n_0 ;
  wire \debug_counter_q_reg[55]_i_1_n_1 ;
  wire \debug_counter_q_reg[55]_i_1_n_2 ;
  wire \debug_counter_q_reg[55]_i_1_n_3 ;
  wire \debug_counter_q_reg[55]_i_1_n_4 ;
  wire \debug_counter_q_reg[55]_i_1_n_5 ;
  wire \debug_counter_q_reg[55]_i_1_n_6 ;
  wire \debug_counter_q_reg[55]_i_1_n_7 ;
  wire \debug_counter_q_reg[59]_i_1_n_0 ;
  wire \debug_counter_q_reg[59]_i_1_n_1 ;
  wire \debug_counter_q_reg[59]_i_1_n_2 ;
  wire \debug_counter_q_reg[59]_i_1_n_3 ;
  wire \debug_counter_q_reg[59]_i_1_n_4 ;
  wire \debug_counter_q_reg[59]_i_1_n_5 ;
  wire \debug_counter_q_reg[59]_i_1_n_6 ;
  wire \debug_counter_q_reg[59]_i_1_n_7 ;
  wire \debug_counter_q_reg[63]_i_1_n_1 ;
  wire \debug_counter_q_reg[63]_i_1_n_2 ;
  wire \debug_counter_q_reg[63]_i_1_n_3 ;
  wire \debug_counter_q_reg[63]_i_1_n_4 ;
  wire \debug_counter_q_reg[63]_i_1_n_5 ;
  wire \debug_counter_q_reg[63]_i_1_n_6 ;
  wire \debug_counter_q_reg[63]_i_1_n_7 ;
  wire \debug_counter_q_reg[7]_i_1_n_0 ;
  wire \debug_counter_q_reg[7]_i_1_n_1 ;
  wire \debug_counter_q_reg[7]_i_1_n_2 ;
  wire \debug_counter_q_reg[7]_i_1_n_3 ;
  wire \debug_counter_q_reg[7]_i_1_n_4 ;
  wire \debug_counter_q_reg[7]_i_1_n_5 ;
  wire \debug_counter_q_reg[7]_i_1_n_6 ;
  wire \debug_counter_q_reg[7]_i_1_n_7 ;
  wire [4:0]delayCnt_q;
  wire \delayCnt_q[0]_i_1_n_0 ;
  wire \delayCnt_q[1]_i_1_n_0 ;
  wire \delayCnt_q[2]_i_1_n_0 ;
  wire \delayCnt_q[3]_i_1_n_0 ;
  wire \delayCnt_q[4]_i_1_n_0 ;
  wire [7:7]desc_addr_q;
  wire \desc_addr_q[1]_i_2_n_0 ;
  wire \desc_addr_q[2]_i_2_n_0 ;
  wire \desc_addr_q[3]_i_2_n_0 ;
  wire \desc_addr_q[3]_i_3_n_0 ;
  wire \desc_addr_q[3]_i_4_n_0 ;
  wire \desc_addr_q[3]_i_5_n_0 ;
  wire \desc_addr_q[3]_i_6_n_0 ;
  wire \desc_addr_q[3]_i_7_n_0 ;
  wire \desc_addr_q[4]_i_2_n_0 ;
  wire \desc_addr_q[4]_i_4_n_0 ;
  wire \desc_addr_q[5]_i_2_n_0 ;
  wire \desc_addr_q[5]_i_3_n_0 ;
  wire \desc_addr_q[6]_i_4_n_0 ;
  wire \desc_addr_q[6]_i_6_n_0 ;
  wire \desc_addr_q[6]_i_8_n_0 ;
  wire \desc_addr_q[6]_i_9_n_0 ;
  wire \desc_addr_q[7]_i_2_n_0 ;
  wire \desc_addr_q[7]_i_3_n_0 ;
  wire \desc_addr_q[7]_i_4_n_0 ;
  wire [6:0]\desc_addr_q_do[6] ;
  wire \device_addr_q[6]_i_3_n_0 ;
  wire \device_addr_q[6]_i_4_n_0 ;
  wire enable_i;
  wire ep0_rx_setup_w_do;
  wire ep0_rx_valid_w_do;
  wire ep2_tx_data_accept_w_do;
  wire ep2_tx_data_last_w_do;
  wire ep2_tx_data_valid_w_do;
  wire [7:0]ep2_tx_data_w_do;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [7:0]inport_data_i;
  wire inport_valid_i;
  wire inport_valid_q_do;
  wire inport_valid_q_q_i_1_n_0;
  wire [1:0]last_linestate_q;
  wire [2:0]next_state_r__0;
  wire outport_accept_i;
  wire [7:0]outport_data_o;
  wire outport_valid_o;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [19:0]p_1_in;
  wire \readAXIBRAM_q_reg_n_0_[0] ;
  wire readAXIBRAM_r_do;
  wire [6:0]reg_dev_addr_i_do;
  wire rst_i;
  wire rx_last_w_do;
  wire rx_out_do;
  wire rx_strb_w_do;
  wire setup_frame_q_do;
  wire [7:0]setup_packet_q;
  wire setup_resp_valid_delay_q_do;
  wire setup_resp_valid_delay_q_i_1_n_0;
  wire setup_resp_valid_delay_q_i_2_n_0;
  wire setup_resp_valid_delay_q_i_3_n_0;
  wire setup_resp_valid_delay_q_i_4_n_0;
  wire setup_resp_valid_delay_q_i_5_n_0;
  wire setup_resp_valid_delay_q_i_6_n_0;
  wire setup_resp_valid_delay_q_i_7_n_0;
  wire setup_token_valid_intr_o;
  wire [15:0]setup_valid_conter_q_o;
  wire setup_valid_q;
  wire setup_valid_q_do;
  wire \setup_wr_idx_q_do[0] ;
  wire \setup_wr_idx_q_do[1] ;
  wire \setup_wr_idx_q_do[2] ;
  wire [2:0]sie_tx_state_q_o;
  (* RTL_KEEP = "yes" *) wire [2:0]state_q;
  wire [2:0]state_r_do;
  wire status_ready_q_reg_n_0;
  wire status_stage_w_do;
  wire [6:0]token_dev_w_do;
  wire \token_ep_w_do[0] ;
  wire \token_ep_w_do[1] ;
  wire \token_ep_w_do[2] ;
  wire \token_ep_w_do[3] ;
  wire [25:1]token_valid_cnt_q0;
  wire token_valid_cnt_q0_carry__0_i_1_n_0;
  wire token_valid_cnt_q0_carry__0_i_2_n_0;
  wire token_valid_cnt_q0_carry__0_i_3_n_0;
  wire token_valid_cnt_q0_carry__0_i_4_n_0;
  wire token_valid_cnt_q0_carry__0_n_0;
  wire token_valid_cnt_q0_carry__0_n_1;
  wire token_valid_cnt_q0_carry__0_n_2;
  wire token_valid_cnt_q0_carry__0_n_3;
  wire token_valid_cnt_q0_carry__1_i_1_n_0;
  wire token_valid_cnt_q0_carry__1_i_2_n_0;
  wire token_valid_cnt_q0_carry__1_i_3_n_0;
  wire token_valid_cnt_q0_carry__1_i_4_n_0;
  wire token_valid_cnt_q0_carry__1_n_0;
  wire token_valid_cnt_q0_carry__1_n_1;
  wire token_valid_cnt_q0_carry__1_n_2;
  wire token_valid_cnt_q0_carry__1_n_3;
  wire token_valid_cnt_q0_carry__2_i_1_n_0;
  wire token_valid_cnt_q0_carry__2_i_2_n_0;
  wire token_valid_cnt_q0_carry__2_i_3_n_0;
  wire token_valid_cnt_q0_carry__2_i_4_n_0;
  wire token_valid_cnt_q0_carry__2_n_0;
  wire token_valid_cnt_q0_carry__2_n_1;
  wire token_valid_cnt_q0_carry__2_n_2;
  wire token_valid_cnt_q0_carry__2_n_3;
  wire token_valid_cnt_q0_carry__3_i_1_n_0;
  wire token_valid_cnt_q0_carry__3_i_2_n_0;
  wire token_valid_cnt_q0_carry__3_i_3_n_0;
  wire token_valid_cnt_q0_carry__3_i_4_n_0;
  wire token_valid_cnt_q0_carry__3_n_0;
  wire token_valid_cnt_q0_carry__3_n_1;
  wire token_valid_cnt_q0_carry__3_n_2;
  wire token_valid_cnt_q0_carry__3_n_3;
  wire token_valid_cnt_q0_carry__4_i_1_n_0;
  wire token_valid_cnt_q0_carry__4_i_2_n_0;
  wire token_valid_cnt_q0_carry__4_i_3_n_0;
  wire token_valid_cnt_q0_carry__4_i_4_n_0;
  wire token_valid_cnt_q0_carry__4_n_0;
  wire token_valid_cnt_q0_carry__4_n_1;
  wire token_valid_cnt_q0_carry__4_n_2;
  wire token_valid_cnt_q0_carry__4_n_3;
  wire token_valid_cnt_q0_carry__5_i_1_n_0;
  wire token_valid_cnt_q0_carry_i_1_n_0;
  wire token_valid_cnt_q0_carry_i_2_n_0;
  wire token_valid_cnt_q0_carry_i_3_n_0;
  wire token_valid_cnt_q0_carry_i_4_n_0;
  wire token_valid_cnt_q0_carry_n_0;
  wire token_valid_cnt_q0_carry_n_1;
  wire token_valid_cnt_q0_carry_n_2;
  wire token_valid_cnt_q0_carry_n_3;
  wire \token_valid_cnt_q[0]_i_1_n_0 ;
  wire \token_valid_cnt_q[10]_i_1_n_0 ;
  wire \token_valid_cnt_q[11]_i_1_n_0 ;
  wire \token_valid_cnt_q[12]_i_1_n_0 ;
  wire \token_valid_cnt_q[13]_i_1_n_0 ;
  wire \token_valid_cnt_q[14]_i_1_n_0 ;
  wire \token_valid_cnt_q[15]_i_1_n_0 ;
  wire \token_valid_cnt_q[16]_i_1_n_0 ;
  wire \token_valid_cnt_q[17]_i_1_n_0 ;
  wire \token_valid_cnt_q[18]_i_1_n_0 ;
  wire \token_valid_cnt_q[19]_i_1_n_0 ;
  wire \token_valid_cnt_q[1]_i_1_n_0 ;
  wire \token_valid_cnt_q[20]_i_1_n_0 ;
  wire \token_valid_cnt_q[21]_i_1_n_0 ;
  wire \token_valid_cnt_q[22]_i_1_n_0 ;
  wire \token_valid_cnt_q[23]_i_1_n_0 ;
  wire \token_valid_cnt_q[24]_i_1_n_0 ;
  wire \token_valid_cnt_q[25]_i_1_n_0 ;
  wire \token_valid_cnt_q[25]_i_2_n_0 ;
  wire \token_valid_cnt_q[25]_i_3_n_0 ;
  wire \token_valid_cnt_q[25]_i_4_n_0 ;
  wire \token_valid_cnt_q[25]_i_5_n_0 ;
  wire \token_valid_cnt_q[25]_i_6_n_0 ;
  wire \token_valid_cnt_q[25]_i_7_n_0 ;
  wire \token_valid_cnt_q[2]_i_1_n_0 ;
  wire \token_valid_cnt_q[3]_i_1_n_0 ;
  wire \token_valid_cnt_q[4]_i_1_n_0 ;
  wire \token_valid_cnt_q[5]_i_1_n_0 ;
  wire \token_valid_cnt_q[6]_i_1_n_0 ;
  wire \token_valid_cnt_q[7]_i_1_n_0 ;
  wire \token_valid_cnt_q[8]_i_1_n_0 ;
  wire \token_valid_cnt_q[9]_i_1_n_0 ;
  wire [25:0]\token_valid_cnt_q_do[25] ;
  wire \token_valid_counter_q[7]_i_2_n_0 ;
  wire [7:0]token_valid_counter_q_do;
  wire token_valid_w_do;
  wire [15:0]tx_sent_data_counter_o;
  wire u_core_n_101;
  wire u_core_n_102;
  wire u_core_n_103;
  wire u_core_n_104;
  wire u_core_n_105;
  wire u_core_n_106;
  wire u_core_n_107;
  wire u_core_n_108;
  wire u_core_n_127;
  wire u_core_n_128;
  wire u_core_n_147;
  wire u_core_n_148;
  wire u_core_n_149;
  wire u_core_n_150;
  wire u_core_n_151;
  wire u_core_n_152;
  wire u_core_n_153;
  wire u_core_n_154;
  wire u_core_n_155;
  wire u_core_n_156;
  wire u_core_n_177;
  wire u_core_n_178;
  wire u_core_n_179;
  wire u_core_n_180;
  wire u_core_n_181;
  wire u_core_n_182;
  wire u_core_n_183;
  wire u_core_n_184;
  wire u_core_n_185;
  wire u_core_n_186;
  wire u_core_n_187;
  wire u_core_n_188;
  wire u_core_n_189;
  wire u_core_n_190;
  wire u_core_n_191;
  wire u_core_n_192;
  wire u_core_n_193;
  wire u_core_n_194;
  wire u_core_n_195;
  wire u_core_n_196;
  wire u_core_n_197;
  wire u_core_n_198;
  wire u_core_n_199;
  wire u_core_n_200;
  wire u_core_n_201;
  wire u_core_n_202;
  wire u_core_n_203;
  wire u_core_n_204;
  wire u_core_n_205;
  wire u_core_n_206;
  wire u_core_n_207;
  wire u_core_n_39;
  wire u_core_n_40;
  wire u_core_n_43;
  wire u_core_n_44;
  wire u_core_n_45;
  wire u_core_n_46;
  wire u_core_n_47;
  wire u_core_n_48;
  wire u_core_n_49;
  wire u_core_n_50;
  wire u_core_n_51;
  wire u_core_n_52;
  wire u_core_n_53;
  wire u_core_n_54;
  wire u_core_n_55;
  wire u_core_n_56;
  wire u_core_n_57;
  wire u_core_n_58;
  wire u_core_n_59;
  wire u_core_n_60;
  wire u_core_n_61;
  wire u_core_n_62;
  wire u_core_n_63;
  wire u_core_n_64;
  wire u_core_n_65;
  wire u_core_n_66;
  wire u_core_n_73;
  wire u_core_n_75;
  wire u_core_n_76;
  wire u_core_n_77;
  wire u_core_n_78;
  wire u_core_n_87;
  wire \usb_reset_counter_q[7]_i_2_n_0 ;
  wire [7:0]usb_reset_counter_q_do;
  wire usb_reset_w_do;
  wire [19:0]\usb_rst_time_do[19] ;
  wire [19:1]usb_rst_time_q0;
  wire usb_rst_time_q0_carry__0_n_0;
  wire usb_rst_time_q0_carry__0_n_1;
  wire usb_rst_time_q0_carry__0_n_2;
  wire usb_rst_time_q0_carry__0_n_3;
  wire usb_rst_time_q0_carry__1_n_0;
  wire usb_rst_time_q0_carry__1_n_1;
  wire usb_rst_time_q0_carry__1_n_2;
  wire usb_rst_time_q0_carry__1_n_3;
  wire usb_rst_time_q0_carry__2_n_0;
  wire usb_rst_time_q0_carry__2_n_1;
  wire usb_rst_time_q0_carry__2_n_2;
  wire usb_rst_time_q0_carry__2_n_3;
  wire usb_rst_time_q0_carry__3_n_2;
  wire usb_rst_time_q0_carry__3_n_3;
  wire usb_rst_time_q0_carry_n_0;
  wire usb_rst_time_q0_carry_n_1;
  wire usb_rst_time_q0_carry_n_2;
  wire usb_rst_time_q0_carry_n_3;
  wire \usb_rst_time_q[19]_i_10_n_0 ;
  wire \usb_rst_time_q[19]_i_11_n_0 ;
  wire \usb_rst_time_q[19]_i_4_n_0 ;
  wire \usb_rst_time_q[19]_i_5_n_0 ;
  wire \usb_rst_time_q[19]_i_6_n_0 ;
  wire \usb_rst_time_q[19]_i_7_n_0 ;
  wire \usb_rst_time_q[19]_i_8_n_0 ;
  wire \usb_rst_time_q[19]_i_9_n_0 ;
  wire usbf_ep_data_bit_r_do;
  wire usbf_new_data_bit_r_do;
  wire \usbf_state_q_do[0] ;
  wire \usbf_state_q_do[1] ;
  wire \usbf_state_q_do[2] ;
  wire [6:0]usbf_tx_pid_q_do;
  wire usbf_tx_valid_q_do;
  wire [0:0]usbfrx_data_ready_w_do;
  wire \usbfrx_data_w_do[0] ;
  wire \usbfrx_data_w_do[1] ;
  wire \usbfrx_data_w_do[2] ;
  wire \usbfrx_data_w_do[3] ;
  wire \usbfrx_data_w_do[4] ;
  wire \usbfrx_data_w_do[5] ;
  wire \usbfrx_data_w_do[6] ;
  wire \usbfrx_data_w_do[7] ;
  wire usbfrx_rx_active_w_do;
  wire usbfrx_shift_en_w_do;
  wire [7:0]utmi_data_in_i;
  wire [2:0]utmi_data_out_o;
  wire \utmi_data_out_o[3] ;
  wire \utmi_data_out_o[4] ;
  wire \utmi_data_out_o[6] ;
  wire \utmi_data_out_o[7] ;
  wire utmi_data_out_o_2_sn_1;
  wire [1:0]utmi_linestate_i;
  wire [0:0]utmi_op_mode_o;
  wire utmi_rxactive_i;
  wire utmi_rxvalid_i;
  wire utmi_termselect_o;
  wire utmi_txready_i;
  wire utmi_txvalid_o;
  wire [0:0]utmi_xcvrselect_o;
  wire vendorReqRecived_o;
  wire [15:0]wIndex_w;
  wire [15:0]wLength;
  wire [7:0]wValue_w_do;
  wire [7:0]\wValue_w_do[15] ;
  wire [3:0]\NLW_ctrl_sending_r1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_ctrl_sending_r1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ctrl_sending_r1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]NLW_ctrl_sending_r2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_ctrl_sending_r2_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_debug_counter_q_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_token_valid_cnt_q0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_token_valid_cnt_q0_carry__5_O_UNCONNECTED;
  wire [3:2]NLW_usb_rst_time_q0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_usb_rst_time_q0_carry__3_O_UNCONNECTED;

  assign utmi_data_out_o_2_sp_1 = utmi_data_out_o_2_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_q[1]_i_3__1 
       (.I0(\chirp_count_q_reg_n_0_[5] ),
        .I1(\chirp_count_q_reg_n_0_[6] ),
        .I2(\chirp_count_q_reg_n_0_[4] ),
        .I3(\FSM_sequential_state_q[1]_i_4__1_n_0 ),
        .O(\FSM_sequential_state_q[1]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \FSM_sequential_state_q[1]_i_4__1 
       (.I0(\chirp_count_q_reg_n_0_[0] ),
        .I1(\chirp_count_q_reg_n_0_[1] ),
        .I2(\chirp_count_q_reg_n_0_[2] ),
        .I3(\chirp_count_q_reg_n_0_[7] ),
        .I4(\chirp_count_q_reg_n_0_[3] ),
        .O(\FSM_sequential_state_q[1]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state_q[2]_i_10 
       (.I0(\usb_rst_time_do[19] [14]),
        .I1(\usb_rst_time_do[19] [7]),
        .O(\FSM_sequential_state_q[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hFE00AA00)) 
    \FSM_sequential_state_q[2]_i_11 
       (.I0(\usb_rst_time_do[19] [16]),
        .I1(\usb_rst_time_do[19] [14]),
        .I2(\usb_rst_time_q[19]_i_5_n_0 ),
        .I3(\usb_rst_time_do[19] [17]),
        .I4(\usb_rst_time_do[19] [15]),
        .O(\FSM_sequential_state_q[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_state_q[2]_i_12 
       (.I0(\usb_rst_time_do[19] [13]),
        .I1(\usb_rst_time_do[19] [12]),
        .I2(\usb_rst_time_do[19] [11]),
        .O(\FSM_sequential_state_q[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000103030303)) 
    \FSM_sequential_state_q[2]_i_13 
       (.I0(\usb_rst_time_do[19] [8]),
        .I1(\usb_rst_time_do[19] [10]),
        .I2(\usb_rst_time_do[19] [12]),
        .I3(\usb_rst_time_do[19] [7]),
        .I4(\FSM_sequential_state_q[2]_i_14_n_0 ),
        .I5(\usb_rst_time_do[19] [9]),
        .O(\FSM_sequential_state_q[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_q[2]_i_14 
       (.I0(\usb_rst_time_do[19] [6]),
        .I1(\usb_rst_time_do[19] [5]),
        .O(\FSM_sequential_state_q[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1D001D001D001DCC)) 
    \FSM_sequential_state_q[2]_i_1__1 
       (.I0(\FSM_sequential_state_q[2]_i_2__1_n_0 ),
        .I1(state_q[0]),
        .I2(\FSM_sequential_state_q[2]_i_3__1_n_0 ),
        .I3(state_q[2]),
        .I4(\FSM_sequential_state_q[2]_i_4__1_n_0 ),
        .I5(state_q[1]),
        .O(next_state_r__0[2]));
  LUT6 #(
    .INIT(64'hECECEEECECECECEC)) 
    \FSM_sequential_state_q[2]_i_2__1 
       (.I0(\usb_rst_time_do[19] [18]),
        .I1(\usb_rst_time_do[19] [19]),
        .I2(\FSM_sequential_state_q[2]_i_5__1_n_0 ),
        .I3(\usb_rst_time_do[19] [15]),
        .I4(\FSM_sequential_state_q[2]_i_6__0_n_0 ),
        .I5(\FSM_sequential_state_q[2]_i_7_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \FSM_sequential_state_q[2]_i_3__1 
       (.I0(enable_i),
        .I1(\usb_rst_time_do[19] [17]),
        .I2(\usb_rst_time_do[19] [16]),
        .I3(\usb_rst_time_do[19] [19]),
        .I4(\usb_rst_time_do[19] [18]),
        .I5(\FSM_sequential_state_q[2]_i_8_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000008AAAAAAAA)) 
    \FSM_sequential_state_q[2]_i_4__1 
       (.I0(\FSM_sequential_state_q[2]_i_9_n_0 ),
        .I1(\FSM_sequential_state_q[2]_i_10_n_0 ),
        .I2(\usb_rst_time_do[19] [6]),
        .I3(\usb_rst_time_do[19] [5]),
        .I4(\usb_rst_time_do[19] [16]),
        .I5(\FSM_sequential_state_q[2]_i_11_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_q[2]_i_5__1 
       (.I0(\usb_rst_time_do[19] [16]),
        .I1(\usb_rst_time_do[19] [17]),
        .O(\FSM_sequential_state_q[2]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000030001000300)) 
    \FSM_sequential_state_q[2]_i_6__0 
       (.I0(\usb_rst_time_do[19] [4]),
        .I1(\usb_rst_time_do[19] [10]),
        .I2(\usb_rst_time_do[19] [12]),
        .I3(\FSM_sequential_state_q[2]_i_10_n_0 ),
        .I4(\usb_rst_time_do[19] [6]),
        .I5(\usb_rst_time_do[19] [5]),
        .O(\FSM_sequential_state_q[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \FSM_sequential_state_q[2]_i_7 
       (.I0(\usb_rst_time_do[19] [14]),
        .I1(\usb_rst_time_do[19] [12]),
        .I2(\usb_rst_time_do[19] [10]),
        .I3(\usb_rst_time_do[19] [8]),
        .I4(\usb_rst_time_do[19] [9]),
        .I5(\FSM_sequential_state_q[2]_i_12_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF57FFFFFF)) 
    \FSM_sequential_state_q[2]_i_8 
       (.I0(\usb_rst_time_do[19] [13]),
        .I1(\usb_rst_time_do[19] [12]),
        .I2(\usb_rst_time_do[19] [11]),
        .I3(\usb_rst_time_do[19] [14]),
        .I4(\usb_rst_time_do[19] [15]),
        .I5(\FSM_sequential_state_q[2]_i_13_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state_q[2]_i_9 
       (.I0(\usb_rst_time_do[19] [18]),
        .I1(\usb_rst_time_do[19] [19]),
        .O(\FSM_sequential_state_q[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:101,STATE_SEND_CHIRP_K:100,STATE_WAIT_CHIRP_JK:011,STATE_HIGHSPEED:000,STATE_FULLSPEED:010,STATE_WAIT_RST:001" *) 
  (* KEEP = "yes" *) 
  FDPE \FSM_sequential_state_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(next_state_r__0[0]),
        .PRE(rst_i),
        .Q(state_q[0]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:101,STATE_SEND_CHIRP_K:100,STATE_WAIT_CHIRP_JK:011,STATE_HIGHSPEED:000,STATE_FULLSPEED:010,STATE_WAIT_RST:001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(next_state_r__0[1]),
        .Q(state_q[1]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:101,STATE_SEND_CHIRP_K:100,STATE_WAIT_CHIRP_JK:011,STATE_HIGHSPEED:000,STATE_FULLSPEED:010,STATE_WAIT_RST:001" *) 
  (* KEEP = "yes" *) 
  FDPE \FSM_sequential_state_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(next_state_r__0[2]),
        .PRE(rst_i),
        .Q(state_q[2]));
  LUT6 #(
    .INIT(64'h8A00888880008888)) 
    \axi_bram_addr_o[0]_INST_0 
       (.I0(axi_bram_addr_q_reg[0]),
        .I1(\readAXIBRAM_q_reg_n_0_[0] ),
        .I2(\bmRequestType_w_do[7] [5]),
        .I3(\bmRequestType_w_do[7] [6]),
        .I4(setup_resp_valid_delay_q_do),
        .I5(\bmRequestType_w_do[7] [7]),
        .O(axi_bram_addr_o[0]));
  LUT6 #(
    .INIT(64'h8A00888880008888)) 
    \axi_bram_addr_o[1]_INST_0 
       (.I0(axi_bram_addr_q_reg[1]),
        .I1(\readAXIBRAM_q_reg_n_0_[0] ),
        .I2(\bmRequestType_w_do[7] [5]),
        .I3(\bmRequestType_w_do[7] [6]),
        .I4(setup_resp_valid_delay_q_do),
        .I5(\bmRequestType_w_do[7] [7]),
        .O(axi_bram_addr_o[1]));
  FDRE \axi_bram_addr_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(u_core_n_78),
        .Q(axi_bram_addr_q_reg[0]),
        .R(1'b0));
  FDRE \axi_bram_addr_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(u_core_n_77),
        .Q(axi_bram_addr_q_reg[1]),
        .R(1'b0));
  MUXF7 \axi_bram_w_data_o[0]_INST_0 
       (.I0(\axi_bram_w_data_o[0]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[0]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[0]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[0]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [0]),
        .I1(wValue_w_do[0]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [0]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [0]),
        .O(\axi_bram_w_data_o[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[0]_INST_0_i_2 
       (.I0(wLength[8]),
        .I1(wLength[0]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[8]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[0]),
        .O(\axi_bram_w_data_o[0]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[1]_INST_0 
       (.I0(\axi_bram_w_data_o[1]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[1]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[1]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[1]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [1]),
        .I1(wValue_w_do[1]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [1]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [1]),
        .O(\axi_bram_w_data_o[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[1]_INST_0_i_2 
       (.I0(wLength[9]),
        .I1(wLength[1]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[9]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[1]),
        .O(\axi_bram_w_data_o[1]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[2]_INST_0 
       (.I0(\axi_bram_w_data_o[2]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[2]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[2]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[2]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [2]),
        .I1(wValue_w_do[2]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [2]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [2]),
        .O(\axi_bram_w_data_o[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[2]_INST_0_i_2 
       (.I0(wLength[10]),
        .I1(wLength[2]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[10]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[2]),
        .O(\axi_bram_w_data_o[2]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[3]_INST_0 
       (.I0(\axi_bram_w_data_o[3]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[3]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[3]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[3]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [3]),
        .I1(wValue_w_do[3]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [3]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [3]),
        .O(\axi_bram_w_data_o[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[3]_INST_0_i_2 
       (.I0(wLength[11]),
        .I1(wLength[3]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[11]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[3]),
        .O(\axi_bram_w_data_o[3]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[4]_INST_0 
       (.I0(\axi_bram_w_data_o[4]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[4]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[4]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[4]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [4]),
        .I1(wValue_w_do[4]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [4]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [4]),
        .O(\axi_bram_w_data_o[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[4]_INST_0_i_2 
       (.I0(wLength[12]),
        .I1(wLength[4]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[12]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[4]),
        .O(\axi_bram_w_data_o[4]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[5]_INST_0 
       (.I0(\axi_bram_w_data_o[5]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[5]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[5]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[5]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [5]),
        .I1(wValue_w_do[5]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [5]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [5]),
        .O(\axi_bram_w_data_o[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[5]_INST_0_i_2 
       (.I0(wLength[13]),
        .I1(wLength[5]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[13]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[5]),
        .O(\axi_bram_w_data_o[5]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[6]_INST_0 
       (.I0(\axi_bram_w_data_o[6]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[6]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[6]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[6]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [6]),
        .I1(wValue_w_do[6]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [6]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [6]),
        .O(\axi_bram_w_data_o[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[6]_INST_0_i_2 
       (.I0(wLength[14]),
        .I1(wLength[6]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[14]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[6]),
        .O(\axi_bram_w_data_o[6]_INST_0_i_2_n_0 ));
  MUXF7 \axi_bram_w_data_o[7]_INST_0 
       (.I0(\axi_bram_w_data_o[7]_INST_0_i_1_n_0 ),
        .I1(\axi_bram_w_data_o[7]_INST_0_i_2_n_0 ),
        .O(axi_bram_w_data_o[7]),
        .S(delayCnt_q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[7]_INST_0_i_1 
       (.I0(\wValue_w_do[15] [7]),
        .I1(wValue_w_do[7]),
        .I2(delayCnt_q[1]),
        .I3(\bRequest_w_do[7] [7]),
        .I4(delayCnt_q[0]),
        .I5(\bmRequestType_w_do[7] [7]),
        .O(\axi_bram_w_data_o[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_bram_w_data_o[7]_INST_0_i_2 
       (.I0(wLength[15]),
        .I1(wLength[7]),
        .I2(delayCnt_q[1]),
        .I3(wIndex_w[15]),
        .I4(delayCnt_q[0]),
        .I5(wIndex_w[7]),
        .O(\axi_bram_w_data_o[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \chirp_count_q[0]_i_1 
       (.I0(\chirp_count_q_reg_n_0_[0] ),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .O(\chirp_count_q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66666066)) 
    \chirp_count_q[1]_i_1 
       (.I0(\chirp_count_q_reg_n_0_[1] ),
        .I1(\chirp_count_q_reg_n_0_[0] ),
        .I2(state_q[1]),
        .I3(state_q[2]),
        .I4(state_q[0]),
        .O(\chirp_count_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878007878)) 
    \chirp_count_q[2]_i_1 
       (.I0(\chirp_count_q_reg_n_0_[0] ),
        .I1(\chirp_count_q_reg_n_0_[1] ),
        .I2(\chirp_count_q_reg_n_0_[2] ),
        .I3(state_q[1]),
        .I4(state_q[2]),
        .I5(state_q[0]),
        .O(\chirp_count_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \chirp_count_q[3]_i_1 
       (.I0(\chirp_count_q_reg_n_0_[2] ),
        .I1(\chirp_count_q_reg_n_0_[1] ),
        .I2(\chirp_count_q_reg_n_0_[0] ),
        .I3(\chirp_count_q_reg_n_0_[3] ),
        .I4(u_core_n_87),
        .O(\chirp_count_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \chirp_count_q[4]_i_1 
       (.I0(u_core_n_87),
        .I1(\chirp_count_q_reg_n_0_[3] ),
        .I2(\chirp_count_q_reg_n_0_[0] ),
        .I3(\chirp_count_q_reg_n_0_[1] ),
        .I4(\chirp_count_q_reg_n_0_[2] ),
        .I5(\chirp_count_q_reg_n_0_[4] ),
        .O(\chirp_count_q[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FBFB00)) 
    \chirp_count_q[5]_i_1 
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(\chirp_count_q[5]_i_2_n_0 ),
        .I4(\chirp_count_q_reg_n_0_[5] ),
        .O(\chirp_count_q[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \chirp_count_q[5]_i_2 
       (.I0(\chirp_count_q_reg_n_0_[4] ),
        .I1(\chirp_count_q_reg_n_0_[2] ),
        .I2(\chirp_count_q_reg_n_0_[1] ),
        .I3(\chirp_count_q_reg_n_0_[0] ),
        .I4(\chirp_count_q_reg_n_0_[3] ),
        .O(\chirp_count_q[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FBFB00)) 
    \chirp_count_q[6]_i_1 
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(\chirp_count_q[7]_i_5_n_0 ),
        .I4(\chirp_count_q_reg_n_0_[6] ),
        .O(\chirp_count_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010181018101810)) 
    \chirp_count_q[7]_i_1 
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(\chirp_count_q[7]_i_3_n_0 ),
        .I4(\chirp_count_q_reg_n_0_[7] ),
        .I5(\chirp_count_q[7]_i_4_n_0 ),
        .O(chirp_count_q));
  LUT6 #(
    .INIT(64'h7878787878007878)) 
    \chirp_count_q[7]_i_2 
       (.I0(\chirp_count_q[7]_i_5_n_0 ),
        .I1(\chirp_count_q_reg_n_0_[6] ),
        .I2(\chirp_count_q_reg_n_0_[7] ),
        .I3(state_q[1]),
        .I4(state_q[2]),
        .I5(state_q[0]),
        .O(\chirp_count_q[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \chirp_count_q[7]_i_3 
       (.I0(last_linestate_q[1]),
        .I1(utmi_linestate_i[1]),
        .I2(last_linestate_q[0]),
        .I3(utmi_linestate_i[0]),
        .O(\chirp_count_q[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \chirp_count_q[7]_i_4 
       (.I0(\chirp_count_q[7]_i_5_n_0 ),
        .I1(\chirp_count_q_reg_n_0_[6] ),
        .O(\chirp_count_q[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \chirp_count_q[7]_i_5 
       (.I0(\chirp_count_q_reg_n_0_[3] ),
        .I1(\chirp_count_q_reg_n_0_[0] ),
        .I2(\chirp_count_q_reg_n_0_[1] ),
        .I3(\chirp_count_q_reg_n_0_[2] ),
        .I4(\chirp_count_q_reg_n_0_[4] ),
        .I5(\chirp_count_q_reg_n_0_[5] ),
        .O(\chirp_count_q[7]_i_5_n_0 ));
  FDCE \chirp_count_q_reg[0] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[0]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[0] ));
  FDCE \chirp_count_q_reg[1] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[1]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[1] ));
  FDCE \chirp_count_q_reg[2] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[2]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[2] ));
  FDCE \chirp_count_q_reg[3] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[3]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[3] ));
  FDCE \chirp_count_q_reg[4] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[4]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[4] ));
  FDCE \chirp_count_q_reg[5] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[5]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[5] ));
  FDCE \chirp_count_q_reg[6] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[6]_i_1_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[6] ));
  FDCE \chirp_count_q_reg[7] 
       (.C(clk_i),
        .CE(chirp_count_q),
        .CLR(rst_i),
        .D(\chirp_count_q[7]_i_2_n_0 ),
        .Q(\chirp_count_q_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h0000FF02)) 
    ctrl_ack_r_do_INST_0
       (.I0(ctrl_ack_r_do_INST_0_i_1_n_0),
        .I1(ctrl_ack_r_do_INST_0_i_2_n_0),
        .I2(ctrl_stall_r_do_INST_0_i_2_n_0),
        .I3(ctrl_ack_r_do_INST_0_i_3_n_0),
        .I4(ctrl_ack_r_do_INST_0_i_4_n_0),
        .O(ctrl_ack_r_do));
  LUT4 #(
    .INIT(16'hAABF)) 
    ctrl_ack_r_do_INST_0_i_1
       (.I0(\bRequest_w_do[7] [1]),
        .I1(\bRequest_w_do[7] [2]),
        .I2(\bRequest_w_do[7] [3]),
        .I3(ctrl_stall_r_do_INST_0_i_4_n_0),
        .O(ctrl_ack_r_do_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ctrl_ack_r_do_INST_0_i_10
       (.I0(wLength[13]),
        .I1(wLength[6]),
        .I2(wLength[2]),
        .I3(wLength[9]),
        .I4(wLength[3]),
        .I5(wLength[11]),
        .O(ctrl_ack_r_do_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_ack_r_do_INST_0_i_11
       (.I0(\bRequest_w_do[7] [7]),
        .I1(\bRequest_w_do[7] [6]),
        .I2(\bRequest_w_do[7] [4]),
        .I3(\bRequest_w_do[7] [1]),
        .O(ctrl_ack_r_do_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAFF)) 
    ctrl_ack_r_do_INST_0_i_2
       (.I0(ctrl_ack_r_do_INST_0_i_5_n_0),
        .I1(\bRequest_w_do[7] [1]),
        .I2(\bRequest_w_do[7] [2]),
        .I3(\bRequest_w_do[7] [0]),
        .I4(\bmRequestType_w_do[7] [5]),
        .I5(ctrl_stall_r_do_INST_0_i_7_n_0),
        .O(ctrl_ack_r_do_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00002A2A00FF2A2A)) 
    ctrl_ack_r_do_INST_0_i_3
       (.I0(\bmRequestType_w_do[7] [6]),
        .I1(\bmRequestType_w_do[7] [7]),
        .I2(setup_resp_valid_delay_q_do),
        .I3(ctrl_ack_r_do_INST_0_i_5_n_0),
        .I4(\bmRequestType_w_do[7] [5]),
        .I5(ctrl_ack_r_do_INST_0_i_6_n_0),
        .O(ctrl_ack_r_do_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hC8FF)) 
    ctrl_ack_r_do_INST_0_i_4
       (.I0(\bmRequestType_w_do[7] [7]),
        .I1(\bmRequestType_w_do[7] [6]),
        .I2(\bmRequestType_w_do[7] [5]),
        .I3(setup_resp_valid_delay_q_do),
        .O(ctrl_ack_r_do_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    ctrl_ack_r_do_INST_0_i_5
       (.I0(ctrl_ack_r_do_INST_0_i_7_n_0),
        .I1(ctrl_ack_r_do_INST_0_i_8_n_0),
        .I2(ctrl_ack_r_do_INST_0_i_9_n_0),
        .I3(ctrl_ack_r_do_INST_0_i_10_n_0),
        .O(ctrl_ack_r_do_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    ctrl_ack_r_do_INST_0_i_6
       (.I0(\bRequest_w_do[7] [0]),
        .I1(\bRequest_w_do[7] [5]),
        .I2(\bRequest_w_do[7] [2]),
        .I3(\bRequest_w_do[7] [3]),
        .I4(ctrl_ack_r_do_INST_0_i_11_n_0),
        .O(ctrl_ack_r_do_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_ack_r_do_INST_0_i_7
       (.I0(wLength[7]),
        .I1(wLength[1]),
        .I2(wLength[10]),
        .I3(wLength[4]),
        .O(ctrl_ack_r_do_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_ack_r_do_INST_0_i_8
       (.I0(wLength[8]),
        .I1(wLength[0]),
        .I2(wLength[15]),
        .I3(\bmRequestType_w_do[7] [7]),
        .O(ctrl_ack_r_do_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    ctrl_ack_r_do_INST_0_i_9
       (.I0(wLength[14]),
        .I1(wLength[12]),
        .I2(setup_resp_valid_delay_q_do),
        .I3(wLength[5]),
        .O(ctrl_ack_r_do_INST_0_i_9_n_0));
  FDCE \ctrl_send_idx_q_reg[0] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_66),
        .Q(ctrl_send_idx_q[0]));
  FDCE \ctrl_send_idx_q_reg[10] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_56),
        .Q(ctrl_send_idx_q__0[10]));
  FDCE \ctrl_send_idx_q_reg[11] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_55),
        .Q(ctrl_send_idx_q__0[11]));
  FDCE \ctrl_send_idx_q_reg[12] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_54),
        .Q(ctrl_send_idx_q__0[12]));
  FDCE \ctrl_send_idx_q_reg[13] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_53),
        .Q(ctrl_send_idx_q__0[13]));
  FDCE \ctrl_send_idx_q_reg[14] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_52),
        .Q(ctrl_send_idx_q__0[14]));
  FDCE \ctrl_send_idx_q_reg[15] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_51),
        .Q(ctrl_send_idx_q__0[15]));
  FDCE \ctrl_send_idx_q_reg[1] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_65),
        .Q(ctrl_send_idx_q[1]));
  FDCE \ctrl_send_idx_q_reg[2] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_64),
        .Q(ctrl_send_idx_q[2]));
  FDCE \ctrl_send_idx_q_reg[3] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_63),
        .Q(ctrl_send_idx_q[3]));
  FDCE \ctrl_send_idx_q_reg[4] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_62),
        .Q(ctrl_send_idx_q[4]));
  FDCE \ctrl_send_idx_q_reg[5] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_61),
        .Q(ctrl_send_idx_q[5]));
  FDCE \ctrl_send_idx_q_reg[6] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_60),
        .Q(ctrl_send_idx_q__0[6]));
  FDCE \ctrl_send_idx_q_reg[7] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_59),
        .Q(ctrl_send_idx_q__0[7]));
  FDCE \ctrl_send_idx_q_reg[8] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_58),
        .Q(ctrl_send_idx_q__0[8]));
  FDCE \ctrl_send_idx_q_reg[9] 
       (.C(clk_i),
        .CE(u_core_n_127),
        .CLR(rst_i),
        .D(u_core_n_57),
        .Q(ctrl_send_idx_q__0[9]));
  FDCE ctrl_sending_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_40),
        .Q(ctrl_sending_q_reg_n_0));
  CARRY4 \ctrl_sending_r1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ctrl_sending_r1_inferred__0/i__carry_n_0 ,\ctrl_sending_r1_inferred__0/i__carry_n_1 ,\ctrl_sending_r1_inferred__0/i__carry_n_2 ,\ctrl_sending_r1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ctrl_sending_r1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \ctrl_sending_r1_inferred__0/i__carry__0 
       (.CI(\ctrl_sending_r1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_ctrl_sending_r1_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\ctrl_sending_r1_inferred__0/i__carry__0_n_2 ,\ctrl_sending_r1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ctrl_sending_r1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  CARRY4 ctrl_sending_r2_carry
       (.CI(1'b0),
        .CO({ctrl_sending_r2_carry_n_0,ctrl_sending_r2_carry_n_1,ctrl_sending_r2_carry_n_2,ctrl_sending_r2_carry_n_3}),
        .CYINIT(ctrl_send_idx_q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ctrl_sending_r2[4:1]),
        .S(ctrl_send_idx_q[4:1]));
  CARRY4 ctrl_sending_r2_carry__0
       (.CI(ctrl_sending_r2_carry_n_0),
        .CO({ctrl_sending_r2_carry__0_n_0,ctrl_sending_r2_carry__0_n_1,ctrl_sending_r2_carry__0_n_2,ctrl_sending_r2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ctrl_sending_r2[8:5]),
        .S({ctrl_send_idx_q__0[8:6],ctrl_send_idx_q[5]}));
  CARRY4 ctrl_sending_r2_carry__1
       (.CI(ctrl_sending_r2_carry__0_n_0),
        .CO({ctrl_sending_r2_carry__1_n_0,ctrl_sending_r2_carry__1_n_1,ctrl_sending_r2_carry__1_n_2,ctrl_sending_r2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ctrl_sending_r2[12:9]),
        .S(ctrl_send_idx_q__0[12:9]));
  CARRY4 ctrl_sending_r2_carry__2
       (.CI(ctrl_sending_r2_carry__1_n_0),
        .CO({NLW_ctrl_sending_r2_carry__2_CO_UNCONNECTED[3:2],ctrl_sending_r2_carry__2_n_2,ctrl_sending_r2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ctrl_sending_r2_carry__2_O_UNCONNECTED[3],ctrl_sending_r2[15:13]}),
        .S({1'b0,ctrl_send_idx_q__0[15:13]}));
  LUT6 #(
    .INIT(64'h8282828282828082)) 
    ctrl_stall_r_do_INST_0
       (.I0(setup_resp_valid_delay_q_do),
        .I1(\bmRequestType_w_do[7] [5]),
        .I2(\bmRequestType_w_do[7] [6]),
        .I3(ctrl_stall_r_do_INST_0_i_1_n_0),
        .I4(ctrl_stall_r_do_INST_0_i_2_n_0),
        .I5(ctrl_stall_r_do_INST_0_i_3_n_0),
        .O(ctrl_stall_r_do));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    ctrl_stall_r_do_INST_0_i_1
       (.I0(\bRequest_w_do[7] [1]),
        .I1(\bRequest_w_do[7] [2]),
        .I2(\bRequest_w_do[7] [0]),
        .I3(ctrl_stall_r_do_INST_0_i_4_n_0),
        .O(ctrl_stall_r_do_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_stall_r_do_INST_0_i_10
       (.I0(wIndex_w[13]),
        .I1(wIndex_w[1]),
        .I2(wIndex_w[5]),
        .I3(wIndex_w[0]),
        .O(ctrl_stall_r_do_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hD000)) 
    ctrl_stall_r_do_INST_0_i_2
       (.I0(ctrl_stall_r_do_INST_0_i_5_n_0),
        .I1(ctrl_stall_r_do_INST_0_i_6_n_0),
        .I2(\bRequest_w_do[7] [1]),
        .I3(\bRequest_w_do[7] [3]),
        .O(ctrl_stall_r_do_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFF4F8F4)) 
    ctrl_stall_r_do_INST_0_i_3
       (.I0(\bRequest_w_do[7] [0]),
        .I1(\bRequest_w_do[7] [1]),
        .I2(ctrl_stall_r_do_INST_0_i_7_n_0),
        .I3(\bRequest_w_do[7] [2]),
        .I4(\bRequest_w_do[7] [3]),
        .O(ctrl_stall_r_do_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    ctrl_stall_r_do_INST_0_i_4
       (.I0(\bRequest_w_do[7] [3]),
        .I1(wValue_w_do[1]),
        .I2(\wValue_w_do[15] [0]),
        .I3(\wValue_w_do[15] [1]),
        .I4(\desc_addr_q[3]_i_5_n_0 ),
        .I5(\desc_addr_q[6]_i_9_n_0 ),
        .O(ctrl_stall_r_do_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    ctrl_stall_r_do_INST_0_i_5
       (.I0(\desc_addr_q[6]_i_9_n_0 ),
        .I1(\desc_addr_q[3]_i_5_n_0 ),
        .I2(\wValue_w_do[15] [1]),
        .I3(\wValue_w_do[15] [0]),
        .I4(wValue_w_do[1]),
        .O(ctrl_stall_r_do_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ctrl_stall_r_do_INST_0_i_6
       (.I0(ctrl_stall_r_do_INST_0_i_8_n_0),
        .I1(ctrl_stall_r_do_INST_0_i_9_n_0),
        .I2(ctrl_stall_r_do_INST_0_i_10_n_0),
        .I3(wIndex_w[8]),
        .I4(wIndex_w[11]),
        .I5(wIndex_w[10]),
        .O(ctrl_stall_r_do_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_stall_r_do_INST_0_i_7
       (.I0(\bRequest_w_do[7] [7]),
        .I1(\bRequest_w_do[7] [6]),
        .I2(\bRequest_w_do[7] [4]),
        .I3(\bRequest_w_do[7] [5]),
        .O(ctrl_stall_r_do_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ctrl_stall_r_do_INST_0_i_8
       (.I0(wIndex_w[14]),
        .I1(wIndex_w[2]),
        .I2(wIndex_w[6]),
        .I3(wIndex_w[15]),
        .I4(wIndex_w[7]),
        .I5(wIndex_w[9]),
        .O(ctrl_stall_r_do_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_stall_r_do_INST_0_i_9
       (.I0(wIndex_w[12]),
        .I1(wIndex_w[3]),
        .I2(wValue_w_do[0]),
        .I3(wIndex_w[4]),
        .O(ctrl_stall_r_do_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0101050002000000)) 
    \ctrl_txdata_q[0]_i_2 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\ctrl_txdata_q[0]_i_4_n_0 ),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [1]),
        .I5(\desc_addr_q_do[6] [0]),
        .O(\ctrl_txdata_q[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000055F3)) 
    \ctrl_txdata_q[0]_i_3 
       (.I0(\ctrl_txdata_q[0]_i_5_n_0 ),
        .I1(\ctrl_txdata_q[0]_i_6_n_0 ),
        .I2(\ctrl_txdata_q[0]_i_7_n_0 ),
        .I3(\ctrl_txdata_q[0]_i_8_n_0 ),
        .I4(desc_addr_q),
        .O(\ctrl_txdata_q[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ctrl_txdata_q[0]_i_4 
       (.I0(desc_addr_q),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(\desc_addr_q_do[6] [3]),
        .O(\ctrl_txdata_q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8DBE7F795C633FF)) 
    \ctrl_txdata_q[0]_i_5 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [0]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [3]),
        .O(\ctrl_txdata_q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFAEAFF)) 
    \ctrl_txdata_q[0]_i_6 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\desc_addr_q_do[6] [6]),
        .I4(\desc_addr_q_do[6] [0]),
        .I5(\desc_addr_q_do[6] [2]),
        .O(\ctrl_txdata_q[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h80A0808880A0B0B8)) 
    \ctrl_txdata_q[0]_i_7 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [0]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [6]),
        .O(\ctrl_txdata_q[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEBEAAAAAAAAAAAAA)) 
    \ctrl_txdata_q[0]_i_8 
       (.I0(\desc_addr_q_do[6] [1]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [0]),
        .I5(\desc_addr_q_do[6] [5]),
        .O(\ctrl_txdata_q[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFDBAED57FD82E)) 
    \ctrl_txdata_q[1]_i_10 
       (.I0(\desc_addr_q_do[6] [1]),
        .I1(\desc_addr_q_do[6] [2]),
        .I2(\desc_addr_q_do[6] [4]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\desc_addr_q_do[6] [6]),
        .I5(\desc_addr_q_do[6] [5]),
        .O(\ctrl_txdata_q[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \ctrl_txdata_q[1]_i_2 
       (.I0(\desc_addr_q_do[6] [0]),
        .I1(\desc_addr_q_do[6] [2]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\desc_addr_q_do[6] [6]),
        .I4(\desc_addr_q_do[6] [1]),
        .I5(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00007F00)) 
    \ctrl_txdata_q[1]_i_4 
       (.I0(\ctrl_txdata_q[1]_i_7_n_0 ),
        .I1(\ctrl_txdata_q[1]_i_8_n_0 ),
        .I2(\desc_addr_q_do[6] [2]),
        .I3(desc_addr_q),
        .I4(\ctrl_txdata_q[1]_i_9_n_0 ),
        .I5(\ctrl_txdata_q[1]_i_10_n_0 ),
        .O(\ctrl_txdata_q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7EFFFFFFAF5FDFF)) 
    \ctrl_txdata_q[1]_i_5 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [3]),
        .I2(desc_addr_q),
        .I3(\desc_addr_q_do[6] [6]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [2]),
        .O(\ctrl_txdata_q[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5FF7EFEFBFF7A)) 
    \ctrl_txdata_q[1]_i_6 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(desc_addr_q),
        .I4(\desc_addr_q_do[6] [2]),
        .I5(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ctrl_txdata_q[1]_i_7 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_txdata_q[1]_i_8 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [6]),
        .O(\ctrl_txdata_q[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ctrl_txdata_q[1]_i_9 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [6]),
        .O(\ctrl_txdata_q[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h001000100000000C)) 
    \ctrl_txdata_q[2]_i_10 
       (.I0(\desc_addr_q_do[6] [1]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [6]),
        .O(\ctrl_txdata_q[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8FF0CC00)) 
    \ctrl_txdata_q[2]_i_11 
       (.I0(\ctrl_txdata_q[6]_i_7_n_0 ),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\desc_addr_q_do[6] [2]),
        .I5(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC0CFCFCFFF7FFF4F)) 
    \ctrl_txdata_q[2]_i_12 
       (.I0(\ctrl_txdata_q[6]_i_7_n_0 ),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [6]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\desc_addr_q_do[6] [5]),
        .I5(\desc_addr_q_do[6] [2]),
        .O(\ctrl_txdata_q[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000404C000040)) 
    \ctrl_txdata_q[2]_i_13 
       (.I0(\desc_addr_q_do[6] [6]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\desc_addr_q_do[6] [2]),
        .I5(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h002A000000220000)) 
    \ctrl_txdata_q[2]_i_2 
       (.I0(\ctrl_txdata_q[2]_i_4_n_0 ),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [1]),
        .I3(\desc_addr_q_do[6] [6]),
        .I4(desc_addr_q),
        .I5(\desc_addr_q_do[6] [2]),
        .O(\ctrl_txdata_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDFF0F)) 
    \ctrl_txdata_q[2]_i_3 
       (.I0(\ctrl_txdata_q[2]_i_5_n_0 ),
        .I1(\ctrl_txdata_q[2]_i_6_n_0 ),
        .I2(\ctrl_txdata_q[2]_i_7_n_0 ),
        .I3(\ctrl_txdata_q[2]_i_8_n_0 ),
        .I4(\ctrl_txdata_q[2]_i_9_n_0 ),
        .I5(desc_addr_q),
        .O(\ctrl_txdata_q[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ctrl_txdata_q[2]_i_4 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [0]),
        .I2(\desc_addr_q_do[6] [5]),
        .O(\ctrl_txdata_q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFFFF)) 
    \ctrl_txdata_q[2]_i_5 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [3]),
        .I2(\desc_addr_q_do[6] [4]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\ctrl_txdata_q[6]_i_7_n_0 ),
        .I5(\ctrl_txdata_q[2]_i_10_n_0 ),
        .O(\ctrl_txdata_q[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0022022200220022)) 
    \ctrl_txdata_q[2]_i_6 
       (.I0(\ctrl_txdata_q[2]_i_11_n_0 ),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(\desc_addr_q_do[6] [2]),
        .I3(\desc_addr_q_do[6] [1]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [5]),
        .O(\ctrl_txdata_q[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ctrl_txdata_q[2]_i_7 
       (.I0(\ctrl_txdata_q[2]_i_12_n_0 ),
        .I1(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h383880042AB8B0C4)) 
    \ctrl_txdata_q[2]_i_8 
       (.I0(\desc_addr_q_do[6] [6]),
        .I1(\desc_addr_q_do[6] [3]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555545)) 
    \ctrl_txdata_q[2]_i_9 
       (.I0(\ctrl_txdata_q[2]_i_13_n_0 ),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [4]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [1]),
        .I5(\desc_addr_q_do[6] [0]),
        .O(\ctrl_txdata_q[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h80000002000800A0)) 
    \ctrl_txdata_q[3]_i_2 
       (.I0(\ctrl_txdata_q[3]_i_4_n_0 ),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [5]),
        .O(\ctrl_txdata_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF00F008F808F8)) 
    \ctrl_txdata_q[3]_i_3 
       (.I0(\ctrl_txdata_q[3]_i_5_n_0 ),
        .I1(\ctrl_txdata_q[7]_i_7_n_0 ),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\ctrl_txdata_q[3]_i_6_n_0 ),
        .I4(\ctrl_txdata_q[3]_i_7_n_0 ),
        .I5(\desc_addr_q_do[6] [2]),
        .O(\ctrl_txdata_q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_txdata_q[3]_i_4 
       (.I0(\desc_addr_q_do[6] [6]),
        .I1(desc_addr_q),
        .O(\ctrl_txdata_q[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ctrl_txdata_q[3]_i_5 
       (.I0(\desc_addr_q_do[6] [6]),
        .I1(desc_addr_q),
        .O(\ctrl_txdata_q[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFF9FFFFEBFF)) 
    \ctrl_txdata_q[3]_i_6 
       (.I0(\desc_addr_q_do[6] [1]),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(desc_addr_q),
        .I3(\desc_addr_q_do[6] [5]),
        .I4(\desc_addr_q_do[6] [2]),
        .I5(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0007908000079084)) 
    \ctrl_txdata_q[3]_i_7 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [6]),
        .I3(\desc_addr_q_do[6] [5]),
        .I4(desc_addr_q),
        .I5(\ctrl_txdata_q[6]_i_7_n_0 ),
        .O(\ctrl_txdata_q[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCDCCFDCC)) 
    \ctrl_txdata_q[4]_i_2 
       (.I0(\ctrl_txdata_q[4]_i_3_n_0 ),
        .I1(\ctrl_txdata_q[4]_i_4_n_0 ),
        .I2(\desc_addr_q_do[6] [4]),
        .I3(\desc_addr_q_do[6] [0]),
        .I4(\ctrl_txdata_q[4]_i_5_n_0 ),
        .O(\ctrl_txdata_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFBE7BF)) 
    \ctrl_txdata_q[4]_i_3 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [6]),
        .I3(\desc_addr_q_do[6] [1]),
        .I4(desc_addr_q),
        .I5(\desc_addr_q_do[6] [3]),
        .O(\ctrl_txdata_q[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C11000000000000)) 
    \ctrl_txdata_q[4]_i_4 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\ctrl_txdata_q[7]_i_8_n_0 ),
        .I5(\ctrl_txdata_q[5]_i_4_n_0 ),
        .O(\ctrl_txdata_q[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCDDDBF777F77)) 
    \ctrl_txdata_q[4]_i_5 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(\desc_addr_q_do[6] [1]),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\desc_addr_q_do[6] [5]),
        .I5(desc_addr_q),
        .O(\ctrl_txdata_q[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2190000000000000)) 
    \ctrl_txdata_q[5]_i_2 
       (.I0(\desc_addr_q_do[6] [1]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [3]),
        .I3(\desc_addr_q_do[6] [5]),
        .I4(\ctrl_txdata_q[7]_i_8_n_0 ),
        .I5(\ctrl_txdata_q[5]_i_4_n_0 ),
        .O(\ctrl_txdata_q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_txdata_q[5]_i_4 
       (.I0(\desc_addr_q_do[6] [0]),
        .I1(\desc_addr_q_do[6] [6]),
        .O(\ctrl_txdata_q[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30330031)) 
    \ctrl_txdata_q[5]_i_5 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\desc_addr_q_do[6] [2]),
        .O(\ctrl_txdata_q[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCCDD7FFEFB7F)) 
    \ctrl_txdata_q[5]_i_6 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [2]),
        .I3(\desc_addr_q_do[6] [4]),
        .I4(\desc_addr_q_do[6] [6]),
        .I5(desc_addr_q),
        .O(\ctrl_txdata_q[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FBF7)) 
    \ctrl_txdata_q[5]_i_7 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [4]),
        .I3(desc_addr_q),
        .I4(\desc_addr_q_do[6] [6]),
        .I5(\desc_addr_q_do[6] [3]),
        .O(\ctrl_txdata_q[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000785000030000)) 
    \ctrl_txdata_q[6]_i_10 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(desc_addr_q),
        .I5(\desc_addr_q_do[6] [6]),
        .O(\ctrl_txdata_q[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ctrl_txdata_q[6]_i_11 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .O(\ctrl_txdata_q[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \ctrl_txdata_q[6]_i_12 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [2]),
        .I2(\desc_addr_q_do[6] [6]),
        .I3(desc_addr_q),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ctrl_txdata_q[6]_i_13 
       (.I0(\desc_addr_q_do[6] [6]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [4]),
        .I3(\desc_addr_q_do[6] [3]),
        .O(\ctrl_txdata_q[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \ctrl_txdata_q[6]_i_2 
       (.I0(\ctrl_txdata_q[6]_i_4_n_0 ),
        .I1(\ctrl_txdata_q[6]_i_5_n_0 ),
        .I2(\desc_addr_q_do[6] [6]),
        .I3(\ctrl_txdata_q[6]_i_6_n_0 ),
        .I4(\desc_addr_q_do[6] [1]),
        .I5(\ctrl_txdata_q[6]_i_7_n_0 ),
        .O(\ctrl_txdata_q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB000)) 
    \ctrl_txdata_q[6]_i_3 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [1]),
        .I3(\ctrl_txdata_q[6]_i_8_n_0 ),
        .I4(\ctrl_txdata_q[6]_i_9_n_0 ),
        .I5(\ctrl_txdata_q[6]_i_10_n_0 ),
        .O(\ctrl_txdata_q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000042040000)) 
    \ctrl_txdata_q[6]_i_4 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(desc_addr_q),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\ctrl_txdata_q[1]_i_8_n_0 ),
        .I5(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \ctrl_txdata_q[6]_i_5 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_txdata_q[6]_i_6 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(desc_addr_q),
        .O(\ctrl_txdata_q[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ctrl_txdata_q[6]_i_7 
       (.I0(state_q[0]),
        .I1(state_q[2]),
        .I2(state_q[1]),
        .O(\ctrl_txdata_q[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1510510005005000)) 
    \ctrl_txdata_q[6]_i_8 
       (.I0(desc_addr_q),
        .I1(\desc_addr_q_do[6] [2]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [6]),
        .I4(\desc_addr_q_do[6] [4]),
        .I5(\ctrl_txdata_q[6]_i_11_n_0 ),
        .O(\ctrl_txdata_q[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDDDDDDDDDDDDD)) 
    \ctrl_txdata_q[6]_i_9 
       (.I0(\desc_addr_q_do[6] [0]),
        .I1(\ctrl_txdata_q[6]_i_12_n_0 ),
        .I2(\desc_addr_q_do[6] [2]),
        .I3(\desc_addr_q_do[6] [1]),
        .I4(\ctrl_txdata_q[6]_i_13_n_0 ),
        .I5(\ctrl_txdata_q[6]_i_7_n_0 ),
        .O(\ctrl_txdata_q[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h0000400F)) 
    \ctrl_txdata_q[7]_i_3 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [5]),
        .I2(desc_addr_q),
        .I3(\desc_addr_q_do[6] [2]),
        .I4(\ctrl_txdata_q[7]_i_5_n_0 ),
        .O(\ctrl_txdata_q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0EC0000000000000)) 
    \ctrl_txdata_q[7]_i_4 
       (.I0(\ctrl_txdata_q[7]_i_6_n_0 ),
        .I1(\ctrl_txdata_q[7]_i_7_n_0 ),
        .I2(\desc_addr_q_do[6] [6]),
        .I3(\desc_addr_q_do[6] [3]),
        .I4(\ctrl_txdata_q[7]_i_8_n_0 ),
        .I5(\desc_addr_q_do[6] [0]),
        .O(\ctrl_txdata_q[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFEF)) 
    \ctrl_txdata_q[7]_i_5 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [6]),
        .I2(\desc_addr_q_do[6] [5]),
        .I3(\desc_addr_q_do[6] [1]),
        .I4(\desc_addr_q_do[6] [0]),
        .I5(\desc_addr_q_do[6] [4]),
        .O(\ctrl_txdata_q[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ctrl_txdata_q[7]_i_6 
       (.I0(\desc_addr_q_do[6] [4]),
        .I1(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \ctrl_txdata_q[7]_i_7 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [1]),
        .O(\ctrl_txdata_q[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_txdata_q[7]_i_8 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(desc_addr_q),
        .O(\ctrl_txdata_q[7]_i_8_n_0 ));
  FDCE \ctrl_txdata_q_reg[0] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_155),
        .Q(ctrl_txdata_q_do[0]));
  FDCE \ctrl_txdata_q_reg[1] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_154),
        .Q(ctrl_txdata_q_do[1]));
  MUXF7 \ctrl_txdata_q_reg[1]_i_3 
       (.I0(\ctrl_txdata_q[1]_i_5_n_0 ),
        .I1(\ctrl_txdata_q[1]_i_6_n_0 ),
        .O(\ctrl_txdata_q_reg[1]_i_3_n_0 ),
        .S(\desc_addr_q_do[6] [1]));
  FDCE \ctrl_txdata_q_reg[2] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_153),
        .Q(ctrl_txdata_q_do[2]));
  FDCE \ctrl_txdata_q_reg[3] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_152),
        .Q(ctrl_txdata_q_do[3]));
  FDCE \ctrl_txdata_q_reg[4] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_151),
        .Q(ctrl_txdata_q_do[4]));
  FDCE \ctrl_txdata_q_reg[5] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_150),
        .Q(ctrl_txdata_q_do[5]));
  MUXF7 \ctrl_txdata_q_reg[5]_i_3 
       (.I0(\ctrl_txdata_q[5]_i_6_n_0 ),
        .I1(\ctrl_txdata_q[5]_i_7_n_0 ),
        .O(\ctrl_txdata_q_reg[5]_i_3_n_0 ),
        .S(\ctrl_txdata_q[5]_i_5_n_0 ));
  FDCE \ctrl_txdata_q_reg[6] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_149),
        .Q(ctrl_txdata_q_do[6]));
  FDCE \ctrl_txdata_q_reg[7] 
       (.C(clk_i),
        .CE(u_core_n_128),
        .CLR(rst_i),
        .D(u_core_n_148),
        .Q(ctrl_txdata_q_do[7]));
  LUT6 #(
    .INIT(64'h5444444444444444)) 
    ctrl_txlast_q_i_2
       (.I0(setup_resp_valid_delay_q_do),
        .I1(\ctrl_sending_r1_inferred__0/i__carry__0_n_2 ),
        .I2(ctrl_send_idx_q[0]),
        .I3(ctrl_send_idx_q[1]),
        .I4(ctrl_send_idx_q[2]),
        .I5(ctrl_txlast_q_i_3_n_0),
        .O(ctrl_txlast_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    ctrl_txlast_q_i_3
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(ctrl_send_idx_q[3]),
        .I4(ctrl_send_idx_q[5]),
        .I5(ctrl_send_idx_q[4]),
        .O(ctrl_txlast_q_i_3_n_0));
  FDCE ctrl_txlast_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_207),
        .Q(ctrl_txlast_q_reg_n_0));
  FDCE ctrl_txstall_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_205),
        .Q(ctrl_txstall_q_do));
  FDCE ctrl_txstrb_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_206),
        .Q(ctrl_txstrb_q_reg_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    ctrl_txvalid_q_i_10
       (.I0(\bmRequestType_w_do[7] [5]),
        .I1(ctrl_ack_r_do_INST_0_i_11_n_0),
        .I2(\bRequest_w_do[7] [3]),
        .I3(\bRequest_w_do[7] [2]),
        .I4(\bRequest_w_do[7] [5]),
        .I5(\bRequest_w_do[7] [0]),
        .O(ctrl_txvalid_q_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    ctrl_txvalid_q_i_11
       (.I0(setup_resp_valid_delay_q_do),
        .I1(\bmRequestType_w_do[7] [7]),
        .I2(\bmRequestType_w_do[7] [6]),
        .I3(\bmRequestType_w_do[7] [5]),
        .O(ctrl_txvalid_q_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    ctrl_txvalid_q_i_12
       (.I0(ctrl_stall_r_do_INST_0_i_7_n_0),
        .I1(\bmRequestType_w_do[7] [5]),
        .I2(\bRequest_w_do[7] [0]),
        .I3(\bRequest_w_do[7] [2]),
        .I4(\bRequest_w_do[7] [1]),
        .O(ctrl_txvalid_q_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctrl_txvalid_q_i_3
       (.I0(ctrl_ack_r_do),
        .I1(ctrl_stall_r_do),
        .O(ctrl_txvalid_q_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hC888)) 
    ctrl_txvalid_q_i_6
       (.I0(\bmRequestType_w_do[7] [5]),
        .I1(\bmRequestType_w_do[7] [6]),
        .I2(\bmRequestType_w_do[7] [7]),
        .I3(setup_resp_valid_delay_q_do),
        .O(ctrl_txvalid_q_i_6_n_0));
  LUT6 #(
    .INIT(64'hCCCCEEEFCCCCEEEE)) 
    ctrl_txvalid_q_i_7
       (.I0(ctrl_txvalid_q_i_10_n_0),
        .I1(ctrl_txvalid_q_i_11_n_0),
        .I2(ctrl_stall_r_do_INST_0_i_2_n_0),
        .I3(ctrl_txvalid_q_i_12_n_0),
        .I4(ctrl_ack_r_do_INST_0_i_5_n_0),
        .I5(ctrl_ack_r_do_INST_0_i_1_n_0),
        .O(ctrl_txvalid_q_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00FFFF10)) 
    ctrl_txvalid_q_i_9
       (.I0(ctrl_stall_r_do_INST_0_i_3_n_0),
        .I1(ctrl_stall_r_do_INST_0_i_2_n_0),
        .I2(ctrl_stall_r_do_INST_0_i_1_n_0),
        .I3(\bmRequestType_w_do[7] [6]),
        .I4(\bmRequestType_w_do[7] [5]),
        .O(ctrl_txvalid_q_i_9_n_0));
  FDCE ctrl_txvalid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_203),
        .Q(ctrl_txvalid_q_do));
  FDCE \current_token_debug_counter_q_reg[0] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[0]),
        .Q(current_token_debug_counter_q_do[0]));
  FDCE \current_token_debug_counter_q_reg[10] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[10]),
        .Q(current_token_debug_counter_q_do[10]));
  FDCE \current_token_debug_counter_q_reg[11] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[11]),
        .Q(current_token_debug_counter_q_do[11]));
  FDCE \current_token_debug_counter_q_reg[12] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[12]),
        .Q(current_token_debug_counter_q_do[12]));
  FDCE \current_token_debug_counter_q_reg[13] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[13]),
        .Q(current_token_debug_counter_q_do[13]));
  FDCE \current_token_debug_counter_q_reg[14] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[14]),
        .Q(current_token_debug_counter_q_do[14]));
  FDCE \current_token_debug_counter_q_reg[15] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[15]),
        .Q(current_token_debug_counter_q_do[15]));
  FDCE \current_token_debug_counter_q_reg[16] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[16]),
        .Q(current_token_debug_counter_q_do[16]));
  FDCE \current_token_debug_counter_q_reg[17] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[17]),
        .Q(current_token_debug_counter_q_do[17]));
  FDCE \current_token_debug_counter_q_reg[18] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[18]),
        .Q(current_token_debug_counter_q_do[18]));
  FDCE \current_token_debug_counter_q_reg[19] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[19]),
        .Q(current_token_debug_counter_q_do[19]));
  FDCE \current_token_debug_counter_q_reg[1] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[1]),
        .Q(current_token_debug_counter_q_do[1]));
  FDCE \current_token_debug_counter_q_reg[20] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[20]),
        .Q(current_token_debug_counter_q_do[20]));
  FDCE \current_token_debug_counter_q_reg[21] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[21]),
        .Q(current_token_debug_counter_q_do[21]));
  FDCE \current_token_debug_counter_q_reg[22] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[22]),
        .Q(current_token_debug_counter_q_do[22]));
  FDCE \current_token_debug_counter_q_reg[23] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[23]),
        .Q(current_token_debug_counter_q_do[23]));
  FDCE \current_token_debug_counter_q_reg[24] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[24]),
        .Q(current_token_debug_counter_q_do[24]));
  FDCE \current_token_debug_counter_q_reg[25] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[25]),
        .Q(current_token_debug_counter_q_do[25]));
  FDCE \current_token_debug_counter_q_reg[26] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[26]),
        .Q(current_token_debug_counter_q_do[26]));
  FDCE \current_token_debug_counter_q_reg[27] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[27]),
        .Q(current_token_debug_counter_q_do[27]));
  FDCE \current_token_debug_counter_q_reg[28] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[28]),
        .Q(current_token_debug_counter_q_do[28]));
  FDCE \current_token_debug_counter_q_reg[29] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[29]),
        .Q(current_token_debug_counter_q_do[29]));
  FDCE \current_token_debug_counter_q_reg[2] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[2]),
        .Q(current_token_debug_counter_q_do[2]));
  FDCE \current_token_debug_counter_q_reg[30] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[30]),
        .Q(current_token_debug_counter_q_do[30]));
  FDCE \current_token_debug_counter_q_reg[31] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[31]),
        .Q(current_token_debug_counter_q_do[31]));
  FDCE \current_token_debug_counter_q_reg[32] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[32]),
        .Q(current_token_debug_counter_q_do[32]));
  FDCE \current_token_debug_counter_q_reg[33] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[33]),
        .Q(current_token_debug_counter_q_do[33]));
  FDCE \current_token_debug_counter_q_reg[34] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[34]),
        .Q(current_token_debug_counter_q_do[34]));
  FDCE \current_token_debug_counter_q_reg[35] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[35]),
        .Q(current_token_debug_counter_q_do[35]));
  FDCE \current_token_debug_counter_q_reg[36] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[36]),
        .Q(current_token_debug_counter_q_do[36]));
  FDCE \current_token_debug_counter_q_reg[37] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[37]),
        .Q(current_token_debug_counter_q_do[37]));
  FDCE \current_token_debug_counter_q_reg[38] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[38]),
        .Q(current_token_debug_counter_q_do[38]));
  FDCE \current_token_debug_counter_q_reg[39] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[39]),
        .Q(current_token_debug_counter_q_do[39]));
  FDCE \current_token_debug_counter_q_reg[3] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[3]),
        .Q(current_token_debug_counter_q_do[3]));
  FDCE \current_token_debug_counter_q_reg[40] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[40]),
        .Q(current_token_debug_counter_q_do[40]));
  FDCE \current_token_debug_counter_q_reg[41] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[41]),
        .Q(current_token_debug_counter_q_do[41]));
  FDCE \current_token_debug_counter_q_reg[42] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[42]),
        .Q(current_token_debug_counter_q_do[42]));
  FDCE \current_token_debug_counter_q_reg[43] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[43]),
        .Q(current_token_debug_counter_q_do[43]));
  FDCE \current_token_debug_counter_q_reg[44] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[44]),
        .Q(current_token_debug_counter_q_do[44]));
  FDCE \current_token_debug_counter_q_reg[45] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[45]),
        .Q(current_token_debug_counter_q_do[45]));
  FDCE \current_token_debug_counter_q_reg[46] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[46]),
        .Q(current_token_debug_counter_q_do[46]));
  FDCE \current_token_debug_counter_q_reg[47] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[47]),
        .Q(current_token_debug_counter_q_do[47]));
  FDCE \current_token_debug_counter_q_reg[48] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[48]),
        .Q(current_token_debug_counter_q_do[48]));
  FDCE \current_token_debug_counter_q_reg[49] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[49]),
        .Q(current_token_debug_counter_q_do[49]));
  FDCE \current_token_debug_counter_q_reg[4] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[4]),
        .Q(current_token_debug_counter_q_do[4]));
  FDCE \current_token_debug_counter_q_reg[50] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[50]),
        .Q(current_token_debug_counter_q_do[50]));
  FDCE \current_token_debug_counter_q_reg[51] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[51]),
        .Q(current_token_debug_counter_q_do[51]));
  FDCE \current_token_debug_counter_q_reg[52] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[52]),
        .Q(current_token_debug_counter_q_do[52]));
  FDCE \current_token_debug_counter_q_reg[53] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[53]),
        .Q(current_token_debug_counter_q_do[53]));
  FDCE \current_token_debug_counter_q_reg[54] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[54]),
        .Q(current_token_debug_counter_q_do[54]));
  FDCE \current_token_debug_counter_q_reg[55] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[55]),
        .Q(current_token_debug_counter_q_do[55]));
  FDCE \current_token_debug_counter_q_reg[56] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[56]),
        .Q(current_token_debug_counter_q_do[56]));
  FDCE \current_token_debug_counter_q_reg[57] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[57]),
        .Q(current_token_debug_counter_q_do[57]));
  FDCE \current_token_debug_counter_q_reg[58] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[58]),
        .Q(current_token_debug_counter_q_do[58]));
  FDCE \current_token_debug_counter_q_reg[59] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[59]),
        .Q(current_token_debug_counter_q_do[59]));
  FDCE \current_token_debug_counter_q_reg[5] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[5]),
        .Q(current_token_debug_counter_q_do[5]));
  FDCE \current_token_debug_counter_q_reg[60] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[60]),
        .Q(current_token_debug_counter_q_do[60]));
  FDCE \current_token_debug_counter_q_reg[61] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[61]),
        .Q(current_token_debug_counter_q_do[61]));
  FDCE \current_token_debug_counter_q_reg[62] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[62]),
        .Q(current_token_debug_counter_q_do[62]));
  FDCE \current_token_debug_counter_q_reg[63] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[63]),
        .Q(current_token_debug_counter_q_do[63]));
  FDCE \current_token_debug_counter_q_reg[6] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[6]),
        .Q(current_token_debug_counter_q_do[6]));
  FDCE \current_token_debug_counter_q_reg[7] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[7]),
        .Q(current_token_debug_counter_q_do[7]));
  FDCE \current_token_debug_counter_q_reg[8] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[8]),
        .Q(current_token_debug_counter_q_do[8]));
  FDCE \current_token_debug_counter_q_reg[9] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(debug_counter_q_do[9]),
        .Q(current_token_debug_counter_q_do[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \debug_counter_q[3]_i_2 
       (.I0(debug_counter_q_do[0]),
        .O(\debug_counter_q[3]_i_2_n_0 ));
  FDCE \debug_counter_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[3]_i_1_n_7 ),
        .Q(debug_counter_q_do[0]));
  FDCE \debug_counter_q_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[11]_i_1_n_5 ),
        .Q(debug_counter_q_do[10]));
  FDCE \debug_counter_q_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[11]_i_1_n_4 ),
        .Q(debug_counter_q_do[11]));
  CARRY4 \debug_counter_q_reg[11]_i_1 
       (.CI(\debug_counter_q_reg[7]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[11]_i_1_n_0 ,\debug_counter_q_reg[11]_i_1_n_1 ,\debug_counter_q_reg[11]_i_1_n_2 ,\debug_counter_q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[11]_i_1_n_4 ,\debug_counter_q_reg[11]_i_1_n_5 ,\debug_counter_q_reg[11]_i_1_n_6 ,\debug_counter_q_reg[11]_i_1_n_7 }),
        .S(debug_counter_q_do[11:8]));
  FDCE \debug_counter_q_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[15]_i_1_n_7 ),
        .Q(debug_counter_q_do[12]));
  FDCE \debug_counter_q_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[15]_i_1_n_6 ),
        .Q(debug_counter_q_do[13]));
  FDCE \debug_counter_q_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[15]_i_1_n_5 ),
        .Q(debug_counter_q_do[14]));
  FDCE \debug_counter_q_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[15]_i_1_n_4 ),
        .Q(debug_counter_q_do[15]));
  CARRY4 \debug_counter_q_reg[15]_i_1 
       (.CI(\debug_counter_q_reg[11]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[15]_i_1_n_0 ,\debug_counter_q_reg[15]_i_1_n_1 ,\debug_counter_q_reg[15]_i_1_n_2 ,\debug_counter_q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[15]_i_1_n_4 ,\debug_counter_q_reg[15]_i_1_n_5 ,\debug_counter_q_reg[15]_i_1_n_6 ,\debug_counter_q_reg[15]_i_1_n_7 }),
        .S(debug_counter_q_do[15:12]));
  FDCE \debug_counter_q_reg[16] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[19]_i_1_n_7 ),
        .Q(debug_counter_q_do[16]));
  FDCE \debug_counter_q_reg[17] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[19]_i_1_n_6 ),
        .Q(debug_counter_q_do[17]));
  FDCE \debug_counter_q_reg[18] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[19]_i_1_n_5 ),
        .Q(debug_counter_q_do[18]));
  FDCE \debug_counter_q_reg[19] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[19]_i_1_n_4 ),
        .Q(debug_counter_q_do[19]));
  CARRY4 \debug_counter_q_reg[19]_i_1 
       (.CI(\debug_counter_q_reg[15]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[19]_i_1_n_0 ,\debug_counter_q_reg[19]_i_1_n_1 ,\debug_counter_q_reg[19]_i_1_n_2 ,\debug_counter_q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[19]_i_1_n_4 ,\debug_counter_q_reg[19]_i_1_n_5 ,\debug_counter_q_reg[19]_i_1_n_6 ,\debug_counter_q_reg[19]_i_1_n_7 }),
        .S(debug_counter_q_do[19:16]));
  FDCE \debug_counter_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[3]_i_1_n_6 ),
        .Q(debug_counter_q_do[1]));
  FDCE \debug_counter_q_reg[20] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[23]_i_1_n_7 ),
        .Q(debug_counter_q_do[20]));
  FDCE \debug_counter_q_reg[21] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[23]_i_1_n_6 ),
        .Q(debug_counter_q_do[21]));
  FDCE \debug_counter_q_reg[22] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[23]_i_1_n_5 ),
        .Q(debug_counter_q_do[22]));
  FDCE \debug_counter_q_reg[23] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[23]_i_1_n_4 ),
        .Q(debug_counter_q_do[23]));
  CARRY4 \debug_counter_q_reg[23]_i_1 
       (.CI(\debug_counter_q_reg[19]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[23]_i_1_n_0 ,\debug_counter_q_reg[23]_i_1_n_1 ,\debug_counter_q_reg[23]_i_1_n_2 ,\debug_counter_q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[23]_i_1_n_4 ,\debug_counter_q_reg[23]_i_1_n_5 ,\debug_counter_q_reg[23]_i_1_n_6 ,\debug_counter_q_reg[23]_i_1_n_7 }),
        .S(debug_counter_q_do[23:20]));
  FDCE \debug_counter_q_reg[24] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[27]_i_1_n_7 ),
        .Q(debug_counter_q_do[24]));
  FDCE \debug_counter_q_reg[25] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[27]_i_1_n_6 ),
        .Q(debug_counter_q_do[25]));
  FDCE \debug_counter_q_reg[26] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[27]_i_1_n_5 ),
        .Q(debug_counter_q_do[26]));
  FDCE \debug_counter_q_reg[27] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[27]_i_1_n_4 ),
        .Q(debug_counter_q_do[27]));
  CARRY4 \debug_counter_q_reg[27]_i_1 
       (.CI(\debug_counter_q_reg[23]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[27]_i_1_n_0 ,\debug_counter_q_reg[27]_i_1_n_1 ,\debug_counter_q_reg[27]_i_1_n_2 ,\debug_counter_q_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[27]_i_1_n_4 ,\debug_counter_q_reg[27]_i_1_n_5 ,\debug_counter_q_reg[27]_i_1_n_6 ,\debug_counter_q_reg[27]_i_1_n_7 }),
        .S(debug_counter_q_do[27:24]));
  FDCE \debug_counter_q_reg[28] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[31]_i_1_n_7 ),
        .Q(debug_counter_q_do[28]));
  FDCE \debug_counter_q_reg[29] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[31]_i_1_n_6 ),
        .Q(debug_counter_q_do[29]));
  FDCE \debug_counter_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[3]_i_1_n_5 ),
        .Q(debug_counter_q_do[2]));
  FDCE \debug_counter_q_reg[30] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[31]_i_1_n_5 ),
        .Q(debug_counter_q_do[30]));
  FDCE \debug_counter_q_reg[31] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[31]_i_1_n_4 ),
        .Q(debug_counter_q_do[31]));
  CARRY4 \debug_counter_q_reg[31]_i_1 
       (.CI(\debug_counter_q_reg[27]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[31]_i_1_n_0 ,\debug_counter_q_reg[31]_i_1_n_1 ,\debug_counter_q_reg[31]_i_1_n_2 ,\debug_counter_q_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[31]_i_1_n_4 ,\debug_counter_q_reg[31]_i_1_n_5 ,\debug_counter_q_reg[31]_i_1_n_6 ,\debug_counter_q_reg[31]_i_1_n_7 }),
        .S(debug_counter_q_do[31:28]));
  FDCE \debug_counter_q_reg[32] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[35]_i_1_n_7 ),
        .Q(debug_counter_q_do[32]));
  FDCE \debug_counter_q_reg[33] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[35]_i_1_n_6 ),
        .Q(debug_counter_q_do[33]));
  FDCE \debug_counter_q_reg[34] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[35]_i_1_n_5 ),
        .Q(debug_counter_q_do[34]));
  FDCE \debug_counter_q_reg[35] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[35]_i_1_n_4 ),
        .Q(debug_counter_q_do[35]));
  CARRY4 \debug_counter_q_reg[35]_i_1 
       (.CI(\debug_counter_q_reg[31]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[35]_i_1_n_0 ,\debug_counter_q_reg[35]_i_1_n_1 ,\debug_counter_q_reg[35]_i_1_n_2 ,\debug_counter_q_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[35]_i_1_n_4 ,\debug_counter_q_reg[35]_i_1_n_5 ,\debug_counter_q_reg[35]_i_1_n_6 ,\debug_counter_q_reg[35]_i_1_n_7 }),
        .S(debug_counter_q_do[35:32]));
  FDCE \debug_counter_q_reg[36] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[39]_i_1_n_7 ),
        .Q(debug_counter_q_do[36]));
  FDCE \debug_counter_q_reg[37] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[39]_i_1_n_6 ),
        .Q(debug_counter_q_do[37]));
  FDCE \debug_counter_q_reg[38] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[39]_i_1_n_5 ),
        .Q(debug_counter_q_do[38]));
  FDCE \debug_counter_q_reg[39] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[39]_i_1_n_4 ),
        .Q(debug_counter_q_do[39]));
  CARRY4 \debug_counter_q_reg[39]_i_1 
       (.CI(\debug_counter_q_reg[35]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[39]_i_1_n_0 ,\debug_counter_q_reg[39]_i_1_n_1 ,\debug_counter_q_reg[39]_i_1_n_2 ,\debug_counter_q_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[39]_i_1_n_4 ,\debug_counter_q_reg[39]_i_1_n_5 ,\debug_counter_q_reg[39]_i_1_n_6 ,\debug_counter_q_reg[39]_i_1_n_7 }),
        .S(debug_counter_q_do[39:36]));
  FDCE \debug_counter_q_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[3]_i_1_n_4 ),
        .Q(debug_counter_q_do[3]));
  CARRY4 \debug_counter_q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\debug_counter_q_reg[3]_i_1_n_0 ,\debug_counter_q_reg[3]_i_1_n_1 ,\debug_counter_q_reg[3]_i_1_n_2 ,\debug_counter_q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\debug_counter_q_reg[3]_i_1_n_4 ,\debug_counter_q_reg[3]_i_1_n_5 ,\debug_counter_q_reg[3]_i_1_n_6 ,\debug_counter_q_reg[3]_i_1_n_7 }),
        .S({debug_counter_q_do[3:1],\debug_counter_q[3]_i_2_n_0 }));
  FDCE \debug_counter_q_reg[40] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[43]_i_1_n_7 ),
        .Q(debug_counter_q_do[40]));
  FDCE \debug_counter_q_reg[41] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[43]_i_1_n_6 ),
        .Q(debug_counter_q_do[41]));
  FDCE \debug_counter_q_reg[42] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[43]_i_1_n_5 ),
        .Q(debug_counter_q_do[42]));
  FDCE \debug_counter_q_reg[43] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[43]_i_1_n_4 ),
        .Q(debug_counter_q_do[43]));
  CARRY4 \debug_counter_q_reg[43]_i_1 
       (.CI(\debug_counter_q_reg[39]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[43]_i_1_n_0 ,\debug_counter_q_reg[43]_i_1_n_1 ,\debug_counter_q_reg[43]_i_1_n_2 ,\debug_counter_q_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[43]_i_1_n_4 ,\debug_counter_q_reg[43]_i_1_n_5 ,\debug_counter_q_reg[43]_i_1_n_6 ,\debug_counter_q_reg[43]_i_1_n_7 }),
        .S(debug_counter_q_do[43:40]));
  FDCE \debug_counter_q_reg[44] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[47]_i_1_n_7 ),
        .Q(debug_counter_q_do[44]));
  FDCE \debug_counter_q_reg[45] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[47]_i_1_n_6 ),
        .Q(debug_counter_q_do[45]));
  FDCE \debug_counter_q_reg[46] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[47]_i_1_n_5 ),
        .Q(debug_counter_q_do[46]));
  FDCE \debug_counter_q_reg[47] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[47]_i_1_n_4 ),
        .Q(debug_counter_q_do[47]));
  CARRY4 \debug_counter_q_reg[47]_i_1 
       (.CI(\debug_counter_q_reg[43]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[47]_i_1_n_0 ,\debug_counter_q_reg[47]_i_1_n_1 ,\debug_counter_q_reg[47]_i_1_n_2 ,\debug_counter_q_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[47]_i_1_n_4 ,\debug_counter_q_reg[47]_i_1_n_5 ,\debug_counter_q_reg[47]_i_1_n_6 ,\debug_counter_q_reg[47]_i_1_n_7 }),
        .S(debug_counter_q_do[47:44]));
  FDCE \debug_counter_q_reg[48] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[51]_i_1_n_7 ),
        .Q(debug_counter_q_do[48]));
  FDCE \debug_counter_q_reg[49] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[51]_i_1_n_6 ),
        .Q(debug_counter_q_do[49]));
  FDCE \debug_counter_q_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[7]_i_1_n_7 ),
        .Q(debug_counter_q_do[4]));
  FDCE \debug_counter_q_reg[50] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[51]_i_1_n_5 ),
        .Q(debug_counter_q_do[50]));
  FDCE \debug_counter_q_reg[51] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[51]_i_1_n_4 ),
        .Q(debug_counter_q_do[51]));
  CARRY4 \debug_counter_q_reg[51]_i_1 
       (.CI(\debug_counter_q_reg[47]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[51]_i_1_n_0 ,\debug_counter_q_reg[51]_i_1_n_1 ,\debug_counter_q_reg[51]_i_1_n_2 ,\debug_counter_q_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[51]_i_1_n_4 ,\debug_counter_q_reg[51]_i_1_n_5 ,\debug_counter_q_reg[51]_i_1_n_6 ,\debug_counter_q_reg[51]_i_1_n_7 }),
        .S(debug_counter_q_do[51:48]));
  FDCE \debug_counter_q_reg[52] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[55]_i_1_n_7 ),
        .Q(debug_counter_q_do[52]));
  FDCE \debug_counter_q_reg[53] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[55]_i_1_n_6 ),
        .Q(debug_counter_q_do[53]));
  FDCE \debug_counter_q_reg[54] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[55]_i_1_n_5 ),
        .Q(debug_counter_q_do[54]));
  FDCE \debug_counter_q_reg[55] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[55]_i_1_n_4 ),
        .Q(debug_counter_q_do[55]));
  CARRY4 \debug_counter_q_reg[55]_i_1 
       (.CI(\debug_counter_q_reg[51]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[55]_i_1_n_0 ,\debug_counter_q_reg[55]_i_1_n_1 ,\debug_counter_q_reg[55]_i_1_n_2 ,\debug_counter_q_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[55]_i_1_n_4 ,\debug_counter_q_reg[55]_i_1_n_5 ,\debug_counter_q_reg[55]_i_1_n_6 ,\debug_counter_q_reg[55]_i_1_n_7 }),
        .S(debug_counter_q_do[55:52]));
  FDCE \debug_counter_q_reg[56] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[59]_i_1_n_7 ),
        .Q(debug_counter_q_do[56]));
  FDCE \debug_counter_q_reg[57] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[59]_i_1_n_6 ),
        .Q(debug_counter_q_do[57]));
  FDCE \debug_counter_q_reg[58] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[59]_i_1_n_5 ),
        .Q(debug_counter_q_do[58]));
  FDCE \debug_counter_q_reg[59] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[59]_i_1_n_4 ),
        .Q(debug_counter_q_do[59]));
  CARRY4 \debug_counter_q_reg[59]_i_1 
       (.CI(\debug_counter_q_reg[55]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[59]_i_1_n_0 ,\debug_counter_q_reg[59]_i_1_n_1 ,\debug_counter_q_reg[59]_i_1_n_2 ,\debug_counter_q_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[59]_i_1_n_4 ,\debug_counter_q_reg[59]_i_1_n_5 ,\debug_counter_q_reg[59]_i_1_n_6 ,\debug_counter_q_reg[59]_i_1_n_7 }),
        .S(debug_counter_q_do[59:56]));
  FDCE \debug_counter_q_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[7]_i_1_n_6 ),
        .Q(debug_counter_q_do[5]));
  FDCE \debug_counter_q_reg[60] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[63]_i_1_n_7 ),
        .Q(debug_counter_q_do[60]));
  FDCE \debug_counter_q_reg[61] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[63]_i_1_n_6 ),
        .Q(debug_counter_q_do[61]));
  FDCE \debug_counter_q_reg[62] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[63]_i_1_n_5 ),
        .Q(debug_counter_q_do[62]));
  FDCE \debug_counter_q_reg[63] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[63]_i_1_n_4 ),
        .Q(debug_counter_q_do[63]));
  CARRY4 \debug_counter_q_reg[63]_i_1 
       (.CI(\debug_counter_q_reg[59]_i_1_n_0 ),
        .CO({\NLW_debug_counter_q_reg[63]_i_1_CO_UNCONNECTED [3],\debug_counter_q_reg[63]_i_1_n_1 ,\debug_counter_q_reg[63]_i_1_n_2 ,\debug_counter_q_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[63]_i_1_n_4 ,\debug_counter_q_reg[63]_i_1_n_5 ,\debug_counter_q_reg[63]_i_1_n_6 ,\debug_counter_q_reg[63]_i_1_n_7 }),
        .S(debug_counter_q_do[63:60]));
  FDCE \debug_counter_q_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[7]_i_1_n_5 ),
        .Q(debug_counter_q_do[6]));
  FDCE \debug_counter_q_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[7]_i_1_n_4 ),
        .Q(debug_counter_q_do[7]));
  CARRY4 \debug_counter_q_reg[7]_i_1 
       (.CI(\debug_counter_q_reg[3]_i_1_n_0 ),
        .CO({\debug_counter_q_reg[7]_i_1_n_0 ,\debug_counter_q_reg[7]_i_1_n_1 ,\debug_counter_q_reg[7]_i_1_n_2 ,\debug_counter_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debug_counter_q_reg[7]_i_1_n_4 ,\debug_counter_q_reg[7]_i_1_n_5 ,\debug_counter_q_reg[7]_i_1_n_6 ,\debug_counter_q_reg[7]_i_1_n_7 }),
        .S(debug_counter_q_do[7:4]));
  FDCE \debug_counter_q_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[11]_i_1_n_7 ),
        .Q(debug_counter_q_do[8]));
  FDCE \debug_counter_q_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\debug_counter_q_reg[11]_i_1_n_6 ),
        .Q(debug_counter_q_do[9]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \delayCnt_q[0]_i_1 
       (.I0(setup_valid_q_do),
        .I1(delayCnt_q[0]),
        .O(\delayCnt_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \delayCnt_q[1]_i_1 
       (.I0(delayCnt_q[1]),
        .I1(delayCnt_q[0]),
        .I2(setup_valid_q_do),
        .O(\delayCnt_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \delayCnt_q[2]_i_1 
       (.I0(setup_valid_q_do),
        .I1(delayCnt_q[0]),
        .I2(delayCnt_q[1]),
        .I3(delayCnt_q[2]),
        .O(\delayCnt_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \delayCnt_q[3]_i_1 
       (.I0(setup_valid_q_do),
        .I1(delayCnt_q[1]),
        .I2(delayCnt_q[0]),
        .I3(delayCnt_q[2]),
        .I4(delayCnt_q[3]),
        .O(\delayCnt_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBBBBBBBBB)) 
    \delayCnt_q[4]_i_1 
       (.I0(setup_valid_q_do),
        .I1(delayCnt_q[4]),
        .I2(delayCnt_q[0]),
        .I3(delayCnt_q[1]),
        .I4(delayCnt_q[2]),
        .I5(delayCnt_q[3]),
        .O(\delayCnt_q[4]_i_1_n_0 ));
  FDPE \delayCnt_q_reg[0] 
       (.C(clk_i),
        .CE(\delayCnt_q[4]_i_1_n_0 ),
        .D(\delayCnt_q[0]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(delayCnt_q[0]));
  FDPE \delayCnt_q_reg[1] 
       (.C(clk_i),
        .CE(\delayCnt_q[4]_i_1_n_0 ),
        .D(\delayCnt_q[1]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(delayCnt_q[1]));
  FDPE \delayCnt_q_reg[2] 
       (.C(clk_i),
        .CE(\delayCnt_q[4]_i_1_n_0 ),
        .D(\delayCnt_q[2]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(delayCnt_q[2]));
  FDPE \delayCnt_q_reg[3] 
       (.C(clk_i),
        .CE(\delayCnt_q[4]_i_1_n_0 ),
        .D(\delayCnt_q[3]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(delayCnt_q[3]));
  FDPE \delayCnt_q_reg[4] 
       (.C(clk_i),
        .CE(\delayCnt_q[4]_i_1_n_0 ),
        .D(1'b0),
        .PRE(rst_i),
        .Q(delayCnt_q[4]));
  LUT6 #(
    .INIT(64'h4544555555555555)) 
    \desc_addr_q[1]_i_2 
       (.I0(\desc_addr_q[7]_i_2_n_0 ),
        .I1(\desc_addr_q[3]_i_2_n_0 ),
        .I2(\desc_addr_q[5]_i_3_n_0 ),
        .I3(\wValue_w_do[15] [0]),
        .I4(\device_addr_q[6]_i_3_n_0 ),
        .I5(\wValue_w_do[15] [1]),
        .O(\desc_addr_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \desc_addr_q[2]_i_2 
       (.I0(wValue_w_do[0]),
        .I1(wValue_w_do[1]),
        .O(\desc_addr_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \desc_addr_q[3]_i_2 
       (.I0(\bRequest_w_do[7] [0]),
        .I1(\bRequest_w_do[7] [1]),
        .I2(\desc_addr_q[3]_i_5_n_0 ),
        .I3(\bRequest_w_do[7] [2]),
        .O(\desc_addr_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \desc_addr_q[3]_i_3 
       (.I0(\desc_addr_q[3]_i_6_n_0 ),
        .I1(wValue_w_do[1]),
        .I2(wValue_w_do[0]),
        .I3(setup_resp_valid_delay_q_do),
        .I4(\device_addr_q[6]_i_4_n_0 ),
        .I5(\desc_addr_q[3]_i_7_n_0 ),
        .O(\desc_addr_q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \desc_addr_q[3]_i_4 
       (.I0(\desc_addr_q_do[6] [2]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [0]),
        .O(\desc_addr_q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \desc_addr_q[3]_i_5 
       (.I0(\wValue_w_do[15] [6]),
        .I1(\wValue_w_do[15] [7]),
        .I2(\wValue_w_do[15] [4]),
        .I3(\wValue_w_do[15] [5]),
        .I4(\wValue_w_do[15] [2]),
        .I5(\wValue_w_do[15] [3]),
        .O(\desc_addr_q[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \desc_addr_q[3]_i_6 
       (.I0(\bRequest_w_do[7] [3]),
        .I1(\bRequest_w_do[7] [5]),
        .I2(\bRequest_w_do[7] [4]),
        .I3(\bRequest_w_do[7] [6]),
        .I4(\bRequest_w_do[7] [7]),
        .O(\desc_addr_q[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \desc_addr_q[3]_i_7 
       (.I0(\desc_addr_q[6]_i_9_n_0 ),
        .I1(\wValue_w_do[15] [1]),
        .I2(\wValue_w_do[15] [0]),
        .O(\desc_addr_q[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \desc_addr_q[4]_i_2 
       (.I0(\desc_addr_q_do[6] [1]),
        .I1(\desc_addr_q_do[6] [2]),
        .O(\desc_addr_q[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \desc_addr_q[4]_i_4 
       (.I0(\bRequest_w_do[7] [3]),
        .I1(ctrl_stall_r_do_INST_0_i_7_n_0),
        .I2(\bmRequestType_w_do[7] [5]),
        .I3(\bmRequestType_w_do[7] [6]),
        .I4(\desc_addr_q[3]_i_2_n_0 ),
        .O(\desc_addr_q[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFFFFF)) 
    \desc_addr_q[5]_i_2 
       (.I0(\bmRequestType_w_do[7] [6]),
        .I1(\desc_addr_q[6]_i_8_n_0 ),
        .I2(\desc_addr_q[5]_i_3_n_0 ),
        .I3(\bRequest_w_do[7] [2]),
        .I4(\wValue_w_do[15] [0]),
        .I5(\desc_addr_q[7]_i_2_n_0 ),
        .O(\desc_addr_q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \desc_addr_q[5]_i_3 
       (.I0(\desc_addr_q[6]_i_9_n_0 ),
        .I1(wValue_w_do[1]),
        .I2(wValue_w_do[0]),
        .O(\desc_addr_q[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \desc_addr_q[6]_i_4 
       (.I0(\desc_addr_q_do[6] [0]),
        .I1(\desc_addr_q_do[6] [1]),
        .I2(\desc_addr_q_do[6] [2]),
        .I3(\desc_addr_q_do[6] [4]),
        .I4(\desc_addr_q_do[6] [3]),
        .O(\desc_addr_q[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \desc_addr_q[6]_i_6 
       (.I0(wValue_w_do[0]),
        .I1(wValue_w_do[1]),
        .O(\desc_addr_q[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \desc_addr_q[6]_i_8 
       (.I0(\wValue_w_do[15] [1]),
        .I1(\device_addr_q[6]_i_3_n_0 ),
        .I2(\bRequest_w_do[7] [0]),
        .I3(\bRequest_w_do[7] [1]),
        .I4(\desc_addr_q[3]_i_5_n_0 ),
        .O(\desc_addr_q[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \desc_addr_q[6]_i_9 
       (.I0(wValue_w_do[7]),
        .I1(wValue_w_do[6]),
        .I2(wValue_w_do[4]),
        .I3(wValue_w_do[5]),
        .I4(wValue_w_do[2]),
        .I5(wValue_w_do[3]),
        .O(\desc_addr_q[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \desc_addr_q[7]_i_2 
       (.I0(ctrl_ack_r_do_INST_0_i_6_n_0),
        .I1(\bmRequestType_w_do[7] [6]),
        .I2(\bmRequestType_w_do[7] [5]),
        .O(\desc_addr_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \desc_addr_q[7]_i_3 
       (.I0(\desc_addr_q_do[6] [3]),
        .I1(\desc_addr_q_do[6] [4]),
        .I2(\desc_addr_q_do[6] [2]),
        .I3(\desc_addr_q_do[6] [1]),
        .I4(\desc_addr_q_do[6] [0]),
        .I5(\desc_addr_q[7]_i_4_n_0 ),
        .O(\desc_addr_q[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \desc_addr_q[7]_i_4 
       (.I0(\desc_addr_q_do[6] [5]),
        .I1(\desc_addr_q_do[6] [6]),
        .O(\desc_addr_q[7]_i_4_n_0 ));
  FDCE \desc_addr_q_reg[0] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_50),
        .Q(\desc_addr_q_do[6] [0]));
  FDCE \desc_addr_q_reg[1] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_49),
        .Q(\desc_addr_q_do[6] [1]));
  FDCE \desc_addr_q_reg[2] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_48),
        .Q(\desc_addr_q_do[6] [2]));
  FDCE \desc_addr_q_reg[3] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_47),
        .Q(\desc_addr_q_do[6] [3]));
  FDCE \desc_addr_q_reg[4] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_46),
        .Q(\desc_addr_q_do[6] [4]));
  FDCE \desc_addr_q_reg[5] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_45),
        .Q(\desc_addr_q_do[6] [5]));
  FDCE \desc_addr_q_reg[6] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_44),
        .Q(\desc_addr_q_do[6] [6]));
  FDCE \desc_addr_q_reg[7] 
       (.C(clk_i),
        .CE(u_core_n_39),
        .CLR(rst_i),
        .D(u_core_n_43),
        .Q(desc_addr_q));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \device_addr_q[6]_i_3 
       (.I0(\device_addr_q[6]_i_4_n_0 ),
        .I1(\bRequest_w_do[7] [7]),
        .I2(\bRequest_w_do[7] [6]),
        .I3(\bRequest_w_do[7] [4]),
        .I4(\bRequest_w_do[7] [5]),
        .I5(\bRequest_w_do[7] [3]),
        .O(\device_addr_q[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \device_addr_q[6]_i_4 
       (.I0(\bmRequestType_w_do[7] [5]),
        .I1(\bmRequestType_w_do[7] [6]),
        .O(\device_addr_q[6]_i_4_n_0 ));
  FDCE \device_addr_q_reg[0] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_184),
        .Q(reg_dev_addr_i_do[0]));
  FDCE \device_addr_q_reg[1] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_183),
        .Q(reg_dev_addr_i_do[1]));
  FDCE \device_addr_q_reg[2] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_182),
        .Q(reg_dev_addr_i_do[2]));
  FDCE \device_addr_q_reg[3] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_181),
        .Q(reg_dev_addr_i_do[3]));
  FDCE \device_addr_q_reg[4] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_180),
        .Q(reg_dev_addr_i_do[4]));
  FDCE \device_addr_q_reg[5] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_179),
        .Q(reg_dev_addr_i_do[5]));
  FDCE \device_addr_q_reg[6] 
       (.C(clk_i),
        .CE(u_core_n_156),
        .CLR(rst_i),
        .D(u_core_n_178),
        .Q(reg_dev_addr_i_do[6]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(wLength[15]),
        .I1(ctrl_sending_r2[15]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(ctrl_sending_r2[14]),
        .I1(wLength[14]),
        .I2(ctrl_sending_r2[12]),
        .I3(wLength[12]),
        .I4(wLength[13]),
        .I5(ctrl_sending_r2[13]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(ctrl_sending_r2[10]),
        .I1(wLength[10]),
        .I2(ctrl_sending_r2[9]),
        .I3(wLength[9]),
        .I4(wLength[11]),
        .I5(ctrl_sending_r2[11]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(ctrl_sending_r2[7]),
        .I1(wLength[7]),
        .I2(ctrl_sending_r2[6]),
        .I3(wLength[6]),
        .I4(wLength[8]),
        .I5(ctrl_sending_r2[8]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(ctrl_sending_r2[3]),
        .I1(wLength[3]),
        .I2(ctrl_sending_r2[4]),
        .I3(wLength[4]),
        .I4(wLength[5]),
        .I5(ctrl_sending_r2[5]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    i__carry_i_4
       (.I0(wLength[0]),
        .I1(ctrl_send_idx_q[0]),
        .I2(ctrl_sending_r2[2]),
        .I3(wLength[2]),
        .I4(ctrl_sending_r2[1]),
        .I5(wLength[1]),
        .O(i__carry_i_4_n_0));
  FDCE \inport_data_q_reg[0] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[0]),
        .Q(ep2_tx_data_w_do[0]));
  FDCE \inport_data_q_reg[1] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[1]),
        .Q(ep2_tx_data_w_do[1]));
  FDCE \inport_data_q_reg[2] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[2]),
        .Q(ep2_tx_data_w_do[2]));
  FDCE \inport_data_q_reg[3] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[3]),
        .Q(ep2_tx_data_w_do[3]));
  FDCE \inport_data_q_reg[4] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[4]),
        .Q(ep2_tx_data_w_do[4]));
  FDCE \inport_data_q_reg[5] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[5]),
        .Q(ep2_tx_data_w_do[5]));
  FDCE \inport_data_q_reg[6] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[6]),
        .Q(ep2_tx_data_w_do[6]));
  FDCE \inport_data_q_reg[7] 
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_data_i[7]),
        .Q(ep2_tx_data_w_do[7]));
  LUT1 #(
    .INIT(2'h1)) 
    inport_valid_q_q_i_1
       (.I0(inport_valid_i),
        .O(inport_valid_q_q_i_1_n_0));
  FDCE inport_valid_q_q_reg
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_valid_q_q_i_1_n_0),
        .Q(inport_valid_q_do));
  FDCE inport_valid_q_reg
       (.C(clk_i),
        .CE(E),
        .CLR(rst_i),
        .D(inport_valid_q_do),
        .Q(ep2_tx_data_valid_w_do));
  FDCE \last_linestate_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(utmi_linestate_i[0]),
        .Q(last_linestate_q[0]));
  FDCE \last_linestate_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(utmi_linestate_i[1]),
        .Q(last_linestate_q[1]));
  FDRE \readAXIBRAM_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(u_core_n_204),
        .Q(\readAXIBRAM_q_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hF3B30080)) 
    readAXIBRAM_r_do_INST_0
       (.I0(\bmRequestType_w_do[7] [7]),
        .I1(setup_resp_valid_delay_q_do),
        .I2(\bmRequestType_w_do[7] [6]),
        .I3(\bmRequestType_w_do[7] [5]),
        .I4(\readAXIBRAM_q_reg_n_0_[0] ),
        .O(readAXIBRAM_r_do));
  FDCE setup_frame_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_201),
        .Q(setup_frame_q_do));
  FDCE \setup_packet_q_reg[0][0] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(\bmRequestType_w_do[7] [0]));
  FDCE \setup_packet_q_reg[0][1] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(\bmRequestType_w_do[7] [1]));
  FDCE \setup_packet_q_reg[0][2] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(\bmRequestType_w_do[7] [2]));
  FDCE \setup_packet_q_reg[0][3] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(\bmRequestType_w_do[7] [3]));
  FDCE \setup_packet_q_reg[0][4] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(\bmRequestType_w_do[7] [4]));
  FDCE \setup_packet_q_reg[0][5] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(\bmRequestType_w_do[7] [5]));
  FDCE \setup_packet_q_reg[0][6] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(\bmRequestType_w_do[7] [6]));
  FDCE \setup_packet_q_reg[0][7] 
       (.C(clk_i),
        .CE(u_core_n_101),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(\bmRequestType_w_do[7] [7]));
  FDCE \setup_packet_q_reg[1][0] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(\bRequest_w_do[7] [0]));
  FDCE \setup_packet_q_reg[1][1] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(\bRequest_w_do[7] [1]));
  FDCE \setup_packet_q_reg[1][2] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(\bRequest_w_do[7] [2]));
  FDCE \setup_packet_q_reg[1][3] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(\bRequest_w_do[7] [3]));
  FDCE \setup_packet_q_reg[1][4] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(\bRequest_w_do[7] [4]));
  FDCE \setup_packet_q_reg[1][5] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(\bRequest_w_do[7] [5]));
  FDCE \setup_packet_q_reg[1][6] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(\bRequest_w_do[7] [6]));
  FDCE \setup_packet_q_reg[1][7] 
       (.C(clk_i),
        .CE(u_core_n_102),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(\bRequest_w_do[7] [7]));
  FDCE \setup_packet_q_reg[2][0] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(wValue_w_do[0]));
  FDCE \setup_packet_q_reg[2][1] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(wValue_w_do[1]));
  FDCE \setup_packet_q_reg[2][2] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(wValue_w_do[2]));
  FDCE \setup_packet_q_reg[2][3] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(wValue_w_do[3]));
  FDCE \setup_packet_q_reg[2][4] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(wValue_w_do[4]));
  FDCE \setup_packet_q_reg[2][5] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(wValue_w_do[5]));
  FDCE \setup_packet_q_reg[2][6] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(wValue_w_do[6]));
  FDCE \setup_packet_q_reg[2][7] 
       (.C(clk_i),
        .CE(u_core_n_105),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(wValue_w_do[7]));
  FDCE \setup_packet_q_reg[3][0] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(\wValue_w_do[15] [0]));
  FDCE \setup_packet_q_reg[3][1] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(\wValue_w_do[15] [1]));
  FDCE \setup_packet_q_reg[3][2] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(\wValue_w_do[15] [2]));
  FDCE \setup_packet_q_reg[3][3] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(\wValue_w_do[15] [3]));
  FDCE \setup_packet_q_reg[3][4] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(\wValue_w_do[15] [4]));
  FDCE \setup_packet_q_reg[3][5] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(\wValue_w_do[15] [5]));
  FDCE \setup_packet_q_reg[3][6] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(\wValue_w_do[15] [6]));
  FDCE \setup_packet_q_reg[3][7] 
       (.C(clk_i),
        .CE(u_core_n_106),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(\wValue_w_do[15] [7]));
  FDCE \setup_packet_q_reg[4][0] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(wIndex_w[0]));
  FDCE \setup_packet_q_reg[4][1] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(wIndex_w[1]));
  FDCE \setup_packet_q_reg[4][2] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(wIndex_w[2]));
  FDCE \setup_packet_q_reg[4][3] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(wIndex_w[3]));
  FDCE \setup_packet_q_reg[4][4] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(wIndex_w[4]));
  FDCE \setup_packet_q_reg[4][5] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(wIndex_w[5]));
  FDCE \setup_packet_q_reg[4][6] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(wIndex_w[6]));
  FDCE \setup_packet_q_reg[4][7] 
       (.C(clk_i),
        .CE(u_core_n_107),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(wIndex_w[7]));
  FDCE \setup_packet_q_reg[5][0] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(wIndex_w[8]));
  FDCE \setup_packet_q_reg[5][1] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(wIndex_w[9]));
  FDCE \setup_packet_q_reg[5][2] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(wIndex_w[10]));
  FDCE \setup_packet_q_reg[5][3] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(wIndex_w[11]));
  FDCE \setup_packet_q_reg[5][4] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(wIndex_w[12]));
  FDCE \setup_packet_q_reg[5][5] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(wIndex_w[13]));
  FDCE \setup_packet_q_reg[5][6] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(wIndex_w[14]));
  FDCE \setup_packet_q_reg[5][7] 
       (.C(clk_i),
        .CE(u_core_n_108),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(wIndex_w[15]));
  FDCE \setup_packet_q_reg[6][0] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(wLength[0]));
  FDCE \setup_packet_q_reg[6][1] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(wLength[1]));
  FDCE \setup_packet_q_reg[6][2] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(wLength[2]));
  FDCE \setup_packet_q_reg[6][3] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(wLength[3]));
  FDCE \setup_packet_q_reg[6][4] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(wLength[4]));
  FDCE \setup_packet_q_reg[6][5] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(wLength[5]));
  FDCE \setup_packet_q_reg[6][6] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(wLength[6]));
  FDCE \setup_packet_q_reg[6][7] 
       (.C(clk_i),
        .CE(u_core_n_103),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(wLength[7]));
  FDCE \setup_packet_q_reg[7][0] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[0]),
        .Q(wLength[8]));
  FDCE \setup_packet_q_reg[7][1] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[1]),
        .Q(wLength[9]));
  FDCE \setup_packet_q_reg[7][2] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[2]),
        .Q(wLength[10]));
  FDCE \setup_packet_q_reg[7][3] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[3]),
        .Q(wLength[11]));
  FDCE \setup_packet_q_reg[7][4] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[4]),
        .Q(wLength[12]));
  FDCE \setup_packet_q_reg[7][5] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[5]),
        .Q(wLength[13]));
  FDCE \setup_packet_q_reg[7][6] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[6]),
        .Q(wLength[14]));
  FDCE \setup_packet_q_reg[7][7] 
       (.C(clk_i),
        .CE(u_core_n_104),
        .CLR(rst_i),
        .D(setup_packet_q[7]),
        .Q(wLength[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    setup_resp_valid_delay_q_i_1
       (.I0(\token_valid_cnt_q_do[25] [0]),
        .I1(setup_resp_valid_delay_q_i_2_n_0),
        .I2(setup_valid_q_do),
        .I3(setup_resp_valid_delay_q_do),
        .O(setup_resp_valid_delay_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    setup_resp_valid_delay_q_i_2
       (.I0(\token_valid_cnt_q_do[25] [10]),
        .I1(\token_valid_cnt_q_do[25] [9]),
        .I2(\token_valid_cnt_q_do[25] [8]),
        .I3(setup_resp_valid_delay_q_i_3_n_0),
        .I4(setup_resp_valid_delay_q_i_4_n_0),
        .I5(setup_resp_valid_delay_q_i_5_n_0),
        .O(setup_resp_valid_delay_q_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    setup_resp_valid_delay_q_i_3
       (.I0(\token_valid_cnt_q_do[25] [17]),
        .I1(\token_valid_cnt_q_do[25] [19]),
        .I2(\token_valid_cnt_q_do[25] [14]),
        .I3(\token_valid_cnt_q_do[25] [20]),
        .O(setup_resp_valid_delay_q_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    setup_resp_valid_delay_q_i_4
       (.I0(\token_valid_cnt_q_do[25] [1]),
        .I1(\token_valid_cnt_q_do[25] [4]),
        .I2(\token_valid_cnt_q_do[25] [2]),
        .I3(\token_valid_cnt_q_do[25] [3]),
        .O(setup_resp_valid_delay_q_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    setup_resp_valid_delay_q_i_5
       (.I0(setup_resp_valid_delay_q_i_6_n_0),
        .I1(setup_resp_valid_delay_q_i_7_n_0),
        .I2(\token_valid_cnt_q_do[25] [13]),
        .I3(\token_valid_cnt_q_do[25] [22]),
        .I4(\token_valid_cnt_q_do[25] [15]),
        .I5(\token_valid_cnt_q_do[25] [24]),
        .O(setup_resp_valid_delay_q_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    setup_resp_valid_delay_q_i_6
       (.I0(\token_valid_cnt_q_do[25] [6]),
        .I1(\token_valid_cnt_q_do[25] [21]),
        .I2(\token_valid_cnt_q_do[25] [23]),
        .I3(\token_valid_cnt_q_do[25] [12]),
        .I4(\token_valid_cnt_q_do[25] [16]),
        .I5(\token_valid_cnt_q_do[25] [7]),
        .O(setup_resp_valid_delay_q_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    setup_resp_valid_delay_q_i_7
       (.I0(\token_valid_cnt_q_do[25] [18]),
        .I1(\token_valid_cnt_q_do[25] [25]),
        .I2(\token_valid_cnt_q_do[25] [5]),
        .I3(\token_valid_cnt_q_do[25] [11]),
        .O(setup_resp_valid_delay_q_i_7_n_0));
  FDCE setup_resp_valid_delay_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(setup_resp_valid_delay_q_i_1_n_0),
        .Q(setup_resp_valid_delay_q_do));
  LUT5 #(
    .INIT(32'h00005777)) 
    setup_token_valid_intr_o_INST_0
       (.I0(delayCnt_q[3]),
        .I1(delayCnt_q[2]),
        .I2(delayCnt_q[1]),
        .I3(delayCnt_q[0]),
        .I4(delayCnt_q[4]),
        .O(setup_token_valid_intr_o));
  FDCE \setup_valid_conter_q_reg[0] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_188),
        .Q(setup_valid_conter_q_o[0]));
  FDCE \setup_valid_conter_q_reg[10] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_194),
        .Q(setup_valid_conter_q_o[10]));
  FDCE \setup_valid_conter_q_reg[11] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_193),
        .Q(setup_valid_conter_q_o[11]));
  FDCE \setup_valid_conter_q_reg[12] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_200),
        .Q(setup_valid_conter_q_o[12]));
  FDCE \setup_valid_conter_q_reg[13] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_199),
        .Q(setup_valid_conter_q_o[13]));
  FDCE \setup_valid_conter_q_reg[14] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_198),
        .Q(setup_valid_conter_q_o[14]));
  FDCE \setup_valid_conter_q_reg[15] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_197),
        .Q(setup_valid_conter_q_o[15]));
  FDCE \setup_valid_conter_q_reg[1] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_187),
        .Q(setup_valid_conter_q_o[1]));
  FDCE \setup_valid_conter_q_reg[2] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_186),
        .Q(setup_valid_conter_q_o[2]));
  FDCE \setup_valid_conter_q_reg[3] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_185),
        .Q(setup_valid_conter_q_o[3]));
  FDCE \setup_valid_conter_q_reg[4] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_192),
        .Q(setup_valid_conter_q_o[4]));
  FDCE \setup_valid_conter_q_reg[5] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_191),
        .Q(setup_valid_conter_q_o[5]));
  FDCE \setup_valid_conter_q_reg[6] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_190),
        .Q(setup_valid_conter_q_o[6]));
  FDCE \setup_valid_conter_q_reg[7] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_189),
        .Q(setup_valid_conter_q_o[7]));
  FDCE \setup_valid_conter_q_reg[8] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_196),
        .Q(setup_valid_conter_q_o[8]));
  FDCE \setup_valid_conter_q_reg[9] 
       (.C(clk_i),
        .CE(u_core_n_147),
        .CLR(rst_i),
        .D(u_core_n_195),
        .Q(setup_valid_conter_q_o[9]));
  FDCE setup_valid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(setup_valid_q),
        .Q(setup_valid_q_do));
  FDCE \setup_wr_idx_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_76),
        .Q(\setup_wr_idx_q_do[0] ));
  FDCE \setup_wr_idx_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_75),
        .Q(\setup_wr_idx_q_do[1] ));
  FDCE \setup_wr_idx_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_73),
        .Q(\setup_wr_idx_q_do[2] ));
  LUT3 #(
    .INIT(8'h45)) 
    \state_r_do[0]_INST_0 
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .I2(state_q[1]),
        .O(state_r_do[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \state_r_do[2]_INST_0 
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .O(state_r_do[2]));
  FDCE status_ready_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_core_n_202),
        .Q(status_ready_q_reg_n_0));
  CARRY4 token_valid_cnt_q0_carry
       (.CI(1'b0),
        .CO({token_valid_cnt_q0_carry_n_0,token_valid_cnt_q0_carry_n_1,token_valid_cnt_q0_carry_n_2,token_valid_cnt_q0_carry_n_3}),
        .CYINIT(\token_valid_cnt_q_do[25] [0]),
        .DI(\token_valid_cnt_q_do[25] [4:1]),
        .O(token_valid_cnt_q0[4:1]),
        .S({token_valid_cnt_q0_carry_i_1_n_0,token_valid_cnt_q0_carry_i_2_n_0,token_valid_cnt_q0_carry_i_3_n_0,token_valid_cnt_q0_carry_i_4_n_0}));
  CARRY4 token_valid_cnt_q0_carry__0
       (.CI(token_valid_cnt_q0_carry_n_0),
        .CO({token_valid_cnt_q0_carry__0_n_0,token_valid_cnt_q0_carry__0_n_1,token_valid_cnt_q0_carry__0_n_2,token_valid_cnt_q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\token_valid_cnt_q_do[25] [8:5]),
        .O(token_valid_cnt_q0[8:5]),
        .S({token_valid_cnt_q0_carry__0_i_1_n_0,token_valid_cnt_q0_carry__0_i_2_n_0,token_valid_cnt_q0_carry__0_i_3_n_0,token_valid_cnt_q0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__0_i_1
       (.I0(\token_valid_cnt_q_do[25] [8]),
        .O(token_valid_cnt_q0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__0_i_2
       (.I0(\token_valid_cnt_q_do[25] [7]),
        .O(token_valid_cnt_q0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__0_i_3
       (.I0(\token_valid_cnt_q_do[25] [6]),
        .O(token_valid_cnt_q0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__0_i_4
       (.I0(\token_valid_cnt_q_do[25] [5]),
        .O(token_valid_cnt_q0_carry__0_i_4_n_0));
  CARRY4 token_valid_cnt_q0_carry__1
       (.CI(token_valid_cnt_q0_carry__0_n_0),
        .CO({token_valid_cnt_q0_carry__1_n_0,token_valid_cnt_q0_carry__1_n_1,token_valid_cnt_q0_carry__1_n_2,token_valid_cnt_q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\token_valid_cnt_q_do[25] [12:9]),
        .O(token_valid_cnt_q0[12:9]),
        .S({token_valid_cnt_q0_carry__1_i_1_n_0,token_valid_cnt_q0_carry__1_i_2_n_0,token_valid_cnt_q0_carry__1_i_3_n_0,token_valid_cnt_q0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__1_i_1
       (.I0(\token_valid_cnt_q_do[25] [12]),
        .O(token_valid_cnt_q0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__1_i_2
       (.I0(\token_valid_cnt_q_do[25] [11]),
        .O(token_valid_cnt_q0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__1_i_3
       (.I0(\token_valid_cnt_q_do[25] [10]),
        .O(token_valid_cnt_q0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__1_i_4
       (.I0(\token_valid_cnt_q_do[25] [9]),
        .O(token_valid_cnt_q0_carry__1_i_4_n_0));
  CARRY4 token_valid_cnt_q0_carry__2
       (.CI(token_valid_cnt_q0_carry__1_n_0),
        .CO({token_valid_cnt_q0_carry__2_n_0,token_valid_cnt_q0_carry__2_n_1,token_valid_cnt_q0_carry__2_n_2,token_valid_cnt_q0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\token_valid_cnt_q_do[25] [16:13]),
        .O(token_valid_cnt_q0[16:13]),
        .S({token_valid_cnt_q0_carry__2_i_1_n_0,token_valid_cnt_q0_carry__2_i_2_n_0,token_valid_cnt_q0_carry__2_i_3_n_0,token_valid_cnt_q0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__2_i_1
       (.I0(\token_valid_cnt_q_do[25] [16]),
        .O(token_valid_cnt_q0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__2_i_2
       (.I0(\token_valid_cnt_q_do[25] [15]),
        .O(token_valid_cnt_q0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__2_i_3
       (.I0(\token_valid_cnt_q_do[25] [14]),
        .O(token_valid_cnt_q0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__2_i_4
       (.I0(\token_valid_cnt_q_do[25] [13]),
        .O(token_valid_cnt_q0_carry__2_i_4_n_0));
  CARRY4 token_valid_cnt_q0_carry__3
       (.CI(token_valid_cnt_q0_carry__2_n_0),
        .CO({token_valid_cnt_q0_carry__3_n_0,token_valid_cnt_q0_carry__3_n_1,token_valid_cnt_q0_carry__3_n_2,token_valid_cnt_q0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\token_valid_cnt_q_do[25] [20:17]),
        .O(token_valid_cnt_q0[20:17]),
        .S({token_valid_cnt_q0_carry__3_i_1_n_0,token_valid_cnt_q0_carry__3_i_2_n_0,token_valid_cnt_q0_carry__3_i_3_n_0,token_valid_cnt_q0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__3_i_1
       (.I0(\token_valid_cnt_q_do[25] [20]),
        .O(token_valid_cnt_q0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__3_i_2
       (.I0(\token_valid_cnt_q_do[25] [19]),
        .O(token_valid_cnt_q0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__3_i_3
       (.I0(\token_valid_cnt_q_do[25] [18]),
        .O(token_valid_cnt_q0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__3_i_4
       (.I0(\token_valid_cnt_q_do[25] [17]),
        .O(token_valid_cnt_q0_carry__3_i_4_n_0));
  CARRY4 token_valid_cnt_q0_carry__4
       (.CI(token_valid_cnt_q0_carry__3_n_0),
        .CO({token_valid_cnt_q0_carry__4_n_0,token_valid_cnt_q0_carry__4_n_1,token_valid_cnt_q0_carry__4_n_2,token_valid_cnt_q0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\token_valid_cnt_q_do[25] [24:21]),
        .O(token_valid_cnt_q0[24:21]),
        .S({token_valid_cnt_q0_carry__4_i_1_n_0,token_valid_cnt_q0_carry__4_i_2_n_0,token_valid_cnt_q0_carry__4_i_3_n_0,token_valid_cnt_q0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__4_i_1
       (.I0(\token_valid_cnt_q_do[25] [24]),
        .O(token_valid_cnt_q0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__4_i_2
       (.I0(\token_valid_cnt_q_do[25] [23]),
        .O(token_valid_cnt_q0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__4_i_3
       (.I0(\token_valid_cnt_q_do[25] [22]),
        .O(token_valid_cnt_q0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__4_i_4
       (.I0(\token_valid_cnt_q_do[25] [21]),
        .O(token_valid_cnt_q0_carry__4_i_4_n_0));
  CARRY4 token_valid_cnt_q0_carry__5
       (.CI(token_valid_cnt_q0_carry__4_n_0),
        .CO(NLW_token_valid_cnt_q0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_token_valid_cnt_q0_carry__5_O_UNCONNECTED[3:1],token_valid_cnt_q0[25]}),
        .S({1'b0,1'b0,1'b0,token_valid_cnt_q0_carry__5_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry__5_i_1
       (.I0(\token_valid_cnt_q_do[25] [25]),
        .O(token_valid_cnt_q0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry_i_1
       (.I0(\token_valid_cnt_q_do[25] [4]),
        .O(token_valid_cnt_q0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry_i_2
       (.I0(\token_valid_cnt_q_do[25] [3]),
        .O(token_valid_cnt_q0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry_i_3
       (.I0(\token_valid_cnt_q_do[25] [2]),
        .O(token_valid_cnt_q0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    token_valid_cnt_q0_carry_i_4
       (.I0(\token_valid_cnt_q_do[25] [1]),
        .O(token_valid_cnt_q0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF00FF00FFA2FFFF)) 
    \token_valid_cnt_q[0]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(\token_valid_cnt_q_do[25] [0]),
        .I5(setup_resp_valid_delay_q_i_2_n_0),
        .O(\token_valid_cnt_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[10]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[10]),
        .O(\token_valid_cnt_q[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[11]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[11]),
        .O(\token_valid_cnt_q[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[12]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[12]),
        .O(\token_valid_cnt_q[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[13]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[13]),
        .O(\token_valid_cnt_q[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[14]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[14]),
        .O(\token_valid_cnt_q[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[15]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[15]),
        .O(\token_valid_cnt_q[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[16]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[16]),
        .O(\token_valid_cnt_q[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[17]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[17]),
        .O(\token_valid_cnt_q[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[18]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[18]),
        .O(\token_valid_cnt_q[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[19]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[19]),
        .O(\token_valid_cnt_q[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[1]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[1]),
        .O(\token_valid_cnt_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[20]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[20]),
        .O(\token_valid_cnt_q[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[21]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[21]),
        .O(\token_valid_cnt_q[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[22]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[22]),
        .O(\token_valid_cnt_q[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[23]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[23]),
        .O(\token_valid_cnt_q[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[24]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[24]),
        .O(\token_valid_cnt_q[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \token_valid_cnt_q[25]_i_1 
       (.I0(\token_valid_cnt_q_do[25] [0]),
        .I1(setup_valid_q_do),
        .I2(setup_resp_valid_delay_q_i_2_n_0),
        .O(\token_valid_cnt_q[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[25]_i_2 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[25]),
        .O(\token_valid_cnt_q[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \token_valid_cnt_q[25]_i_3 
       (.I0(setup_resp_valid_delay_q_i_4_n_0),
        .I1(\token_valid_cnt_q[25]_i_5_n_0 ),
        .I2(\token_valid_cnt_q_do[25] [7]),
        .I3(\token_valid_cnt_q_do[25] [8]),
        .I4(\token_valid_cnt_q_do[25] [9]),
        .O(\token_valid_cnt_q[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \token_valid_cnt_q[25]_i_4 
       (.I0(\token_valid_cnt_q[25]_i_6_n_0 ),
        .I1(\token_valid_cnt_q[25]_i_7_n_0 ),
        .I2(\token_valid_cnt_q_do[25] [13]),
        .I3(\token_valid_cnt_q_do[25] [25]),
        .I4(\token_valid_cnt_q_do[25] [14]),
        .I5(\token_valid_cnt_q_do[25] [21]),
        .O(\token_valid_cnt_q[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \token_valid_cnt_q[25]_i_5 
       (.I0(\token_valid_cnt_q_do[25] [20]),
        .I1(\token_valid_cnt_q_do[25] [23]),
        .I2(\token_valid_cnt_q_do[25] [10]),
        .I3(\token_valid_cnt_q_do[25] [22]),
        .O(\token_valid_cnt_q[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \token_valid_cnt_q[25]_i_6 
       (.I0(\token_valid_cnt_q_do[25] [16]),
        .I1(\token_valid_cnt_q_do[25] [18]),
        .I2(\token_valid_cnt_q_do[25] [6]),
        .I3(\token_valid_cnt_q_do[25] [5]),
        .I4(\token_valid_cnt_q_do[25] [19]),
        .I5(\token_valid_cnt_q_do[25] [17]),
        .O(\token_valid_cnt_q[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \token_valid_cnt_q[25]_i_7 
       (.I0(\token_valid_cnt_q_do[25] [12]),
        .I1(\token_valid_cnt_q_do[25] [15]),
        .I2(\token_valid_cnt_q_do[25] [11]),
        .I3(\token_valid_cnt_q_do[25] [24]),
        .O(\token_valid_cnt_q[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[2]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[2]),
        .O(\token_valid_cnt_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[3]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[3]),
        .O(\token_valid_cnt_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[4]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[4]),
        .O(\token_valid_cnt_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[5]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[5]),
        .O(\token_valid_cnt_q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[6]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[6]),
        .O(\token_valid_cnt_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[7]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[7]),
        .O(\token_valid_cnt_q[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[8]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[8]),
        .O(\token_valid_cnt_q[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5DFF00FF00)) 
    \token_valid_cnt_q[9]_i_1 
       (.I0(ctrl_host_ack_i),
        .I1(\token_valid_cnt_q[25]_i_3_n_0 ),
        .I2(\token_valid_cnt_q[25]_i_4_n_0 ),
        .I3(setup_valid_q_do),
        .I4(setup_resp_valid_delay_q_i_2_n_0),
        .I5(token_valid_cnt_q0[9]),
        .O(\token_valid_cnt_q[9]_i_1_n_0 ));
  FDCE \token_valid_cnt_q_reg[0] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[0]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [0]));
  FDCE \token_valid_cnt_q_reg[10] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[10]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [10]));
  FDCE \token_valid_cnt_q_reg[11] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[11]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [11]));
  FDCE \token_valid_cnt_q_reg[12] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[12]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [12]));
  FDCE \token_valid_cnt_q_reg[13] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[13]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [13]));
  FDCE \token_valid_cnt_q_reg[14] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[14]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [14]));
  FDCE \token_valid_cnt_q_reg[15] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[15]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [15]));
  FDCE \token_valid_cnt_q_reg[16] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[16]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [16]));
  FDCE \token_valid_cnt_q_reg[17] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[17]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [17]));
  FDCE \token_valid_cnt_q_reg[18] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[18]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [18]));
  FDCE \token_valid_cnt_q_reg[19] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[19]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [19]));
  FDCE \token_valid_cnt_q_reg[1] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[1]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [1]));
  FDCE \token_valid_cnt_q_reg[20] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[20]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [20]));
  FDCE \token_valid_cnt_q_reg[21] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[21]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [21]));
  FDCE \token_valid_cnt_q_reg[22] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[22]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [22]));
  FDCE \token_valid_cnt_q_reg[23] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[23]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [23]));
  FDCE \token_valid_cnt_q_reg[24] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[24]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [24]));
  FDCE \token_valid_cnt_q_reg[25] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[25]_i_2_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [25]));
  FDCE \token_valid_cnt_q_reg[2] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[2]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [2]));
  FDCE \token_valid_cnt_q_reg[3] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[3]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [3]));
  FDCE \token_valid_cnt_q_reg[4] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[4]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [4]));
  FDCE \token_valid_cnt_q_reg[5] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[5]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [5]));
  FDCE \token_valid_cnt_q_reg[6] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[6]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [6]));
  FDCE \token_valid_cnt_q_reg[7] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[7]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [7]));
  FDCE \token_valid_cnt_q_reg[8] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[8]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [8]));
  FDCE \token_valid_cnt_q_reg[9] 
       (.C(clk_i),
        .CE(\token_valid_cnt_q[25]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_valid_cnt_q[9]_i_1_n_0 ),
        .Q(\token_valid_cnt_q_do[25] [9]));
  LUT1 #(
    .INIT(2'h1)) 
    \token_valid_counter_q[0]_i_1 
       (.I0(token_valid_counter_q_do[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \token_valid_counter_q[1]_i_1 
       (.I0(token_valid_counter_q_do[0]),
        .I1(token_valid_counter_q_do[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \token_valid_counter_q[2]_i_1 
       (.I0(token_valid_counter_q_do[2]),
        .I1(token_valid_counter_q_do[1]),
        .I2(token_valid_counter_q_do[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \token_valid_counter_q[3]_i_1 
       (.I0(token_valid_counter_q_do[3]),
        .I1(token_valid_counter_q_do[0]),
        .I2(token_valid_counter_q_do[1]),
        .I3(token_valid_counter_q_do[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \token_valid_counter_q[4]_i_1 
       (.I0(token_valid_counter_q_do[4]),
        .I1(token_valid_counter_q_do[2]),
        .I2(token_valid_counter_q_do[1]),
        .I3(token_valid_counter_q_do[0]),
        .I4(token_valid_counter_q_do[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \token_valid_counter_q[5]_i_1 
       (.I0(token_valid_counter_q_do[5]),
        .I1(token_valid_counter_q_do[3]),
        .I2(token_valid_counter_q_do[0]),
        .I3(token_valid_counter_q_do[1]),
        .I4(token_valid_counter_q_do[2]),
        .I5(token_valid_counter_q_do[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \token_valid_counter_q[6]_i_1 
       (.I0(token_valid_counter_q_do[6]),
        .I1(\token_valid_counter_q[7]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \token_valid_counter_q[7]_i_1 
       (.I0(token_valid_counter_q_do[7]),
        .I1(\token_valid_counter_q[7]_i_2_n_0 ),
        .I2(token_valid_counter_q_do[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \token_valid_counter_q[7]_i_2 
       (.I0(token_valid_counter_q_do[5]),
        .I1(token_valid_counter_q_do[3]),
        .I2(token_valid_counter_q_do[0]),
        .I3(token_valid_counter_q_do[1]),
        .I4(token_valid_counter_q_do[2]),
        .I5(token_valid_counter_q_do[4]),
        .O(\token_valid_counter_q[7]_i_2_n_0 ));
  FDCE \token_valid_counter_q_reg[0] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[0]),
        .Q(token_valid_counter_q_do[0]));
  FDCE \token_valid_counter_q_reg[1] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[1]),
        .Q(token_valid_counter_q_do[1]));
  FDCE \token_valid_counter_q_reg[2] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[2]),
        .Q(token_valid_counter_q_do[2]));
  FDCE \token_valid_counter_q_reg[3] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[3]),
        .Q(token_valid_counter_q_do[3]));
  FDCE \token_valid_counter_q_reg[4] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[4]),
        .Q(token_valid_counter_q_do[4]));
  FDCE \token_valid_counter_q_reg[5] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[5]),
        .Q(token_valid_counter_q_do[5]));
  FDCE \token_valid_counter_q_reg[6] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[6]),
        .Q(token_valid_counter_q_do[6]));
  FDCE \token_valid_counter_q_reg[7] 
       (.C(token_valid_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in__0[7]),
        .Q(token_valid_counter_q_do[7]));
  brd_usb_cdc_core_0_0_usbf_device_core u_core
       (.CLK(usb_reset_w_do),
        .CO(\ctrl_sending_r1_inferred__0/i__carry__0_n_2 ),
        .D({\usbfrx_data_w_do[7] ,\usbfrx_data_w_do[6] ,\usbfrx_data_w_do[5] ,\usbfrx_data_w_do[4] ,\usbfrx_data_w_do[3] ,\usbfrx_data_w_do[2] ,\usbfrx_data_w_do[1] ,\usbfrx_data_w_do[0] }),
        .E(usbfrx_shift_en_w_do),
        .\FSM_sequential_state_q_reg[1] (next_state_r__0[1:0]),
        .\FSM_sequential_state_q_reg[1]_0 (\usb_rst_time_q[19]_i_4_n_0 ),
        .O({u_core_n_185,u_core_n_186,u_core_n_187,u_core_n_188}),
        .Q(tx_sent_data_counter_o),
        .axi_bram_addr_q_reg(axi_bram_addr_q_reg),
        .axi_bram_addr_q_reg_0_sp_1(u_core_n_78),
        .axi_bram_addr_q_reg_1_sp_1(u_core_n_77),
        .axi_bram_r_data_i(axi_bram_r_data_i),
        .\chirp_count_q_reg[3] (u_core_n_87),
        .\chirp_count_q_reg[5] (\FSM_sequential_state_q[1]_i_3__1_n_0 ),
        .clk_i(clk_i),
        .ctrl_ack_r_do(ctrl_ack_r_do),
        .ctrl_send_accept_w_do(ctrl_send_accept_w_do),
        .\ctrl_send_idx_q_reg[0] (u_core_n_127),
        .\ctrl_send_idx_q_reg[0]_0 (ctrl_send_idx_q[0]),
        .\ctrl_send_idx_q_reg[15] ({u_core_n_51,u_core_n_52,u_core_n_53,u_core_n_54,u_core_n_55,u_core_n_56,u_core_n_57,u_core_n_58,u_core_n_59,u_core_n_60,u_core_n_61,u_core_n_62,u_core_n_63,u_core_n_64,u_core_n_65,u_core_n_66}),
        .ctrl_sending_q_reg(u_core_n_40),
        .ctrl_sending_q_reg_0(ctrl_sending_q_reg_n_0),
        .ctrl_sending_r2(ctrl_sending_r2),
        .ctrl_sending_r_do(ctrl_sending_r_do),
        .ctrl_txdata_q_do(ctrl_txdata_q_do),
        .\ctrl_txdata_q_reg[0] (u_core_n_128),
        .\ctrl_txdata_q_reg[7] ({u_core_n_148,u_core_n_149,u_core_n_150,u_core_n_151,u_core_n_152,u_core_n_153,u_core_n_154,u_core_n_155}),
        .ctrl_txlast_q_reg(u_core_n_207),
        .ctrl_txlast_q_reg_0(ctrl_txlast_q_reg_n_0),
        .ctrl_txstall_q_reg(u_core_n_205),
        .ctrl_txstall_q_reg_0(ctrl_txstall_q_do),
        .ctrl_txstrb_q_reg(u_core_n_206),
        .ctrl_txstrb_q_reg_0(ctrl_txstrb_q_reg_n_0),
        .ctrl_txvalid_q_reg(u_core_n_203),
        .ctrl_txvalid_q_reg_0(ctrl_txvalid_q_do),
        .current_addr_i_do(current_addr_i_do),
        .data_complete_o_do(data_complete_o_do),
        .\desc_addr_q_reg[0] (\desc_addr_q[6]_i_4_n_0 ),
        .\desc_addr_q_reg[0]_0 (\ctrl_txdata_q[1]_i_2_n_0 ),
        .\desc_addr_q_reg[1] (\ctrl_txdata_q[5]_i_2_n_0 ),
        .\desc_addr_q_reg[1]_0 (\ctrl_txdata_q[3]_i_2_n_0 ),
        .\desc_addr_q_reg[1]_1 (\ctrl_txdata_q_reg[1]_i_3_n_0 ),
        .\desc_addr_q_reg[1]_2 (\desc_addr_q[4]_i_2_n_0 ),
        .\desc_addr_q_reg[2] (\desc_addr_q[3]_i_4_n_0 ),
        .\desc_addr_q_reg[2]_0 (\ctrl_txdata_q[1]_i_4_n_0 ),
        .\desc_addr_q_reg[3] (\ctrl_txdata_q[6]_i_3_n_0 ),
        .\desc_addr_q_reg[3]_0 (\ctrl_txdata_q[3]_i_3_n_0 ),
        .\desc_addr_q_reg[3]_1 (\desc_addr_q[7]_i_3_n_0 ),
        .\desc_addr_q_reg[4] (\ctrl_txdata_q[7]_i_3_n_0 ),
        .\desc_addr_q_reg[4]_0 (\ctrl_txdata_q_reg[5]_i_3_n_0 ),
        .\desc_addr_q_reg[4]_1 (\ctrl_txdata_q[4]_i_2_n_0 ),
        .\desc_addr_q_reg[4]_2 (\ctrl_txdata_q[2]_i_2_n_0 ),
        .\desc_addr_q_reg[4]_3 (\ctrl_txdata_q[0]_i_2_n_0 ),
        .\desc_addr_q_reg[6] (\ctrl_txdata_q[7]_i_4_n_0 ),
        .\desc_addr_q_reg[6]_0 (\ctrl_txdata_q[6]_i_2_n_0 ),
        .\desc_addr_q_reg[7] (u_core_n_39),
        .\desc_addr_q_reg[7]_0 ({u_core_n_43,u_core_n_44,u_core_n_45,u_core_n_46,u_core_n_47,u_core_n_48,u_core_n_49,u_core_n_50}),
        .\desc_addr_q_reg[7]_1 ({desc_addr_q,\desc_addr_q_do[6] }),
        .\desc_addr_q_reg[7]_2 (\ctrl_txdata_q[2]_i_3_n_0 ),
        .\desc_addr_q_reg[7]_3 (\ctrl_txdata_q[0]_i_3_n_0 ),
        .\device_addr_q_reg[0] (u_core_n_156),
        .\device_addr_q_reg[6] ({u_core_n_178,u_core_n_179,u_core_n_180,u_core_n_181,u_core_n_182,u_core_n_183,u_core_n_184}),
        .ep0_rx_setup_w_do(ep0_rx_setup_w_do),
        .ep0_rx_valid_w_do(ep0_rx_valid_w_do),
        .ep2_tx_data_accept_w_do(ep2_tx_data_accept_w_do),
        .ep2_tx_data_last_w_do(ep2_tx_data_last_w_do),
        .ep2_tx_data_w_do(ep2_tx_data_w_do),
        .inport_accept_o(E),
        .inport_valid_q_do(inport_valid_q_do),
        .inport_valid_q_reg(ep2_tx_data_valid_w_do),
        .out(state_q),
        .outport_accept_i(outport_accept_i),
        .outport_data_o(outport_data_o),
        .outport_valid_o(outport_valid_o),
        .\readAXIBRAM_q_reg[0] (u_core_n_204),
        .\readAXIBRAM_q_reg[0]_0 (\readAXIBRAM_q_reg_n_0_[0] ),
        .reg_dev_addr_i_do(reg_dev_addr_i_do),
        .rst_i(rst_i),
        .rx_last_w_do(rx_last_w_do),
        .rx_out_do(rx_out_do),
        .rx_strb_w_do(rx_strb_w_do),
        .setup_frame_q_do(setup_frame_q_do),
        .setup_frame_q_reg(u_core_n_201),
        .\setup_packet_q_reg[0][0] (u_core_n_101),
        .\setup_packet_q_reg[0][5] (ctrl_txvalid_q_i_6_n_0),
        .\setup_packet_q_reg[0][5]_0 (ctrl_txvalid_q_i_7_n_0),
        .\setup_packet_q_reg[0][6] (\desc_addr_q[5]_i_2_n_0 ),
        .\setup_packet_q_reg[0][6]_0 (ctrl_txvalid_q_i_9_n_0),
        .\setup_packet_q_reg[0][6]_1 (\desc_addr_q[7]_i_2_n_0 ),
        .\setup_packet_q_reg[0][7] (\bmRequestType_w_do[7] [7:6]),
        .\setup_packet_q_reg[0][7]_0 (readAXIBRAM_r_do),
        .\setup_packet_q_reg[1][0] (u_core_n_102),
        .\setup_packet_q_reg[1][0]_0 (\desc_addr_q[3]_i_2_n_0 ),
        .\setup_packet_q_reg[1][2] (\bRequest_w_do[7] [2:0]),
        .\setup_packet_q_reg[1][3] (\desc_addr_q[4]_i_4_n_0 ),
        .\setup_packet_q_reg[1][7] (\device_addr_q[6]_i_3_n_0 ),
        .\setup_packet_q_reg[2][0] (u_core_n_105),
        .\setup_packet_q_reg[2][0]_0 (\desc_addr_q[2]_i_2_n_0 ),
        .\setup_packet_q_reg[2][0]_1 (\desc_addr_q[6]_i_6_n_0 ),
        .\setup_packet_q_reg[2][1] (\desc_addr_q[3]_i_3_n_0 ),
        .\setup_packet_q_reg[2][6] (wValue_w_do[6:0]),
        .\setup_packet_q_reg[2][7] (\desc_addr_q[6]_i_9_n_0 ),
        .\setup_packet_q_reg[3][0] (u_core_n_106),
        .\setup_packet_q_reg[3][0]_0 (\desc_addr_q[1]_i_2_n_0 ),
        .\setup_packet_q_reg[3][1] (\desc_addr_q[6]_i_8_n_0 ),
        .\setup_packet_q_reg[3][1]_0 (\wValue_w_do[15] [1:0]),
        .\setup_packet_q_reg[3][1]_1 (\desc_addr_q[3]_i_7_n_0 ),
        .\setup_packet_q_reg[4][0] (u_core_n_107),
        .\setup_packet_q_reg[5][0] (u_core_n_108),
        .\setup_packet_q_reg[5][7] (setup_packet_q),
        .\setup_packet_q_reg[6][0] (u_core_n_103),
        .\setup_packet_q_reg[7][0] (u_core_n_104),
        .setup_resp_valid_delay_q_reg(setup_resp_valid_delay_q_do),
        .setup_resp_valid_delay_q_reg_0(ctrl_txvalid_q_i_3_n_0),
        .setup_resp_valid_delay_q_reg_1(ctrl_stall_r_do),
        .setup_resp_valid_delay_q_reg_2(ctrl_txlast_q_i_2_n_0),
        .setup_valid_conter_q_o(setup_valid_conter_q_o),
        .\setup_valid_conter_q_reg[0] (u_core_n_147),
        .\setup_valid_conter_q_reg[11] ({u_core_n_193,u_core_n_194,u_core_n_195,u_core_n_196}),
        .\setup_valid_conter_q_reg[15] ({u_core_n_197,u_core_n_198,u_core_n_199,u_core_n_200}),
        .\setup_valid_conter_q_reg[7] ({u_core_n_189,u_core_n_190,u_core_n_191,u_core_n_192}),
        .setup_valid_q(setup_valid_q),
        .setup_valid_q_reg(setup_valid_q_do),
        .\setup_wr_idx_q_reg[0] (u_core_n_76),
        .\setup_wr_idx_q_reg[0]_0 (\setup_wr_idx_q_do[0] ),
        .\setup_wr_idx_q_reg[1] (u_core_n_75),
        .\setup_wr_idx_q_reg[1]_0 (\setup_wr_idx_q_do[1] ),
        .\setup_wr_idx_q_reg[2] (u_core_n_73),
        .\setup_wr_idx_q_reg[2]_0 (\setup_wr_idx_q_do[2] ),
        .sie_tx_state_q_o(sie_tx_state_q_o),
        .status_ready_q_reg(u_core_n_202),
        .status_ready_q_reg_0(status_ready_q_reg_n_0),
        .status_stage_w_do(status_stage_w_do),
        .token_dev_w_do(token_dev_w_do),
        .\token_ep_w_do[0] (\token_ep_w_do[0] ),
        .\token_ep_w_do[1] (\token_ep_w_do[1] ),
        .\token_ep_w_do[2] (\token_ep_w_do[2] ),
        .\token_ep_w_do[3] (\token_ep_w_do[3] ),
        .token_valid_w_do(token_valid_w_do),
        .usb_rst_time_q0(usb_rst_time_q0),
        .\usb_rst_time_q_reg[0] (u_core_n_177),
        .\usb_rst_time_q_reg[0]_0 (\usb_rst_time_do[19] [0]),
        .\usb_rst_time_q_reg[17] (\FSM_sequential_state_q[2]_i_3__1_n_0 ),
        .\usb_rst_time_q_reg[18] (\FSM_sequential_state_q[2]_i_2__1_n_0 ),
        .\usb_rst_time_q_reg[18]_0 (\usb_rst_time_q[19]_i_7_n_0 ),
        .\usb_rst_time_q_reg[19] (p_1_in),
        .\usb_rst_time_q_reg[4] (\usb_rst_time_q[19]_i_6_n_0 ),
        .\usb_rst_time_q_reg[6] (\FSM_sequential_state_q[2]_i_4__1_n_0 ),
        .\usb_rst_time_q_reg[9] (\usb_rst_time_q[19]_i_5_n_0 ),
        .usbf_ep_data_bit_r_do(usbf_ep_data_bit_r_do),
        .usbf_new_data_bit_r_do(usbf_new_data_bit_r_do),
        .\usbf_state_q_do[0] (\usbf_state_q_do[0] ),
        .\usbf_state_q_do[1] (\usbf_state_q_do[1] ),
        .\usbf_state_q_do[2] (\usbf_state_q_do[2] ),
        .usbf_tx_pid_q_do(usbf_tx_pid_q_do),
        .usbf_tx_valid_q_do(usbf_tx_valid_q_do),
        .usbfrx_crc_byte_w_do(Q),
        .usbfrx_data_ready_w_do(usbfrx_data_ready_w_do),
        .usbfrx_rx_active_w_do(usbfrx_rx_active_w_do),
        .utmi_data_in_i(utmi_data_in_i),
        .utmi_data_out_o(utmi_data_out_o),
        .\utmi_data_out_o[3] (\utmi_data_out_o[3] ),
        .\utmi_data_out_o[4] (\utmi_data_out_o[4] ),
        .\utmi_data_out_o[6] (\utmi_data_out_o[6] ),
        .\utmi_data_out_o[7] (\utmi_data_out_o[7] ),
        .utmi_data_out_o_2_sp_1(utmi_data_out_o_2_sn_1),
        .utmi_linestate_i(utmi_linestate_i),
        .utmi_rxactive_i(utmi_rxactive_i),
        .utmi_rxvalid_i(utmi_rxvalid_i),
        .utmi_txready_i(utmi_txready_i),
        .utmi_txvalid_o(utmi_txvalid_o));
  LUT1 #(
    .INIT(2'h1)) 
    \usb_reset_counter_q[0]_i_1 
       (.I0(usb_reset_counter_q_do[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \usb_reset_counter_q[1]_i_1 
       (.I0(usb_reset_counter_q_do[0]),
        .I1(usb_reset_counter_q_do[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \usb_reset_counter_q[2]_i_1 
       (.I0(usb_reset_counter_q_do[2]),
        .I1(usb_reset_counter_q_do[1]),
        .I2(usb_reset_counter_q_do[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \usb_reset_counter_q[3]_i_1 
       (.I0(usb_reset_counter_q_do[3]),
        .I1(usb_reset_counter_q_do[0]),
        .I2(usb_reset_counter_q_do[1]),
        .I3(usb_reset_counter_q_do[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \usb_reset_counter_q[4]_i_1 
       (.I0(usb_reset_counter_q_do[4]),
        .I1(usb_reset_counter_q_do[2]),
        .I2(usb_reset_counter_q_do[1]),
        .I3(usb_reset_counter_q_do[0]),
        .I4(usb_reset_counter_q_do[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \usb_reset_counter_q[5]_i_1 
       (.I0(usb_reset_counter_q_do[5]),
        .I1(usb_reset_counter_q_do[3]),
        .I2(usb_reset_counter_q_do[0]),
        .I3(usb_reset_counter_q_do[1]),
        .I4(usb_reset_counter_q_do[2]),
        .I5(usb_reset_counter_q_do[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \usb_reset_counter_q[6]_i_1 
       (.I0(usb_reset_counter_q_do[6]),
        .I1(\usb_reset_counter_q[7]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \usb_reset_counter_q[7]_i_1 
       (.I0(usb_reset_counter_q_do[7]),
        .I1(\usb_reset_counter_q[7]_i_2_n_0 ),
        .I2(usb_reset_counter_q_do[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \usb_reset_counter_q[7]_i_2 
       (.I0(usb_reset_counter_q_do[5]),
        .I1(usb_reset_counter_q_do[3]),
        .I2(usb_reset_counter_q_do[0]),
        .I3(usb_reset_counter_q_do[1]),
        .I4(usb_reset_counter_q_do[2]),
        .I5(usb_reset_counter_q_do[4]),
        .O(\usb_reset_counter_q[7]_i_2_n_0 ));
  FDCE \usb_reset_counter_q_reg[0] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[0]),
        .Q(usb_reset_counter_q_do[0]));
  FDCE \usb_reset_counter_q_reg[1] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[1]),
        .Q(usb_reset_counter_q_do[1]));
  FDCE \usb_reset_counter_q_reg[2] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[2]),
        .Q(usb_reset_counter_q_do[2]));
  FDCE \usb_reset_counter_q_reg[3] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[3]),
        .Q(usb_reset_counter_q_do[3]));
  FDCE \usb_reset_counter_q_reg[4] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[4]),
        .Q(usb_reset_counter_q_do[4]));
  FDCE \usb_reset_counter_q_reg[5] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[5]),
        .Q(usb_reset_counter_q_do[5]));
  FDCE \usb_reset_counter_q_reg[6] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[6]),
        .Q(usb_reset_counter_q_do[6]));
  FDCE \usb_reset_counter_q_reg[7] 
       (.C(usb_reset_w_do),
        .CE(1'b1),
        .CLR(rst_i),
        .D(p_0_in[7]),
        .Q(usb_reset_counter_q_do[7]));
  CARRY4 usb_rst_time_q0_carry
       (.CI(1'b0),
        .CO({usb_rst_time_q0_carry_n_0,usb_rst_time_q0_carry_n_1,usb_rst_time_q0_carry_n_2,usb_rst_time_q0_carry_n_3}),
        .CYINIT(\usb_rst_time_do[19] [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(usb_rst_time_q0[4:1]),
        .S(\usb_rst_time_do[19] [4:1]));
  CARRY4 usb_rst_time_q0_carry__0
       (.CI(usb_rst_time_q0_carry_n_0),
        .CO({usb_rst_time_q0_carry__0_n_0,usb_rst_time_q0_carry__0_n_1,usb_rst_time_q0_carry__0_n_2,usb_rst_time_q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(usb_rst_time_q0[8:5]),
        .S(\usb_rst_time_do[19] [8:5]));
  CARRY4 usb_rst_time_q0_carry__1
       (.CI(usb_rst_time_q0_carry__0_n_0),
        .CO({usb_rst_time_q0_carry__1_n_0,usb_rst_time_q0_carry__1_n_1,usb_rst_time_q0_carry__1_n_2,usb_rst_time_q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(usb_rst_time_q0[12:9]),
        .S(\usb_rst_time_do[19] [12:9]));
  CARRY4 usb_rst_time_q0_carry__2
       (.CI(usb_rst_time_q0_carry__1_n_0),
        .CO({usb_rst_time_q0_carry__2_n_0,usb_rst_time_q0_carry__2_n_1,usb_rst_time_q0_carry__2_n_2,usb_rst_time_q0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(usb_rst_time_q0[16:13]),
        .S(\usb_rst_time_do[19] [16:13]));
  CARRY4 usb_rst_time_q0_carry__3
       (.CI(usb_rst_time_q0_carry__2_n_0),
        .CO({NLW_usb_rst_time_q0_carry__3_CO_UNCONNECTED[3:2],usb_rst_time_q0_carry__3_n_2,usb_rst_time_q0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_usb_rst_time_q0_carry__3_O_UNCONNECTED[3],usb_rst_time_q0[19:17]}),
        .S({1'b0,\usb_rst_time_do[19] [19:17]}));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \usb_rst_time_q[19]_i_10 
       (.I0(\usb_rst_time_do[19] [6]),
        .I1(\usb_rst_time_do[19] [7]),
        .I2(\usb_rst_time_do[19] [9]),
        .I3(\usb_rst_time_do[19] [8]),
        .I4(\usb_rst_time_do[19] [10]),
        .I5(\usb_rst_time_do[19] [13]),
        .O(\usb_rst_time_q[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101010101)) 
    \usb_rst_time_q[19]_i_11 
       (.I0(\usb_rst_time_do[19] [14]),
        .I1(\usb_rst_time_do[19] [17]),
        .I2(\usb_rst_time_do[19] [15]),
        .I3(\usb_rst_time_do[19] [11]),
        .I4(\usb_rst_time_do[19] [12]),
        .I5(\usb_rst_time_do[19] [13]),
        .O(\usb_rst_time_q[19]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000E00)) 
    \usb_rst_time_q[19]_i_4 
       (.I0(utmi_linestate_i[1]),
        .I1(utmi_linestate_i[0]),
        .I2(state_q[1]),
        .I3(state_q[0]),
        .I4(state_q[2]),
        .O(\usb_rst_time_q[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \usb_rst_time_q[19]_i_5 
       (.I0(\usb_rst_time_do[19] [9]),
        .I1(\usb_rst_time_do[19] [8]),
        .I2(\usb_rst_time_do[19] [10]),
        .I3(\usb_rst_time_do[19] [13]),
        .I4(\usb_rst_time_do[19] [12]),
        .I5(\usb_rst_time_do[19] [11]),
        .O(\usb_rst_time_q[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \usb_rst_time_q[19]_i_6 
       (.I0(\usb_rst_time_q[19]_i_8_n_0 ),
        .I1(\usb_rst_time_q[19]_i_9_n_0 ),
        .I2(\usb_rst_time_do[19] [4]),
        .I3(\usb_rst_time_do[19] [0]),
        .I4(\usb_rst_time_do[19] [2]),
        .I5(\usb_rst_time_do[19] [7]),
        .O(\usb_rst_time_q[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7777333733373337)) 
    \usb_rst_time_q[19]_i_7 
       (.I0(\usb_rst_time_do[19] [18]),
        .I1(\usb_rst_time_do[19] [19]),
        .I2(\usb_rst_time_do[19] [17]),
        .I3(\usb_rst_time_do[19] [16]),
        .I4(\usb_rst_time_q[19]_i_10_n_0 ),
        .I5(\usb_rst_time_q[19]_i_11_n_0 ),
        .O(\usb_rst_time_q[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \usb_rst_time_q[19]_i_8 
       (.I0(\usb_rst_time_do[19] [5]),
        .I1(\usb_rst_time_do[19] [6]),
        .I2(\usb_rst_time_do[19] [14]),
        .I3(\usb_rst_time_do[19] [15]),
        .I4(\usb_rst_time_do[19] [16]),
        .I5(\usb_rst_time_do[19] [17]),
        .O(\usb_rst_time_q[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \usb_rst_time_q[19]_i_9 
       (.I0(\usb_rst_time_do[19] [19]),
        .I1(\usb_rst_time_do[19] [18]),
        .I2(\usb_rst_time_do[19] [3]),
        .I3(\usb_rst_time_do[19] [1]),
        .O(\usb_rst_time_q[19]_i_9_n_0 ));
  FDCE \usb_rst_time_q_reg[0] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[0]),
        .Q(\usb_rst_time_do[19] [0]));
  FDCE \usb_rst_time_q_reg[10] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[10]),
        .Q(\usb_rst_time_do[19] [10]));
  FDCE \usb_rst_time_q_reg[11] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[11]),
        .Q(\usb_rst_time_do[19] [11]));
  FDCE \usb_rst_time_q_reg[12] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[12]),
        .Q(\usb_rst_time_do[19] [12]));
  FDCE \usb_rst_time_q_reg[13] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[13]),
        .Q(\usb_rst_time_do[19] [13]));
  FDCE \usb_rst_time_q_reg[14] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[14]),
        .Q(\usb_rst_time_do[19] [14]));
  FDCE \usb_rst_time_q_reg[15] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[15]),
        .Q(\usb_rst_time_do[19] [15]));
  FDCE \usb_rst_time_q_reg[16] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[16]),
        .Q(\usb_rst_time_do[19] [16]));
  FDCE \usb_rst_time_q_reg[17] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[17]),
        .Q(\usb_rst_time_do[19] [17]));
  FDCE \usb_rst_time_q_reg[18] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[18]),
        .Q(\usb_rst_time_do[19] [18]));
  FDCE \usb_rst_time_q_reg[19] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[19]),
        .Q(\usb_rst_time_do[19] [19]));
  FDCE \usb_rst_time_q_reg[1] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[1]),
        .Q(\usb_rst_time_do[19] [1]));
  FDCE \usb_rst_time_q_reg[2] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[2]),
        .Q(\usb_rst_time_do[19] [2]));
  FDCE \usb_rst_time_q_reg[3] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[3]),
        .Q(\usb_rst_time_do[19] [3]));
  FDCE \usb_rst_time_q_reg[4] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[4]),
        .Q(\usb_rst_time_do[19] [4]));
  FDCE \usb_rst_time_q_reg[5] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[5]),
        .Q(\usb_rst_time_do[19] [5]));
  FDCE \usb_rst_time_q_reg[6] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[6]),
        .Q(\usb_rst_time_do[19] [6]));
  FDCE \usb_rst_time_q_reg[7] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[7]),
        .Q(\usb_rst_time_do[19] [7]));
  FDCE \usb_rst_time_q_reg[8] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[8]),
        .Q(\usb_rst_time_do[19] [8]));
  FDCE \usb_rst_time_q_reg[9] 
       (.C(clk_i),
        .CE(u_core_n_177),
        .CLR(rst_i),
        .D(p_1_in[9]),
        .Q(\usb_rst_time_do[19] [9]));
  LUT3 #(
    .INIT(8'h08)) 
    \utmi_op_mode_o[0]_INST_0 
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .I2(state_q[1]),
        .O(utmi_op_mode_o));
  LUT3 #(
    .INIT(8'h18)) 
    \utmi_op_mode_o[1]_INST_0 
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .O(state_r_do[1]));
  LUT3 #(
    .INIT(8'h36)) 
    utmi_termselect_o_INST_0
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .O(utmi_termselect_o));
  LUT3 #(
    .INIT(8'h06)) 
    \utmi_xcvrselect_o[0]_INST_0 
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .O(utmi_xcvrselect_o));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h08)) 
    vendorReqRecived_o_INST_0
       (.I0(setup_resp_valid_delay_q_do),
        .I1(\bmRequestType_w_do[7] [6]),
        .I2(\bmRequestType_w_do[7] [5]),
        .O(vendorReqRecived_o));
endmodule

(* ORIG_REF_NAME = "usbf_device_core" *) 
module brd_usb_cdc_core_0_0_usbf_device_core
   (E,
    D,
    usbfrx_rx_active_w_do,
    token_valid_w_do,
    data_complete_o_do,
    rx_strb_w_do,
    usbf_tx_valid_q_do,
    rx_out_do,
    Q,
    CLK,
    ep2_tx_data_accept_w_do,
    \token_ep_w_do[0] ,
    \token_ep_w_do[1] ,
    \token_ep_w_do[3] ,
    \token_ep_w_do[2] ,
    \usbf_state_q_do[0] ,
    usbf_ep_data_bit_r_do,
    \desc_addr_q_reg[7] ,
    ctrl_sending_q_reg,
    usbfrx_crc_byte_w_do,
    \usbf_state_q_do[1] ,
    \desc_addr_q_reg[7]_0 ,
    \ctrl_send_idx_q_reg[15] ,
    utmi_data_out_o_2_sp_1,
    \utmi_data_out_o[3] ,
    \utmi_data_out_o[6] ,
    \utmi_data_out_o[4] ,
    \FSM_sequential_state_q_reg[1] ,
    \setup_wr_idx_q_reg[2] ,
    ep0_rx_setup_w_do,
    \setup_wr_idx_q_reg[1] ,
    \setup_wr_idx_q_reg[0] ,
    axi_bram_addr_q_reg_1_sp_1,
    axi_bram_addr_q_reg_0_sp_1,
    \utmi_data_out_o[7] ,
    utmi_data_out_o,
    sie_tx_state_q_o,
    \usbf_state_q_do[2] ,
    \chirp_count_q_reg[3] ,
    usbf_tx_pid_q_do,
    utmi_txvalid_o,
    ep2_tx_data_last_w_do,
    inport_accept_o,
    usbf_new_data_bit_r_do,
    status_stage_w_do,
    ep0_rx_valid_w_do,
    \setup_packet_q_reg[0][0] ,
    \setup_packet_q_reg[1][0] ,
    \setup_packet_q_reg[6][0] ,
    \setup_packet_q_reg[7][0] ,
    \setup_packet_q_reg[2][0] ,
    \setup_packet_q_reg[3][0] ,
    \setup_packet_q_reg[4][0] ,
    \setup_packet_q_reg[5][0] ,
    setup_valid_q,
    \setup_packet_q_reg[5][7] ,
    outport_data_o,
    ctrl_send_accept_w_do,
    \ctrl_send_idx_q_reg[0] ,
    \ctrl_txdata_q_reg[0] ,
    ctrl_sending_r_do,
    outport_valid_o,
    usbfrx_data_ready_w_do,
    current_addr_i_do,
    token_dev_w_do,
    rx_last_w_do,
    \setup_valid_conter_q_reg[0] ,
    \ctrl_txdata_q_reg[7] ,
    \device_addr_q_reg[0] ,
    \usb_rst_time_q_reg[19] ,
    \usb_rst_time_q_reg[0] ,
    \device_addr_q_reg[6] ,
    O,
    \setup_valid_conter_q_reg[7] ,
    \setup_valid_conter_q_reg[11] ,
    \setup_valid_conter_q_reg[15] ,
    setup_frame_q_reg,
    status_ready_q_reg,
    ctrl_txvalid_q_reg,
    \readAXIBRAM_q_reg[0] ,
    ctrl_txstall_q_reg,
    ctrl_txstrb_q_reg,
    ctrl_txlast_q_reg,
    clk_i,
    rst_i,
    utmi_data_in_i,
    utmi_rxactive_i,
    inport_valid_q_reg,
    ctrl_txvalid_q_reg_0,
    ctrl_txstall_q_reg_0,
    outport_accept_i,
    setup_resp_valid_delay_q_reg,
    out,
    \setup_packet_q_reg[1][0]_0 ,
    \setup_packet_q_reg[2][1] ,
    \desc_addr_q_reg[2] ,
    \desc_addr_q_reg[7]_1 ,
    \desc_addr_q_reg[0] ,
    \setup_packet_q_reg[0][6] ,
    \ctrl_send_idx_q_reg[0]_0 ,
    status_ready_q_reg_0,
    setup_valid_conter_q_o,
    utmi_linestate_i,
    utmi_rxvalid_i,
    \usb_rst_time_q_reg[18] ,
    \usb_rst_time_q_reg[17] ,
    \usb_rst_time_q_reg[18]_0 ,
    \setup_wr_idx_q_reg[0]_0 ,
    \setup_wr_idx_q_reg[1]_0 ,
    \setup_wr_idx_q_reg[2]_0 ,
    axi_bram_addr_q_reg,
    ep2_tx_data_w_do,
    ctrl_txdata_q_do,
    utmi_txready_i,
    ctrl_txstrb_q_reg_0,
    ctrl_txlast_q_reg_0,
    setup_frame_q_do,
    \setup_packet_q_reg[0][5] ,
    \setup_packet_q_reg[0][5]_0 ,
    \setup_packet_q_reg[0][6]_0 ,
    ctrl_sending_q_reg_0,
    setup_resp_valid_delay_q_reg_0,
    ctrl_ack_r_do,
    \setup_packet_q_reg[0][7] ,
    setup_resp_valid_delay_q_reg_1,
    CO,
    reg_dev_addr_i_do,
    inport_valid_q_do,
    setup_valid_q_reg,
    \desc_addr_q_reg[4] ,
    \desc_addr_q_reg[6] ,
    \setup_packet_q_reg[0][7]_0 ,
    axi_bram_r_data_i,
    \desc_addr_q_reg[6]_0 ,
    \desc_addr_q_reg[3] ,
    \desc_addr_q_reg[1] ,
    \desc_addr_q_reg[4]_0 ,
    \desc_addr_q_reg[4]_1 ,
    \desc_addr_q_reg[1]_0 ,
    \desc_addr_q_reg[3]_0 ,
    \desc_addr_q_reg[4]_2 ,
    \desc_addr_q_reg[7]_2 ,
    \desc_addr_q_reg[0]_0 ,
    \desc_addr_q_reg[1]_1 ,
    \desc_addr_q_reg[2]_0 ,
    \desc_addr_q_reg[4]_3 ,
    \desc_addr_q_reg[7]_3 ,
    \setup_packet_q_reg[2][0]_0 ,
    \setup_packet_q_reg[2][0]_1 ,
    \setup_packet_q_reg[3][1] ,
    \setup_packet_q_reg[3][1]_0 ,
    \setup_packet_q_reg[1][2] ,
    \setup_packet_q_reg[2][7] ,
    \setup_packet_q_reg[3][0]_0 ,
    \desc_addr_q_reg[1]_2 ,
    \setup_packet_q_reg[1][3] ,
    \setup_packet_q_reg[0][6]_1 ,
    \desc_addr_q_reg[3]_1 ,
    \setup_packet_q_reg[3][1]_1 ,
    \setup_packet_q_reg[1][7] ,
    ctrl_sending_r2,
    \FSM_sequential_state_q_reg[1]_0 ,
    \usb_rst_time_q_reg[0]_0 ,
    usb_rst_time_q0,
    \usb_rst_time_q_reg[9] ,
    \usb_rst_time_q_reg[4] ,
    \chirp_count_q_reg[5] ,
    \usb_rst_time_q_reg[6] ,
    \setup_packet_q_reg[2][6] ,
    \readAXIBRAM_q_reg[0]_0 ,
    setup_resp_valid_delay_q_reg_2);
  output [0:0]E;
  output [7:0]D;
  output usbfrx_rx_active_w_do;
  output token_valid_w_do;
  output data_complete_o_do;
  output rx_strb_w_do;
  output usbf_tx_valid_q_do;
  output rx_out_do;
  output [15:0]Q;
  output CLK;
  output ep2_tx_data_accept_w_do;
  output \token_ep_w_do[0] ;
  output \token_ep_w_do[1] ;
  output \token_ep_w_do[3] ;
  output \token_ep_w_do[2] ;
  output \usbf_state_q_do[0] ;
  output usbf_ep_data_bit_r_do;
  output [0:0]\desc_addr_q_reg[7] ;
  output ctrl_sending_q_reg;
  output [0:0]usbfrx_crc_byte_w_do;
  output \usbf_state_q_do[1] ;
  output [7:0]\desc_addr_q_reg[7]_0 ;
  output [15:0]\ctrl_send_idx_q_reg[15] ;
  output utmi_data_out_o_2_sp_1;
  output \utmi_data_out_o[3] ;
  output \utmi_data_out_o[6] ;
  output \utmi_data_out_o[4] ;
  output [1:0]\FSM_sequential_state_q_reg[1] ;
  output \setup_wr_idx_q_reg[2] ;
  output ep0_rx_setup_w_do;
  output \setup_wr_idx_q_reg[1] ;
  output \setup_wr_idx_q_reg[0] ;
  output axi_bram_addr_q_reg_1_sp_1;
  output axi_bram_addr_q_reg_0_sp_1;
  output \utmi_data_out_o[7] ;
  output [2:0]utmi_data_out_o;
  output [2:0]sie_tx_state_q_o;
  output \usbf_state_q_do[2] ;
  output \chirp_count_q_reg[3] ;
  output [6:0]usbf_tx_pid_q_do;
  output utmi_txvalid_o;
  output ep2_tx_data_last_w_do;
  output [0:0]inport_accept_o;
  output usbf_new_data_bit_r_do;
  output status_stage_w_do;
  output ep0_rx_valid_w_do;
  output [0:0]\setup_packet_q_reg[0][0] ;
  output [0:0]\setup_packet_q_reg[1][0] ;
  output [0:0]\setup_packet_q_reg[6][0] ;
  output [0:0]\setup_packet_q_reg[7][0] ;
  output [0:0]\setup_packet_q_reg[2][0] ;
  output [0:0]\setup_packet_q_reg[3][0] ;
  output [0:0]\setup_packet_q_reg[4][0] ;
  output [0:0]\setup_packet_q_reg[5][0] ;
  output setup_valid_q;
  output [7:0]\setup_packet_q_reg[5][7] ;
  output [7:0]outport_data_o;
  output ctrl_send_accept_w_do;
  output [0:0]\ctrl_send_idx_q_reg[0] ;
  output [0:0]\ctrl_txdata_q_reg[0] ;
  output ctrl_sending_r_do;
  output outport_valid_o;
  output [0:0]usbfrx_data_ready_w_do;
  output [6:0]current_addr_i_do;
  output [6:0]token_dev_w_do;
  output rx_last_w_do;
  output \setup_valid_conter_q_reg[0] ;
  output [7:0]\ctrl_txdata_q_reg[7] ;
  output [0:0]\device_addr_q_reg[0] ;
  output [19:0]\usb_rst_time_q_reg[19] ;
  output [0:0]\usb_rst_time_q_reg[0] ;
  output [6:0]\device_addr_q_reg[6] ;
  output [3:0]O;
  output [3:0]\setup_valid_conter_q_reg[7] ;
  output [3:0]\setup_valid_conter_q_reg[11] ;
  output [3:0]\setup_valid_conter_q_reg[15] ;
  output setup_frame_q_reg;
  output status_ready_q_reg;
  output ctrl_txvalid_q_reg;
  output \readAXIBRAM_q_reg[0] ;
  output ctrl_txstall_q_reg;
  output ctrl_txstrb_q_reg;
  output ctrl_txlast_q_reg;
  input clk_i;
  input rst_i;
  input [7:0]utmi_data_in_i;
  input utmi_rxactive_i;
  input inport_valid_q_reg;
  input ctrl_txvalid_q_reg_0;
  input ctrl_txstall_q_reg_0;
  input outport_accept_i;
  input setup_resp_valid_delay_q_reg;
  input [2:0]out;
  input \setup_packet_q_reg[1][0]_0 ;
  input \setup_packet_q_reg[2][1] ;
  input \desc_addr_q_reg[2] ;
  input [7:0]\desc_addr_q_reg[7]_1 ;
  input \desc_addr_q_reg[0] ;
  input \setup_packet_q_reg[0][6] ;
  input [0:0]\ctrl_send_idx_q_reg[0]_0 ;
  input status_ready_q_reg_0;
  input [15:0]setup_valid_conter_q_o;
  input [1:0]utmi_linestate_i;
  input utmi_rxvalid_i;
  input \usb_rst_time_q_reg[18] ;
  input \usb_rst_time_q_reg[17] ;
  input \usb_rst_time_q_reg[18]_0 ;
  input \setup_wr_idx_q_reg[0]_0 ;
  input \setup_wr_idx_q_reg[1]_0 ;
  input \setup_wr_idx_q_reg[2]_0 ;
  input [1:0]axi_bram_addr_q_reg;
  input [7:0]ep2_tx_data_w_do;
  input [7:0]ctrl_txdata_q_do;
  input utmi_txready_i;
  input ctrl_txstrb_q_reg_0;
  input ctrl_txlast_q_reg_0;
  input setup_frame_q_do;
  input \setup_packet_q_reg[0][5] ;
  input \setup_packet_q_reg[0][5]_0 ;
  input \setup_packet_q_reg[0][6]_0 ;
  input ctrl_sending_q_reg_0;
  input setup_resp_valid_delay_q_reg_0;
  input ctrl_ack_r_do;
  input [1:0]\setup_packet_q_reg[0][7] ;
  input setup_resp_valid_delay_q_reg_1;
  input [0:0]CO;
  input [6:0]reg_dev_addr_i_do;
  input inport_valid_q_do;
  input setup_valid_q_reg;
  input \desc_addr_q_reg[4] ;
  input \desc_addr_q_reg[6] ;
  input \setup_packet_q_reg[0][7]_0 ;
  input [7:0]axi_bram_r_data_i;
  input \desc_addr_q_reg[6]_0 ;
  input \desc_addr_q_reg[3] ;
  input \desc_addr_q_reg[1] ;
  input \desc_addr_q_reg[4]_0 ;
  input \desc_addr_q_reg[4]_1 ;
  input \desc_addr_q_reg[1]_0 ;
  input \desc_addr_q_reg[3]_0 ;
  input \desc_addr_q_reg[4]_2 ;
  input \desc_addr_q_reg[7]_2 ;
  input \desc_addr_q_reg[0]_0 ;
  input \desc_addr_q_reg[1]_1 ;
  input \desc_addr_q_reg[2]_0 ;
  input \desc_addr_q_reg[4]_3 ;
  input \desc_addr_q_reg[7]_3 ;
  input \setup_packet_q_reg[2][0]_0 ;
  input \setup_packet_q_reg[2][0]_1 ;
  input \setup_packet_q_reg[3][1] ;
  input [1:0]\setup_packet_q_reg[3][1]_0 ;
  input [2:0]\setup_packet_q_reg[1][2] ;
  input \setup_packet_q_reg[2][7] ;
  input \setup_packet_q_reg[3][0]_0 ;
  input \desc_addr_q_reg[1]_2 ;
  input \setup_packet_q_reg[1][3] ;
  input \setup_packet_q_reg[0][6]_1 ;
  input \desc_addr_q_reg[3]_1 ;
  input \setup_packet_q_reg[3][1]_1 ;
  input \setup_packet_q_reg[1][7] ;
  input [14:0]ctrl_sending_r2;
  input \FSM_sequential_state_q_reg[1]_0 ;
  input [0:0]\usb_rst_time_q_reg[0]_0 ;
  input [18:0]usb_rst_time_q0;
  input \usb_rst_time_q_reg[9] ;
  input \usb_rst_time_q_reg[4] ;
  input \chirp_count_q_reg[5] ;
  input \usb_rst_time_q_reg[6] ;
  input [6:0]\setup_packet_q_reg[2][6] ;
  input \readAXIBRAM_q_reg[0]_0 ;
  input setup_resp_valid_delay_q_reg_2;

  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_q[0]_i_2__1_n_0 ;
  wire \FSM_sequential_state_q[1]_i_2__1_n_0 ;
  wire [1:0]\FSM_sequential_state_q_reg[1] ;
  wire \FSM_sequential_state_q_reg[1]_0 ;
  wire [3:0]O;
  wire [15:0]Q;
  wire addr_update_pending_q_i_2_n_0;
  wire addr_update_pending_q_i_3_n_0;
  wire addr_update_pending_q_i_4_n_0;
  wire addr_update_pending_q_reg_n_0;
  wire \axi_bram_addr_q[1]_i_2_n_0 ;
  wire [1:0]axi_bram_addr_q_reg;
  wire axi_bram_addr_q_reg_0_sn_1;
  wire axi_bram_addr_q_reg_1_sn_1;
  wire [7:0]axi_bram_r_data_i;
  wire \chirp_count_q_reg[3] ;
  wire \chirp_count_q_reg[5] ;
  wire clk_i;
  wire ctrl_ack_r_do;
  wire ctrl_send_accept_w_do;
  wire [0:0]\ctrl_send_idx_q_reg[0] ;
  wire [0:0]\ctrl_send_idx_q_reg[0]_0 ;
  wire [15:0]\ctrl_send_idx_q_reg[15] ;
  wire ctrl_sending_q_reg;
  wire ctrl_sending_q_reg_0;
  wire [14:0]ctrl_sending_r2;
  wire ctrl_sending_r_do;
  wire [7:0]ctrl_txdata_q_do;
  wire [0:0]\ctrl_txdata_q_reg[0] ;
  wire [7:0]\ctrl_txdata_q_reg[7] ;
  wire ctrl_txlast_q_reg;
  wire ctrl_txlast_q_reg_0;
  wire ctrl_txstall_q_reg;
  wire ctrl_txstall_q_reg_0;
  wire ctrl_txstrb_q_reg;
  wire ctrl_txstrb_q_reg_0;
  wire ctrl_txvalid_q_i_5_n_0;
  wire ctrl_txvalid_q_i_8_n_0;
  wire ctrl_txvalid_q_reg;
  wire ctrl_txvalid_q_reg_0;
  wire [6:0]current_addr_i_do;
  wire \current_addr_q[0]_i_1_n_0 ;
  wire \current_addr_q[1]_i_1_n_0 ;
  wire \current_addr_q[2]_i_1_n_0 ;
  wire \current_addr_q[3]_i_1_n_0 ;
  wire \current_addr_q[4]_i_1_n_0 ;
  wire \current_addr_q[5]_i_1_n_0 ;
  wire \current_addr_q[6]_i_2_n_0 ;
  wire data_complete_o_do;
  wire data_pid_q4_out;
  wire \desc_addr_q[0]_i_2_n_0 ;
  wire \desc_addr_q[4]_i_3_n_0 ;
  wire \desc_addr_q[6]_i_5_n_0 ;
  wire \desc_addr_q[6]_i_7_n_0 ;
  wire \desc_addr_q_reg[0] ;
  wire \desc_addr_q_reg[0]_0 ;
  wire \desc_addr_q_reg[1] ;
  wire \desc_addr_q_reg[1]_0 ;
  wire \desc_addr_q_reg[1]_1 ;
  wire \desc_addr_q_reg[1]_2 ;
  wire \desc_addr_q_reg[2] ;
  wire \desc_addr_q_reg[2]_0 ;
  wire \desc_addr_q_reg[3] ;
  wire \desc_addr_q_reg[3]_0 ;
  wire \desc_addr_q_reg[3]_1 ;
  wire \desc_addr_q_reg[4] ;
  wire \desc_addr_q_reg[4]_0 ;
  wire \desc_addr_q_reg[4]_1 ;
  wire \desc_addr_q_reg[4]_2 ;
  wire \desc_addr_q_reg[4]_3 ;
  wire \desc_addr_q_reg[6] ;
  wire \desc_addr_q_reg[6]_0 ;
  wire [0:0]\desc_addr_q_reg[7] ;
  wire [7:0]\desc_addr_q_reg[7]_0 ;
  wire [7:0]\desc_addr_q_reg[7]_1 ;
  wire \desc_addr_q_reg[7]_2 ;
  wire \desc_addr_q_reg[7]_3 ;
  wire [0:0]\device_addr_q_reg[0] ;
  wire [6:0]\device_addr_q_reg[6] ;
  wire ep0_data_bit_q_reg_n_0;
  wire ep0_dir_in_q;
  wire ep0_dir_in_q_reg_n_0;
  wire ep0_dir_out_q;
  wire ep0_dir_out_q_reg_n_0;
  wire ep0_rx_setup_w_do;
  wire ep0_rx_valid_w_do;
  wire ep1_data_bit_q_reg_n_0;
  wire ep2_data_bit_q_reg_n_0;
  wire ep2_tx_data_accept_w_do;
  wire ep2_tx_data_last_w_do;
  wire [7:0]ep2_tx_data_w_do;
  wire ep3_data_bit_q_reg_n_0;
  wire [0:0]inport_accept_o;
  wire inport_valid_q_do;
  wire inport_valid_q_reg;
  wire next_state_r1;
  wire [2:0]out;
  wire outport_accept_i;
  wire [7:0]outport_data_o;
  wire outport_valid_o;
  wire \readAXIBRAM_q_reg[0] ;
  wire \readAXIBRAM_q_reg[0]_0 ;
  wire [6:0]reg_dev_addr_i_do;
  wire rst_i;
  wire rx_enable_q;
  wire rx_enable_q_reg_n_0;
  wire rx_last_w_do;
  wire rx_out_do;
  wire rx_out_q;
  wire rx_setup_q;
  wire rx_setup_q_reg_n_0;
  wire rx_space_q;
  wire rx_strb_w_do;
  wire [14:1]se0_cnt_q0;
  wire se0_cnt_q0_carry__0_n_0;
  wire se0_cnt_q0_carry__0_n_1;
  wire se0_cnt_q0_carry__0_n_2;
  wire se0_cnt_q0_carry__0_n_3;
  wire se0_cnt_q0_carry__1_n_0;
  wire se0_cnt_q0_carry__1_n_1;
  wire se0_cnt_q0_carry__1_n_2;
  wire se0_cnt_q0_carry__1_n_3;
  wire se0_cnt_q0_carry__2_n_3;
  wire se0_cnt_q0_carry_n_0;
  wire se0_cnt_q0_carry_n_1;
  wire se0_cnt_q0_carry_n_2;
  wire se0_cnt_q0_carry_n_3;
  wire \se0_cnt_q[0]_i_1_n_0 ;
  wire \se0_cnt_q[10]_i_1_n_0 ;
  wire \se0_cnt_q[11]_i_1_n_0 ;
  wire \se0_cnt_q[12]_i_1_n_0 ;
  wire \se0_cnt_q[13]_i_1_n_0 ;
  wire \se0_cnt_q[14]_i_1_n_0 ;
  wire \se0_cnt_q[14]_i_2_n_0 ;
  wire \se0_cnt_q[1]_i_1_n_0 ;
  wire \se0_cnt_q[2]_i_1_n_0 ;
  wire \se0_cnt_q[3]_i_1_n_0 ;
  wire \se0_cnt_q[4]_i_1_n_0 ;
  wire \se0_cnt_q[5]_i_1_n_0 ;
  wire \se0_cnt_q[6]_i_1_n_0 ;
  wire \se0_cnt_q[7]_i_1_n_0 ;
  wire \se0_cnt_q[8]_i_1_n_0 ;
  wire \se0_cnt_q[9]_i_1_n_0 ;
  wire \se0_cnt_q_reg_n_0_[0] ;
  wire \se0_cnt_q_reg_n_0_[10] ;
  wire \se0_cnt_q_reg_n_0_[11] ;
  wire \se0_cnt_q_reg_n_0_[12] ;
  wire \se0_cnt_q_reg_n_0_[13] ;
  wire \se0_cnt_q_reg_n_0_[1] ;
  wire \se0_cnt_q_reg_n_0_[2] ;
  wire \se0_cnt_q_reg_n_0_[3] ;
  wire \se0_cnt_q_reg_n_0_[4] ;
  wire \se0_cnt_q_reg_n_0_[5] ;
  wire \se0_cnt_q_reg_n_0_[6] ;
  wire \se0_cnt_q_reg_n_0_[7] ;
  wire \se0_cnt_q_reg_n_0_[8] ;
  wire \se0_cnt_q_reg_n_0_[9] ;
  wire setup_frame_q_do;
  wire setup_frame_q_reg;
  wire [0:0]\setup_packet_q_reg[0][0] ;
  wire \setup_packet_q_reg[0][5] ;
  wire \setup_packet_q_reg[0][5]_0 ;
  wire \setup_packet_q_reg[0][6] ;
  wire \setup_packet_q_reg[0][6]_0 ;
  wire \setup_packet_q_reg[0][6]_1 ;
  wire [1:0]\setup_packet_q_reg[0][7] ;
  wire \setup_packet_q_reg[0][7]_0 ;
  wire [0:0]\setup_packet_q_reg[1][0] ;
  wire \setup_packet_q_reg[1][0]_0 ;
  wire [2:0]\setup_packet_q_reg[1][2] ;
  wire \setup_packet_q_reg[1][3] ;
  wire \setup_packet_q_reg[1][7] ;
  wire [0:0]\setup_packet_q_reg[2][0] ;
  wire \setup_packet_q_reg[2][0]_0 ;
  wire \setup_packet_q_reg[2][0]_1 ;
  wire \setup_packet_q_reg[2][1] ;
  wire [6:0]\setup_packet_q_reg[2][6] ;
  wire \setup_packet_q_reg[2][7] ;
  wire [0:0]\setup_packet_q_reg[3][0] ;
  wire \setup_packet_q_reg[3][0]_0 ;
  wire \setup_packet_q_reg[3][1] ;
  wire [1:0]\setup_packet_q_reg[3][1]_0 ;
  wire \setup_packet_q_reg[3][1]_1 ;
  wire [0:0]\setup_packet_q_reg[4][0] ;
  wire [0:0]\setup_packet_q_reg[5][0] ;
  wire [7:0]\setup_packet_q_reg[5][7] ;
  wire [0:0]\setup_packet_q_reg[6][0] ;
  wire [0:0]\setup_packet_q_reg[7][0] ;
  wire setup_resp_valid_delay_q_reg;
  wire setup_resp_valid_delay_q_reg_0;
  wire setup_resp_valid_delay_q_reg_1;
  wire setup_resp_valid_delay_q_reg_2;
  wire \setup_valid_conter_q[11]_i_2_n_0 ;
  wire \setup_valid_conter_q[11]_i_3_n_0 ;
  wire \setup_valid_conter_q[11]_i_4_n_0 ;
  wire \setup_valid_conter_q[11]_i_5_n_0 ;
  wire \setup_valid_conter_q[15]_i_3_n_0 ;
  wire \setup_valid_conter_q[15]_i_4_n_0 ;
  wire \setup_valid_conter_q[15]_i_5_n_0 ;
  wire \setup_valid_conter_q[15]_i_6_n_0 ;
  wire \setup_valid_conter_q[3]_i_2_n_0 ;
  wire \setup_valid_conter_q[3]_i_3_n_0 ;
  wire \setup_valid_conter_q[3]_i_4_n_0 ;
  wire \setup_valid_conter_q[3]_i_5_n_0 ;
  wire \setup_valid_conter_q[3]_i_6_n_0 ;
  wire \setup_valid_conter_q[7]_i_2_n_0 ;
  wire \setup_valid_conter_q[7]_i_3_n_0 ;
  wire \setup_valid_conter_q[7]_i_4_n_0 ;
  wire \setup_valid_conter_q[7]_i_5_n_0 ;
  wire [15:0]setup_valid_conter_q_o;
  wire \setup_valid_conter_q_reg[0] ;
  wire [3:0]\setup_valid_conter_q_reg[11] ;
  wire \setup_valid_conter_q_reg[11]_i_1_n_0 ;
  wire \setup_valid_conter_q_reg[11]_i_1_n_1 ;
  wire \setup_valid_conter_q_reg[11]_i_1_n_2 ;
  wire \setup_valid_conter_q_reg[11]_i_1_n_3 ;
  wire [3:0]\setup_valid_conter_q_reg[15] ;
  wire \setup_valid_conter_q_reg[15]_i_2_n_1 ;
  wire \setup_valid_conter_q_reg[15]_i_2_n_2 ;
  wire \setup_valid_conter_q_reg[15]_i_2_n_3 ;
  wire \setup_valid_conter_q_reg[3]_i_1_n_0 ;
  wire \setup_valid_conter_q_reg[3]_i_1_n_1 ;
  wire \setup_valid_conter_q_reg[3]_i_1_n_2 ;
  wire \setup_valid_conter_q_reg[3]_i_1_n_3 ;
  wire [3:0]\setup_valid_conter_q_reg[7] ;
  wire \setup_valid_conter_q_reg[7]_i_1_n_0 ;
  wire \setup_valid_conter_q_reg[7]_i_1_n_1 ;
  wire \setup_valid_conter_q_reg[7]_i_1_n_2 ;
  wire \setup_valid_conter_q_reg[7]_i_1_n_3 ;
  wire setup_valid_q;
  wire setup_valid_q_reg;
  wire \setup_wr_idx_q_reg[0] ;
  wire \setup_wr_idx_q_reg[0]_0 ;
  wire \setup_wr_idx_q_reg[1] ;
  wire \setup_wr_idx_q_reg[1]_0 ;
  wire \setup_wr_idx_q_reg[2] ;
  wire \setup_wr_idx_q_reg[2]_0 ;
  wire [2:0]sie_tx_state_q_o;
  wire \state_q[0]_i_3_n_0 ;
  wire \state_q[0]_i_5_n_0 ;
  wire \state_q[1]_i_3_n_0 ;
  wire \state_q[1]_i_5_n_0 ;
  wire status_ready_q_reg;
  wire status_ready_q_reg_0;
  wire status_stage_w_do;
  wire [6:0]token_dev_w_do;
  wire \token_ep_w_do[0] ;
  wire \token_ep_w_do[1] ;
  wire \token_ep_w_do[2] ;
  wire \token_ep_w_do[3] ;
  wire token_valid_w_do;
  wire tx_valid_r;
  wire u_sie_rx_n_100;
  wire u_sie_rx_n_104;
  wire u_sie_rx_n_107;
  wire u_sie_rx_n_108;
  wire u_sie_rx_n_109;
  wire u_sie_rx_n_19;
  wire u_sie_rx_n_20;
  wire u_sie_rx_n_21;
  wire u_sie_rx_n_22;
  wire u_sie_rx_n_23;
  wire u_sie_rx_n_24;
  wire u_sie_rx_n_25;
  wire u_sie_rx_n_26;
  wire u_sie_rx_n_29;
  wire u_sie_rx_n_37;
  wire u_sie_rx_n_38;
  wire u_sie_rx_n_39;
  wire u_sie_rx_n_40;
  wire u_sie_rx_n_41;
  wire u_sie_rx_n_42;
  wire u_sie_rx_n_43;
  wire u_sie_rx_n_44;
  wire u_sie_rx_n_45;
  wire u_sie_rx_n_82;
  wire u_sie_rx_n_95;
  wire u_sie_rx_n_96;
  wire u_sie_rx_n_97;
  wire u_sie_rx_n_98;
  wire u_sie_rx_n_99;
  wire u_sie_tx_n_16;
  wire u_sie_tx_n_17;
  wire u_sie_tx_n_22;
  wire u_sie_tx_n_27;
  wire u_sie_tx_n_31;
  wire u_sie_tx_n_36;
  wire u_sie_tx_n_38;
  wire u_sie_tx_n_39;
  wire u_sie_tx_n_40;
  wire u_sie_tx_n_41;
  wire u_sie_tx_n_42;
  wire u_sie_tx_n_43;
  wire u_sie_tx_n_44;
  wire u_sie_tx_n_45;
  wire [18:0]usb_rst_time_q0;
  wire \usb_rst_time_q[19]_i_3_n_0 ;
  wire [0:0]\usb_rst_time_q_reg[0] ;
  wire [0:0]\usb_rst_time_q_reg[0]_0 ;
  wire \usb_rst_time_q_reg[17] ;
  wire \usb_rst_time_q_reg[18] ;
  wire \usb_rst_time_q_reg[18]_0 ;
  wire [19:0]\usb_rst_time_q_reg[19] ;
  wire \usb_rst_time_q_reg[4] ;
  wire \usb_rst_time_q_reg[6] ;
  wire \usb_rst_time_q_reg[9] ;
  wire usb_rst_w;
  wire usbf_ep_data_bit_r_do;
  wire usbf_new_data_bit_r_do;
  wire usbf_new_data_bit_r_do_INST_0_i_2_n_0;
  wire \usbf_state_q_do[0] ;
  wire \usbf_state_q_do[1] ;
  wire \usbf_state_q_do[2] ;
  wire [6:0]usbf_tx_pid_q_do;
  wire usbf_tx_valid_q_do;
  wire [0:0]usbfrx_crc_byte_w_do;
  wire [0:0]usbfrx_data_ready_w_do;
  wire usbfrx_rx_active_w_do;
  wire [7:0]utmi_data_in_i;
  wire [2:0]utmi_data_out_o;
  wire \utmi_data_out_o[3] ;
  wire \utmi_data_out_o[4] ;
  wire \utmi_data_out_o[6] ;
  wire \utmi_data_out_o[7] ;
  wire utmi_data_out_o_2_sn_1;
  wire [1:0]utmi_linestate_i;
  wire utmi_rxactive_i;
  wire utmi_rxvalid_i;
  wire utmi_txready_i;
  wire utmi_txvalid_o;
  wire [3:1]NLW_se0_cnt_q0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_se0_cnt_q0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_setup_valid_conter_q_reg[15]_i_2_CO_UNCONNECTED ;

  assign axi_bram_addr_q_reg_0_sp_1 = axi_bram_addr_q_reg_0_sn_1;
  assign axi_bram_addr_q_reg_1_sp_1 = axi_bram_addr_q_reg_1_sn_1;
  assign utmi_data_out_o_2_sp_1 = utmi_data_out_o_2_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFF5554555455)) 
    \FSM_sequential_state_q[0]_i_1__1 
       (.I0(\FSM_sequential_state_q[0]_i_2__1_n_0 ),
        .I1(out[1]),
        .I2(\usb_rst_time_q_reg[6] ),
        .I3(out[0]),
        .I4(\usb_rst_time_q_reg[18] ),
        .I5(out[2]),
        .O(\FSM_sequential_state_q_reg[1] [0]));
  LUT6 #(
    .INIT(64'hFFCFCCCCFDFDFDFD)) 
    \FSM_sequential_state_q[0]_i_2__1 
       (.I0(CLK),
        .I1(out[2]),
        .I2(\usb_rst_time_q_reg[18]_0 ),
        .I3(\chirp_count_q_reg[5] ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\FSM_sequential_state_q[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3F00FFFF2200)) 
    \FSM_sequential_state_q[1]_i_1__1 
       (.I0(\usb_rst_time_q_reg[18] ),
        .I1(out[0]),
        .I2(\usb_rst_time_q_reg[17] ),
        .I3(out[2]),
        .I4(\FSM_sequential_state_q[1]_i_2__1_n_0 ),
        .I5(out[1]),
        .O(\FSM_sequential_state_q_reg[1] [1]));
  LUT6 #(
    .INIT(64'h1011000054550000)) 
    \FSM_sequential_state_q[1]_i_2__1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(\usb_rst_time_q_reg[18]_0 ),
        .I3(CLK),
        .I4(out[1]),
        .I5(\chirp_count_q_reg[5] ),
        .O(\FSM_sequential_state_q[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    addr_update_pending_q_i_2
       (.I0(addr_update_pending_q_i_3_n_0),
        .I1(addr_update_pending_q_i_4_n_0),
        .I2(current_addr_i_do[0]),
        .I3(reg_dev_addr_i_do[0]),
        .I4(current_addr_i_do[1]),
        .I5(reg_dev_addr_i_do[1]),
        .O(addr_update_pending_q_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    addr_update_pending_q_i_3
       (.I0(current_addr_i_do[4]),
        .I1(reg_dev_addr_i_do[4]),
        .I2(reg_dev_addr_i_do[2]),
        .I3(current_addr_i_do[2]),
        .I4(reg_dev_addr_i_do[6]),
        .I5(current_addr_i_do[6]),
        .O(addr_update_pending_q_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    addr_update_pending_q_i_4
       (.I0(current_addr_i_do[3]),
        .I1(reg_dev_addr_i_do[3]),
        .I2(current_addr_i_do[5]),
        .I3(reg_dev_addr_i_do[5]),
        .O(addr_update_pending_q_i_4_n_0));
  FDCE addr_update_pending_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_96),
        .Q(addr_update_pending_q_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \axi_bram_addr_q[1]_i_2 
       (.I0(CLK),
        .I1(rst_i),
        .O(\axi_bram_addr_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ctrl_send_idx_q[0]_i_1 
       (.I0(\ctrl_send_idx_q_reg[0]_0 ),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[10]_i_1 
       (.I0(ctrl_sending_r2[9]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[11]_i_1 
       (.I0(ctrl_sending_r2[10]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[12]_i_1 
       (.I0(ctrl_sending_r2[11]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[13]_i_1 
       (.I0(ctrl_sending_r2[12]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[14]_i_1 
       (.I0(ctrl_sending_r2[13]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[15]_i_2 
       (.I0(ctrl_sending_r2[14]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[1]_i_1 
       (.I0(ctrl_sending_r2[0]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[2]_i_1 
       (.I0(ctrl_sending_r2[1]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[3]_i_1 
       (.I0(ctrl_sending_r2[2]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[4]_i_1 
       (.I0(ctrl_sending_r2[3]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[5]_i_1 
       (.I0(ctrl_sending_r2[4]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[6]_i_1 
       (.I0(ctrl_sending_r2[5]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[7]_i_1 
       (.I0(ctrl_sending_r2[6]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[8]_i_1 
       (.I0(ctrl_sending_r2[7]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ctrl_send_idx_q[9]_i_1 
       (.I0(ctrl_sending_r2[8]),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_0),
        .O(\ctrl_send_idx_q_reg[15] [9]));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \ctrl_txdata_q[0]_i_1 
       (.I0(\desc_addr_q_reg[4]_3 ),
        .I1(\desc_addr_q_reg[7]_3 ),
        .I2(\setup_packet_q_reg[0][7]_0 ),
        .I3(axi_bram_r_data_i[0]),
        .I4(CLK),
        .O(\ctrl_txdata_q_reg[7] [0]));
  LUT6 #(
    .INIT(64'h00000000FF1B001B)) 
    \ctrl_txdata_q[1]_i_1 
       (.I0(\desc_addr_q_reg[0]_0 ),
        .I1(\desc_addr_q_reg[1]_1 ),
        .I2(\desc_addr_q_reg[2]_0 ),
        .I3(\setup_packet_q_reg[0][7]_0 ),
        .I4(axi_bram_r_data_i[1]),
        .I5(CLK),
        .O(\ctrl_txdata_q_reg[7] [1]));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \ctrl_txdata_q[2]_i_1 
       (.I0(\desc_addr_q_reg[4]_2 ),
        .I1(\desc_addr_q_reg[7]_2 ),
        .I2(\setup_packet_q_reg[0][7]_0 ),
        .I3(axi_bram_r_data_i[2]),
        .I4(CLK),
        .O(\ctrl_txdata_q_reg[7] [2]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ctrl_txdata_q[3]_i_1 
       (.I0(\desc_addr_q_reg[1]_0 ),
        .I1(\desc_addr_q_reg[7]_1 [0]),
        .I2(\desc_addr_q_reg[3]_0 ),
        .I3(\setup_packet_q_reg[0][7]_0 ),
        .I4(axi_bram_r_data_i[3]),
        .I5(CLK),
        .O(\ctrl_txdata_q_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ctrl_txdata_q[4]_i_1 
       (.I0(\desc_addr_q_reg[4]_1 ),
        .I1(\setup_packet_q_reg[0][7]_0 ),
        .I2(axi_bram_r_data_i[4]),
        .I3(CLK),
        .O(\ctrl_txdata_q_reg[7] [4]));
  LUT6 #(
    .INIT(64'h00000000FFAE00AE)) 
    \ctrl_txdata_q[5]_i_1 
       (.I0(\desc_addr_q_reg[1] ),
        .I1(\desc_addr_q_reg[7]_1 [0]),
        .I2(\desc_addr_q_reg[4]_0 ),
        .I3(\setup_packet_q_reg[0][7]_0 ),
        .I4(axi_bram_r_data_i[5]),
        .I5(CLK),
        .O(\ctrl_txdata_q_reg[7] [5]));
  LUT6 #(
    .INIT(64'h00000000FFE000E0)) 
    \ctrl_txdata_q[6]_i_1 
       (.I0(\desc_addr_q_reg[7]_1 [0]),
        .I1(\desc_addr_q_reg[6]_0 ),
        .I2(\desc_addr_q_reg[3] ),
        .I3(\setup_packet_q_reg[0][7]_0 ),
        .I4(axi_bram_r_data_i[6]),
        .I5(CLK),
        .O(\ctrl_txdata_q_reg[7] [6]));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \ctrl_txdata_q[7]_i_2 
       (.I0(\desc_addr_q_reg[4] ),
        .I1(\desc_addr_q_reg[6] ),
        .I2(\setup_packet_q_reg[0][7]_0 ),
        .I3(axi_bram_r_data_i[7]),
        .I4(CLK),
        .O(\ctrl_txdata_q_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h3202)) 
    ctrl_txstall_q_i_1
       (.I0(ctrl_txstall_q_reg_0),
        .I1(CLK),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(setup_resp_valid_delay_q_reg_1),
        .O(ctrl_txstall_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ctrl_txvalid_q_i_5
       (.I0(status_ready_q_reg_0),
        .I1(setup_resp_valid_delay_q_reg),
        .I2(CLK),
        .O(ctrl_txvalid_q_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ctrl_txvalid_q_i_8
       (.I0(CLK),
        .I1(setup_resp_valid_delay_q_reg),
        .O(ctrl_txvalid_q_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[0]_i_1 
       (.I0(reg_dev_addr_i_do[0]),
        .I1(usb_rst_w),
        .O(\current_addr_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[1]_i_1 
       (.I0(reg_dev_addr_i_do[1]),
        .I1(usb_rst_w),
        .O(\current_addr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[2]_i_1 
       (.I0(reg_dev_addr_i_do[2]),
        .I1(usb_rst_w),
        .O(\current_addr_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[3]_i_1 
       (.I0(reg_dev_addr_i_do[3]),
        .I1(usb_rst_w),
        .O(\current_addr_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[4]_i_1 
       (.I0(reg_dev_addr_i_do[4]),
        .I1(usb_rst_w),
        .O(\current_addr_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[5]_i_1 
       (.I0(reg_dev_addr_i_do[5]),
        .I1(usb_rst_w),
        .O(\current_addr_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_addr_q[6]_i_2 
       (.I0(reg_dev_addr_i_do[6]),
        .I1(usb_rst_w),
        .O(\current_addr_q[6]_i_2_n_0 ));
  FDCE \current_addr_q_reg[0] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[0]_i_1_n_0 ),
        .Q(current_addr_i_do[0]));
  FDCE \current_addr_q_reg[1] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[1]_i_1_n_0 ),
        .Q(current_addr_i_do[1]));
  FDCE \current_addr_q_reg[2] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[2]_i_1_n_0 ),
        .Q(current_addr_i_do[2]));
  FDCE \current_addr_q_reg[3] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[3]_i_1_n_0 ),
        .Q(current_addr_i_do[3]));
  FDCE \current_addr_q_reg[4] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[4]_i_1_n_0 ),
        .Q(current_addr_i_do[4]));
  FDCE \current_addr_q_reg[5] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[5]_i_1_n_0 ),
        .Q(current_addr_i_do[5]));
  FDCE \current_addr_q_reg[6] 
       (.C(clk_i),
        .CE(u_sie_rx_n_82),
        .CLR(rst_i),
        .D(\current_addr_q[6]_i_2_n_0 ),
        .Q(current_addr_i_do[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \desc_addr_q[0]_i_1 
       (.I0(\desc_addr_q[0]_i_2_n_0 ),
        .I1(\desc_addr_q_reg[7]_1 [0]),
        .I2(CLK),
        .I3(setup_resp_valid_delay_q_reg),
        .O(\desc_addr_q_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h0404040404000000)) 
    \desc_addr_q[0]_i_2 
       (.I0(CLK),
        .I1(setup_resp_valid_delay_q_reg),
        .I2(\setup_packet_q_reg[0][7] [0]),
        .I3(\setup_packet_q_reg[3][1]_1 ),
        .I4(\setup_packet_q_reg[1][3] ),
        .I5(\setup_packet_q_reg[0][6]_1 ),
        .O(\desc_addr_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F6666)) 
    \desc_addr_q[1]_i_1 
       (.I0(\desc_addr_q_reg[7]_1 [0]),
        .I1(\desc_addr_q_reg[7]_1 [1]),
        .I2(\setup_packet_q_reg[3][0]_0 ),
        .I3(\setup_packet_q_reg[0][7] [0]),
        .I4(setup_resp_valid_delay_q_reg),
        .I5(CLK),
        .O(\desc_addr_q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h6A00FFFF6A006A00)) 
    \desc_addr_q[2]_i_1 
       (.I0(\desc_addr_q_reg[7]_1 [2]),
        .I1(\desc_addr_q_reg[7]_1 [1]),
        .I2(\desc_addr_q_reg[7]_1 [0]),
        .I3(\desc_addr_q[6]_i_5_n_0 ),
        .I4(\setup_packet_q_reg[2][0]_0 ),
        .I5(\desc_addr_q[6]_i_7_n_0 ),
        .O(\desc_addr_q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h0101015501550101)) 
    \desc_addr_q[3]_i_1 
       (.I0(CLK),
        .I1(\setup_packet_q_reg[1][0]_0 ),
        .I2(\setup_packet_q_reg[2][1] ),
        .I3(setup_resp_valid_delay_q_reg),
        .I4(\desc_addr_q_reg[2] ),
        .I5(\desc_addr_q_reg[7]_1 [3]),
        .O(\desc_addr_q_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAA0000)) 
    \desc_addr_q[4]_i_1 
       (.I0(\desc_addr_q_reg[7]_1 [4]),
        .I1(\desc_addr_q_reg[7]_1 [3]),
        .I2(\desc_addr_q_reg[1]_2 ),
        .I3(\desc_addr_q_reg[7]_1 [0]),
        .I4(\desc_addr_q[6]_i_5_n_0 ),
        .I5(\desc_addr_q[4]_i_3_n_0 ),
        .O(\desc_addr_q_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'h0800080000000800)) 
    \desc_addr_q[4]_i_3 
       (.I0(\setup_packet_q_reg[1][3] ),
        .I1(setup_resp_valid_delay_q_reg),
        .I2(CLK),
        .I3(\setup_packet_q_reg[3][1]_0 [1]),
        .I4(\setup_packet_q_reg[3][1]_0 [0]),
        .I5(\setup_packet_q_reg[2][7] ),
        .O(\desc_addr_q[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00145514)) 
    \desc_addr_q[5]_i_1 
       (.I0(CLK),
        .I1(\desc_addr_q_reg[0] ),
        .I2(\desc_addr_q_reg[7]_1 [5]),
        .I3(setup_resp_valid_delay_q_reg),
        .I4(\setup_packet_q_reg[0][6] ),
        .O(\desc_addr_q_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'h6A00FFFF6A006A00)) 
    \desc_addr_q[6]_i_2 
       (.I0(\desc_addr_q_reg[7]_1 [6]),
        .I1(\desc_addr_q_reg[7]_1 [5]),
        .I2(\desc_addr_q_reg[0] ),
        .I3(\desc_addr_q[6]_i_5_n_0 ),
        .I4(\setup_packet_q_reg[2][0]_1 ),
        .I5(\desc_addr_q[6]_i_7_n_0 ),
        .O(\desc_addr_q_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \desc_addr_q[6]_i_5 
       (.I0(CLK),
        .I1(setup_resp_valid_delay_q_reg),
        .O(\desc_addr_q[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \desc_addr_q[6]_i_7 
       (.I0(\setup_packet_q_reg[3][1] ),
        .I1(setup_resp_valid_delay_q_reg),
        .I2(CLK),
        .I3(\setup_packet_q_reg[3][1]_0 [0]),
        .I4(\setup_packet_q_reg[1][2] [2]),
        .I5(\setup_packet_q_reg[2][7] ),
        .O(\desc_addr_q[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFFFE0E0E0E0E0)) 
    \desc_addr_q[7]_i_1 
       (.I0(\setup_packet_q_reg[0][6]_1 ),
        .I1(\setup_packet_q_reg[2][0]_1 ),
        .I2(\desc_addr_q[0]_i_2_n_0 ),
        .I3(\desc_addr_q_reg[3]_1 ),
        .I4(\desc_addr_q_reg[7]_1 [7]),
        .I5(\desc_addr_q[6]_i_5_n_0 ),
        .O(\desc_addr_q_reg[7]_0 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[0]_i_1 
       (.I0(\setup_packet_q_reg[2][6] [0]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[1]_i_1 
       (.I0(\setup_packet_q_reg[2][6] [1]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[2]_i_1 
       (.I0(\setup_packet_q_reg[2][6] [2]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[3]_i_1 
       (.I0(\setup_packet_q_reg[2][6] [3]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[4]_i_1 
       (.I0(\setup_packet_q_reg[2][6] [4]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[5]_i_1 
       (.I0(\setup_packet_q_reg[2][6] [5]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [5]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \device_addr_q[6]_i_1 
       (.I0(CLK),
        .I1(\setup_packet_q_reg[1][2] [0]),
        .I2(\setup_packet_q_reg[1][2] [2]),
        .I3(setup_resp_valid_delay_q_reg),
        .I4(\setup_packet_q_reg[1][2] [1]),
        .I5(\setup_packet_q_reg[1][7] ),
        .O(\device_addr_q_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_addr_q[6]_i_2 
       (.I0(\setup_packet_q_reg[2][6] [6]),
        .I1(CLK),
        .O(\device_addr_q_reg[6] [6]));
  FDCE ep0_data_bit_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_100),
        .Q(ep0_data_bit_q_reg_n_0));
  FDCE ep0_dir_in_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(ep0_dir_in_q),
        .Q(ep0_dir_in_q_reg_n_0));
  FDCE ep0_dir_out_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(ep0_dir_out_q),
        .Q(ep0_dir_out_q_reg_n_0));
  FDCE ep1_data_bit_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_99),
        .Q(ep1_data_bit_q_reg_n_0));
  FDCE ep2_data_bit_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_98),
        .Q(ep2_data_bit_q_reg_n_0));
  FDCE ep3_data_bit_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_97),
        .Q(ep3_data_bit_q_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \readAXIBRAM_q[0]_i_1 
       (.I0(\setup_packet_q_reg[0][7]_0 ),
        .I1(rst_i),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(CLK),
        .I4(\readAXIBRAM_q_reg[0]_0 ),
        .O(\readAXIBRAM_q_reg[0] ));
  FDCE rst_event_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(usb_rst_w),
        .Q(CLK));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rx_enable_q_i_1
       (.I0(u_sie_rx_n_29),
        .I1(\usbf_state_q_do[2] ),
        .I2(\usbf_state_q_do[1] ),
        .I3(\usbf_state_q_do[0] ),
        .O(rx_enable_q));
  FDCE rx_enable_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_enable_q),
        .Q(rx_enable_q_reg_n_0));
  FDCE rx_out_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_out_q),
        .Q(rx_out_do));
  FDCE rx_setup_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_setup_q),
        .Q(rx_setup_q_reg_n_0));
  FDCE rx_space_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_95),
        .Q(rx_space_q));
  CARRY4 se0_cnt_q0_carry
       (.CI(1'b0),
        .CO({se0_cnt_q0_carry_n_0,se0_cnt_q0_carry_n_1,se0_cnt_q0_carry_n_2,se0_cnt_q0_carry_n_3}),
        .CYINIT(\se0_cnt_q_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(se0_cnt_q0[4:1]),
        .S({\se0_cnt_q_reg_n_0_[4] ,\se0_cnt_q_reg_n_0_[3] ,\se0_cnt_q_reg_n_0_[2] ,\se0_cnt_q_reg_n_0_[1] }));
  CARRY4 se0_cnt_q0_carry__0
       (.CI(se0_cnt_q0_carry_n_0),
        .CO({se0_cnt_q0_carry__0_n_0,se0_cnt_q0_carry__0_n_1,se0_cnt_q0_carry__0_n_2,se0_cnt_q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(se0_cnt_q0[8:5]),
        .S({\se0_cnt_q_reg_n_0_[8] ,\se0_cnt_q_reg_n_0_[7] ,\se0_cnt_q_reg_n_0_[6] ,\se0_cnt_q_reg_n_0_[5] }));
  CARRY4 se0_cnt_q0_carry__1
       (.CI(se0_cnt_q0_carry__0_n_0),
        .CO({se0_cnt_q0_carry__1_n_0,se0_cnt_q0_carry__1_n_1,se0_cnt_q0_carry__1_n_2,se0_cnt_q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(se0_cnt_q0[12:9]),
        .S({\se0_cnt_q_reg_n_0_[12] ,\se0_cnt_q_reg_n_0_[11] ,\se0_cnt_q_reg_n_0_[10] ,\se0_cnt_q_reg_n_0_[9] }));
  CARRY4 se0_cnt_q0_carry__2
       (.CI(se0_cnt_q0_carry__1_n_0),
        .CO({NLW_se0_cnt_q0_carry__2_CO_UNCONNECTED[3:1],se0_cnt_q0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_se0_cnt_q0_carry__2_O_UNCONNECTED[3:2],se0_cnt_q0[14:13]}),
        .S({1'b0,1'b0,usb_rst_w,\se0_cnt_q_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \se0_cnt_q[0]_i_1 
       (.I0(\se0_cnt_q_reg_n_0_[0] ),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[10]_i_1 
       (.I0(se0_cnt_q0[10]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[11]_i_1 
       (.I0(se0_cnt_q0[11]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[12]_i_1 
       (.I0(se0_cnt_q0[12]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[13]_i_1 
       (.I0(se0_cnt_q0[13]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \se0_cnt_q[14]_i_1 
       (.I0(utmi_linestate_i[1]),
        .I1(utmi_linestate_i[0]),
        .I2(usb_rst_w),
        .O(\se0_cnt_q[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[14]_i_2 
       (.I0(se0_cnt_q0[14]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[1]_i_1 
       (.I0(se0_cnt_q0[1]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[2]_i_1 
       (.I0(se0_cnt_q0[2]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[3]_i_1 
       (.I0(se0_cnt_q0[3]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[4]_i_1 
       (.I0(se0_cnt_q0[4]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[5]_i_1 
       (.I0(se0_cnt_q0[5]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[6]_i_1 
       (.I0(se0_cnt_q0[6]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[7]_i_1 
       (.I0(se0_cnt_q0[7]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[8]_i_1 
       (.I0(se0_cnt_q0[8]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \se0_cnt_q[9]_i_1 
       (.I0(se0_cnt_q0[9]),
        .I1(utmi_linestate_i[1]),
        .I2(utmi_linestate_i[0]),
        .O(\se0_cnt_q[9]_i_1_n_0 ));
  FDCE \se0_cnt_q_reg[0] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[0]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[0] ));
  FDCE \se0_cnt_q_reg[10] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[10]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[10] ));
  FDCE \se0_cnt_q_reg[11] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[11]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[11] ));
  FDCE \se0_cnt_q_reg[12] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[12]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[12] ));
  FDCE \se0_cnt_q_reg[13] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[13]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[13] ));
  FDCE \se0_cnt_q_reg[14] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[14]_i_2_n_0 ),
        .Q(usb_rst_w));
  FDCE \se0_cnt_q_reg[1] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[1]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[1] ));
  FDCE \se0_cnt_q_reg[2] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[2]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[2] ));
  FDCE \se0_cnt_q_reg[3] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[3]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[3] ));
  FDCE \se0_cnt_q_reg[4] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[4]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[4] ));
  FDCE \se0_cnt_q_reg[5] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[5]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[5] ));
  FDCE \se0_cnt_q_reg[6] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[6]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[6] ));
  FDCE \se0_cnt_q_reg[7] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[7]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[7] ));
  FDCE \se0_cnt_q_reg[8] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[8]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[8] ));
  FDCE \se0_cnt_q_reg[9] 
       (.C(clk_i),
        .CE(\se0_cnt_q[14]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\se0_cnt_q[9]_i_1_n_0 ),
        .Q(\se0_cnt_q_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[11]_i_2 
       (.I0(setup_valid_conter_q_o[11]),
        .I1(CLK),
        .O(\setup_valid_conter_q[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[11]_i_3 
       (.I0(setup_valid_conter_q_o[10]),
        .I1(CLK),
        .O(\setup_valid_conter_q[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[11]_i_4 
       (.I0(setup_valid_conter_q_o[9]),
        .I1(CLK),
        .O(\setup_valid_conter_q[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[11]_i_5 
       (.I0(setup_valid_conter_q_o[8]),
        .I1(CLK),
        .O(\setup_valid_conter_q[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \setup_valid_conter_q[15]_i_1 
       (.I0(setup_valid_q_reg),
        .I1(CLK),
        .O(\setup_valid_conter_q_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[15]_i_3 
       (.I0(setup_valid_conter_q_o[15]),
        .I1(CLK),
        .O(\setup_valid_conter_q[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[15]_i_4 
       (.I0(setup_valid_conter_q_o[14]),
        .I1(CLK),
        .O(\setup_valid_conter_q[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[15]_i_5 
       (.I0(setup_valid_conter_q_o[13]),
        .I1(CLK),
        .O(\setup_valid_conter_q[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[15]_i_6 
       (.I0(setup_valid_conter_q_o[12]),
        .I1(CLK),
        .O(\setup_valid_conter_q[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \setup_valid_conter_q[3]_i_2 
       (.I0(CLK),
        .O(\setup_valid_conter_q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[3]_i_3 
       (.I0(setup_valid_conter_q_o[3]),
        .I1(CLK),
        .O(\setup_valid_conter_q[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[3]_i_4 
       (.I0(setup_valid_conter_q_o[2]),
        .I1(CLK),
        .O(\setup_valid_conter_q[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[3]_i_5 
       (.I0(setup_valid_conter_q_o[1]),
        .I1(CLK),
        .O(\setup_valid_conter_q[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \setup_valid_conter_q[3]_i_6 
       (.I0(setup_valid_conter_q_o[0]),
        .I1(CLK),
        .O(\setup_valid_conter_q[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[7]_i_2 
       (.I0(setup_valid_conter_q_o[7]),
        .I1(CLK),
        .O(\setup_valid_conter_q[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[7]_i_3 
       (.I0(setup_valid_conter_q_o[6]),
        .I1(CLK),
        .O(\setup_valid_conter_q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[7]_i_4 
       (.I0(setup_valid_conter_q_o[5]),
        .I1(CLK),
        .O(\setup_valid_conter_q[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \setup_valid_conter_q[7]_i_5 
       (.I0(setup_valid_conter_q_o[4]),
        .I1(CLK),
        .O(\setup_valid_conter_q[7]_i_5_n_0 ));
  CARRY4 \setup_valid_conter_q_reg[11]_i_1 
       (.CI(\setup_valid_conter_q_reg[7]_i_1_n_0 ),
        .CO({\setup_valid_conter_q_reg[11]_i_1_n_0 ,\setup_valid_conter_q_reg[11]_i_1_n_1 ,\setup_valid_conter_q_reg[11]_i_1_n_2 ,\setup_valid_conter_q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\setup_valid_conter_q_reg[11] ),
        .S({\setup_valid_conter_q[11]_i_2_n_0 ,\setup_valid_conter_q[11]_i_3_n_0 ,\setup_valid_conter_q[11]_i_4_n_0 ,\setup_valid_conter_q[11]_i_5_n_0 }));
  CARRY4 \setup_valid_conter_q_reg[15]_i_2 
       (.CI(\setup_valid_conter_q_reg[11]_i_1_n_0 ),
        .CO({\NLW_setup_valid_conter_q_reg[15]_i_2_CO_UNCONNECTED [3],\setup_valid_conter_q_reg[15]_i_2_n_1 ,\setup_valid_conter_q_reg[15]_i_2_n_2 ,\setup_valid_conter_q_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\setup_valid_conter_q_reg[15] ),
        .S({\setup_valid_conter_q[15]_i_3_n_0 ,\setup_valid_conter_q[15]_i_4_n_0 ,\setup_valid_conter_q[15]_i_5_n_0 ,\setup_valid_conter_q[15]_i_6_n_0 }));
  CARRY4 \setup_valid_conter_q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\setup_valid_conter_q_reg[3]_i_1_n_0 ,\setup_valid_conter_q_reg[3]_i_1_n_1 ,\setup_valid_conter_q_reg[3]_i_1_n_2 ,\setup_valid_conter_q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\setup_valid_conter_q[3]_i_2_n_0 }),
        .O(O),
        .S({\setup_valid_conter_q[3]_i_3_n_0 ,\setup_valid_conter_q[3]_i_4_n_0 ,\setup_valid_conter_q[3]_i_5_n_0 ,\setup_valid_conter_q[3]_i_6_n_0 }));
  CARRY4 \setup_valid_conter_q_reg[7]_i_1 
       (.CI(\setup_valid_conter_q_reg[3]_i_1_n_0 ),
        .CO({\setup_valid_conter_q_reg[7]_i_1_n_0 ,\setup_valid_conter_q_reg[7]_i_1_n_1 ,\setup_valid_conter_q_reg[7]_i_1_n_2 ,\setup_valid_conter_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\setup_valid_conter_q_reg[7] ),
        .S({\setup_valid_conter_q[7]_i_2_n_0 ,\setup_valid_conter_q[7]_i_3_n_0 ,\setup_valid_conter_q[7]_i_4_n_0 ,\setup_valid_conter_q[7]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_q[0]_i_3 
       (.I0(\usbf_state_q_do[2] ),
        .I1(\usbf_state_q_do[1] ),
        .O(\state_q[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \state_q[0]_i_5 
       (.I0(\usbf_state_q_do[0] ),
        .I1(\usbf_state_q_do[1] ),
        .I2(\usbf_state_q_do[2] ),
        .O(\state_q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \state_q[1]_i_3 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(\usbf_state_q_do[2] ),
        .I4(\usbf_state_q_do[1] ),
        .I5(\usbf_state_q_do[0] ),
        .O(\state_q[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state_q[1]_i_5 
       (.I0(\usbf_state_q_do[1] ),
        .I1(\usbf_state_q_do[0] ),
        .O(\state_q[1]_i_5_n_0 ));
  FDCE \state_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_109),
        .Q(\usbf_state_q_do[0] ));
  FDCE \state_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_108),
        .Q(\usbf_state_q_do[1] ));
  FDCE \state_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(u_sie_rx_n_107),
        .Q(\usbf_state_q_do[2] ));
  FDCE \tx_pid_q_reg[0] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_26),
        .Q(usbf_tx_pid_q_do[0]));
  FDCE \tx_pid_q_reg[1] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_25),
        .Q(usbf_tx_pid_q_do[1]));
  FDCE \tx_pid_q_reg[2] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_24),
        .Q(usbf_tx_pid_q_do[2]));
  FDCE \tx_pid_q_reg[3] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_23),
        .Q(usbf_tx_pid_q_do[3]));
  FDCE \tx_pid_q_reg[4] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_22),
        .Q(usbf_tx_pid_q_do[4]));
  FDCE \tx_pid_q_reg[6] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_21),
        .Q(usbf_tx_pid_q_do[5]));
  FDCE \tx_pid_q_reg[7] 
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(u_sie_rx_n_20),
        .Q(usbf_tx_pid_q_do[6]));
  FDCE tx_valid_q_reg
       (.C(clk_i),
        .CE(next_state_r1),
        .CLR(rst_i),
        .D(tx_valid_r),
        .Q(usbf_tx_valid_q_do));
  brd_usb_cdc_core_0_0_usbf_sie_rx u_sie_rx
       (.CO(CO),
        .D({u_sie_rx_n_20,u_sie_rx_n_21,u_sie_rx_n_22,u_sie_rx_n_23,u_sie_rx_n_24,u_sie_rx_n_25,u_sie_rx_n_26}),
        .E(u_sie_rx_n_82),
        .\FSM_sequential_state_q_reg[0]_0 (u_sie_tx_n_27),
        .\FSM_sequential_state_q_reg[0]_1 (u_sie_tx_n_22),
        .\FSM_sequential_state_q_reg[0]_2 (\chirp_count_q_reg[3] ),
        .\FSM_sequential_state_q_reg[1]_0 (\state_q[1]_i_3_n_0 ),
        .\FSM_sequential_state_q_reg[2]_0 (u_sie_tx_n_36),
        .Q(usb_rst_w),
        .addr_update_pending_q_reg(u_sie_rx_n_96),
        .addr_update_pending_q_reg_0(addr_update_pending_q_reg_n_0),
        .axi_bram_addr_q_reg(axi_bram_addr_q_reg),
        .axi_bram_addr_q_reg_0_sp_1(axi_bram_addr_q_reg_0_sn_1),
        .axi_bram_addr_q_reg_1_sp_1(axi_bram_addr_q_reg_1_sn_1),
        .clk_i(clk_i),
        .\crc_sum_q_reg[0]_0 (u_sie_rx_n_19),
        .\crc_sum_q_reg[0]_1 (u_sie_rx_n_44),
        .\crc_sum_q_reg[10]_0 (u_sie_rx_n_38),
        .\crc_sum_q_reg[10]_1 (u_sie_rx_n_43),
        .\crc_sum_q_reg[10]_2 (u_sie_tx_n_38),
        .\crc_sum_q_reg[11]_0 (u_sie_tx_n_39),
        .\crc_sum_q_reg[12]_0 (u_sie_rx_n_39),
        .\crc_sum_q_reg[12]_1 (u_sie_tx_n_43),
        .\crc_sum_q_reg[13]_0 (u_sie_rx_n_40),
        .\crc_sum_q_reg[14]_0 (u_sie_tx_n_40),
        .\crc_sum_q_reg[15]_0 (u_sie_tx_n_44),
        .\crc_sum_q_reg[6]_0 (u_sie_rx_n_42),
        .\crc_sum_q_reg[8]_0 (u_sie_rx_n_37),
        .\crc_sum_q_reg[8]_1 (u_sie_rx_n_41),
        .\crc_sum_q_reg[8]_2 (u_sie_tx_n_42),
        .\crc_sum_q_reg[9]_0 (u_sie_tx_n_41),
        .ctrl_ack_r_do(ctrl_ack_r_do),
        .ctrl_send_accept_w_do(ctrl_send_accept_w_do),
        .\ctrl_send_idx_q_reg[0] (\ctrl_send_idx_q_reg[0] ),
        .ctrl_sending_q_reg(ctrl_sending_q_reg),
        .ctrl_sending_q_reg_0(ctrl_sending_q_reg_0),
        .ctrl_sending_r_do(ctrl_sending_r_do),
        .ctrl_txdata_q_do(ctrl_txdata_q_do),
        .\ctrl_txdata_q_reg[0] (\ctrl_txdata_q_reg[0] ),
        .ctrl_txlast_q_reg(ctrl_txlast_q_reg),
        .ctrl_txlast_q_reg_0(ctrl_txlast_q_reg_0),
        .ctrl_txstall_q_reg(ctrl_txstall_q_reg_0),
        .ctrl_txstrb_q_reg(ctrl_txstrb_q_reg),
        .ctrl_txstrb_q_reg_0(ctrl_txstrb_q_reg_0),
        .ctrl_txvalid_q_reg(ctrl_txvalid_q_reg),
        .ctrl_txvalid_q_reg_0(ctrl_txvalid_q_reg_0),
        .current_addr_i_do(current_addr_i_do),
        .\current_addr_q_reg[0] (addr_update_pending_q_i_2_n_0),
        .data_complete_o_do(data_complete_o_do),
        .data_pid_q4_out(data_pid_q4_out),
        .data_zlp_q_reg_0(u_sie_rx_n_45),
        .data_zlp_q_reg_1(u_sie_rx_n_104),
        .data_zlp_q_reg_2(u_sie_tx_n_16),
        .\desc_addr_q_reg[7] (\desc_addr_q_reg[7] ),
        .ep0_data_bit_q_reg(u_sie_rx_n_100),
        .ep0_data_bit_q_reg_0(ep0_data_bit_q_reg_n_0),
        .ep0_dir_in_q(ep0_dir_in_q),
        .ep0_dir_in_q_reg(ep0_dir_in_q_reg_n_0),
        .ep0_dir_out_q(ep0_dir_out_q),
        .ep0_dir_out_q_reg(ep0_dir_out_q_reg_n_0),
        .ep0_rx_setup_w_do(ep0_rx_setup_w_do),
        .ep0_rx_valid_w_do(ep0_rx_valid_w_do),
        .ep1_data_bit_q_reg(u_sie_rx_n_99),
        .ep1_data_bit_q_reg_0(ep1_data_bit_q_reg_n_0),
        .ep2_data_bit_q_reg(u_sie_rx_n_98),
        .ep2_data_bit_q_reg_0(ep2_data_bit_q_reg_n_0),
        .ep2_tx_data_accept_w_do(ep2_tx_data_accept_w_do),
        .ep2_tx_data_last_w_do(ep2_tx_data_last_w_do),
        .ep2_tx_data_w_do(ep2_tx_data_w_do),
        .ep3_data_bit_q_reg(u_sie_rx_n_97),
        .ep3_data_bit_q_reg_0(ep3_data_bit_q_reg_n_0),
        .inport_accept_o(inport_accept_o),
        .inport_valid_q_reg(inport_valid_q_reg),
        .out(out),
        .outport_accept_i(outport_accept_i),
        .outport_data_o(outport_data_o),
        .outport_valid_o(outport_valid_o),
        .rst_event_q_reg(CLK),
        .rst_event_q_reg_0(\axi_bram_addr_q[1]_i_2_n_0 ),
        .rst_event_q_reg_1(ctrl_txvalid_q_i_8_n_0),
        .rst_i(rst_i),
        .rx_enable_q_reg(rx_enable_q_reg_n_0),
        .rx_last_w_do(rx_last_w_do),
        .rx_out_q(rx_out_q),
        .rx_setup_q(rx_setup_q),
        .rx_setup_q_reg(rx_setup_q_reg_n_0),
        .rx_space_q(rx_space_q),
        .rx_space_q_reg(u_sie_rx_n_95),
        .rx_strb_w_do(rx_strb_w_do),
        .\se0_cnt_q_reg[14] (u_sie_tx_n_17),
        .setup_frame_q_do(setup_frame_q_do),
        .setup_frame_q_reg(setup_frame_q_reg),
        .\setup_packet_q_reg[0][0] (\setup_packet_q_reg[0][0] ),
        .\setup_packet_q_reg[0][5] (\setup_packet_q_reg[0][5] ),
        .\setup_packet_q_reg[0][5]_0 (\setup_packet_q_reg[0][5]_0 ),
        .\setup_packet_q_reg[0][6] (\setup_packet_q_reg[0][6]_0 ),
        .\setup_packet_q_reg[0][7] (\setup_packet_q_reg[0][7] [1]),
        .\setup_packet_q_reg[1][0] (\setup_packet_q_reg[1][0] ),
        .\setup_packet_q_reg[2][0] (\setup_packet_q_reg[2][0] ),
        .\setup_packet_q_reg[3][0] (\setup_packet_q_reg[3][0] ),
        .\setup_packet_q_reg[4][0] (\setup_packet_q_reg[4][0] ),
        .\setup_packet_q_reg[5][0] (\setup_packet_q_reg[5][0] ),
        .\setup_packet_q_reg[5][7] (\setup_packet_q_reg[5][7] ),
        .\setup_packet_q_reg[6][0] (\setup_packet_q_reg[6][0] ),
        .\setup_packet_q_reg[7][0] (\setup_packet_q_reg[7][0] ),
        .setup_resp_valid_delay_q_reg(setup_resp_valid_delay_q_reg),
        .setup_resp_valid_delay_q_reg_0(setup_resp_valid_delay_q_reg_0),
        .setup_resp_valid_delay_q_reg_1(setup_resp_valid_delay_q_reg_1),
        .setup_resp_valid_delay_q_reg_2(setup_resp_valid_delay_q_reg_2),
        .setup_valid_q(setup_valid_q),
        .\setup_wr_idx_q_reg[0] (\setup_wr_idx_q_reg[0] ),
        .\setup_wr_idx_q_reg[0]_0 (\setup_wr_idx_q_reg[0]_0 ),
        .\setup_wr_idx_q_reg[1] (\setup_wr_idx_q_reg[1] ),
        .\setup_wr_idx_q_reg[1]_0 (\setup_wr_idx_q_reg[1]_0 ),
        .\setup_wr_idx_q_reg[2] (\setup_wr_idx_q_reg[2] ),
        .\setup_wr_idx_q_reg[2]_0 (\setup_wr_idx_q_reg[2]_0 ),
        .\state_q_reg[0] (u_sie_rx_n_109),
        .\state_q_reg[0]_0 (\usbf_state_q_do[0] ),
        .\state_q_reg[0]_1 (\state_q[0]_i_5_n_0 ),
        .\state_q_reg[1] (u_sie_rx_n_108),
        .\state_q_reg[1]_0 (\usbf_state_q_do[1] ),
        .\state_q_reg[1]_1 (\state_q[1]_i_5_n_0 ),
        .\state_q_reg[2] (u_sie_rx_n_107),
        .\state_q_reg[2]_0 (u_sie_tx_n_31),
        .\state_q_reg[2]_1 (usbf_new_data_bit_r_do_INST_0_i_2_n_0),
        .\state_q_reg[2]_2 (\usbf_state_q_do[2] ),
        .\state_q_reg[2]_3 (\state_q[0]_i_3_n_0 ),
        .status_ready_q_reg(status_ready_q_reg),
        .status_ready_q_reg_0(ctrl_txvalid_q_i_5_n_0),
        .status_ready_q_reg_1(status_ready_q_reg_0),
        .status_stage_w_do(status_stage_w_do),
        .token_dev_w_do(token_dev_w_do),
        .\token_ep_q_reg[0]_0 (u_sie_rx_n_29),
        .\token_ep_w_do[0] (\token_ep_w_do[0] ),
        .\token_ep_w_do[1] (\token_ep_w_do[1] ),
        .\token_ep_w_do[2] (\token_ep_w_do[2] ),
        .\token_ep_w_do[3] (\token_ep_w_do[3] ),
        .token_valid_w_do(token_valid_w_do),
        .tx_valid_q_reg(usbf_tx_valid_q_do),
        .tx_valid_q_reg_0(u_sie_tx_n_45),
        .tx_valid_r(tx_valid_r),
        .usbf_ep_data_bit_r_do(usbf_ep_data_bit_r_do),
        .usbf_new_data_bit_r_do(usbf_new_data_bit_r_do),
        .usbfrx_crc_byte_w_do(usbfrx_crc_byte_w_do),
        .usbfrx_data_ready_w_do(usbfrx_data_ready_w_do),
        .\usbfrx_data_w_do[0] (D[0]),
        .\usbfrx_data_w_do[1] (D[1]),
        .\usbfrx_data_w_do[2] (D[2]),
        .\usbfrx_data_w_do[3] (D[3]),
        .\usbfrx_data_w_do[4] (D[4]),
        .\usbfrx_data_w_do[5] (D[5]),
        .\usbfrx_data_w_do[6] (D[6]),
        .\usbfrx_data_w_do[7] (D[7]),
        .usbfrx_rx_active_w_do(usbfrx_rx_active_w_do),
        .usbfrx_shift_en_w_do(E),
        .utmi_data_in_i(utmi_data_in_i),
        .utmi_rxactive_i(utmi_rxactive_i),
        .utmi_rxvalid_i(utmi_rxvalid_i));
  brd_usb_cdc_core_0_0_usbf_sie_tx u_sie_tx
       (.E(next_state_r1),
        .\FSM_sequential_state_q_reg[1]_0 (u_sie_tx_n_17),
        .\FSM_sequential_state_q_reg[2]_0 (u_sie_tx_n_16),
        .Q(Q),
        .\chirp_count_q_reg[3] (\chirp_count_q_reg[3] ),
        .clk_i(clk_i),
        .\crc_sum_q_reg[0]_0 (u_sie_tx_n_44),
        .\crc_sum_q_reg[10]_0 (u_sie_tx_n_39),
        .\crc_sum_q_reg[10]_1 (u_sie_tx_n_43),
        .\crc_sum_q_reg[13]_0 (u_sie_tx_n_40),
        .\crc_sum_q_reg[14]_0 (u_sie_tx_n_22),
        .\crc_sum_q_reg[6]_0 (u_sie_tx_n_42),
        .\crc_sum_q_reg[8]_0 (u_sie_tx_n_27),
        .\crc_sum_q_reg[8]_1 (u_sie_tx_n_38),
        .\crc_sum_q_reg[8]_2 (u_sie_tx_n_41),
        .data_pid_q4_out(data_pid_q4_out),
        .data_pid_q_reg_0(u_sie_tx_n_45),
        .data_zlp_q_reg_0(u_sie_rx_n_104),
        .ep2_tx_data_last_w_do(ep2_tx_data_last_w_do),
        .\inport_data_q_reg[0] (u_sie_rx_n_42),
        .\inport_data_q_reg[1] (u_sie_rx_n_41),
        .\inport_data_q_reg[2] (u_sie_rx_n_37),
        .\inport_data_q_reg[3] (u_sie_rx_n_38),
        .\inport_data_q_reg[4] (u_sie_rx_n_43),
        .\inport_data_q_reg[6] (u_sie_rx_n_40),
        .\inport_data_q_reg[7] (u_sie_rx_n_44),
        .inport_valid_q_do(inport_valid_q_do),
        .inport_valid_q_reg(u_sie_tx_n_36),
        .inport_valid_q_reg_0(u_sie_rx_n_19),
        .out(out),
        .rst_i(rst_i),
        .\se0_cnt_q_reg[14] (usb_rst_w),
        .sie_tx_state_q_o(sie_tx_state_q_o),
        .\state_q_reg[0] (u_sie_tx_n_31),
        .\state_q_reg[0]_0 (\usbf_state_q_do[0] ),
        .\state_q_reg[1] (\usbf_state_q_do[1] ),
        .\state_q_reg[2] (\usbf_state_q_do[2] ),
        .\token_ep_q_reg[1] (u_sie_rx_n_39),
        .\token_ep_q_reg[2] (u_sie_rx_n_45),
        .\token_ep_q_reg[2]_0 (\token_ep_w_do[2] ),
        .\token_ep_q_reg[3] (\token_ep_w_do[3] ),
        .tx_valid_q_reg(usbf_tx_valid_q_do),
        .usbf_tx_pid_q_do(usbf_tx_pid_q_do),
        .utmi_data_out_o(utmi_data_out_o),
        .\utmi_data_out_o[3] (\utmi_data_out_o[3] ),
        .\utmi_data_out_o[4] (\utmi_data_out_o[4] ),
        .\utmi_data_out_o[6] (\utmi_data_out_o[6] ),
        .\utmi_data_out_o[7] (\utmi_data_out_o[7] ),
        .utmi_data_out_o_2_sp_1(utmi_data_out_o_2_sn_1),
        .utmi_txready_i(utmi_txready_i),
        .utmi_txvalid_o(utmi_txvalid_o));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \usb_rst_time_q[0]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(\FSM_sequential_state_q_reg[1]_0 ),
        .I2(\usb_rst_time_q_reg[0]_0 ),
        .O(\usb_rst_time_q_reg[19] [0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[10]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[9]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [10]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[11]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[10]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[12]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[11]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [12]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[13]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[12]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[14]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[13]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [14]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[15]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[14]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [15]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[16]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[15]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [16]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[17]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[16]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [17]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[18]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[17]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [18]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \usb_rst_time_q[19]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(\FSM_sequential_state_q_reg[1]_0 ),
        .I2(\usb_rst_time_q_reg[9] ),
        .I3(\usb_rst_time_q_reg[4] ),
        .O(\usb_rst_time_q_reg[0] ));
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[19]_i_2 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[18]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [19]));
  LUT5 #(
    .INIT(32'h0FFFFFDD)) 
    \usb_rst_time_q[19]_i_3 
       (.I0(CLK),
        .I1(\usb_rst_time_q_reg[18]_0 ),
        .I2(\usb_rst_time_q_reg[17] ),
        .I3(out[2]),
        .I4(out[0]),
        .O(\usb_rst_time_q[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[1]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[0]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[2]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[1]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[3]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[2]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[4]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[3]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[5]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[4]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[6]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[5]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[7]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[6]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[8]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[7]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \usb_rst_time_q[9]_i_1 
       (.I0(\usb_rst_time_q[19]_i_3_n_0 ),
        .I1(usb_rst_time_q0[8]),
        .I2(\FSM_sequential_state_q_reg[1]_0 ),
        .O(\usb_rst_time_q_reg[19] [9]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    usbf_new_data_bit_r_do_INST_0_i_2
       (.I0(\usbf_state_q_do[2] ),
        .I1(\usbf_state_q_do[0] ),
        .O(usbf_new_data_bit_r_do_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "usbf_sie_rx" *) 
module brd_usb_cdc_core_0_0_usbf_sie_rx
   (usbfrx_shift_en_w_do,
    \usbfrx_data_w_do[7] ,
    \usbfrx_data_w_do[6] ,
    \usbfrx_data_w_do[5] ,
    \usbfrx_data_w_do[4] ,
    \usbfrx_data_w_do[3] ,
    \usbfrx_data_w_do[2] ,
    \usbfrx_data_w_do[1] ,
    \usbfrx_data_w_do[0] ,
    usbfrx_rx_active_w_do,
    token_valid_w_do,
    data_complete_o_do,
    rx_strb_w_do,
    ep2_tx_data_accept_w_do,
    \token_ep_w_do[0] ,
    \token_ep_w_do[1] ,
    \token_ep_w_do[3] ,
    \token_ep_w_do[2] ,
    usbf_ep_data_bit_r_do,
    \crc_sum_q_reg[0]_0 ,
    D,
    \desc_addr_q_reg[7] ,
    ctrl_sending_q_reg,
    \token_ep_q_reg[0]_0 ,
    usbfrx_crc_byte_w_do,
    \setup_wr_idx_q_reg[2] ,
    ep0_rx_setup_w_do,
    \setup_wr_idx_q_reg[1] ,
    \setup_wr_idx_q_reg[0] ,
    axi_bram_addr_q_reg_1_sp_1,
    axi_bram_addr_q_reg_0_sp_1,
    \crc_sum_q_reg[8]_0 ,
    \crc_sum_q_reg[10]_0 ,
    \crc_sum_q_reg[12]_0 ,
    \crc_sum_q_reg[13]_0 ,
    \crc_sum_q_reg[8]_1 ,
    \crc_sum_q_reg[6]_0 ,
    \crc_sum_q_reg[10]_1 ,
    \crc_sum_q_reg[0]_1 ,
    data_zlp_q_reg_0,
    inport_accept_o,
    usbf_new_data_bit_r_do,
    status_stage_w_do,
    ep0_rx_valid_w_do,
    \setup_packet_q_reg[0][0] ,
    \setup_packet_q_reg[1][0] ,
    \setup_packet_q_reg[6][0] ,
    \setup_packet_q_reg[7][0] ,
    \setup_packet_q_reg[2][0] ,
    \setup_packet_q_reg[3][0] ,
    \setup_packet_q_reg[4][0] ,
    \setup_packet_q_reg[5][0] ,
    setup_valid_q,
    \setup_packet_q_reg[5][7] ,
    outport_data_o,
    ep0_dir_out_q,
    ep0_dir_in_q,
    rx_setup_q,
    ctrl_send_accept_w_do,
    \ctrl_send_idx_q_reg[0] ,
    \ctrl_txdata_q_reg[0] ,
    ctrl_sending_r_do,
    E,
    outport_valid_o,
    usbfrx_data_ready_w_do,
    rx_out_q,
    token_dev_w_do,
    rx_last_w_do,
    tx_valid_r,
    rx_space_q_reg,
    addr_update_pending_q_reg,
    ep3_data_bit_q_reg,
    ep2_data_bit_q_reg,
    ep1_data_bit_q_reg,
    ep0_data_bit_q_reg,
    setup_frame_q_reg,
    status_ready_q_reg,
    ctrl_txvalid_q_reg,
    data_zlp_q_reg_1,
    ctrl_txstrb_q_reg,
    ctrl_txlast_q_reg,
    \state_q_reg[2] ,
    \state_q_reg[1] ,
    \state_q_reg[0] ,
    clk_i,
    rst_i,
    utmi_data_in_i,
    utmi_rxactive_i,
    \FSM_sequential_state_q_reg[2]_0 ,
    \state_q_reg[0]_0 ,
    \se0_cnt_q_reg[14] ,
    \state_q_reg[0]_1 ,
    inport_valid_q_reg,
    ctrl_txvalid_q_reg_0,
    ctrl_txstall_q_reg,
    outport_accept_i,
    setup_resp_valid_delay_q_reg,
    rst_event_q_reg,
    Q,
    out,
    \state_q_reg[1]_0 ,
    utmi_rxvalid_i,
    \setup_wr_idx_q_reg[0]_0 ,
    \setup_wr_idx_q_reg[1]_0 ,
    \setup_wr_idx_q_reg[2]_0 ,
    axi_bram_addr_q_reg,
    rst_event_q_reg_0,
    ep2_tx_data_w_do,
    ctrl_txdata_q_do,
    \FSM_sequential_state_q_reg[0]_0 ,
    \crc_sum_q_reg[10]_2 ,
    \crc_sum_q_reg[11]_0 ,
    \crc_sum_q_reg[14]_0 ,
    \crc_sum_q_reg[9]_0 ,
    \crc_sum_q_reg[8]_2 ,
    \crc_sum_q_reg[12]_1 ,
    \crc_sum_q_reg[15]_0 ,
    \state_q_reg[2]_0 ,
    \FSM_sequential_state_q_reg[0]_1 ,
    tx_valid_q_reg,
    ctrl_txstrb_q_reg_0,
    data_pid_q4_out,
    ep2_tx_data_last_w_do,
    ctrl_txlast_q_reg_0,
    rx_space_q,
    \state_q_reg[2]_1 ,
    ep2_data_bit_q_reg_0,
    ep3_data_bit_q_reg_0,
    \FSM_sequential_state_q_reg[1]_0 ,
    \FSM_sequential_state_q_reg[0]_2 ,
    \state_q_reg[1]_1 ,
    \state_q_reg[2]_2 ,
    ep1_data_bit_q_reg_0,
    ep0_data_bit_q_reg_0,
    ep0_dir_out_q_reg,
    rx_enable_q_reg,
    setup_frame_q_do,
    rx_setup_q_reg,
    ep0_dir_in_q_reg,
    status_ready_q_reg_0,
    \setup_packet_q_reg[0][5] ,
    \setup_packet_q_reg[0][5]_0 ,
    rst_event_q_reg_1,
    \setup_packet_q_reg[0][6] ,
    ctrl_sending_q_reg_0,
    status_ready_q_reg_1,
    setup_resp_valid_delay_q_reg_0,
    ctrl_ack_r_do,
    \setup_packet_q_reg[0][7] ,
    setup_resp_valid_delay_q_reg_1,
    CO,
    addr_update_pending_q_reg_0,
    current_addr_i_do,
    \current_addr_q_reg[0] ,
    tx_valid_q_reg_0,
    data_zlp_q_reg_2,
    setup_resp_valid_delay_q_reg_2,
    \state_q_reg[2]_3 );
  output usbfrx_shift_en_w_do;
  output \usbfrx_data_w_do[7] ;
  output \usbfrx_data_w_do[6] ;
  output \usbfrx_data_w_do[5] ;
  output \usbfrx_data_w_do[4] ;
  output \usbfrx_data_w_do[3] ;
  output \usbfrx_data_w_do[2] ;
  output \usbfrx_data_w_do[1] ;
  output \usbfrx_data_w_do[0] ;
  output usbfrx_rx_active_w_do;
  output token_valid_w_do;
  output data_complete_o_do;
  output rx_strb_w_do;
  output ep2_tx_data_accept_w_do;
  output \token_ep_w_do[0] ;
  output \token_ep_w_do[1] ;
  output \token_ep_w_do[3] ;
  output \token_ep_w_do[2] ;
  output usbf_ep_data_bit_r_do;
  output \crc_sum_q_reg[0]_0 ;
  output [6:0]D;
  output [0:0]\desc_addr_q_reg[7] ;
  output ctrl_sending_q_reg;
  output \token_ep_q_reg[0]_0 ;
  output [0:0]usbfrx_crc_byte_w_do;
  output \setup_wr_idx_q_reg[2] ;
  output ep0_rx_setup_w_do;
  output \setup_wr_idx_q_reg[1] ;
  output \setup_wr_idx_q_reg[0] ;
  output axi_bram_addr_q_reg_1_sp_1;
  output axi_bram_addr_q_reg_0_sp_1;
  output \crc_sum_q_reg[8]_0 ;
  output \crc_sum_q_reg[10]_0 ;
  output \crc_sum_q_reg[12]_0 ;
  output \crc_sum_q_reg[13]_0 ;
  output \crc_sum_q_reg[8]_1 ;
  output \crc_sum_q_reg[6]_0 ;
  output \crc_sum_q_reg[10]_1 ;
  output \crc_sum_q_reg[0]_1 ;
  output data_zlp_q_reg_0;
  output [0:0]inport_accept_o;
  output usbf_new_data_bit_r_do;
  output status_stage_w_do;
  output ep0_rx_valid_w_do;
  output [0:0]\setup_packet_q_reg[0][0] ;
  output [0:0]\setup_packet_q_reg[1][0] ;
  output [0:0]\setup_packet_q_reg[6][0] ;
  output [0:0]\setup_packet_q_reg[7][0] ;
  output [0:0]\setup_packet_q_reg[2][0] ;
  output [0:0]\setup_packet_q_reg[3][0] ;
  output [0:0]\setup_packet_q_reg[4][0] ;
  output [0:0]\setup_packet_q_reg[5][0] ;
  output setup_valid_q;
  output [7:0]\setup_packet_q_reg[5][7] ;
  output [7:0]outport_data_o;
  output ep0_dir_out_q;
  output ep0_dir_in_q;
  output rx_setup_q;
  output ctrl_send_accept_w_do;
  output [0:0]\ctrl_send_idx_q_reg[0] ;
  output [0:0]\ctrl_txdata_q_reg[0] ;
  output ctrl_sending_r_do;
  output [0:0]E;
  output outport_valid_o;
  output [0:0]usbfrx_data_ready_w_do;
  output rx_out_q;
  output [6:0]token_dev_w_do;
  output rx_last_w_do;
  output tx_valid_r;
  output rx_space_q_reg;
  output addr_update_pending_q_reg;
  output ep3_data_bit_q_reg;
  output ep2_data_bit_q_reg;
  output ep1_data_bit_q_reg;
  output ep0_data_bit_q_reg;
  output setup_frame_q_reg;
  output status_ready_q_reg;
  output ctrl_txvalid_q_reg;
  output data_zlp_q_reg_1;
  output ctrl_txstrb_q_reg;
  output ctrl_txlast_q_reg;
  output \state_q_reg[2] ;
  output \state_q_reg[1] ;
  output \state_q_reg[0] ;
  input clk_i;
  input rst_i;
  input [7:0]utmi_data_in_i;
  input utmi_rxactive_i;
  input \FSM_sequential_state_q_reg[2]_0 ;
  input \state_q_reg[0]_0 ;
  input \se0_cnt_q_reg[14] ;
  input \state_q_reg[0]_1 ;
  input inport_valid_q_reg;
  input ctrl_txvalid_q_reg_0;
  input ctrl_txstall_q_reg;
  input outport_accept_i;
  input setup_resp_valid_delay_q_reg;
  input rst_event_q_reg;
  input [0:0]Q;
  input [2:0]out;
  input \state_q_reg[1]_0 ;
  input utmi_rxvalid_i;
  input \setup_wr_idx_q_reg[0]_0 ;
  input \setup_wr_idx_q_reg[1]_0 ;
  input \setup_wr_idx_q_reg[2]_0 ;
  input [1:0]axi_bram_addr_q_reg;
  input rst_event_q_reg_0;
  input [7:0]ep2_tx_data_w_do;
  input [7:0]ctrl_txdata_q_do;
  input \FSM_sequential_state_q_reg[0]_0 ;
  input \crc_sum_q_reg[10]_2 ;
  input \crc_sum_q_reg[11]_0 ;
  input \crc_sum_q_reg[14]_0 ;
  input \crc_sum_q_reg[9]_0 ;
  input \crc_sum_q_reg[8]_2 ;
  input \crc_sum_q_reg[12]_1 ;
  input \crc_sum_q_reg[15]_0 ;
  input \state_q_reg[2]_0 ;
  input \FSM_sequential_state_q_reg[0]_1 ;
  input tx_valid_q_reg;
  input ctrl_txstrb_q_reg_0;
  input data_pid_q4_out;
  input ep2_tx_data_last_w_do;
  input ctrl_txlast_q_reg_0;
  input rx_space_q;
  input \state_q_reg[2]_1 ;
  input ep2_data_bit_q_reg_0;
  input ep3_data_bit_q_reg_0;
  input \FSM_sequential_state_q_reg[1]_0 ;
  input \FSM_sequential_state_q_reg[0]_2 ;
  input \state_q_reg[1]_1 ;
  input \state_q_reg[2]_2 ;
  input ep1_data_bit_q_reg_0;
  input ep0_data_bit_q_reg_0;
  input ep0_dir_out_q_reg;
  input rx_enable_q_reg;
  input setup_frame_q_do;
  input rx_setup_q_reg;
  input ep0_dir_in_q_reg;
  input status_ready_q_reg_0;
  input \setup_packet_q_reg[0][5] ;
  input \setup_packet_q_reg[0][5]_0 ;
  input rst_event_q_reg_1;
  input \setup_packet_q_reg[0][6] ;
  input ctrl_sending_q_reg_0;
  input status_ready_q_reg_1;
  input setup_resp_valid_delay_q_reg_0;
  input ctrl_ack_r_do;
  input [0:0]\setup_packet_q_reg[0][7] ;
  input setup_resp_valid_delay_q_reg_1;
  input [0:0]CO;
  input addr_update_pending_q_reg_0;
  input [6:0]current_addr_i_do;
  input \current_addr_q_reg[0] ;
  input tx_valid_q_reg_0;
  input data_zlp_q_reg_2;
  input setup_resp_valid_delay_q_reg_2;
  input \state_q_reg[2]_3 ;

  wire [0:0]CO;
  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_q[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_q[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state_q[0]_i_3_n_0 ;
  wire \FSM_sequential_state_q[0]_i_4__0_n_0 ;
  wire \FSM_sequential_state_q[0]_i_5_n_0 ;
  wire \FSM_sequential_state_q[1]_i_1_n_0 ;
  wire \FSM_sequential_state_q[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_q[1]_i_3__0_n_0 ;
  wire \FSM_sequential_state_q[1]_i_4__0_n_0 ;
  wire \FSM_sequential_state_q[1]_i_5__0_n_0 ;
  wire \FSM_sequential_state_q[1]_i_6_n_0 ;
  wire \FSM_sequential_state_q[1]_i_7_n_0 ;
  wire \FSM_sequential_state_q[1]_i_8_n_0 ;
  wire \FSM_sequential_state_q[2]_i_1_n_0 ;
  wire \FSM_sequential_state_q[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_q[2]_i_3__0_n_0 ;
  wire \FSM_sequential_state_q[2]_i_4_n_0 ;
  wire \FSM_sequential_state_q[2]_i_5__0_n_0 ;
  wire \FSM_sequential_state_q[2]_i_6_n_0 ;
  wire \FSM_sequential_state_q[3]_i_1_n_0 ;
  wire \FSM_sequential_state_q[3]_i_2_n_0 ;
  wire \FSM_sequential_state_q_reg[0]_0 ;
  wire \FSM_sequential_state_q_reg[0]_1 ;
  wire \FSM_sequential_state_q_reg[0]_2 ;
  wire \FSM_sequential_state_q_reg[1]_0 ;
  wire \FSM_sequential_state_q_reg[2]_0 ;
  wire [0:0]Q;
  wire addr_update_pending_q_reg;
  wire addr_update_pending_q_reg_0;
  wire [1:0]axi_bram_addr_q_reg;
  wire axi_bram_addr_q_reg_0_sn_1;
  wire axi_bram_addr_q_reg_1_sn_1;
  wire clk_i;
  wire crc_err_q0;
  wire crc_err_q_i_1_n_0;
  wire crc_err_q_i_2_n_0;
  wire crc_err_q_i_3_n_0;
  wire crc_err_q_i_4_n_0;
  wire crc_err_q_i_5_n_0;
  wire crc_err_q_reg_n_0;
  wire crc_sum_q;
  wire \crc_sum_q[0]_i_1__0_n_0 ;
  wire \crc_sum_q[10]_i_1__0_n_0 ;
  wire \crc_sum_q[11]_i_1__0_n_0 ;
  wire \crc_sum_q[12]_i_1_n_0 ;
  wire \crc_sum_q[13]_i_1__0_n_0 ;
  wire \crc_sum_q[14]_i_1__0_n_0 ;
  wire \crc_sum_q[14]_i_2__0_n_0 ;
  wire \crc_sum_q[14]_i_3_n_0 ;
  wire \crc_sum_q[14]_i_4_n_0 ;
  wire \crc_sum_q[14]_i_5_n_0 ;
  wire \crc_sum_q[14]_i_6_n_0 ;
  wire \crc_sum_q[15]_i_2_n_0 ;
  wire \crc_sum_q[15]_i_3_n_0 ;
  wire \crc_sum_q[15]_i_4__0_n_0 ;
  wire \crc_sum_q[1]_i_1_n_0 ;
  wire \crc_sum_q[2]_i_1_n_0 ;
  wire \crc_sum_q[3]_i_1_n_0 ;
  wire \crc_sum_q[4]_i_1_n_0 ;
  wire \crc_sum_q[5]_i_1_n_0 ;
  wire \crc_sum_q[6]_i_1_n_0 ;
  wire \crc_sum_q[7]_i_1__0_n_0 ;
  wire \crc_sum_q[8]_i_1__0_n_0 ;
  wire \crc_sum_q[9]_i_1_n_0 ;
  wire \crc_sum_q_reg[0]_0 ;
  wire \crc_sum_q_reg[0]_1 ;
  wire \crc_sum_q_reg[10]_0 ;
  wire \crc_sum_q_reg[10]_1 ;
  wire \crc_sum_q_reg[10]_2 ;
  wire \crc_sum_q_reg[11]_0 ;
  wire \crc_sum_q_reg[12]_0 ;
  wire \crc_sum_q_reg[12]_1 ;
  wire \crc_sum_q_reg[13]_0 ;
  wire \crc_sum_q_reg[14]_0 ;
  wire \crc_sum_q_reg[15]_0 ;
  wire \crc_sum_q_reg[6]_0 ;
  wire \crc_sum_q_reg[8]_0 ;
  wire \crc_sum_q_reg[8]_1 ;
  wire \crc_sum_q_reg[8]_2 ;
  wire \crc_sum_q_reg[9]_0 ;
  wire \crc_sum_q_reg_n_0_[0] ;
  wire \crc_sum_q_reg_n_0_[10] ;
  wire \crc_sum_q_reg_n_0_[11] ;
  wire \crc_sum_q_reg_n_0_[12] ;
  wire \crc_sum_q_reg_n_0_[13] ;
  wire \crc_sum_q_reg_n_0_[14] ;
  wire \crc_sum_q_reg_n_0_[15] ;
  wire \crc_sum_q_reg_n_0_[1] ;
  wire \crc_sum_q_reg_n_0_[2] ;
  wire \crc_sum_q_reg_n_0_[3] ;
  wire \crc_sum_q_reg_n_0_[4] ;
  wire \crc_sum_q_reg_n_0_[5] ;
  wire \crc_sum_q_reg_n_0_[6] ;
  wire \crc_sum_q_reg_n_0_[7] ;
  wire \crc_sum_q_reg_n_0_[8] ;
  wire \crc_sum_q_reg_n_0_[9] ;
  wire ctrl_ack_r_do;
  wire ctrl_send_accept_w_do;
  wire [0:0]\ctrl_send_idx_q_reg[0] ;
  wire ctrl_sending_q_reg;
  wire ctrl_sending_q_reg_0;
  wire ctrl_sending_r_do;
  wire ctrl_sending_r_do_INST_0_i_1_n_0;
  wire ctrl_sending_r_do_INST_0_i_2_n_0;
  wire [7:0]ctrl_txdata_q_do;
  wire [0:0]\ctrl_txdata_q_reg[0] ;
  wire ctrl_txlast_q_reg;
  wire ctrl_txlast_q_reg_0;
  wire ctrl_txstall_q_reg;
  wire ctrl_txstrb_q_i_2_n_0;
  wire ctrl_txstrb_q_reg;
  wire ctrl_txstrb_q_reg_0;
  wire ctrl_txvalid_q_i_2_n_0;
  wire ctrl_txvalid_q_i_4_n_0;
  wire ctrl_txvalid_q_reg;
  wire ctrl_txvalid_q_reg_0;
  wire [6:0]current_addr_i_do;
  wire \current_addr_q[6]_i_3_n_0 ;
  wire \current_addr_q_reg[0] ;
  wire \data_buffer_q_reg[10]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[11]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[12]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[13]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[14]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[15]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[16]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[17]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[18]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[19]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[20]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[21]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[22]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[23]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ;
  wire \data_buffer_q_reg[8]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire \data_buffer_q_reg[9]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ;
  wire data_buffer_q_reg_c_0_n_0;
  wire data_buffer_q_reg_c_1_n_0;
  wire data_buffer_q_reg_c_n_0;
  wire data_buffer_q_reg_gate__0_n_0;
  wire data_buffer_q_reg_gate__1_n_0;
  wire data_buffer_q_reg_gate__2_n_0;
  wire data_buffer_q_reg_gate__3_n_0;
  wire data_buffer_q_reg_gate__4_n_0;
  wire data_buffer_q_reg_gate__5_n_0;
  wire data_buffer_q_reg_gate__6_n_0;
  wire data_buffer_q_reg_gate_n_0;
  wire data_complete_o_do;
  wire data_complete_q_i_2_n_0;
  wire data_complete_q_i_3_n_0;
  wire data_complete_q_i_4_n_0;
  wire data_complete_q_i_5_n_0;
  wire [1:1]data_crc_q;
  wire \data_crc_q[1]_i_1_n_0 ;
  wire data_pid_q4_out;
  wire \data_valid_q[0]_i_1_n_0 ;
  wire \data_valid_q_reg_n_0_[1] ;
  wire \data_valid_q_reg_n_0_[2] ;
  wire \data_valid_q_reg_n_0_[3] ;
  wire data_zlp_q;
  wire data_zlp_q0;
  wire data_zlp_q_i_1_n_0;
  wire data_zlp_q_i_2_n_0;
  wire data_zlp_q_i_3_n_0;
  wire data_zlp_q_i_4_n_0;
  wire data_zlp_q_i_5_n_0;
  wire data_zlp_q_reg_0;
  wire data_zlp_q_reg_1;
  wire data_zlp_q_reg_2;
  wire \desc_addr_q[6]_i_3_n_0 ;
  wire [0:0]\desc_addr_q_reg[7] ;
  wire ep0_data_bit_q_reg;
  wire ep0_data_bit_q_reg_0;
  wire ep0_dir_in_q;
  wire ep0_dir_in_q_i_2_n_0;
  wire ep0_dir_in_q_i_3_n_0;
  wire ep0_dir_in_q_reg;
  wire ep0_dir_out_q;
  wire ep0_dir_out_q_i_2_n_0;
  wire ep0_dir_out_q_reg;
  wire ep0_rx_setup_w_do;
  wire ep0_rx_valid_w_do;
  wire ep1_data_bit_q_reg;
  wire ep1_data_bit_q_reg_0;
  wire ep2_data_bit_q_reg;
  wire ep2_data_bit_q_reg_0;
  wire ep2_tx_data_accept_w_do;
  wire ep2_tx_data_last_w_do;
  wire [7:0]ep2_tx_data_w_do;
  wire ep3_data_bit_q_reg;
  wire ep3_data_bit_q_reg_0;
  wire handshake_valid_q1_out;
  wire handshake_valid_q_i_2_n_0;
  wire handshake_valid_q_i_3_n_0;
  wire [0:0]inport_accept_o;
  wire inport_valid_q_reg;
  wire input_ready_w;
  wire last_q;
  wire last_q_i_1_n_0;
  wire [2:0]out;
  wire outport_accept_i;
  wire [7:0]outport_data_o;
  wire outport_valid_o;
  wire rst_event_q_reg;
  wire rst_event_q_reg_0;
  wire rst_event_q_reg_1;
  wire rst_i;
  wire \rx_active_q_reg[1]_U0_u_core_u_sie_rx_rx_active_q_reg_c_3_n_0 ;
  wire \rx_active_q_reg[2]_srl2_U0_u_core_u_sie_rx_rx_active_q_reg_c_2_n_0 ;
  wire rx_active_q_reg_c_2_n_0;
  wire rx_active_q_reg_c_3_n_0;
  wire rx_active_q_reg_c_n_0;
  wire rx_active_q_reg_gate_n_0;
  wire rx_data_valid_w;
  wire rx_enable_q_reg;
  wire rx_handshake_w;
  wire rx_last_w_do;
  wire rx_out_q;
  wire rx_setup_q;
  wire rx_setup_q_reg;
  wire rx_space_q;
  wire rx_space_q_i_2_n_0;
  wire rx_space_q_reg;
  wire rx_strb_w_do;
  wire \se0_cnt_q_reg[14] ;
  wire setup_frame_q_do;
  wire setup_frame_q_reg;
  wire [0:0]\setup_packet_q_reg[0][0] ;
  wire \setup_packet_q_reg[0][5] ;
  wire \setup_packet_q_reg[0][5]_0 ;
  wire \setup_packet_q_reg[0][6] ;
  wire [0:0]\setup_packet_q_reg[0][7] ;
  wire [0:0]\setup_packet_q_reg[1][0] ;
  wire [0:0]\setup_packet_q_reg[2][0] ;
  wire [0:0]\setup_packet_q_reg[3][0] ;
  wire [0:0]\setup_packet_q_reg[4][0] ;
  wire [0:0]\setup_packet_q_reg[5][0] ;
  wire [7:0]\setup_packet_q_reg[5][7] ;
  wire [0:0]\setup_packet_q_reg[6][0] ;
  wire [0:0]\setup_packet_q_reg[7][0] ;
  wire setup_resp_valid_delay_q_reg;
  wire setup_resp_valid_delay_q_reg_0;
  wire setup_resp_valid_delay_q_reg_1;
  wire setup_resp_valid_delay_q_reg_2;
  wire setup_valid_q;
  wire setup_valid_q_i_2_n_0;
  wire \setup_wr_idx_q_reg[0] ;
  wire \setup_wr_idx_q_reg[0]_0 ;
  wire \setup_wr_idx_q_reg[1] ;
  wire \setup_wr_idx_q_reg[1]_0 ;
  wire \setup_wr_idx_q_reg[2] ;
  wire \setup_wr_idx_q_reg[2]_0 ;
  wire shift_en_w0;
  (* RTL_KEEP = "yes" *) wire [3:0]state_q;
  wire \state_q[0]_i_2_n_0 ;
  wire \state_q[0]_i_4_n_0 ;
  wire \state_q[1]_i_2_n_0 ;
  wire \state_q[1]_i_4_n_0 ;
  wire \state_q[1]_i_6_n_0 ;
  wire \state_q[1]_i_7_n_0 ;
  wire \state_q[2]_i_10_n_0 ;
  wire \state_q[2]_i_11_n_0 ;
  wire \state_q[2]_i_12_n_0 ;
  wire \state_q[2]_i_13_n_0 ;
  wire \state_q[2]_i_14_n_0 ;
  wire \state_q[2]_i_2_n_0 ;
  wire \state_q[2]_i_3_n_0 ;
  wire \state_q[2]_i_4_n_0 ;
  wire \state_q[2]_i_5_n_0 ;
  wire \state_q[2]_i_6_n_0 ;
  wire \state_q[2]_i_7_n_0 ;
  wire \state_q[2]_i_8_n_0 ;
  wire \state_q_reg[0] ;
  wire \state_q_reg[0]_0 ;
  wire \state_q_reg[0]_1 ;
  wire \state_q_reg[1] ;
  wire \state_q_reg[1]_0 ;
  wire \state_q_reg[1]_1 ;
  wire \state_q_reg[2] ;
  wire \state_q_reg[2]_0 ;
  wire \state_q_reg[2]_1 ;
  wire \state_q_reg[2]_2 ;
  wire \state_q_reg[2]_3 ;
  wire status_ready_q_i_2_n_0;
  wire status_ready_q_reg;
  wire status_ready_q_reg_0;
  wire status_ready_q_reg_1;
  wire status_stage_w_do;
  wire status_stage_w_do_INST_0_i_1_n_0;
  wire status_stage_w_do_INST_0_i_2_n_0;
  wire status_stage_w_do_INST_0_i_3_n_0;
  wire status_stage_w_do_INST_0_i_4_n_0;
  wire status_stage_w_do_INST_0_i_5_n_0;
  wire status_stage_w_do_INST_0_i_6_n_0;
  wire status_stage_w_do_INST_0_i_7_n_0;
  wire status_stage_w_do_INST_0_i_8_n_0;
  wire \token_dev_q[0]_i_1_n_0 ;
  wire \token_dev_q[1]_i_1_n_0 ;
  wire \token_dev_q[2]_i_1_n_0 ;
  wire \token_dev_q[3]_i_1_n_0 ;
  wire \token_dev_q[4]_i_1_n_0 ;
  wire \token_dev_q[5]_i_1_n_0 ;
  wire \token_dev_q[6]_i_1_n_0 ;
  wire \token_dev_q[6]_i_2_n_0 ;
  wire \token_dev_q[6]_i_4_n_0 ;
  wire [6:0]token_dev_w_do;
  wire \token_ep_q[0]_i_1_n_0 ;
  wire \token_ep_q[1]_i_1_n_0 ;
  wire \token_ep_q[2]_i_1_n_0 ;
  wire \token_ep_q[3]_i_1_n_0 ;
  wire \token_ep_q[3]_i_2_n_0 ;
  wire \token_ep_q_reg[0]_0 ;
  wire \token_ep_w_do[0] ;
  wire \token_ep_w_do[1] ;
  wire \token_ep_w_do[2] ;
  wire \token_ep_w_do[3] ;
  wire \token_pid_q[0]_i_1_n_0 ;
  wire \token_pid_q[1]_i_1_n_0 ;
  wire \token_pid_q[2]_i_1_n_0 ;
  wire \token_pid_q[3]_i_1_n_0 ;
  wire \token_pid_q[4]_i_1_n_0 ;
  wire \token_pid_q[5]_i_1_n_0 ;
  wire \token_pid_q[6]_i_1_n_0 ;
  wire \token_pid_q[7]_i_1_n_0 ;
  wire \token_pid_q[7]_i_2_n_0 ;
  wire \token_pid_q[7]_i_3_n_0 ;
  wire [7:0]token_pid_w;
  wire token_valid_q0;
  wire token_valid_q_i_2_n_0;
  wire token_valid_q_i_3_n_0;
  wire token_valid_q_i_4_n_0;
  wire token_valid_w_do;
  wire \tx_pid_q[0]_i_2_n_0 ;
  wire \tx_pid_q[0]_i_3_n_0 ;
  wire \tx_pid_q[3]_i_2_n_0 ;
  wire \tx_pid_q[3]_i_3_n_0 ;
  wire \tx_pid_q[3]_i_4_n_0 ;
  wire \tx_pid_q[3]_i_5_n_0 ;
  wire \tx_pid_q[4]_i_2_n_0 ;
  wire \tx_pid_q[4]_i_3_n_0 ;
  wire \tx_pid_q[7]_i_2_n_0 ;
  wire \tx_pid_q[7]_i_3_n_0 ;
  wire \tx_pid_q[7]_i_4_n_0 ;
  wire \tx_pid_q[7]_i_5_n_0 ;
  wire \tx_pid_q[7]_i_6_n_0 ;
  wire tx_valid_q_reg;
  wire tx_valid_q_reg_0;
  wire tx_valid_r;
  wire usbf_ep_data_bit_r_do;
  wire usbf_ep_data_bit_r_do_INST_0_i_10_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_1_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_2_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_3_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_4_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_5_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_6_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_7_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_8_n_0;
  wire usbf_ep_data_bit_r_do_INST_0_i_9_n_0;
  wire usbf_new_data_bit_r_do;
  wire usbf_new_data_bit_r_do_INST_0_i_10_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_11_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_12_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_13_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_14_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_15_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_1_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_3_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_4_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_5_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_6_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_7_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_8_n_0;
  wire usbf_new_data_bit_r_do_INST_0_i_9_n_0;
  wire [0:0]usbfrx_crc_byte_w_do;
  wire [0:0]usbfrx_data_ready_w_do;
  wire \usbfrx_data_w_do[0] ;
  wire \usbfrx_data_w_do[1] ;
  wire \usbfrx_data_w_do[2] ;
  wire \usbfrx_data_w_do[3] ;
  wire \usbfrx_data_w_do[4] ;
  wire \usbfrx_data_w_do[5] ;
  wire \usbfrx_data_w_do[6] ;
  wire \usbfrx_data_w_do[7] ;
  wire usbfrx_rx_active_w_do;
  wire usbfrx_shift_en_w_do;
  wire [7:0]utmi_data_in_i;
  wire utmi_rxactive_i;
  wire utmi_rxvalid_i;
  wire valid_q0;
  wire valid_q_i_2_n_0;

  assign axi_bram_addr_q_reg_0_sp_1 = axi_bram_addr_q_reg_0_sn_1;
  assign axi_bram_addr_q_reg_1_sp_1 = axi_bram_addr_q_reg_1_sn_1;
  LUT6 #(
    .INIT(64'h0E000E0E00000000)) 
    \FSM_sequential_state_q[0]_i_1__0 
       (.I0(\FSM_sequential_state_q[0]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_q[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state_q[0]_i_4__0_n_0 ),
        .I3(state_q[0]),
        .I4(state_q[3]),
        .I5(\token_ep_q_reg[0]_0 ),
        .O(\FSM_sequential_state_q[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00440064)) 
    \FSM_sequential_state_q[0]_i_2__0 
       (.I0(state_q[0]),
        .I1(usbfrx_data_ready_w_do),
        .I2(usbfrx_rx_active_w_do),
        .I3(state_q[1]),
        .I4(state_q[2]),
        .O(\FSM_sequential_state_q[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1100C0CC1100)) 
    \FSM_sequential_state_q[0]_i_3 
       (.I0(\FSM_sequential_state_q[0]_i_5_n_0 ),
        .I1(state_q[2]),
        .I2(state_q[1]),
        .I3(usbfrx_data_ready_w_do),
        .I4(state_q[0]),
        .I5(state_q[3]),
        .O(\FSM_sequential_state_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0045000000011101)) 
    \FSM_sequential_state_q[0]_i_4__0 
       (.I0(usbfrx_rx_active_w_do),
        .I1(state_q[1]),
        .I2(usbfrx_data_ready_w_do),
        .I3(state_q[3]),
        .I4(state_q[2]),
        .I5(state_q[0]),
        .O(\FSM_sequential_state_q[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00405A0000400000)) 
    \FSM_sequential_state_q[0]_i_5 
       (.I0(\usbfrx_data_w_do[4] ),
        .I1(\FSM_sequential_state_q[1]_i_7_n_0 ),
        .I2(\usbfrx_data_w_do[0] ),
        .I3(\usbfrx_data_w_do[1] ),
        .I4(\usbfrx_data_w_do[5] ),
        .I5(handshake_valid_q_i_2_n_0),
        .O(\FSM_sequential_state_q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBBB0000)) 
    \FSM_sequential_state_q[1]_i_1 
       (.I0(state_q[1]),
        .I1(usbfrx_rx_active_w_do),
        .I2(state_q[2]),
        .I3(usbfrx_data_ready_w_do),
        .I4(\FSM_sequential_state_q[1]_i_2__0_n_0 ),
        .I5(\FSM_sequential_state_q[1]_i_3__0_n_0 ),
        .O(\FSM_sequential_state_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7500306700000022)) 
    \FSM_sequential_state_q[1]_i_2__0 
       (.I0(state_q[3]),
        .I1(state_q[2]),
        .I2(usbfrx_data_ready_w_do),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .I5(\FSM_sequential_state_q[1]_i_4__0_n_0 ),
        .O(\FSM_sequential_state_q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002000300020000)) 
    \FSM_sequential_state_q[1]_i_3 
       (.I0(ep2_tx_data_last_w_do),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(ctrl_txlast_q_reg_0),
        .O(data_zlp_q_reg_0));
  LUT6 #(
    .INIT(64'hBABAAAFAFFFFFFFF)) 
    \FSM_sequential_state_q[1]_i_3__0 
       (.I0(\FSM_sequential_state_q[1]_i_5__0_n_0 ),
        .I1(state_q[2]),
        .I2(\FSM_sequential_state_q[1]_i_6_n_0 ),
        .I3(usbfrx_rx_active_w_do),
        .I4(usbfrx_data_ready_w_do),
        .I5(\token_ep_q_reg[0]_0 ),
        .O(\FSM_sequential_state_q[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDCDFFFFFFFFFF)) 
    \FSM_sequential_state_q[1]_i_4__0 
       (.I0(\FSM_sequential_state_q[1]_i_7_n_0 ),
        .I1(\FSM_sequential_state_q[1]_i_8_n_0 ),
        .I2(handshake_valid_q_i_2_n_0),
        .I3(\usbfrx_data_w_do[0] ),
        .I4(\usbfrx_data_w_do[4] ),
        .I5(valid_q_i_2_n_0),
        .O(\FSM_sequential_state_q[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02A0A2AA)) 
    \FSM_sequential_state_q[1]_i_5__0 
       (.I0(state_q[1]),
        .I1(usbfrx_crc_byte_w_do),
        .I2(state_q[0]),
        .I3(state_q[2]),
        .I4(usbfrx_data_ready_w_do),
        .I5(state_q[3]),
        .O(\FSM_sequential_state_q[1]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_q[1]_i_6 
       (.I0(state_q[0]),
        .I1(state_q[3]),
        .O(\FSM_sequential_state_q[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state_q[1]_i_7 
       (.I0(\usbfrx_data_w_do[6] ),
        .I1(\usbfrx_data_w_do[7] ),
        .I2(\usbfrx_data_w_do[2] ),
        .I3(\usbfrx_data_w_do[3] ),
        .O(\FSM_sequential_state_q[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_q[1]_i_8 
       (.I0(\usbfrx_data_w_do[1] ),
        .I1(\usbfrx_data_w_do[5] ),
        .O(\FSM_sequential_state_q[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000E0E0E0E0E000E)) 
    \FSM_sequential_state_q[2]_i_1 
       (.I0(\FSM_sequential_state_q[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_q[2]_i_3__0_n_0 ),
        .I2(\FSM_sequential_state_q[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state_q[2]_i_5__0_n_0 ),
        .I4(state_q[0]),
        .I5(state_q[1]),
        .O(\FSM_sequential_state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F100FF00FB00)) 
    \FSM_sequential_state_q[2]_i_2__0 
       (.I0(state_q[1]),
        .I1(usbfrx_data_ready_w_do),
        .I2(state_q[0]),
        .I3(state_q[2]),
        .I4(state_q[3]),
        .I5(usbfrx_crc_byte_w_do),
        .O(\FSM_sequential_state_q[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAA28AAAAAAAAAAA)) 
    \FSM_sequential_state_q[2]_i_3__0 
       (.I0(\token_pid_q[7]_i_3_n_0 ),
        .I1(\usbfrx_data_w_do[1] ),
        .I2(\usbfrx_data_w_do[5] ),
        .I3(\usbfrx_data_w_do[0] ),
        .I4(\usbfrx_data_w_do[4] ),
        .I5(\FSM_sequential_state_q[2]_i_6_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555D55)) 
    \FSM_sequential_state_q[2]_i_4 
       (.I0(\token_ep_q_reg[0]_0 ),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[0]),
        .I4(usbfrx_data_ready_w_do),
        .I5(usbfrx_rx_active_w_do),
        .O(\FSM_sequential_state_q[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_state_q[2]_i_5__0 
       (.I0(state_q[3]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(usbfrx_rx_active_w_do),
        .O(\FSM_sequential_state_q[2]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h06600040)) 
    \FSM_sequential_state_q[2]_i_6 
       (.I0(\usbfrx_data_w_do[3] ),
        .I1(\usbfrx_data_w_do[7] ),
        .I2(\usbfrx_data_w_do[2] ),
        .I3(\usbfrx_data_w_do[6] ),
        .I4(\usbfrx_data_w_do[1] ),
        .O(\FSM_sequential_state_q[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0080)) 
    \FSM_sequential_state_q[3]_i_1 
       (.I0(usbfrx_crc_byte_w_do),
        .I1(state_q[2]),
        .I2(state_q[1]),
        .I3(state_q[0]),
        .I4(state_q[3]),
        .I5(\FSM_sequential_state_q[3]_i_2_n_0 ),
        .O(\FSM_sequential_state_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000001C5FFFFFFFF)) 
    \FSM_sequential_state_q[3]_i_2 
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(state_q[3]),
        .I4(usbfrx_rx_active_w_do),
        .I5(\token_ep_q_reg[0]_0 ),
        .O(\FSM_sequential_state_q[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RX_SOF2:0000,STATE_RX_TOKEN_COMPLETE:0011,STATE_RX_TOKEN3:0100,STATE_RX_TOKEN2:0101,STATE_RX_IDLE:0010,STATE_RX_DATA_COMPLETE:1000,STATE_RX_DATA:0110,STATE_RX_IGNORED:0111,STATE_RX_SOF3:0001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\FSM_sequential_state_q[0]_i_1__0_n_0 ),
        .Q(state_q[0]));
  (* FSM_ENCODED_STATES = "STATE_RX_SOF2:0000,STATE_RX_TOKEN_COMPLETE:0011,STATE_RX_TOKEN3:0100,STATE_RX_TOKEN2:0101,STATE_RX_IDLE:0010,STATE_RX_DATA_COMPLETE:1000,STATE_RX_DATA:0110,STATE_RX_IGNORED:0111,STATE_RX_SOF3:0001" *) 
  (* KEEP = "yes" *) 
  FDPE \FSM_sequential_state_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state_q[1]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(state_q[1]));
  (* FSM_ENCODED_STATES = "STATE_RX_SOF2:0000,STATE_RX_TOKEN_COMPLETE:0011,STATE_RX_TOKEN3:0100,STATE_RX_TOKEN2:0101,STATE_RX_IDLE:0010,STATE_RX_DATA_COMPLETE:1000,STATE_RX_DATA:0110,STATE_RX_IGNORED:0111,STATE_RX_SOF3:0001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\FSM_sequential_state_q[2]_i_1_n_0 ),
        .Q(state_q[2]));
  (* FSM_ENCODED_STATES = "STATE_RX_SOF2:0000,STATE_RX_TOKEN_COMPLETE:0011,STATE_RX_TOKEN3:0100,STATE_RX_TOKEN2:0101,STATE_RX_IDLE:0010,STATE_RX_DATA_COMPLETE:1000,STATE_RX_DATA:0110,STATE_RX_IGNORED:0111,STATE_RX_SOF3:0001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\FSM_sequential_state_q[3]_i_1_n_0 ),
        .Q(state_q[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h32)) 
    addr_update_pending_q_i_1
       (.I0(\current_addr_q_reg[0] ),
        .I1(\current_addr_q[6]_i_3_n_0 ),
        .I2(addr_update_pending_q_reg_0),
        .O(addr_update_pending_q_reg));
  LUT6 #(
    .INIT(64'hFFFFFF0E00000001)) 
    \axi_bram_addr_q[0]_i_1 
       (.I0(\desc_addr_q[6]_i_3_n_0 ),
        .I1(ctrl_sending_r_do_INST_0_i_1_n_0),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(rst_i),
        .I4(rst_event_q_reg),
        .I5(axi_bram_addr_q_reg[0]),
        .O(axi_bram_addr_q_reg_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFF00FD00000002)) 
    \axi_bram_addr_q[1]_i_1 
       (.I0(axi_bram_addr_q_reg[0]),
        .I1(\desc_addr_q[6]_i_3_n_0 ),
        .I2(ctrl_sending_r_do_INST_0_i_1_n_0),
        .I3(setup_resp_valid_delay_q_reg),
        .I4(rst_event_q_reg_0),
        .I5(axi_bram_addr_q_reg[1]),
        .O(axi_bram_addr_q_reg_1_sn_1));
  LUT4 #(
    .INIT(16'h1310)) 
    crc_err_q_i_1
       (.I0(crc_err_q_i_2_n_0),
        .I1(\crc_sum_q[14]_i_2__0_n_0 ),
        .I2(crc_err_q0),
        .I3(crc_err_q_reg_n_0),
        .O(crc_err_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    crc_err_q_i_2
       (.I0(crc_err_q_i_3_n_0),
        .I1(\crc_sum_q_reg_n_0_[3] ),
        .I2(\crc_sum_q_reg_n_0_[4] ),
        .I3(\crc_sum_q_reg_n_0_[12] ),
        .I4(\crc_sum_q_reg_n_0_[8] ),
        .I5(crc_err_q_i_4_n_0),
        .O(crc_err_q_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    crc_err_q_i_3
       (.I0(\crc_sum_q_reg_n_0_[0] ),
        .I1(\crc_sum_q_reg_n_0_[1] ),
        .I2(\crc_sum_q_reg_n_0_[5] ),
        .I3(\crc_sum_q_reg_n_0_[6] ),
        .O(crc_err_q_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    crc_err_q_i_4
       (.I0(\crc_sum_q_reg_n_0_[14] ),
        .I1(\crc_sum_q_reg_n_0_[13] ),
        .I2(\crc_sum_q_reg_n_0_[9] ),
        .I3(\crc_sum_q_reg_n_0_[15] ),
        .I4(crc_err_q_i_5_n_0),
        .O(crc_err_q_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    crc_err_q_i_5
       (.I0(\crc_sum_q_reg_n_0_[11] ),
        .I1(\crc_sum_q_reg_n_0_[10] ),
        .I2(\crc_sum_q_reg_n_0_[2] ),
        .I3(\crc_sum_q_reg_n_0_[7] ),
        .O(crc_err_q_i_5_n_0));
  FDCE crc_err_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(crc_err_q_i_1_n_0),
        .Q(crc_err_q_reg_n_0));
  LUT6 #(
    .INIT(64'h0010FFFFFFFF0010)) 
    \crc_sum_q[0]_i_1__0 
       (.I0(state_q[2]),
        .I1(state_q[3]),
        .I2(state_q[1]),
        .I3(state_q[0]),
        .I4(\crc_sum_q[15]_i_3_n_0 ),
        .I5(\crc_sum_q_reg_n_0_[8] ),
        .O(\crc_sum_q[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[10]_i_1__0 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\usbfrx_data_w_do[3] ),
        .I2(\usbfrx_data_w_do[4] ),
        .I3(\crc_sum_q_reg_n_0_[4] ),
        .I4(\crc_sum_q_reg_n_0_[3] ),
        .O(\crc_sum_q[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[11]_i_1__0 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\usbfrx_data_w_do[4] ),
        .I2(\crc_sum_q_reg_n_0_[4] ),
        .I3(\usbfrx_data_w_do[5] ),
        .I4(\crc_sum_q_reg_n_0_[5] ),
        .O(\crc_sum_q[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[12]_i_1 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\usbfrx_data_w_do[6] ),
        .I2(\usbfrx_data_w_do[5] ),
        .I3(\crc_sum_q_reg_n_0_[6] ),
        .I4(\crc_sum_q_reg_n_0_[5] ),
        .O(\crc_sum_q[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[13]_i_1__0 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\usbfrx_data_w_do[6] ),
        .I2(\crc_sum_q_reg_n_0_[6] ),
        .I3(\usbfrx_data_w_do[7] ),
        .I4(\crc_sum_q_reg_n_0_[7] ),
        .O(\crc_sum_q[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_sum_q[14]_i_1__0 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\crc_sum_q[14]_i_3_n_0 ),
        .I2(\crc_sum_q[14]_i_4_n_0 ),
        .I3(\crc_sum_q[14]_i_5_n_0 ),
        .I4(\crc_sum_q_reg_n_0_[2] ),
        .I5(\crc_sum_q_reg_n_0_[0] ),
        .O(\crc_sum_q[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \crc_sum_q[14]_i_2__0 
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[3]),
        .I3(state_q[2]),
        .O(\crc_sum_q[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_sum_q[14]_i_3 
       (.I0(\usbfrx_data_w_do[6] ),
        .I1(\usbfrx_data_w_do[5] ),
        .I2(\usbfrx_data_w_do[2] ),
        .I3(\usbfrx_data_w_do[3] ),
        .I4(\crc_sum_q[14]_i_6_n_0 ),
        .I5(\usbfrx_data_w_do[1] ),
        .O(\crc_sum_q[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_sum_q[14]_i_4 
       (.I0(\crc_sum_q_reg_n_0_[1] ),
        .I1(\crc_sum_q_reg_n_0_[3] ),
        .I2(\crc_sum_q_reg_n_0_[4] ),
        .O(\crc_sum_q[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_sum_q[14]_i_5 
       (.I0(\crc_sum_q_reg_n_0_[6] ),
        .I1(\crc_sum_q_reg_n_0_[5] ),
        .O(\crc_sum_q[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_sum_q[14]_i_6 
       (.I0(\usbfrx_data_w_do[0] ),
        .I1(\usbfrx_data_w_do[4] ),
        .O(\crc_sum_q[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \crc_sum_q[15]_i_1 
       (.I0(usbfrx_data_ready_w_do),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .O(crc_sum_q));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \crc_sum_q[15]_i_2 
       (.I0(state_q[2]),
        .I1(state_q[3]),
        .I2(state_q[1]),
        .I3(state_q[0]),
        .I4(\crc_sum_q[15]_i_3_n_0 ),
        .O(\crc_sum_q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_sum_q[15]_i_3 
       (.I0(\crc_sum_q[15]_i_4__0_n_0 ),
        .I1(\crc_sum_q_reg_n_0_[7] ),
        .I2(\crc_sum_q_reg_n_0_[2] ),
        .I3(\crc_sum_q_reg_n_0_[0] ),
        .I4(\crc_sum_q[14]_i_3_n_0 ),
        .I5(\usbfrx_data_w_do[7] ),
        .O(\crc_sum_q[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_sum_q[15]_i_4__0 
       (.I0(\crc_sum_q_reg_n_0_[5] ),
        .I1(\crc_sum_q_reg_n_0_[6] ),
        .I2(\crc_sum_q_reg_n_0_[4] ),
        .I3(\crc_sum_q_reg_n_0_[3] ),
        .I4(\crc_sum_q_reg_n_0_[1] ),
        .O(\crc_sum_q[15]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \crc_sum_q[1]_i_1 
       (.I0(\crc_sum_q_reg_n_0_[9] ),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .O(\crc_sum_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \crc_sum_q[2]_i_1 
       (.I0(\crc_sum_q_reg_n_0_[10] ),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .O(\crc_sum_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \crc_sum_q[3]_i_1 
       (.I0(\crc_sum_q_reg_n_0_[11] ),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .O(\crc_sum_q[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \crc_sum_q[4]_i_1 
       (.I0(\crc_sum_q_reg_n_0_[12] ),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .O(\crc_sum_q[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \crc_sum_q[5]_i_1 
       (.I0(\crc_sum_q_reg_n_0_[13] ),
        .I1(state_q[2]),
        .I2(state_q[3]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .O(\crc_sum_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEBBE)) 
    \crc_sum_q[6]_i_1 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\usbfrx_data_w_do[0] ),
        .I2(\crc_sum_q_reg_n_0_[14] ),
        .I3(\crc_sum_q_reg_n_0_[0] ),
        .O(\crc_sum_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_sum_q[7]_i_1__0 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\crc_sum_q_reg_n_0_[15] ),
        .I2(\usbfrx_data_w_do[0] ),
        .I3(\usbfrx_data_w_do[1] ),
        .I4(\crc_sum_q_reg_n_0_[0] ),
        .I5(\crc_sum_q_reg_n_0_[1] ),
        .O(\crc_sum_q[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[8]_i_1__0 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\usbfrx_data_w_do[2] ),
        .I2(\crc_sum_q_reg_n_0_[2] ),
        .I3(\usbfrx_data_w_do[1] ),
        .I4(\crc_sum_q_reg_n_0_[1] ),
        .O(\crc_sum_q[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[9]_i_1 
       (.I0(\crc_sum_q[14]_i_2__0_n_0 ),
        .I1(\crc_sum_q_reg_n_0_[2] ),
        .I2(\crc_sum_q_reg_n_0_[3] ),
        .I3(\usbfrx_data_w_do[2] ),
        .I4(\usbfrx_data_w_do[3] ),
        .O(\crc_sum_q[9]_i_1_n_0 ));
  FDPE \crc_sum_q_reg[0] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[0]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[0] ));
  FDPE \crc_sum_q_reg[10] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[10]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[10] ));
  FDPE \crc_sum_q_reg[11] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[11]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[11] ));
  FDPE \crc_sum_q_reg[12] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[12]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[12] ));
  FDPE \crc_sum_q_reg[13] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[13]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[13] ));
  FDPE \crc_sum_q_reg[14] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[14]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[14] ));
  FDPE \crc_sum_q_reg[15] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[15]_i_2_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[15] ));
  FDPE \crc_sum_q_reg[1] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[1]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[1] ));
  FDPE \crc_sum_q_reg[2] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[2]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[2] ));
  FDPE \crc_sum_q_reg[3] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[3]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[3] ));
  FDPE \crc_sum_q_reg[4] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[4]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[4] ));
  FDPE \crc_sum_q_reg[5] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[5]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[5] ));
  FDPE \crc_sum_q_reg[6] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[6]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[6] ));
  FDPE \crc_sum_q_reg[7] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[7]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[7] ));
  FDPE \crc_sum_q_reg[8] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[8]_i_1__0_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[8] ));
  FDPE \crc_sum_q_reg[9] 
       (.C(clk_i),
        .CE(crc_sum_q),
        .D(\crc_sum_q[9]_i_1_n_0 ),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    ctrl_send_accept_w_do_INST_0
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[0] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[2] ),
        .I4(\FSM_sequential_state_q_reg[2]_0 ),
        .I5(ctrl_txvalid_q_reg_0),
        .O(ctrl_send_accept_w_do));
  LUT6 #(
    .INIT(64'hFFFFFFAEAAAAFFAE)) 
    \ctrl_send_idx_q[15]_i_1 
       (.I0(rst_event_q_reg),
        .I1(ctrl_sending_q_reg_0),
        .I2(\desc_addr_q[6]_i_3_n_0 ),
        .I3(status_ready_q_reg_1),
        .I4(setup_resp_valid_delay_q_reg),
        .I5(setup_resp_valid_delay_q_reg_0),
        .O(\ctrl_send_idx_q_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ctrl_sending_q_i_1
       (.I0(rst_event_q_reg),
        .I1(ctrl_sending_r_do_INST_0_i_1_n_0),
        .O(ctrl_sending_q_reg));
  LUT1 #(
    .INIT(2'h1)) 
    ctrl_sending_r_do_INST_0
       (.I0(ctrl_sending_r_do_INST_0_i_1_n_0),
        .O(ctrl_sending_r_do));
  LUT6 #(
    .INIT(64'h22222222002A2A2A)) 
    ctrl_sending_r_do_INST_0_i_1
       (.I0(ctrl_sending_r_do_INST_0_i_2_n_0),
        .I1(ctrl_sending_q_reg_0),
        .I2(ctrl_ack_r_do),
        .I3(\setup_packet_q_reg[0][7] ),
        .I4(setup_resp_valid_delay_q_reg),
        .I5(setup_resp_valid_delay_q_reg_1),
        .O(ctrl_sending_r_do_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    ctrl_sending_r_do_INST_0_i_2
       (.I0(\desc_addr_q[6]_i_3_n_0 ),
        .I1(CO),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(status_ready_q_reg_1),
        .I4(ctrl_sending_q_reg_0),
        .O(ctrl_sending_r_do_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \ctrl_txdata_q[7]_i_1 
       (.I0(rst_event_q_reg),
        .I1(ctrl_sending_q_reg_0),
        .I2(\desc_addr_q[6]_i_3_n_0 ),
        .I3(setup_resp_valid_delay_q_reg),
        .I4(status_ready_q_reg_1),
        .O(\ctrl_txdata_q_reg[0] ));
  LUT5 #(
    .INIT(32'h4F554055)) 
    ctrl_txlast_q_i_1
       (.I0(rst_event_q_reg),
        .I1(setup_resp_valid_delay_q_reg_2),
        .I2(\ctrl_txdata_q_reg[0] ),
        .I3(setup_resp_valid_delay_q_reg_0),
        .I4(ctrl_txlast_q_reg_0),
        .O(ctrl_txlast_q_reg));
  LUT6 #(
    .INIT(64'h00FF003000100030)) 
    ctrl_txstrb_q_i_1
       (.I0(status_ready_q_reg_1),
        .I1(setup_resp_valid_delay_q_reg),
        .I2(ctrl_txstrb_q_i_2_n_0),
        .I3(rst_event_q_reg),
        .I4(setup_resp_valid_delay_q_reg_0),
        .I5(ctrl_txstrb_q_reg_0),
        .O(ctrl_txstrb_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ctrl_txstrb_q_i_2
       (.I0(ctrl_sending_q_reg_0),
        .I1(\desc_addr_q[6]_i_3_n_0 ),
        .O(ctrl_txstrb_q_i_2_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    ctrl_txvalid_q_i_1
       (.I0(rst_event_q_reg),
        .I1(ctrl_txvalid_q_i_2_n_0),
        .I2(setup_resp_valid_delay_q_reg_0),
        .I3(ctrl_txvalid_q_i_4_n_0),
        .I4(ctrl_txvalid_q_reg_0),
        .O(ctrl_txvalid_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    ctrl_txvalid_q_i_2
       (.I0(status_ready_q_reg_1),
        .I1(setup_resp_valid_delay_q_reg),
        .I2(\desc_addr_q[6]_i_3_n_0 ),
        .I3(ctrl_sending_q_reg_0),
        .O(ctrl_txvalid_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hDDDD0D00DDDDDDDD)) 
    ctrl_txvalid_q_i_4
       (.I0(\desc_addr_q[6]_i_3_n_0 ),
        .I1(status_ready_q_reg_0),
        .I2(\setup_packet_q_reg[0][5] ),
        .I3(\setup_packet_q_reg[0][5]_0 ),
        .I4(rst_event_q_reg_1),
        .I5(\setup_packet_q_reg[0][6] ),
        .O(ctrl_txvalid_q_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_addr_q[6]_i_1 
       (.I0(\current_addr_q[6]_i_3_n_0 ),
        .I1(addr_update_pending_q_reg_0),
        .I2(Q),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \current_addr_q[6]_i_3 
       (.I0(Q),
        .I1(ctrl_txlast_q_reg_0),
        .I2(ctrl_txstrb_q_reg_0),
        .I3(ctrl_txvalid_q_reg_0),
        .I4(status_stage_w_do_INST_0_i_2_n_0),
        .I5(\FSM_sequential_state_q_reg[2]_0 ),
        .O(\current_addr_q[6]_i_3_n_0 ));
  FDCE \data_buffer_q_reg[0] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__6_n_0),
        .Q(\usbfrx_data_w_do[0] ));
  FDRE \data_buffer_q_reg[10]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[18]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[10]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[11]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[19]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[11]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[12]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[20]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[12]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[13]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[21]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[13]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[14]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[22]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[14]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[15]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[23]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[15]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[16]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[16]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[0]),
        .Q(\data_buffer_q_reg[16]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[17]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[17]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[1]),
        .Q(\data_buffer_q_reg[17]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[18]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[18]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[2]),
        .Q(\data_buffer_q_reg[18]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[19]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[19]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[3]),
        .Q(\data_buffer_q_reg[19]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  FDCE \data_buffer_q_reg[1] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__5_n_0),
        .Q(\usbfrx_data_w_do[1] ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[20]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[20]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[4]),
        .Q(\data_buffer_q_reg[20]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[21]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[21]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[5]),
        .Q(\data_buffer_q_reg[21]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[22]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[22]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[6]),
        .Q(\data_buffer_q_reg[22]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/data_buffer_q_reg[23]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 " *) 
  SRL16E \data_buffer_q_reg[23]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(usbfrx_shift_en_w_do),
        .CLK(clk_i),
        .D(utmi_data_in_i[7]),
        .Q(\data_buffer_q_reg[23]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ));
  FDCE \data_buffer_q_reg[2] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__4_n_0),
        .Q(\usbfrx_data_w_do[2] ));
  FDCE \data_buffer_q_reg[3] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__3_n_0),
        .Q(\usbfrx_data_w_do[3] ));
  FDCE \data_buffer_q_reg[4] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__2_n_0),
        .Q(\usbfrx_data_w_do[4] ));
  FDCE \data_buffer_q_reg[5] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__1_n_0),
        .Q(\usbfrx_data_w_do[5] ));
  FDCE \data_buffer_q_reg[6] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate__0_n_0),
        .Q(\usbfrx_data_w_do[6] ));
  FDCE \data_buffer_q_reg[7] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_gate_n_0),
        .Q(\usbfrx_data_w_do[7] ));
  FDRE \data_buffer_q_reg[8]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[16]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[8]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \data_buffer_q_reg[9]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .D(\data_buffer_q_reg[17]_srl2_U0_u_core_u_sie_rx_data_buffer_q_reg_c_0_n_0 ),
        .Q(\data_buffer_q_reg[9]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE data_buffer_q_reg_c
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(1'b1),
        .Q(data_buffer_q_reg_c_n_0));
  FDCE data_buffer_q_reg_c_0
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_c_n_0),
        .Q(data_buffer_q_reg_c_0_n_0));
  FDCE data_buffer_q_reg_c_1
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_buffer_q_reg_c_0_n_0),
        .Q(data_buffer_q_reg_c_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate
       (.I0(\data_buffer_q_reg[15]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__0
       (.I0(\data_buffer_q_reg[14]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__1
       (.I0(\data_buffer_q_reg[13]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__2
       (.I0(\data_buffer_q_reg[12]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__3
       (.I0(\data_buffer_q_reg[11]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__4
       (.I0(\data_buffer_q_reg[10]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__5
       (.I0(\data_buffer_q_reg[9]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_buffer_q_reg_gate__6
       (.I0(\data_buffer_q_reg[8]_U0_u_core_u_sie_rx_data_buffer_q_reg_c_1_n_0 ),
        .I1(data_buffer_q_reg_c_1_n_0),
        .O(data_buffer_q_reg_gate__6_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    data_complete_q_i_1
       (.I0(data_complete_q_i_2_n_0),
        .I1(state_q[3]),
        .I2(state_q[0]),
        .I3(state_q[1]),
        .I4(state_q[2]),
        .O(crc_err_q0));
  LUT6 #(
    .INIT(64'h4F4F4F4F4F4F4F44)) 
    data_complete_q_i_2
       (.I0(usbfrx_rx_active_w_do),
        .I1(state_q[3]),
        .I2(data_complete_q_i_3_n_0),
        .I3(data_complete_q_i_4_n_0),
        .I4(data_complete_q_i_5_n_0),
        .I5(state_q[2]),
        .O(data_complete_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00109998)) 
    data_complete_q_i_3
       (.I0(state_q[2]),
        .I1(state_q[1]),
        .I2(usbfrx_rx_active_w_do),
        .I3(usbfrx_data_ready_w_do),
        .I4(state_q[0]),
        .I5(state_q[3]),
        .O(data_complete_q_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFDFF9FFDFFF)) 
    data_complete_q_i_4
       (.I0(\usbfrx_data_w_do[1] ),
        .I1(\usbfrx_data_w_do[5] ),
        .I2(\usbfrx_data_w_do[6] ),
        .I3(\usbfrx_data_w_do[7] ),
        .I4(\usbfrx_data_w_do[2] ),
        .I5(\usbfrx_data_w_do[3] ),
        .O(data_complete_q_i_4_n_0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    data_complete_q_i_5
       (.I0(usbfrx_data_ready_w_do),
        .I1(state_q[0]),
        .I2(\usbfrx_data_w_do[4] ),
        .I3(\usbfrx_data_w_do[0] ),
        .O(data_complete_q_i_5_n_0));
  FDCE data_complete_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(crc_err_q0),
        .Q(data_complete_o_do));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_crc_q[1]_i_1 
       (.I0(utmi_rxactive_i),
        .O(\data_crc_q[1]_i_1_n_0 ));
  FDCE \data_crc_q_reg[0] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(data_crc_q),
        .Q(usbfrx_crc_byte_w_do));
  FDCE \data_crc_q_reg[1] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(\data_crc_q[1]_i_1_n_0 ),
        .Q(data_crc_q));
  FDCE \data_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[0] ),
        .Q(outport_data_o[0]));
  FDCE \data_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[1] ),
        .Q(outport_data_o[1]));
  FDCE \data_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[2] ),
        .Q(outport_data_o[2]));
  FDCE \data_q_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[3] ),
        .Q(outport_data_o[3]));
  FDCE \data_q_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[4] ),
        .Q(outport_data_o[4]));
  FDCE \data_q_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[5] ),
        .Q(outport_data_o[5]));
  FDCE \data_q_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[6] ),
        .Q(outport_data_o[6]));
  FDCE \data_q_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\usbfrx_data_w_do[7] ),
        .Q(outport_data_o[7]));
  LUT3 #(
    .INIT(8'hD0)) 
    \data_valid_q[0]_i_1 
       (.I0(utmi_rxactive_i),
        .I1(utmi_rxvalid_i),
        .I2(\data_valid_q_reg_n_0_[1] ),
        .O(\data_valid_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_valid_q[3]_i_1 
       (.I0(utmi_rxvalid_i),
        .I1(utmi_rxactive_i),
        .O(shift_en_w0));
  FDCE \data_valid_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\data_valid_q[0]_i_1_n_0 ),
        .Q(usbfrx_data_ready_w_do));
  FDCE \data_valid_q_reg[1] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(\data_valid_q_reg_n_0_[2] ),
        .Q(\data_valid_q_reg_n_0_[1] ));
  FDCE \data_valid_q_reg[2] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(\data_valid_q_reg_n_0_[3] ),
        .Q(\data_valid_q_reg_n_0_[2] ));
  FDCE \data_valid_q_reg[3] 
       (.C(clk_i),
        .CE(usbfrx_shift_en_w_do),
        .CLR(rst_i),
        .D(shift_en_w0),
        .Q(\data_valid_q_reg_n_0_[3] ));
  LUT3 #(
    .INIT(8'hDC)) 
    data_zlp_q_i_1
       (.I0(input_ready_w),
        .I1(data_zlp_q0),
        .I2(data_zlp_q),
        .O(data_zlp_q_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    data_zlp_q_i_1__0
       (.I0(data_zlp_q_reg_0),
        .I1(data_zlp_q_i_2_n_0),
        .I2(tx_valid_q_reg_0),
        .I3(data_zlp_q_reg_2),
        .O(data_zlp_q_reg_1));
  LUT6 #(
    .INIT(64'hAAEFAAEAFFFFFFFF)) 
    data_zlp_q_i_2
       (.I0(\crc_sum_q_reg[0]_0 ),
        .I1(inport_valid_q_reg),
        .I2(\token_ep_w_do[1] ),
        .I3(\token_ep_w_do[0] ),
        .I4(ctrl_txstrb_q_reg_0),
        .I5(data_pid_q4_out),
        .O(data_zlp_q_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000F1B10000)) 
    data_zlp_q_i_2__0
       (.I0(state_q[3]),
        .I1(data_zlp_q_i_3_n_0),
        .I2(usbfrx_rx_active_w_do),
        .I3(data_zlp_q_i_4_n_0),
        .I4(\crc_sum_q[14]_i_2__0_n_0 ),
        .I5(data_complete_q_i_2_n_0),
        .O(data_zlp_q0));
  LUT6 #(
    .INIT(64'hE000EEFFE0FFEEFF)) 
    data_zlp_q_i_3
       (.I0(data_complete_q_i_5_n_0),
        .I1(data_zlp_q_i_5_n_0),
        .I2(state_q[0]),
        .I3(state_q[1]),
        .I4(state_q[2]),
        .I5(usbfrx_data_ready_w_do),
        .O(data_zlp_q_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_zlp_q_i_4
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .O(data_zlp_q_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDDFFDDFFFFF)) 
    data_zlp_q_i_5
       (.I0(\usbfrx_data_w_do[1] ),
        .I1(\usbfrx_data_w_do[5] ),
        .I2(\usbfrx_data_w_do[6] ),
        .I3(\usbfrx_data_w_do[2] ),
        .I4(\usbfrx_data_w_do[7] ),
        .I5(\usbfrx_data_w_do[3] ),
        .O(data_zlp_q_i_5_n_0));
  FDCE data_zlp_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(data_zlp_q_i_1_n_0),
        .Q(data_zlp_q));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \desc_addr_q[6]_i_1 
       (.I0(ctrl_sending_r_do_INST_0_i_1_n_0),
        .I1(\desc_addr_q[6]_i_3_n_0 ),
        .I2(setup_resp_valid_delay_q_reg),
        .I3(rst_event_q_reg),
        .O(\desc_addr_q_reg[7] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \desc_addr_q[6]_i_3 
       (.I0(ctrl_txvalid_q_reg_0),
        .I1(\FSM_sequential_state_q_reg[2]_0 ),
        .I2(\token_ep_w_do[2] ),
        .I3(\token_ep_w_do[3] ),
        .I4(\token_ep_w_do[0] ),
        .I5(\token_ep_w_do[1] ),
        .O(\desc_addr_q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    ep0_data_bit_q_i_1
       (.I0(usbf_new_data_bit_r_do),
        .I1(Q),
        .I2(usbf_ep_data_bit_r_do_INST_0_i_9_n_0),
        .I3(\token_ep_w_do[3] ),
        .I4(\token_ep_w_do[2] ),
        .I5(ep0_data_bit_q_reg_0),
        .O(ep0_data_bit_q_reg));
  LUT5 #(
    .INIT(32'h000000FB)) 
    ep0_dir_in_q_i_1
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(Q),
        .I4(ep0_dir_in_q_i_2_n_0),
        .O(ep0_dir_in_q));
  LUT6 #(
    .INIT(64'hBBBBBABBBBBBBBBB)) 
    ep0_dir_in_q_i_2
       (.I0(status_stage_w_do_INST_0_i_3_n_0),
        .I1(ep0_dir_in_q_reg),
        .I2(token_pid_w[7]),
        .I3(token_pid_w[3]),
        .I4(status_stage_w_do_INST_0_i_5_n_0),
        .I5(ep0_dir_in_q_i_3_n_0),
        .O(ep0_dir_in_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    ep0_dir_in_q_i_3
       (.I0(status_stage_w_do_INST_0_i_2_n_0),
        .I1(\state_q_reg[1]_0 ),
        .I2(token_valid_w_do),
        .I3(\state_q_reg[2]_2 ),
        .I4(\state_q_reg[0]_0 ),
        .O(ep0_dir_in_q_i_3_n_0));
  LUT5 #(
    .INIT(32'h00FB0000)) 
    ep0_dir_out_q_i_1
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(Q),
        .I4(ep0_dir_out_q_i_2_n_0),
        .O(ep0_dir_out_q));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    ep0_dir_out_q_i_2
       (.I0(usbf_ep_data_bit_r_do_INST_0_i_9_n_0),
        .I1(\token_ep_w_do[3] ),
        .I2(\token_ep_w_do[2] ),
        .I3(status_stage_w_do_INST_0_i_1_n_0),
        .I4(ep0_dir_out_q_reg),
        .I5(status_stage_w_do_INST_0_i_3_n_0),
        .O(ep0_dir_out_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    ep0_rx_setup_w_do_INST_0
       (.I0(rx_setup_q_reg),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(\token_ep_w_do[3] ),
        .I4(\token_ep_w_do[2] ),
        .O(ep0_rx_setup_w_do));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ep0_rx_valid_w_do_INST_0
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[0] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[2] ),
        .I4(rx_enable_q_reg),
        .I5(rx_data_valid_w),
        .O(ep0_rx_valid_w_do));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    ep1_data_bit_q_i_1
       (.I0(usbf_new_data_bit_r_do),
        .I1(Q),
        .I2(\token_ep_w_do[1] ),
        .I3(\token_ep_w_do[0] ),
        .I4(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I5(ep1_data_bit_q_reg_0),
        .O(ep1_data_bit_q_reg));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    ep2_data_bit_q_i_1
       (.I0(usbf_new_data_bit_r_do),
        .I1(Q),
        .I2(usbf_ep_data_bit_r_do_INST_0_i_5_n_0),
        .I3(\token_ep_w_do[3] ),
        .I4(\token_ep_w_do[2] ),
        .I5(ep2_data_bit_q_reg_0),
        .O(ep2_data_bit_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    ep2_tx_data_accept_w_do_INST_0
       (.I0(\token_ep_w_do[0] ),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[2] ),
        .I4(\FSM_sequential_state_q_reg[2]_0 ),
        .O(ep2_tx_data_accept_w_do));
  LUT6 #(
    .INIT(64'h2333333320000000)) 
    ep3_data_bit_q_i_1
       (.I0(usbf_new_data_bit_r_do),
        .I1(Q),
        .I2(\token_ep_w_do[1] ),
        .I3(\token_ep_w_do[0] ),
        .I4(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I5(ep3_data_bit_q_reg_0),
        .O(ep3_data_bit_q_reg));
  LUT4 #(
    .INIT(16'h0800)) 
    handshake_valid_q_i_1
       (.I0(token_valid_q_i_2_n_0),
        .I1(handshake_valid_q_i_2_n_0),
        .I2(handshake_valid_q_i_3_n_0),
        .I3(\token_pid_q[7]_i_3_n_0 ),
        .O(handshake_valid_q1_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    handshake_valid_q_i_2
       (.I0(\usbfrx_data_w_do[3] ),
        .I1(\usbfrx_data_w_do[7] ),
        .I2(\usbfrx_data_w_do[2] ),
        .I3(\usbfrx_data_w_do[6] ),
        .O(handshake_valid_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    handshake_valid_q_i_3
       (.I0(\usbfrx_data_w_do[4] ),
        .I1(\usbfrx_data_w_do[0] ),
        .I2(\usbfrx_data_w_do[1] ),
        .I3(\usbfrx_data_w_do[5] ),
        .O(handshake_valid_q_i_3_n_0));
  FDCE handshake_valid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(handshake_valid_q1_out),
        .Q(rx_handshake_w));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    inport_accept_o_INST_0
       (.I0(\FSM_sequential_state_q_reg[2]_0 ),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[1] ),
        .I4(\token_ep_w_do[0] ),
        .I5(inport_valid_q_reg),
        .O(inport_accept_o));
  LUT5 #(
    .INIT(32'h10000000)) 
    last_q_i_1
       (.I0(state_q[3]),
        .I1(state_q[0]),
        .I2(state_q[1]),
        .I3(state_q[2]),
        .I4(usbfrx_crc_byte_w_do),
        .O(last_q_i_1_n_0));
  FDCE last_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(last_q_i_1_n_0),
        .Q(last_q));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    mask_q_i_1
       (.I0(state_q[3]),
        .I1(state_q[2]),
        .I2(state_q[1]),
        .I3(state_q[0]),
        .I4(usbfrx_data_ready_w_do),
        .I5(usbfrx_crc_byte_w_do),
        .O(input_ready_w));
  FDCE mask_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(input_ready_w),
        .Q(rx_strb_w_do));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    outport_valid_o_INST_0
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[3] ),
        .I2(\token_ep_w_do[2] ),
        .I3(rx_strb_w_do),
        .I4(rx_data_valid_w),
        .I5(rx_enable_q_reg),
        .O(outport_valid_o));
  FDCE \rx_active_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_active_q_reg_gate_n_0),
        .Q(usbfrx_rx_active_w_do));
  FDRE \rx_active_q_reg[1]_U0_u_core_u_sie_rx_rx_active_q_reg_c_3 
       (.C(clk_i),
        .CE(1'b1),
        .D(\rx_active_q_reg[2]_srl2_U0_u_core_u_sie_rx_rx_active_q_reg_c_2_n_0 ),
        .Q(\rx_active_q_reg[1]_U0_u_core_u_sie_rx_rx_active_q_reg_c_3_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\U0/u_core/u_sie_rx/rx_active_q_reg " *) 
  (* srl_name = "\U0/u_core/u_sie_rx/rx_active_q_reg[2]_srl2_U0_u_core_u_sie_rx_rx_active_q_reg_c_2 " *) 
  SRL16E \rx_active_q_reg[2]_srl2_U0_u_core_u_sie_rx_rx_active_q_reg_c_2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_i),
        .D(utmi_rxactive_i),
        .Q(\rx_active_q_reg[2]_srl2_U0_u_core_u_sie_rx_rx_active_q_reg_c_2_n_0 ));
  FDCE rx_active_q_reg_c
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(1'b1),
        .Q(rx_active_q_reg_c_n_0));
  FDCE rx_active_q_reg_c_2
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_active_q_reg_c_n_0),
        .Q(rx_active_q_reg_c_2_n_0));
  FDCE rx_active_q_reg_c_3
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(rx_active_q_reg_c_2_n_0),
        .Q(rx_active_q_reg_c_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_active_q_reg_gate
       (.I0(\rx_active_q_reg[1]_U0_u_core_u_sie_rx_rx_active_q_reg_c_3_n_0 ),
        .I1(rx_active_q_reg_c_3_n_0),
        .O(rx_active_q_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_last_w_do_INST_0
       (.I0(last_q),
        .I1(usbfrx_crc_byte_w_do),
        .O(rx_last_w_do));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    rx_out_q_i_1
       (.I0(\token_ep_q_reg[0]_0 ),
        .I1(status_stage_w_do_INST_0_i_8_n_0),
        .I2(token_pid_w[7]),
        .I3(token_pid_w[3]),
        .I4(status_stage_w_do_INST_0_i_5_n_0),
        .O(rx_out_q));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FB0000)) 
    rx_setup_q_i_1
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(Q),
        .I4(status_stage_w_do_INST_0_i_3_n_0),
        .O(rx_setup_q));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    rx_space_q_i_1
       (.I0(rx_space_q_i_2_n_0),
        .I1(\state_q_reg[1]_0 ),
        .I2(\state_q_reg[0]_0 ),
        .I3(\state_q_reg[2]_2 ),
        .I4(rx_space_q),
        .O(rx_space_q_reg));
  LUT5 #(
    .INIT(32'h01000101)) 
    rx_space_q_i_2
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[3] ),
        .I2(\token_ep_w_do[2] ),
        .I3(outport_accept_i),
        .I4(\token_ep_w_do[0] ),
        .O(rx_space_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hABFFAAAA)) 
    setup_frame_q_i_1
       (.I0(ep0_rx_setup_w_do),
        .I1(usbfrx_crc_byte_w_do),
        .I2(last_q),
        .I3(setup_valid_q_i_2_n_0),
        .I4(setup_frame_q_do),
        .O(setup_frame_q_reg));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][0]_i_1 
       (.I0(outport_data_o[0]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][1]_i_1 
       (.I0(outport_data_o[1]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][2]_i_1 
       (.I0(outport_data_o[2]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][3]_i_1 
       (.I0(outport_data_o[3]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][4]_i_1 
       (.I0(outport_data_o[4]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [4]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][5]_i_1 
       (.I0(outport_data_o[5]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [5]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][6]_i_1 
       (.I0(outport_data_o[6]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \setup_packet_q[0][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[1]_0 ),
        .I2(\setup_wr_idx_q_reg[2]_0 ),
        .I3(\setup_wr_idx_q_reg[0]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[0][0] ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \setup_packet_q[0][7]_i_2 
       (.I0(outport_data_o[7]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(rx_setup_q_reg),
        .O(\setup_packet_q_reg[5][7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \setup_packet_q[1][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[1]_0 ),
        .I2(\setup_wr_idx_q_reg[0]_0 ),
        .I3(\setup_wr_idx_q_reg[2]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \setup_packet_q[2][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[2]_0 ),
        .I2(\setup_wr_idx_q_reg[0]_0 ),
        .I3(\setup_wr_idx_q_reg[1]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[2][0] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \setup_packet_q[3][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[0]_0 ),
        .I2(\setup_wr_idx_q_reg[2]_0 ),
        .I3(\setup_wr_idx_q_reg[1]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \setup_packet_q[4][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[1]_0 ),
        .I2(\setup_wr_idx_q_reg[0]_0 ),
        .I3(\setup_wr_idx_q_reg[2]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[4][0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \setup_packet_q[5][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[1]_0 ),
        .I2(\setup_wr_idx_q_reg[2]_0 ),
        .I3(\setup_wr_idx_q_reg[0]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[5][0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \setup_packet_q[6][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[1]_0 ),
        .I2(\setup_wr_idx_q_reg[0]_0 ),
        .I3(\setup_wr_idx_q_reg[2]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[6][0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \setup_packet_q[7][7]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(\setup_wr_idx_q_reg[2]_0 ),
        .I2(\setup_wr_idx_q_reg[0]_0 ),
        .I3(\setup_wr_idx_q_reg[1]_0 ),
        .I4(setup_valid_q_i_2_n_0),
        .O(\setup_packet_q_reg[7][0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000E000)) 
    setup_valid_q_i_1
       (.I0(usbfrx_crc_byte_w_do),
        .I1(last_q),
        .I2(setup_valid_q_i_2_n_0),
        .I3(setup_frame_q_do),
        .I4(ep0_rx_setup_w_do),
        .O(setup_valid_q));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    setup_valid_q_i_2
       (.I0(rx_enable_q_reg),
        .I1(rx_data_valid_w),
        .I2(rx_strb_w_do),
        .I3(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I4(\token_ep_w_do[1] ),
        .I5(\token_ep_w_do[0] ),
        .O(setup_valid_q_i_2_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    \setup_wr_idx_q[0]_i_1 
       (.I0(ep0_rx_setup_w_do),
        .I1(setup_valid_q_i_2_n_0),
        .I2(\setup_wr_idx_q_reg[0]_0 ),
        .O(\setup_wr_idx_q_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1320)) 
    \setup_wr_idx_q[1]_i_1 
       (.I0(\setup_wr_idx_q_reg[0]_0 ),
        .I1(ep0_rx_setup_w_do),
        .I2(setup_valid_q_i_2_n_0),
        .I3(\setup_wr_idx_q_reg[1]_0 ),
        .O(\setup_wr_idx_q_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h070F0800)) 
    \setup_wr_idx_q[2]_i_1 
       (.I0(\setup_wr_idx_q_reg[0]_0 ),
        .I1(\setup_wr_idx_q_reg[1]_0 ),
        .I2(ep0_rx_setup_w_do),
        .I3(setup_valid_q_i_2_n_0),
        .I4(\setup_wr_idx_q_reg[2]_0 ),
        .O(\setup_wr_idx_q_reg[2] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAC8CCCC)) 
    \state_q[0]_i_1 
       (.I0(\state_q[0]_i_2_n_0 ),
        .I1(\state_q_reg[0]_0 ),
        .I2(\tx_pid_q[7]_i_2_n_0 ),
        .I3(\state_q[2]_i_4_n_0 ),
        .I4(\state_q_reg[2]_3 ),
        .I5(\state_q[2]_i_5_n_0 ),
        .O(\state_q_reg[0] ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \state_q[0]_i_2 
       (.I0(\se0_cnt_q_reg[14] ),
        .I1(\state_q[0]_i_4_n_0 ),
        .I2(usbf_new_data_bit_r_do_INST_0_i_11_n_0),
        .I3(usbf_ep_data_bit_r_do),
        .I4(usbf_new_data_bit_r_do_INST_0_i_7_n_0),
        .I5(\state_q_reg[0]_1 ),
        .O(\state_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8303830282028302)) 
    \state_q[0]_i_4 
       (.I0(\state_q_reg[2]_2 ),
        .I1(\state_q_reg[0]_0 ),
        .I2(\state_q_reg[1]_0 ),
        .I3(\FSM_sequential_state_q_reg[0]_2 ),
        .I4(token_valid_w_do),
        .I5(\tx_pid_q[0]_i_2_n_0 ),
        .O(\state_q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFF00A2)) 
    \state_q[1]_i_1 
       (.I0(\state_q[1]_i_2_n_0 ),
        .I1(\state_q[2]_i_3_n_0 ),
        .I2(\state_q[2]_i_4_n_0 ),
        .I3(\state_q_reg[2]_2 ),
        .I4(\state_q_reg[1]_0 ),
        .I5(\state_q[2]_i_5_n_0 ),
        .O(\state_q_reg[1] ));
  LUT6 #(
    .INIT(64'hBBBBAABABBBBBBBB)) 
    \state_q[1]_i_2 
       (.I0(\FSM_sequential_state_q_reg[1]_0 ),
        .I1(\state_q[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state_q_reg[0]_2 ),
        .I3(token_valid_w_do),
        .I4(\state_q_reg[1]_1 ),
        .I5(\state_q[1]_i_6_n_0 ),
        .O(\state_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2F2F2F2F2F2)) 
    \state_q[1]_i_4 
       (.I0(Q),
        .I1(\FSM_sequential_state_q_reg[0]_2 ),
        .I2(\state_q_reg[2]_2 ),
        .I3(\state_q_reg[0]_0 ),
        .I4(\state_q_reg[1]_0 ),
        .I5(crc_err_q_reg_n_0),
        .O(\state_q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDF555555DF555757)) 
    \state_q[1]_i_6 
       (.I0(token_valid_w_do),
        .I1(\state_q[1]_i_7_n_0 ),
        .I2(\tx_pid_q[3]_i_2_n_0 ),
        .I3(rx_space_q_i_2_n_0),
        .I4(\tx_pid_q[0]_i_2_n_0 ),
        .I5(\crc_sum_q_reg[0]_0 ),
        .O(\state_q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \state_q[1]_i_7 
       (.I0(status_stage_w_do_INST_0_i_5_n_0),
        .I1(token_pid_w[7]),
        .I2(token_pid_w[3]),
        .O(\state_q[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFF00FFA2)) 
    \state_q[2]_i_1 
       (.I0(\state_q[2]_i_2_n_0 ),
        .I1(\state_q[2]_i_3_n_0 ),
        .I2(\state_q[2]_i_4_n_0 ),
        .I3(\state_q_reg[2]_2 ),
        .I4(\state_q_reg[1]_0 ),
        .I5(\state_q[2]_i_5_n_0 ),
        .O(\state_q_reg[2] ));
  LUT5 #(
    .INIT(32'h00002022)) 
    \state_q[2]_i_10 
       (.I0(data_zlp_q_reg_0),
        .I1(\FSM_sequential_state_q_reg[2]_0 ),
        .I2(\FSM_sequential_state_q_reg[0]_1 ),
        .I3(tx_valid_q_reg),
        .I4(\crc_sum_q_reg[0]_0 ),
        .O(\state_q[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022E20000)) 
    \state_q[2]_i_11 
       (.I0(data_complete_o_do),
        .I1(\state_q_reg[0]_0 ),
        .I2(rx_data_valid_w),
        .I3(\state_q[2]_i_7_n_0 ),
        .I4(\state_q_reg[1]_0 ),
        .I5(\state_q_reg[2]_2 ),
        .O(\state_q[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFBBFFFBFFB)) 
    \state_q[2]_i_12 
       (.I0(usbf_new_data_bit_r_do_INST_0_i_13_n_0),
        .I1(token_valid_w_do),
        .I2(token_pid_w[4]),
        .I3(\state_q[2]_i_13_n_0 ),
        .I4(\state_q[2]_i_14_n_0 ),
        .I5(token_pid_w[0]),
        .O(\state_q[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_q[2]_i_13 
       (.I0(token_pid_w[7]),
        .I1(token_pid_w[6]),
        .O(\state_q[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_q[2]_i_14 
       (.I0(token_pid_w[2]),
        .I1(token_pid_w[3]),
        .O(\state_q[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9F009F1F90009010)) 
    \state_q[2]_i_2 
       (.I0(\state_q_reg[1]_0 ),
        .I1(\state_q_reg[0]_0 ),
        .I2(\state_q_reg[2]_2 ),
        .I3(\FSM_sequential_state_q_reg[0]_2 ),
        .I4(Q),
        .I5(\state_q[2]_i_6_n_0 ),
        .O(\state_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0455F755FFFFFFFF)) 
    \state_q[2]_i_3 
       (.I0(usbf_new_data_bit_r_do_INST_0_i_11_n_0),
        .I1(usbf_new_data_bit_r_do_INST_0_i_5_n_0),
        .I2(usbf_new_data_bit_r_do_INST_0_i_4_n_0),
        .I3(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I4(usbf_new_data_bit_r_do_INST_0_i_7_n_0),
        .I5(\state_q_reg[0]_0 ),
        .O(\state_q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FFFF0F00)) 
    \state_q[2]_i_4 
       (.I0(\state_q[2]_i_7_n_0 ),
        .I1(rx_data_valid_w),
        .I2(token_valid_w_do),
        .I3(\FSM_sequential_state_q_reg[0]_2 ),
        .I4(\state_q[2]_i_8_n_0 ),
        .I5(\state_q_reg[0]_0 ),
        .O(\state_q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5554)) 
    \state_q[2]_i_5 
       (.I0(\state_q_reg[2]_0 ),
        .I1(\state_q_reg[0]_0 ),
        .I2(\state_q_reg[1]_0 ),
        .I3(\state_q[2]_i_10_n_0 ),
        .I4(\state_q[2]_i_11_n_0 ),
        .I5(\se0_cnt_q_reg[14] ),
        .O(\state_q[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000003A00FF003A)) 
    \state_q[2]_i_6 
       (.I0(\FSM_sequential_state_q_reg[0]_2 ),
        .I1(\tx_pid_q[0]_i_2_n_0 ),
        .I2(token_valid_w_do),
        .I3(\state_q_reg[0]_0 ),
        .I4(\state_q_reg[1]_0 ),
        .I5(crc_err_q_reg_n_0),
        .O(\state_q[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_q[2]_i_7 
       (.I0(usbfrx_crc_byte_w_do),
        .I1(last_q),
        .O(\state_q[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000001014F4F0)) 
    \state_q[2]_i_8 
       (.I0(status_stage_w_do_INST_0_i_7_n_0),
        .I1(token_pid_w[6]),
        .I2(token_pid_w[2]),
        .I3(token_pid_w[7]),
        .I4(token_pid_w[3]),
        .I5(\state_q[2]_i_12_n_0 ),
        .O(\state_q[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5350)) 
    status_ready_q_i_1
       (.I0(rx_setup_q_reg),
        .I1(ep0_rx_setup_w_do),
        .I2(status_ready_q_i_2_n_0),
        .I3(status_ready_q_reg_1),
        .O(status_ready_q_reg));
  LUT6 #(
    .INIT(64'h0000000080808000)) 
    status_ready_q_i_2
       (.I0(rx_data_valid_w),
        .I1(rx_enable_q_reg),
        .I2(status_stage_w_do_INST_0_i_2_n_0),
        .I3(usbfrx_crc_byte_w_do),
        .I4(last_q),
        .I5(rx_strb_w_do),
        .O(status_ready_q_i_2_n_0));
  LUT5 #(
    .INIT(32'h000000B0)) 
    status_stage_w_do_INST_0
       (.I0(ep0_dir_out_q_reg),
        .I1(status_stage_w_do_INST_0_i_1_n_0),
        .I2(status_stage_w_do_INST_0_i_2_n_0),
        .I3(status_stage_w_do_INST_0_i_3_n_0),
        .I4(status_stage_w_do_INST_0_i_4_n_0),
        .O(status_stage_w_do));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    status_stage_w_do_INST_0_i_1
       (.I0(status_stage_w_do_INST_0_i_5_n_0),
        .I1(token_pid_w[3]),
        .I2(token_pid_w[7]),
        .I3(\state_q_reg[2]_1 ),
        .I4(token_valid_w_do),
        .I5(\state_q_reg[1]_0 ),
        .O(status_stage_w_do_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    status_stage_w_do_INST_0_i_2
       (.I0(\token_ep_w_do[2] ),
        .I1(\token_ep_w_do[3] ),
        .I2(\token_ep_w_do[0] ),
        .I3(\token_ep_w_do[1] ),
        .O(status_stage_w_do_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    status_stage_w_do_INST_0_i_3
       (.I0(status_stage_w_do_INST_0_i_6_n_0),
        .I1(status_stage_w_do_INST_0_i_7_n_0),
        .I2(token_pid_w[3]),
        .I3(token_pid_w[7]),
        .I4(status_stage_w_do_INST_0_i_8_n_0),
        .I5(status_stage_w_do_INST_0_i_2_n_0),
        .O(status_stage_w_do_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    status_stage_w_do_INST_0_i_4
       (.I0(status_stage_w_do_INST_0_i_2_n_0),
        .I1(status_stage_w_do_INST_0_i_8_n_0),
        .I2(status_stage_w_do_INST_0_i_5_n_0),
        .I3(token_pid_w[3]),
        .I4(token_pid_w[7]),
        .I5(ep0_dir_in_q_reg),
        .O(status_stage_w_do_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    status_stage_w_do_INST_0_i_5
       (.I0(token_pid_w[5]),
        .I1(token_pid_w[1]),
        .I2(token_pid_w[2]),
        .I3(token_pid_w[6]),
        .I4(token_pid_w[4]),
        .I5(token_pid_w[0]),
        .O(status_stage_w_do_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    status_stage_w_do_INST_0_i_6
       (.I0(token_pid_w[5]),
        .I1(token_pid_w[1]),
        .I2(token_pid_w[2]),
        .I3(token_pid_w[6]),
        .O(status_stage_w_do_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    status_stage_w_do_INST_0_i_7
       (.I0(token_pid_w[4]),
        .I1(token_pid_w[0]),
        .O(status_stage_w_do_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    status_stage_w_do_INST_0_i_8
       (.I0(\state_q_reg[0]_0 ),
        .I1(\state_q_reg[2]_2 ),
        .I2(token_valid_w_do),
        .I3(\state_q_reg[1]_0 ),
        .O(status_stage_w_do_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[0]_i_1 
       (.I0(\usbfrx_data_w_do[0] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[1]_i_1 
       (.I0(\usbfrx_data_w_do[1] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[2]_i_1 
       (.I0(\usbfrx_data_w_do[2] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[3]_i_1 
       (.I0(\usbfrx_data_w_do[3] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[4]_i_1 
       (.I0(\usbfrx_data_w_do[4] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[5]_i_1 
       (.I0(\usbfrx_data_w_do[5] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \token_dev_q[6]_i_1 
       (.I0(state_q[1]),
        .I1(usbfrx_data_ready_w_do),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(state_q[3]),
        .I5(\token_ep_q_reg[0]_0 ),
        .O(\token_dev_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_dev_q[6]_i_2 
       (.I0(\usbfrx_data_w_do[6] ),
        .I1(\token_dev_q[6]_i_4_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_dev_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \token_dev_q[6]_i_3 
       (.I0(Q),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\token_ep_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \token_dev_q[6]_i_4 
       (.I0(state_q[3]),
        .I1(state_q[0]),
        .I2(state_q[2]),
        .I3(usbfrx_data_ready_w_do),
        .I4(state_q[1]),
        .O(\token_dev_q[6]_i_4_n_0 ));
  FDCE \token_dev_q_reg[0] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[0]_i_1_n_0 ),
        .Q(token_dev_w_do[0]));
  FDCE \token_dev_q_reg[1] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[1]_i_1_n_0 ),
        .Q(token_dev_w_do[1]));
  FDCE \token_dev_q_reg[2] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[2]_i_1_n_0 ),
        .Q(token_dev_w_do[2]));
  FDCE \token_dev_q_reg[3] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[3]_i_1_n_0 ),
        .Q(token_dev_w_do[3]));
  FDCE \token_dev_q_reg[4] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[4]_i_1_n_0 ),
        .Q(token_dev_w_do[4]));
  FDCE \token_dev_q_reg[5] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[5]_i_1_n_0 ),
        .Q(token_dev_w_do[5]));
  FDCE \token_dev_q_reg[6] 
       (.C(clk_i),
        .CE(\token_dev_q[6]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_dev_q[6]_i_2_n_0 ),
        .Q(token_dev_w_do[6]));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \token_ep_q[0]_i_1 
       (.I0(\usbfrx_data_w_do[7] ),
        .I1(\token_ep_q_reg[0]_0 ),
        .I2(\token_dev_q[6]_i_4_n_0 ),
        .I3(\token_ep_q[3]_i_2_n_0 ),
        .I4(\token_ep_w_do[0] ),
        .O(\token_ep_q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \token_ep_q[1]_i_1 
       (.I0(\usbfrx_data_w_do[0] ),
        .I1(\token_ep_q_reg[0]_0 ),
        .I2(\token_ep_q[3]_i_2_n_0 ),
        .I3(\token_dev_q[6]_i_4_n_0 ),
        .I4(\token_ep_w_do[1] ),
        .O(\token_ep_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \token_ep_q[2]_i_1 
       (.I0(\usbfrx_data_w_do[1] ),
        .I1(\token_ep_q_reg[0]_0 ),
        .I2(\token_ep_q[3]_i_2_n_0 ),
        .I3(\token_dev_q[6]_i_4_n_0 ),
        .I4(\token_ep_w_do[2] ),
        .O(\token_ep_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \token_ep_q[3]_i_1 
       (.I0(\usbfrx_data_w_do[2] ),
        .I1(\token_ep_q_reg[0]_0 ),
        .I2(\token_ep_q[3]_i_2_n_0 ),
        .I3(\token_dev_q[6]_i_4_n_0 ),
        .I4(\token_ep_w_do[3] ),
        .O(\token_ep_q[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \token_ep_q[3]_i_2 
       (.I0(state_q[2]),
        .I1(usbfrx_data_ready_w_do),
        .I2(state_q[1]),
        .I3(state_q[3]),
        .I4(state_q[0]),
        .O(\token_ep_q[3]_i_2_n_0 ));
  FDCE \token_ep_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\token_ep_q[0]_i_1_n_0 ),
        .Q(\token_ep_w_do[0] ));
  FDCE \token_ep_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\token_ep_q[1]_i_1_n_0 ),
        .Q(\token_ep_w_do[1] ));
  FDCE \token_ep_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\token_ep_q[2]_i_1_n_0 ),
        .Q(\token_ep_w_do[2] ));
  FDCE \token_ep_q_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\token_ep_q[3]_i_1_n_0 ),
        .Q(\token_ep_w_do[3] ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[0]_i_1 
       (.I0(\usbfrx_data_w_do[0] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[1]_i_1 
       (.I0(\usbfrx_data_w_do[1] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[2]_i_1 
       (.I0(\usbfrx_data_w_do[2] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[3]_i_1 
       (.I0(\usbfrx_data_w_do[3] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[4]_i_1 
       (.I0(\usbfrx_data_w_do[4] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[5]_i_1 
       (.I0(\usbfrx_data_w_do[5] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[6]_i_1 
       (.I0(\usbfrx_data_w_do[6] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \token_pid_q[7]_i_1 
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(usbfrx_data_ready_w_do),
        .I3(state_q[0]),
        .I4(state_q[3]),
        .I5(\token_ep_q_reg[0]_0 ),
        .O(\token_pid_q[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B888B8B)) 
    \token_pid_q[7]_i_2 
       (.I0(\usbfrx_data_w_do[7] ),
        .I1(\token_pid_q[7]_i_3_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\token_pid_q[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \token_pid_q[7]_i_3 
       (.I0(state_q[3]),
        .I1(state_q[0]),
        .I2(usbfrx_data_ready_w_do),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .O(\token_pid_q[7]_i_3_n_0 ));
  FDCE \token_pid_q_reg[0] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[0]_i_1_n_0 ),
        .Q(token_pid_w[0]));
  FDCE \token_pid_q_reg[1] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[1]_i_1_n_0 ),
        .Q(token_pid_w[1]));
  FDCE \token_pid_q_reg[2] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[2]_i_1_n_0 ),
        .Q(token_pid_w[2]));
  FDCE \token_pid_q_reg[3] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[3]_i_1_n_0 ),
        .Q(token_pid_w[3]));
  FDCE \token_pid_q_reg[4] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[4]_i_1_n_0 ),
        .Q(token_pid_w[4]));
  FDCE \token_pid_q_reg[5] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[5]_i_1_n_0 ),
        .Q(token_pid_w[5]));
  FDCE \token_pid_q_reg[6] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[6]_i_1_n_0 ),
        .Q(token_pid_w[6]));
  FDCE \token_pid_q_reg[7] 
       (.C(clk_i),
        .CE(\token_pid_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(\token_pid_q[7]_i_2_n_0 ),
        .Q(token_pid_w[7]));
  LUT5 #(
    .INIT(32'h00000800)) 
    token_valid_q_i_1
       (.I0(token_valid_q_i_2_n_0),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(state_q[3]),
        .O(token_valid_q0));
  LUT6 #(
    .INIT(64'h2002000000002002)) 
    token_valid_q_i_2
       (.I0(token_valid_q_i_3_n_0),
        .I1(token_valid_q_i_4_n_0),
        .I2(current_addr_i_do[2]),
        .I3(token_dev_w_do[2]),
        .I4(current_addr_i_do[0]),
        .I5(token_dev_w_do[0]),
        .O(token_valid_q_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    token_valid_q_i_3
       (.I0(token_dev_w_do[3]),
        .I1(current_addr_i_do[3]),
        .I2(token_dev_w_do[5]),
        .I3(current_addr_i_do[5]),
        .I4(current_addr_i_do[6]),
        .I5(token_dev_w_do[6]),
        .O(token_valid_q_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    token_valid_q_i_4
       (.I0(current_addr_i_do[4]),
        .I1(token_dev_w_do[4]),
        .I2(current_addr_i_do[1]),
        .I3(token_dev_w_do[1]),
        .O(token_valid_q_i_4_n_0));
  FDCE token_valid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(token_valid_q0),
        .Q(token_valid_w_do));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \tx_pid_q[0]_i_1 
       (.I0(\tx_pid_q[0]_i_2_n_0 ),
        .I1(\state_q_reg[0]_0 ),
        .I2(\state_q_reg[2]_2 ),
        .I3(token_valid_w_do),
        .I4(\state_q_reg[1]_0 ),
        .I5(\tx_pid_q[4]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFDBF)) 
    \tx_pid_q[0]_i_2 
       (.I0(token_pid_w[2]),
        .I1(token_pid_w[3]),
        .I2(token_pid_w[0]),
        .I3(token_pid_w[4]),
        .I4(\tx_pid_q[0]_i_3_n_0 ),
        .O(\tx_pid_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFBFFBFF)) 
    \tx_pid_q[0]_i_3 
       (.I0(token_pid_w[1]),
        .I1(token_pid_w[5]),
        .I2(token_pid_w[7]),
        .I3(token_pid_w[6]),
        .I4(token_pid_w[4]),
        .O(\tx_pid_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \tx_pid_q[1]_i_1 
       (.I0(data_complete_o_do),
        .I1(crc_err_q_reg_n_0),
        .I2(\state_q_reg[1]_0 ),
        .I3(\state_q_reg[2]_2 ),
        .I4(\state_q_reg[0]_0 ),
        .I5(\tx_pid_q[3]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \tx_pid_q[2]_i_1 
       (.I0(D[1]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(ctrl_txstall_q_reg),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBA00FFFFBA00BA00)) 
    \tx_pid_q[3]_i_1 
       (.I0(\tx_pid_q[3]_i_2_n_0 ),
        .I1(rx_space_q),
        .I2(\tx_pid_q[7]_i_2_n_0 ),
        .I3(\tx_pid_q[3]_i_3_n_0 ),
        .I4(\tx_pid_q[3]_i_4_n_0 ),
        .I5(\tx_pid_q[3]_i_5_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \tx_pid_q[3]_i_2 
       (.I0(ctrl_txstall_q_reg),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(\token_ep_w_do[3] ),
        .I4(\token_ep_w_do[2] ),
        .O(\tx_pid_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \tx_pid_q[3]_i_3 
       (.I0(\state_q_reg[0]_0 ),
        .I1(\state_q_reg[2]_2 ),
        .I2(\state_q_reg[1]_0 ),
        .I3(crc_err_q_reg_n_0),
        .I4(data_complete_o_do),
        .O(\tx_pid_q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000000C)) 
    \tx_pid_q[3]_i_4 
       (.I0(rx_space_q_i_2_n_0),
        .I1(usbf_new_data_bit_r_do_INST_0_i_5_n_0),
        .I2(usbf_new_data_bit_r_do_INST_0_i_4_n_0),
        .I3(\crc_sum_q_reg[0]_0 ),
        .I4(\tx_pid_q[3]_i_2_n_0 ),
        .I5(\tx_pid_q[4]_i_3_n_0 ),
        .O(\tx_pid_q[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \tx_pid_q[3]_i_5 
       (.I0(\state_q_reg[1]_0 ),
        .I1(token_valid_w_do),
        .I2(\state_q_reg[2]_2 ),
        .I3(\state_q_reg[0]_0 ),
        .I4(\tx_pid_q[0]_i_2_n_0 ),
        .O(\tx_pid_q[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h88A88888)) 
    \tx_pid_q[4]_i_1 
       (.I0(D[1]),
        .I1(\tx_pid_q[4]_i_2_n_0 ),
        .I2(data_complete_o_do),
        .I3(crc_err_q_reg_n_0),
        .I4(\state_q_reg[1]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \tx_pid_q[4]_i_2 
       (.I0(\crc_sum_q_reg[0]_0 ),
        .I1(ctrl_txstall_q_reg),
        .I2(usbf_ep_data_bit_r_do_INST_0_i_9_n_0),
        .I3(\token_ep_w_do[3] ),
        .I4(\token_ep_w_do[2] ),
        .I5(\tx_pid_q[4]_i_3_n_0 ),
        .O(\tx_pid_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \tx_pid_q[4]_i_3 
       (.I0(status_stage_w_do_INST_0_i_6_n_0),
        .I1(token_pid_w[4]),
        .I2(token_pid_w[0]),
        .I3(token_pid_w[3]),
        .I4(token_pid_w[7]),
        .O(\tx_pid_q[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \tx_pid_q[6]_i_1 
       (.I0(D[1]),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(\token_ep_w_do[0] ),
        .I4(\token_ep_w_do[1] ),
        .I5(ctrl_txstall_q_reg),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00000000DFDF00DF)) 
    \tx_pid_q[7]_i_1 
       (.I0(\tx_pid_q[7]_i_2_n_0 ),
        .I1(rx_space_q),
        .I2(\state_q_reg[1]_0 ),
        .I3(\tx_pid_q[7]_i_3_n_0 ),
        .I4(\tx_pid_q[7]_i_4_n_0 ),
        .I5(\state_q_reg[2]_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h01000101FDFFFDFD)) 
    \tx_pid_q[7]_i_2 
       (.I0(usbf_new_data_bit_r_do_INST_0_i_7_n_0),
        .I1(\token_ep_w_do[2] ),
        .I2(\token_ep_w_do[3] ),
        .I3(usbf_new_data_bit_r_do_INST_0_i_4_n_0),
        .I4(usbf_new_data_bit_r_do_INST_0_i_5_n_0),
        .I5(usbf_new_data_bit_r_do_INST_0_i_11_n_0),
        .O(\tx_pid_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF8FFFFF)) 
    \tx_pid_q[7]_i_3 
       (.I0(status_stage_w_do_INST_0_i_2_n_0),
        .I1(ctrl_txstall_q_reg),
        .I2(\state_q_reg[1]_0 ),
        .I3(crc_err_q_reg_n_0),
        .I4(data_complete_o_do),
        .O(\tx_pid_q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF10)) 
    \tx_pid_q[7]_i_4 
       (.I0(\tx_pid_q[4]_i_2_n_0 ),
        .I1(usbf_new_data_bit_r_do_INST_0_i_4_n_0),
        .I2(usbf_new_data_bit_r_do_INST_0_i_5_n_0),
        .I3(\tx_pid_q[7]_i_5_n_0 ),
        .I4(\tx_pid_q[0]_i_2_n_0 ),
        .I5(\tx_pid_q[7]_i_6_n_0 ),
        .O(\tx_pid_q[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3000101000000000)) 
    \tx_pid_q[7]_i_5 
       (.I0(ctrl_txstall_q_reg),
        .I1(\token_ep_w_do[1] ),
        .I2(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I3(outport_accept_i),
        .I4(\token_ep_w_do[0] ),
        .I5(\tx_pid_q[4]_i_3_n_0 ),
        .O(\tx_pid_q[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_pid_q[7]_i_6 
       (.I0(\state_q_reg[1]_0 ),
        .I1(token_valid_w_do),
        .O(\tx_pid_q[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    tx_valid_q_i_2
       (.I0(D[1]),
        .I1(\state_q_reg[2]_2 ),
        .I2(\state_q_reg[1]_0 ),
        .I3(\state_q_reg[0]_0 ),
        .O(tx_valid_r));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8A8A8AA)) 
    usbf_ep_data_bit_r_do_INST_0
       (.I0(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I1(usbf_ep_data_bit_r_do_INST_0_i_2_n_0),
        .I2(usbf_ep_data_bit_r_do_INST_0_i_3_n_0),
        .I3(usbf_ep_data_bit_r_do_INST_0_i_4_n_0),
        .I4(usbf_ep_data_bit_r_do_INST_0_i_5_n_0),
        .I5(usbf_ep_data_bit_r_do_INST_0_i_6_n_0),
        .O(usbf_ep_data_bit_r_do));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    usbf_ep_data_bit_r_do_INST_0_i_1
       (.I0(\token_ep_w_do[3] ),
        .I1(\token_ep_w_do[2] ),
        .O(usbf_ep_data_bit_r_do_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    usbf_ep_data_bit_r_do_INST_0_i_10
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[0] ),
        .O(usbf_ep_data_bit_r_do_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
    usbf_ep_data_bit_r_do_INST_0_i_2
       (.I0(usbf_ep_data_bit_r_do_INST_0_i_7_n_0),
        .I1(status_stage_w_do_INST_0_i_2_n_0),
        .I2(status_stage_w_do_INST_0_i_3_n_0),
        .I3(status_stage_w_do_INST_0_i_4_n_0),
        .I4(ep1_data_bit_q_reg_0),
        .I5(usbf_ep_data_bit_r_do_INST_0_i_8_n_0),
        .O(usbf_ep_data_bit_r_do_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555555500000040)) 
    usbf_ep_data_bit_r_do_INST_0_i_3
       (.I0(usbf_ep_data_bit_r_do_INST_0_i_9_n_0),
        .I1(usbf_ep_data_bit_r_do_INST_0_i_7_n_0),
        .I2(status_stage_w_do_INST_0_i_2_n_0),
        .I3(status_stage_w_do_INST_0_i_3_n_0),
        .I4(status_stage_w_do_INST_0_i_4_n_0),
        .I5(ep0_data_bit_q_reg_0),
        .O(usbf_ep_data_bit_r_do_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h5455545555555455)) 
    usbf_ep_data_bit_r_do_INST_0_i_4
       (.I0(ep2_data_bit_q_reg_0),
        .I1(status_stage_w_do_INST_0_i_4_n_0),
        .I2(status_stage_w_do_INST_0_i_3_n_0),
        .I3(status_stage_w_do_INST_0_i_2_n_0),
        .I4(status_stage_w_do_INST_0_i_1_n_0),
        .I5(ep0_dir_out_q_reg),
        .O(usbf_ep_data_bit_r_do_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    usbf_ep_data_bit_r_do_INST_0_i_5
       (.I0(\token_ep_w_do[0] ),
        .I1(\token_ep_w_do[1] ),
        .O(usbf_ep_data_bit_r_do_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000080)) 
    usbf_ep_data_bit_r_do_INST_0_i_6
       (.I0(usbf_ep_data_bit_r_do_INST_0_i_10_n_0),
        .I1(usbf_ep_data_bit_r_do_INST_0_i_7_n_0),
        .I2(status_stage_w_do_INST_0_i_2_n_0),
        .I3(status_stage_w_do_INST_0_i_3_n_0),
        .I4(status_stage_w_do_INST_0_i_4_n_0),
        .I5(ep3_data_bit_q_reg_0),
        .O(usbf_ep_data_bit_r_do_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    usbf_ep_data_bit_r_do_INST_0_i_7
       (.I0(ep0_dir_out_q_reg),
        .I1(status_stage_w_do_INST_0_i_5_n_0),
        .I2(token_pid_w[3]),
        .I3(token_pid_w[7]),
        .I4(status_stage_w_do_INST_0_i_8_n_0),
        .I5(status_stage_w_do_INST_0_i_2_n_0),
        .O(usbf_ep_data_bit_r_do_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    usbf_ep_data_bit_r_do_INST_0_i_8
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[0] ),
        .O(usbf_ep_data_bit_r_do_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    usbf_ep_data_bit_r_do_INST_0_i_9
       (.I0(\token_ep_w_do[1] ),
        .I1(\token_ep_w_do[0] ),
        .O(usbf_ep_data_bit_r_do_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'hEE030303EE03EE03)) 
    usbf_new_data_bit_r_do_INST_0
       (.I0(usbf_new_data_bit_r_do_INST_0_i_1_n_0),
        .I1(\state_q_reg[2]_1 ),
        .I2(usbf_new_data_bit_r_do_INST_0_i_3_n_0),
        .I3(usbf_ep_data_bit_r_do_INST_0_i_1_n_0),
        .I4(usbf_new_data_bit_r_do_INST_0_i_4_n_0),
        .I5(usbf_new_data_bit_r_do_INST_0_i_5_n_0),
        .O(usbf_new_data_bit_r_do));
  LUT6 #(
    .INIT(64'h00000000DDDD0DDD)) 
    usbf_new_data_bit_r_do_INST_0_i_1
       (.I0(usbf_new_data_bit_r_do_INST_0_i_6_n_0),
        .I1(usbf_new_data_bit_r_do_INST_0_i_7_n_0),
        .I2(usbf_new_data_bit_r_do_INST_0_i_8_n_0),
        .I3(token_valid_w_do),
        .I4(\state_q_reg[1]_0 ),
        .I5(usbf_new_data_bit_r_do_INST_0_i_9_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    usbf_new_data_bit_r_do_INST_0_i_10
       (.I0(data_complete_o_do),
        .I1(crc_err_q_reg_n_0),
        .I2(\state_q_reg[1]_0 ),
        .O(usbf_new_data_bit_r_do_INST_0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    usbf_new_data_bit_r_do_INST_0_i_11
       (.I0(token_pid_w[7]),
        .I1(token_pid_w[3]),
        .I2(token_pid_w[4]),
        .I3(token_pid_w[0]),
        .I4(usbf_new_data_bit_r_do_INST_0_i_15_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    usbf_new_data_bit_r_do_INST_0_i_12
       (.I0(token_pid_w[3]),
        .I1(token_pid_w[7]),
        .O(usbf_new_data_bit_r_do_INST_0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    usbf_new_data_bit_r_do_INST_0_i_13
       (.I0(token_pid_w[1]),
        .I1(token_pid_w[5]),
        .O(usbf_new_data_bit_r_do_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    usbf_new_data_bit_r_do_INST_0_i_14
       (.I0(token_pid_w[7]),
        .I1(token_pid_w[3]),
        .I2(token_pid_w[5]),
        .I3(token_pid_w[1]),
        .I4(token_pid_w[2]),
        .I5(token_pid_w[6]),
        .O(usbf_new_data_bit_r_do_INST_0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    usbf_new_data_bit_r_do_INST_0_i_15
       (.I0(token_pid_w[6]),
        .I1(token_pid_w[2]),
        .I2(token_pid_w[1]),
        .I3(token_pid_w[5]),
        .O(usbf_new_data_bit_r_do_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFDDD)) 
    usbf_new_data_bit_r_do_INST_0_i_3
       (.I0(rx_space_q),
        .I1(usbf_new_data_bit_r_do_INST_0_i_10_n_0),
        .I2(ctrl_txstall_q_reg),
        .I3(status_stage_w_do_INST_0_i_2_n_0),
        .I4(usbf_new_data_bit_r_do_INST_0_i_11_n_0),
        .I5(usbf_new_data_bit_r_do_INST_0_i_9_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00FA00FC)) 
    usbf_new_data_bit_r_do_INST_0_i_4
       (.I0(ep1_data_bit_q_reg_0),
        .I1(ep0_data_bit_q_reg_0),
        .I2(status_stage_w_do),
        .I3(\token_ep_w_do[1] ),
        .I4(\token_ep_w_do[0] ),
        .O(usbf_new_data_bit_r_do_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h03FF05FF)) 
    usbf_new_data_bit_r_do_INST_0_i_5
       (.I0(ep2_data_bit_q_reg_0),
        .I1(ep3_data_bit_q_reg_0),
        .I2(status_stage_w_do),
        .I3(\token_ep_w_do[1] ),
        .I4(\token_ep_w_do[0] ),
        .O(usbf_new_data_bit_r_do_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000080008000800)) 
    usbf_new_data_bit_r_do_INST_0_i_6
       (.I0(rx_space_q),
        .I1(data_complete_o_do),
        .I2(crc_err_q_reg_n_0),
        .I3(\state_q_reg[1]_0 ),
        .I4(ctrl_txstall_q_reg),
        .I5(status_stage_w_do_INST_0_i_2_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    usbf_new_data_bit_r_do_INST_0_i_7
       (.I0(status_stage_w_do_INST_0_i_7_n_0),
        .I1(token_pid_w[6]),
        .I2(token_pid_w[2]),
        .I3(token_pid_w[1]),
        .I4(token_pid_w[5]),
        .I5(usbf_new_data_bit_r_do_INST_0_i_12_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    usbf_new_data_bit_r_do_INST_0_i_8
       (.I0(token_pid_w[7]),
        .I1(token_pid_w[3]),
        .I2(status_stage_w_do_INST_0_i_7_n_0),
        .I3(token_pid_w[6]),
        .I4(token_pid_w[2]),
        .I5(usbf_new_data_bit_r_do_INST_0_i_13_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    usbf_new_data_bit_r_do_INST_0_i_9
       (.I0(token_valid_w_do),
        .I1(rx_handshake_w),
        .I2(\state_q_reg[1]_0 ),
        .I3(token_pid_w[4]),
        .I4(token_pid_w[0]),
        .I5(usbf_new_data_bit_r_do_INST_0_i_14_n_0),
        .O(usbf_new_data_bit_r_do_INST_0_i_9_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    usbfrx_shift_en_w_do_INST_0
       (.I0(utmi_rxvalid_i),
        .I1(utmi_rxactive_i),
        .O(usbfrx_shift_en_w_do));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B080000)) 
    \utmi_data_out_o[0]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[0]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[0]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[8]_2 ),
        .O(\crc_sum_q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B080000)) 
    \utmi_data_out_o[1]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[1]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[1]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[9]_0 ),
        .O(\crc_sum_q_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h00000000F4F7FFFF)) 
    \utmi_data_out_o[2]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[2]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[2]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[10]_2 ),
        .O(\crc_sum_q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B080000)) 
    \utmi_data_out_o[3]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[3]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[3]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[11]_0 ),
        .O(\crc_sum_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B080000)) 
    \utmi_data_out_o[4]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[4]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[4]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[12]_1 ),
        .O(\crc_sum_q_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF5FDF7FF)) 
    \utmi_data_out_o[5]_INST_0_i_2 
       (.I0(\FSM_sequential_state_q_reg[0]_0 ),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ep2_tx_data_w_do[5]),
        .I4(ctrl_txdata_q_do[5]),
        .O(\crc_sum_q_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B080000)) 
    \utmi_data_out_o[6]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[6]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[6]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[14]_0 ),
        .O(\crc_sum_q_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B080000)) 
    \utmi_data_out_o[7]_INST_0_i_1 
       (.I0(ep2_tx_data_w_do[7]),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txdata_q_do[7]),
        .I4(\FSM_sequential_state_q_reg[0]_0 ),
        .I5(\crc_sum_q_reg[15]_0 ),
        .O(\crc_sum_q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF4F7)) 
    utmi_txvalid_o_INST_0_i_1
       (.I0(inport_valid_q_reg),
        .I1(\token_ep_w_do[1] ),
        .I2(\token_ep_w_do[0] ),
        .I3(ctrl_txvalid_q_reg_0),
        .I4(\token_ep_w_do[2] ),
        .I5(\token_ep_w_do[3] ),
        .O(\crc_sum_q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    valid_q_i_1__0
       (.I0(input_ready_w),
        .I1(state_q[3]),
        .I2(valid_q_i_2_n_0),
        .I3(state_q[2]),
        .I4(usbfrx_crc_byte_w_do),
        .I5(data_zlp_q),
        .O(valid_q0));
  LUT2 #(
    .INIT(4'h2)) 
    valid_q_i_2
       (.I0(state_q[1]),
        .I1(state_q[0]),
        .O(valid_q_i_2_n_0));
  FDCE valid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(valid_q0),
        .Q(rx_data_valid_w));
endmodule

(* ORIG_REF_NAME = "usbf_sie_tx" *) 
module brd_usb_cdc_core_0_0_usbf_sie_tx
   (Q,
    \FSM_sequential_state_q_reg[2]_0 ,
    \FSM_sequential_state_q_reg[1]_0 ,
    utmi_data_out_o_2_sp_1,
    \utmi_data_out_o[3] ,
    \utmi_data_out_o[6] ,
    \utmi_data_out_o[4] ,
    \crc_sum_q_reg[14]_0 ,
    \utmi_data_out_o[7] ,
    utmi_data_out_o,
    \crc_sum_q_reg[8]_0 ,
    sie_tx_state_q_o,
    \state_q_reg[0] ,
    \chirp_count_q_reg[3] ,
    E,
    data_pid_q4_out,
    utmi_txvalid_o,
    inport_valid_q_reg,
    ep2_tx_data_last_w_do,
    \crc_sum_q_reg[8]_1 ,
    \crc_sum_q_reg[10]_0 ,
    \crc_sum_q_reg[13]_0 ,
    \crc_sum_q_reg[8]_2 ,
    \crc_sum_q_reg[6]_0 ,
    \crc_sum_q_reg[10]_1 ,
    \crc_sum_q_reg[0]_0 ,
    data_pid_q_reg_0,
    clk_i,
    rst_i,
    data_zlp_q_reg_0,
    \token_ep_q_reg[2] ,
    \inport_data_q_reg[2] ,
    \inport_data_q_reg[3] ,
    \token_ep_q_reg[1] ,
    \inport_data_q_reg[6] ,
    \inport_data_q_reg[1] ,
    \inport_data_q_reg[0] ,
    \inport_data_q_reg[4] ,
    \inport_data_q_reg[7] ,
    \token_ep_q_reg[2]_0 ,
    \token_ep_q_reg[3] ,
    utmi_txready_i,
    \state_q_reg[2] ,
    \state_q_reg[0]_0 ,
    \state_q_reg[1] ,
    tx_valid_q_reg,
    \se0_cnt_q_reg[14] ,
    usbf_tx_pid_q_do,
    inport_valid_q_reg_0,
    out,
    inport_valid_q_do);
  output [15:0]Q;
  output \FSM_sequential_state_q_reg[2]_0 ;
  output \FSM_sequential_state_q_reg[1]_0 ;
  output utmi_data_out_o_2_sp_1;
  output \utmi_data_out_o[3] ;
  output \utmi_data_out_o[6] ;
  output \utmi_data_out_o[4] ;
  output \crc_sum_q_reg[14]_0 ;
  output \utmi_data_out_o[7] ;
  output [2:0]utmi_data_out_o;
  output \crc_sum_q_reg[8]_0 ;
  output [2:0]sie_tx_state_q_o;
  output \state_q_reg[0] ;
  output \chirp_count_q_reg[3] ;
  output [0:0]E;
  output data_pid_q4_out;
  output utmi_txvalid_o;
  output inport_valid_q_reg;
  output ep2_tx_data_last_w_do;
  output \crc_sum_q_reg[8]_1 ;
  output \crc_sum_q_reg[10]_0 ;
  output \crc_sum_q_reg[13]_0 ;
  output \crc_sum_q_reg[8]_2 ;
  output \crc_sum_q_reg[6]_0 ;
  output \crc_sum_q_reg[10]_1 ;
  output \crc_sum_q_reg[0]_0 ;
  output data_pid_q_reg_0;
  input clk_i;
  input rst_i;
  input data_zlp_q_reg_0;
  input \token_ep_q_reg[2] ;
  input \inport_data_q_reg[2] ;
  input \inport_data_q_reg[3] ;
  input \token_ep_q_reg[1] ;
  input \inport_data_q_reg[6] ;
  input \inport_data_q_reg[1] ;
  input \inport_data_q_reg[0] ;
  input \inport_data_q_reg[4] ;
  input \inport_data_q_reg[7] ;
  input \token_ep_q_reg[2]_0 ;
  input \token_ep_q_reg[3] ;
  input utmi_txready_i;
  input \state_q_reg[2] ;
  input \state_q_reg[0]_0 ;
  input \state_q_reg[1] ;
  input tx_valid_q_reg;
  input [0:0]\se0_cnt_q_reg[14] ;
  input [6:0]usbf_tx_pid_q_do;
  input inport_valid_q_reg_0;
  input [2:0]out;
  input inport_valid_q_do;

  wire [0:0]E;
  wire \FSM_sequential_state_q[0]_i_1_n_0 ;
  wire \FSM_sequential_state_q[0]_i_2_n_0 ;
  wire \FSM_sequential_state_q[0]_i_3__0_n_0 ;
  wire \FSM_sequential_state_q[0]_i_4_n_0 ;
  wire \FSM_sequential_state_q[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_q[1]_i_2_n_0 ;
  wire \FSM_sequential_state_q[1]_i_4_n_0 ;
  wire \FSM_sequential_state_q[1]_i_5_n_0 ;
  wire \FSM_sequential_state_q[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_q[2]_i_3_n_0 ;
  wire \FSM_sequential_state_q[2]_i_4__0_n_0 ;
  wire \FSM_sequential_state_q[2]_i_5_n_0 ;
  wire \FSM_sequential_state_q_reg[1]_0 ;
  wire \FSM_sequential_state_q_reg[2]_0 ;
  wire [15:0]Q;
  wire \chirp_count_q_reg[3] ;
  wire clk_i;
  wire [15:0]crc_sum_q;
  wire \crc_sum_q[14]_i_3__0_n_0 ;
  wire \crc_sum_q[14]_i_4__0_n_0 ;
  wire \crc_sum_q[15]_i_3__0_n_0 ;
  wire \crc_sum_q[15]_i_4_n_0 ;
  wire \crc_sum_q[7]_i_2_n_0 ;
  wire crc_sum_q_1;
  wire \crc_sum_q_reg[0]_0 ;
  wire \crc_sum_q_reg[10]_0 ;
  wire \crc_sum_q_reg[10]_1 ;
  wire \crc_sum_q_reg[13]_0 ;
  wire \crc_sum_q_reg[14]_0 ;
  wire \crc_sum_q_reg[6]_0 ;
  wire \crc_sum_q_reg[8]_0 ;
  wire \crc_sum_q_reg[8]_1 ;
  wire \crc_sum_q_reg[8]_2 ;
  wire \crc_sum_q_reg_n_0_[0] ;
  wire \crc_sum_q_reg_n_0_[1] ;
  wire \crc_sum_q_reg_n_0_[2] ;
  wire \crc_sum_q_reg_n_0_[3] ;
  wire \crc_sum_q_reg_n_0_[4] ;
  wire \crc_sum_q_reg_n_0_[5] ;
  wire \crc_sum_q_reg_n_0_[6] ;
  wire \crc_sum_q_reg_n_0_[7] ;
  wire data_pid_q4_out;
  wire data_pid_q_i_1_n_0;
  wire data_pid_q_i_4_n_0;
  wire data_pid_q_i_5_n_0;
  wire data_pid_q_i_6_n_0;
  wire data_pid_q_reg_0;
  wire data_pid_q_reg_n_0;
  wire [7:0]data_q;
  wire \data_q[7]_i_1_n_0 ;
  wire data_zlp_q_reg_0;
  wire ep2_tx_data_last_w_do;
  wire ep2_tx_data_last_w_do_INST_0_i_1_n_0;
  wire ep2_tx_data_last_w_do_INST_0_i_2_n_0;
  wire ep2_tx_data_last_w_do_INST_0_i_3_n_0;
  wire [15:1]in29;
  wire \inport_data_q_reg[0] ;
  wire \inport_data_q_reg[1] ;
  wire \inport_data_q_reg[2] ;
  wire \inport_data_q_reg[3] ;
  wire \inport_data_q_reg[4] ;
  wire \inport_data_q_reg[6] ;
  wire \inport_data_q_reg[7] ;
  wire inport_valid_q_do;
  wire inport_valid_q_reg;
  wire inport_valid_q_reg_0;
  wire [2:0]out;
  wire [7:0]p_0_in;
  wire [7:0]p_1_in;
  wire rst_i;
  wire [0:0]\se0_cnt_q_reg[14] ;
  wire [2:0]sie_tx_state_q_o;
  (* RTL_KEEP = "yes" *) wire [2:0]state_q;
  wire \state_q_reg[0] ;
  wire \state_q_reg[0]_0 ;
  wire \state_q_reg[1] ;
  wire \state_q_reg[2] ;
  wire \token_ep_q_reg[1] ;
  wire \token_ep_q_reg[2] ;
  wire \token_ep_q_reg[2]_0 ;
  wire \token_ep_q_reg[3] ;
  wire [15:0]tx_sent_data_counter_q;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__0_n_0 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__0_n_1 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__0_n_2 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__0_n_3 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__1_n_0 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__1_n_1 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__1_n_2 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__1_n_3 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__2_n_2 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry__2_n_3 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry_n_0 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry_n_1 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry_n_2 ;
  wire \tx_sent_data_counter_q0_inferred__0/i__carry_n_3 ;
  wire tx_sent_data_counter_q_0;
  wire tx_valid_q_reg;
  wire [6:0]usbf_tx_pid_q_do;
  wire [2:0]utmi_data_out_o;
  wire \utmi_data_out_o[3] ;
  wire \utmi_data_out_o[4] ;
  wire \utmi_data_out_o[5]_INST_0_i_1_n_0 ;
  wire \utmi_data_out_o[6] ;
  wire \utmi_data_out_o[7] ;
  wire utmi_data_out_o_2_sn_1;
  wire utmi_txready_i;
  wire utmi_txvalid_o;
  wire valid_q;
  wire valid_q_reg_n_0;
  wire [3:2]\NLW_tx_sent_data_counter_q0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_tx_sent_data_counter_q0_inferred__0/i__carry__2_O_UNCONNECTED ;

  assign utmi_data_out_o_2_sp_1 = utmi_data_out_o_2_sn_1;
  LUT6 #(
    .INIT(64'h00000000EEEAEAEA)) 
    \FSM_sequential_state_q[0]_i_1 
       (.I0(\FSM_sequential_state_q[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state_q[0]_i_3__0_n_0 ),
        .I2(state_q[1]),
        .I3(state_q[2]),
        .I4(\token_ep_q_reg[2] ),
        .I5(\FSM_sequential_state_q[0]_i_4_n_0 ),
        .O(\FSM_sequential_state_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF300AF0FF300A000)) 
    \FSM_sequential_state_q[0]_i_2 
       (.I0(\FSM_sequential_state_q[2]_i_5_n_0 ),
        .I1(utmi_txready_i),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(state_q[1]),
        .I5(\chirp_count_q_reg[3] ),
        .O(\FSM_sequential_state_q[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_q[0]_i_3__0 
       (.I0(utmi_txready_i),
        .I1(state_q[0]),
        .O(\FSM_sequential_state_q[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \FSM_sequential_state_q[0]_i_4 
       (.I0(\FSM_sequential_state_q_reg[1]_0 ),
        .I1(\FSM_sequential_state_q_reg[2]_0 ),
        .I2(data_pid_q_reg_n_0),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(utmi_txready_i),
        .O(\FSM_sequential_state_q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455555455)) 
    \FSM_sequential_state_q[1]_i_1__0 
       (.I0(\FSM_sequential_state_q_reg[1]_0 ),
        .I1(\FSM_sequential_state_q[1]_i_2_n_0 ),
        .I2(\token_ep_q_reg[2] ),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(\FSM_sequential_state_q[1]_i_4_n_0 ),
        .O(\FSM_sequential_state_q[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0404400004044)) 
    \FSM_sequential_state_q[1]_i_2 
       (.I0(utmi_txready_i),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(\chirp_count_q_reg[3] ),
        .I4(state_q[0]),
        .I5(\FSM_sequential_state_q[2]_i_5_n_0 ),
        .O(\FSM_sequential_state_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FC1F1CDCD)) 
    \FSM_sequential_state_q[1]_i_4 
       (.I0(\FSM_sequential_state_q[1]_i_5_n_0 ),
        .I1(state_q[2]),
        .I2(state_q[1]),
        .I3(\FSM_sequential_state_q_reg[2]_0 ),
        .I4(utmi_txready_i),
        .I5(state_q[0]),
        .O(\FSM_sequential_state_q[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBFBFB00)) 
    \FSM_sequential_state_q[1]_i_5 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(state_q[1]),
        .I4(tx_valid_q_reg),
        .O(\FSM_sequential_state_q[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444555545)) 
    \FSM_sequential_state_q[2]_i_1__0 
       (.I0(\FSM_sequential_state_q_reg[1]_0 ),
        .I1(\FSM_sequential_state_q[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_q_reg[2]_0 ),
        .I3(state_q[2]),
        .I4(state_q[0]),
        .I5(\FSM_sequential_state_q[2]_i_4__0_n_0 ),
        .O(\FSM_sequential_state_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \FSM_sequential_state_q[2]_i_2 
       (.I0(\se0_cnt_q_reg[14] ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\FSM_sequential_state_q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF0F07070F0007070)) 
    \FSM_sequential_state_q[2]_i_3 
       (.I0(utmi_txready_i),
        .I1(\token_ep_q_reg[2] ),
        .I2(state_q[2]),
        .I3(\FSM_sequential_state_q[2]_i_5_n_0 ),
        .I4(state_q[0]),
        .I5(state_q[1]),
        .O(\FSM_sequential_state_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_q[2]_i_4__0 
       (.I0(utmi_txready_i),
        .I1(state_q[1]),
        .O(\FSM_sequential_state_q[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEBE8EBE)) 
    \FSM_sequential_state_q[2]_i_5 
       (.I0(valid_q_reg_n_0),
        .I1(state_q[0]),
        .I2(state_q[2]),
        .I3(inport_valid_q_reg_0),
        .I4(state_q[1]),
        .I5(utmi_txready_i),
        .O(\FSM_sequential_state_q[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_TX_CHIRP:001,STATE_TX_PID:010,STATE_TX_DATA:100,STATE_TX_CRC1:011,STATE_TX_CRC2:110,STATE_TX_DONE:101,STATE_TX_IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\FSM_sequential_state_q[0]_i_1_n_0 ),
        .Q(state_q[0]));
  (* FSM_ENCODED_STATES = "STATE_TX_CHIRP:001,STATE_TX_PID:010,STATE_TX_DATA:100,STATE_TX_CRC1:011,STATE_TX_CRC2:110,STATE_TX_DONE:101,STATE_TX_IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\FSM_sequential_state_q[1]_i_1__0_n_0 ),
        .Q(state_q[1]));
  (* FSM_ENCODED_STATES = "STATE_TX_CHIRP:001,STATE_TX_PID:010,STATE_TX_DATA:100,STATE_TX_CRC1:011,STATE_TX_CRC2:110,STATE_TX_DONE:101,STATE_TX_IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_q_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(\FSM_sequential_state_q[2]_i_1__0_n_0 ),
        .Q(state_q[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \chirp_count_q[4]_i_2 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(\chirp_count_q_reg[3] ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \crc_sum_q[0]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\crc_sum_q[15]_i_4_n_0 ),
        .I2(\utmi_data_out_o[7] ),
        .I3(\crc_sum_q[15]_i_3__0_n_0 ),
        .I4(p_0_in[0]),
        .O(crc_sum_q[0]));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[10]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\utmi_data_out_o[3] ),
        .I2(\utmi_data_out_o[4] ),
        .I3(\crc_sum_q_reg_n_0_[3] ),
        .I4(\crc_sum_q_reg_n_0_[4] ),
        .O(crc_sum_q[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \crc_sum_q[11]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\crc_sum_q_reg_n_0_[4] ),
        .I2(\utmi_data_out_o[4] ),
        .I3(\crc_sum_q_reg_n_0_[5] ),
        .I4(\utmi_data_out_o[5]_INST_0_i_1_n_0 ),
        .O(crc_sum_q[11]));
  LUT5 #(
    .INIT(32'h9F6F6F9F)) 
    \crc_sum_q[12]_i_1__0 
       (.I0(\utmi_data_out_o[5]_INST_0_i_1_n_0 ),
        .I1(\utmi_data_out_o[6] ),
        .I2(state_q[2]),
        .I3(\crc_sum_q_reg_n_0_[5] ),
        .I4(\crc_sum_q_reg_n_0_[6] ),
        .O(crc_sum_q[12]));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[13]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\crc_sum_q_reg_n_0_[6] ),
        .I2(\utmi_data_out_o[6] ),
        .I3(\crc_sum_q_reg_n_0_[7] ),
        .I4(\utmi_data_out_o[7] ),
        .O(crc_sum_q[13]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_sum_q[14]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\crc_sum_q_reg_n_0_[2] ),
        .I2(\crc_sum_q_reg_n_0_[0] ),
        .I3(\crc_sum_q[14]_i_3__0_n_0 ),
        .I4(\crc_sum_q[14]_i_4__0_n_0 ),
        .I5(\crc_sum_q[15]_i_3__0_n_0 ),
        .O(crc_sum_q[14]));
  LUT3 #(
    .INIT(8'h01)) 
    \crc_sum_q[14]_i_2 
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .O(\crc_sum_q_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_sum_q[14]_i_3__0 
       (.I0(\crc_sum_q_reg_n_0_[5] ),
        .I1(\crc_sum_q_reg_n_0_[6] ),
        .O(\crc_sum_q[14]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \crc_sum_q[14]_i_4__0 
       (.I0(\crc_sum_q_reg_n_0_[1] ),
        .I1(\crc_sum_q_reg_n_0_[4] ),
        .I2(\crc_sum_q_reg_n_0_[3] ),
        .O(\crc_sum_q[14]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h01010501)) 
    \crc_sum_q[15]_i_1__0 
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(utmi_txready_i),
        .I4(inport_valid_q_reg_0),
        .O(crc_sum_q_1));
  LUT4 #(
    .INIT(16'h7DD7)) 
    \crc_sum_q[15]_i_2__0 
       (.I0(state_q[2]),
        .I1(\crc_sum_q[15]_i_3__0_n_0 ),
        .I2(\utmi_data_out_o[7] ),
        .I3(\crc_sum_q[15]_i_4_n_0 ),
        .O(crc_sum_q[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_sum_q[15]_i_3__0 
       (.I0(\utmi_data_out_o[5]_INST_0_i_1_n_0 ),
        .I1(\utmi_data_out_o[6] ),
        .I2(utmi_data_out_o_2_sn_1),
        .I3(\utmi_data_out_o[3] ),
        .I4(\utmi_data_out_o[4] ),
        .I5(\crc_sum_q[7]_i_2_n_0 ),
        .O(\crc_sum_q[15]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_sum_q[15]_i_4 
       (.I0(\crc_sum_q_reg_n_0_[0] ),
        .I1(\crc_sum_q_reg_n_0_[2] ),
        .I2(\crc_sum_q_reg_n_0_[7] ),
        .I3(\crc_sum_q_reg_n_0_[5] ),
        .I4(\crc_sum_q_reg_n_0_[6] ),
        .I5(\crc_sum_q[14]_i_4__0_n_0 ),
        .O(\crc_sum_q[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \crc_sum_q[1]_i_1__0 
       (.I0(p_0_in[1]),
        .I1(state_q[2]),
        .O(crc_sum_q[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \crc_sum_q[2]_i_1__0 
       (.I0(p_0_in[2]),
        .I1(state_q[2]),
        .O(crc_sum_q[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \crc_sum_q[3]_i_1__0 
       (.I0(p_0_in[3]),
        .I1(state_q[2]),
        .O(crc_sum_q[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \crc_sum_q[4]_i_1__0 
       (.I0(p_0_in[4]),
        .I1(state_q[2]),
        .O(crc_sum_q[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \crc_sum_q[5]_i_1__0 
       (.I0(p_0_in[5]),
        .I1(state_q[2]),
        .O(crc_sum_q[5]));
  LUT4 #(
    .INIT(16'hD77D)) 
    \crc_sum_q[6]_i_1__0 
       (.I0(state_q[2]),
        .I1(\crc_sum_q_reg_n_0_[0] ),
        .I2(p_0_in[6]),
        .I3(utmi_data_out_o[0]),
        .O(crc_sum_q[6]));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[7]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(p_0_in[7]),
        .I2(\crc_sum_q_reg_n_0_[1] ),
        .I3(\crc_sum_q_reg_n_0_[0] ),
        .I4(\crc_sum_q[7]_i_2_n_0 ),
        .O(crc_sum_q[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_sum_q[7]_i_2 
       (.I0(utmi_data_out_o[1]),
        .I1(utmi_data_out_o[0]),
        .O(\crc_sum_q[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_sum_q[8]_i_1 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\crc_sum_q_reg_n_0_[2] ),
        .I2(utmi_data_out_o_2_sn_1),
        .I3(\crc_sum_q_reg_n_0_[1] ),
        .I4(utmi_data_out_o[1]),
        .O(crc_sum_q[8]));
  LUT5 #(
    .INIT(32'h6F9F9F6F)) 
    \crc_sum_q[9]_i_1__0 
       (.I0(utmi_data_out_o_2_sn_1),
        .I1(\utmi_data_out_o[3] ),
        .I2(state_q[2]),
        .I3(\crc_sum_q_reg_n_0_[2] ),
        .I4(\crc_sum_q_reg_n_0_[3] ),
        .O(crc_sum_q[9]));
  FDPE \crc_sum_q_reg[0] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[0]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[0] ));
  FDPE \crc_sum_q_reg[10] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[10]),
        .PRE(rst_i),
        .Q(p_0_in[2]));
  FDPE \crc_sum_q_reg[11] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[11]),
        .PRE(rst_i),
        .Q(p_0_in[3]));
  FDPE \crc_sum_q_reg[12] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[12]),
        .PRE(rst_i),
        .Q(p_0_in[4]));
  FDPE \crc_sum_q_reg[13] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[13]),
        .PRE(rst_i),
        .Q(p_0_in[5]));
  FDPE \crc_sum_q_reg[14] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[14]),
        .PRE(rst_i),
        .Q(p_0_in[6]));
  FDPE \crc_sum_q_reg[15] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[15]),
        .PRE(rst_i),
        .Q(p_0_in[7]));
  FDPE \crc_sum_q_reg[1] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[1]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[1] ));
  FDPE \crc_sum_q_reg[2] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[2]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[2] ));
  FDPE \crc_sum_q_reg[3] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[3]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[3] ));
  FDPE \crc_sum_q_reg[4] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[4]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[4] ));
  FDPE \crc_sum_q_reg[5] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[5]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[5] ));
  FDPE \crc_sum_q_reg[6] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[6]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[6] ));
  FDPE \crc_sum_q_reg[7] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[7]),
        .PRE(rst_i),
        .Q(\crc_sum_q_reg_n_0_[7] ));
  FDPE \crc_sum_q_reg[8] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[8]),
        .PRE(rst_i),
        .Q(p_0_in[0]));
  FDPE \crc_sum_q_reg[9] 
       (.C(clk_i),
        .CE(crc_sum_q_1),
        .D(crc_sum_q[9]),
        .PRE(rst_i),
        .Q(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFFFF9FDF)) 
    ctrl_send_accept_w_do_INST_0_i_1
       (.I0(state_q[2]),
        .I1(state_q[1]),
        .I2(utmi_txready_i),
        .I3(\FSM_sequential_state_q_reg[2]_0 ),
        .I4(state_q[0]),
        .O(inport_valid_q_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    data_pid_q_i_1
       (.I0(data_pid_q4_out),
        .I1(data_pid_q_reg_0),
        .I2(data_pid_q_reg_n_0),
        .O(data_pid_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400040000000)) 
    data_pid_q_i_2
       (.I0(\se0_cnt_q_reg[14] ),
        .I1(tx_valid_q_reg),
        .I2(\crc_sum_q_reg[14]_0 ),
        .I3(data_pid_q_i_4_n_0),
        .I4(usbf_tx_pid_q_do[6]),
        .I5(usbf_tx_pid_q_do[3]),
        .O(data_pid_q4_out));
  LUT5 #(
    .INIT(32'hFF88FF8F)) 
    data_pid_q_i_3
       (.I0(tx_valid_q_reg),
        .I1(\crc_sum_q_reg[14]_0 ),
        .I2(data_pid_q_i_5_n_0),
        .I3(\se0_cnt_q_reg[14] ),
        .I4(data_pid_q_i_6_n_0),
        .O(data_pid_q_reg_0));
  LUT5 #(
    .INIT(32'h00600000)) 
    data_pid_q_i_4
       (.I0(usbf_tx_pid_q_do[2]),
        .I1(usbf_tx_pid_q_do[5]),
        .I2(usbf_tx_pid_q_do[1]),
        .I3(usbf_tx_pid_q_do[4]),
        .I4(usbf_tx_pid_q_do[0]),
        .O(data_pid_q_i_4_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    data_pid_q_i_5
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(\token_ep_q_reg[2] ),
        .O(data_pid_q_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFF3C7FF)) 
    data_pid_q_i_6
       (.I0(\FSM_sequential_state_q_reg[2]_0 ),
        .I1(utmi_txready_i),
        .I2(state_q[0]),
        .I3(state_q[1]),
        .I4(state_q[2]),
        .O(data_pid_q_i_6_n_0));
  FDCE data_pid_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(data_pid_q_i_1_n_0),
        .Q(data_pid_q_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[0]_i_1 
       (.I0(usbf_tx_pid_q_do[0]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[1]_i_1 
       (.I0(usbf_tx_pid_q_do[1]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[2]_i_1 
       (.I0(usbf_tx_pid_q_do[2]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[3]_i_1 
       (.I0(usbf_tx_pid_q_do[3]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[4]_i_1 
       (.I0(usbf_tx_pid_q_do[4]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[6]_i_1 
       (.I0(usbf_tx_pid_q_do[5]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \data_q[7]_i_1 
       (.I0(utmi_txready_i),
        .I1(tx_valid_q_reg),
        .I2(state_q[2]),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .I5(\se0_cnt_q_reg[14] ),
        .O(\data_q[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \data_q[7]_i_2 
       (.I0(usbf_tx_pid_q_do[6]),
        .I1(\se0_cnt_q_reg[14] ),
        .I2(tx_valid_q_reg),
        .I3(state_q[2]),
        .I4(state_q[1]),
        .I5(state_q[0]),
        .O(p_1_in[7]));
  FDCE \data_q_reg[0] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[0]),
        .Q(data_q[0]));
  FDCE \data_q_reg[1] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[1]),
        .Q(data_q[1]));
  FDCE \data_q_reg[2] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[2]),
        .Q(data_q[2]));
  FDCE \data_q_reg[3] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[3]),
        .Q(data_q[3]));
  FDCE \data_q_reg[4] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[4]),
        .Q(data_q[4]));
  FDCE \data_q_reg[6] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[6]),
        .Q(data_q[6]));
  FDCE \data_q_reg[7] 
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(p_1_in[7]),
        .Q(data_q[7]));
  FDCE data_zlp_q_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(rst_i),
        .D(data_zlp_q_reg_0),
        .Q(\FSM_sequential_state_q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    ep2_tx_data_last_w_do_INST_0
       (.I0(ep2_tx_data_last_w_do_INST_0_i_1_n_0),
        .I1(Q[11]),
        .I2(Q[15]),
        .I3(Q[13]),
        .I4(ep2_tx_data_last_w_do_INST_0_i_2_n_0),
        .I5(ep2_tx_data_last_w_do_INST_0_i_3_n_0),
        .O(ep2_tx_data_last_w_do));
  LUT4 #(
    .INIT(16'hFFEF)) 
    ep2_tx_data_last_w_do_INST_0_i_1
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(inport_valid_q_do),
        .I3(Q[10]),
        .O(ep2_tx_data_last_w_do_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    ep2_tx_data_last_w_do_INST_0_i_2
       (.I0(Q[9]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[7]),
        .O(ep2_tx_data_last_w_do_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ep2_tx_data_last_w_do_INST_0_i_3
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[8]),
        .I3(Q[2]),
        .O(ep2_tx_data_last_w_do_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'h4A)) 
    \sie_tx_state_q_o[0]_INST_0 
       (.I0(state_q[1]),
        .I1(state_q[0]),
        .I2(state_q[2]),
        .O(sie_tx_state_q_o[0]));
  LUT3 #(
    .INIT(8'h34)) 
    \sie_tx_state_q_o[1]_INST_0 
       (.I0(state_q[1]),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .O(sie_tx_state_q_o[1]));
  LUT3 #(
    .INIT(8'h2C)) 
    \sie_tx_state_q_o[2]_INST_0 
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .I2(state_q[1]),
        .O(sie_tx_state_q_o[2]));
  LUT5 #(
    .INIT(32'hF3773333)) 
    \state_q[2]_i_9 
       (.I0(\crc_sum_q_reg[14]_0 ),
        .I1(\state_q_reg[2] ),
        .I2(\chirp_count_q_reg[3] ),
        .I3(\state_q_reg[0]_0 ),
        .I4(\state_q_reg[1] ),
        .O(\state_q_reg[0] ));
  CARRY4 \tx_sent_data_counter_q0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\tx_sent_data_counter_q0_inferred__0/i__carry_n_0 ,\tx_sent_data_counter_q0_inferred__0/i__carry_n_1 ,\tx_sent_data_counter_q0_inferred__0/i__carry_n_2 ,\tx_sent_data_counter_q0_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in29[4:1]),
        .S(Q[4:1]));
  CARRY4 \tx_sent_data_counter_q0_inferred__0/i__carry__0 
       (.CI(\tx_sent_data_counter_q0_inferred__0/i__carry_n_0 ),
        .CO({\tx_sent_data_counter_q0_inferred__0/i__carry__0_n_0 ,\tx_sent_data_counter_q0_inferred__0/i__carry__0_n_1 ,\tx_sent_data_counter_q0_inferred__0/i__carry__0_n_2 ,\tx_sent_data_counter_q0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in29[8:5]),
        .S(Q[8:5]));
  CARRY4 \tx_sent_data_counter_q0_inferred__0/i__carry__1 
       (.CI(\tx_sent_data_counter_q0_inferred__0/i__carry__0_n_0 ),
        .CO({\tx_sent_data_counter_q0_inferred__0/i__carry__1_n_0 ,\tx_sent_data_counter_q0_inferred__0/i__carry__1_n_1 ,\tx_sent_data_counter_q0_inferred__0/i__carry__1_n_2 ,\tx_sent_data_counter_q0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in29[12:9]),
        .S(Q[12:9]));
  CARRY4 \tx_sent_data_counter_q0_inferred__0/i__carry__2 
       (.CI(\tx_sent_data_counter_q0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_tx_sent_data_counter_q0_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\tx_sent_data_counter_q0_inferred__0/i__carry__2_n_2 ,\tx_sent_data_counter_q0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tx_sent_data_counter_q0_inferred__0/i__carry__2_O_UNCONNECTED [3],in29[15:13]}),
        .S({1'b0,Q[15:13]}));
  LUT2 #(
    .INIT(4'h4)) 
    \tx_sent_data_counter_q[0]_i_1 
       (.I0(Q[0]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[10]_i_1 
       (.I0(in29[10]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[11]_i_1 
       (.I0(in29[11]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[12]_i_1 
       (.I0(in29[12]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[13]_i_1 
       (.I0(in29[13]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[14]_i_1 
       (.I0(in29[14]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[14]));
  LUT4 #(
    .INIT(16'h0023)) 
    \tx_sent_data_counter_q[15]_i_1 
       (.I0(utmi_txready_i),
        .I1(state_q[0]),
        .I2(state_q[2]),
        .I3(state_q[1]),
        .O(tx_sent_data_counter_q_0));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[15]_i_2 
       (.I0(in29[15]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[1]_i_1 
       (.I0(in29[1]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[2]_i_1 
       (.I0(in29[2]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[3]_i_1 
       (.I0(in29[3]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[4]_i_1 
       (.I0(in29[4]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[5]_i_1 
       (.I0(in29[5]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[6]_i_1 
       (.I0(in29[6]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[7]_i_1 
       (.I0(in29[7]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[8]_i_1 
       (.I0(in29[8]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sent_data_counter_q[9]_i_1 
       (.I0(in29[9]),
        .I1(state_q[2]),
        .O(tx_sent_data_counter_q[9]));
  FDCE \tx_sent_data_counter_q_reg[0] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[0]),
        .Q(Q[0]));
  FDCE \tx_sent_data_counter_q_reg[10] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[10]),
        .Q(Q[10]));
  FDCE \tx_sent_data_counter_q_reg[11] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[11]),
        .Q(Q[11]));
  FDCE \tx_sent_data_counter_q_reg[12] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[12]),
        .Q(Q[12]));
  FDCE \tx_sent_data_counter_q_reg[13] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[13]),
        .Q(Q[13]));
  FDCE \tx_sent_data_counter_q_reg[14] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[14]),
        .Q(Q[14]));
  FDCE \tx_sent_data_counter_q_reg[15] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[15]),
        .Q(Q[15]));
  FDCE \tx_sent_data_counter_q_reg[1] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[1]),
        .Q(Q[1]));
  FDCE \tx_sent_data_counter_q_reg[2] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[2]),
        .Q(Q[2]));
  FDCE \tx_sent_data_counter_q_reg[3] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[3]),
        .Q(Q[3]));
  FDCE \tx_sent_data_counter_q_reg[4] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[4]),
        .Q(Q[4]));
  FDCE \tx_sent_data_counter_q_reg[5] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[5]),
        .Q(Q[5]));
  FDCE \tx_sent_data_counter_q_reg[6] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[6]),
        .Q(Q[6]));
  FDCE \tx_sent_data_counter_q_reg[7] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[7]),
        .Q(Q[7]));
  FDCE \tx_sent_data_counter_q_reg[8] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[8]),
        .Q(Q[8]));
  FDCE \tx_sent_data_counter_q_reg[9] 
       (.C(clk_i),
        .CE(tx_sent_data_counter_q_0),
        .CLR(rst_i),
        .D(tx_sent_data_counter_q[9]),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'h01FF)) 
    tx_valid_q_i_1
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(tx_valid_q_reg),
        .O(E));
  LUT6 #(
    .INIT(64'h8A88AAA88A888A88)) 
    \utmi_data_out_o[0]_INST_0 
       (.I0(\inport_data_q_reg[0] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[0]),
        .I4(\crc_sum_q_reg_n_0_[0] ),
        .I5(state_q[1]),
        .O(utmi_data_out_o[0]));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[0]_INST_0_i_2 
       (.I0(p_0_in[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[0]),
        .O(\crc_sum_q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h8A88AAA88A888A88)) 
    \utmi_data_out_o[1]_INST_0 
       (.I0(\inport_data_q_reg[1] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[1]),
        .I4(\crc_sum_q_reg_n_0_[1] ),
        .I5(state_q[1]),
        .O(utmi_data_out_o[1]));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[1]_INST_0_i_2 
       (.I0(p_0_in[1]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[1]),
        .O(\crc_sum_q_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h4544555445444544)) 
    \utmi_data_out_o[2]_INST_0 
       (.I0(\inport_data_q_reg[2] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[2]),
        .I4(\crc_sum_q_reg_n_0_[2] ),
        .I5(state_q[1]),
        .O(utmi_data_out_o_2_sn_1));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[2]_INST_0_i_2 
       (.I0(p_0_in[2]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[2]),
        .O(\crc_sum_q_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h8A88AAA88A888A88)) 
    \utmi_data_out_o[3]_INST_0 
       (.I0(\inport_data_q_reg[3] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[3]),
        .I4(\crc_sum_q_reg_n_0_[3] ),
        .I5(state_q[1]),
        .O(\utmi_data_out_o[3] ));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[3]_INST_0_i_2 
       (.I0(p_0_in[3]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[3]),
        .O(\crc_sum_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h8A88AAA88A888A88)) 
    \utmi_data_out_o[4]_INST_0 
       (.I0(\inport_data_q_reg[4] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[4]),
        .I4(\crc_sum_q_reg_n_0_[4] ),
        .I5(state_q[1]),
        .O(\utmi_data_out_o[4] ));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[4]_INST_0_i_2 
       (.I0(p_0_in[4]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[4]),
        .O(\crc_sum_q_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \utmi_data_out_o[5]_INST_0 
       (.I0(\utmi_data_out_o[5]_INST_0_i_1_n_0 ),
        .O(utmi_data_out_o[2]));
  LUT6 #(
    .INIT(64'hAAAA88AAF0FFFFFF)) 
    \utmi_data_out_o[5]_INST_0_i_1 
       (.I0(\token_ep_q_reg[1] ),
        .I1(p_0_in[5]),
        .I2(\crc_sum_q_reg_n_0_[5] ),
        .I3(state_q[1]),
        .I4(state_q[0]),
        .I5(state_q[2]),
        .O(\utmi_data_out_o[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAA88A888A88)) 
    \utmi_data_out_o[6]_INST_0 
       (.I0(\inport_data_q_reg[6] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[6]),
        .I4(\crc_sum_q_reg_n_0_[6] ),
        .I5(state_q[1]),
        .O(\utmi_data_out_o[6] ));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[6]_INST_0_i_2 
       (.I0(p_0_in[6]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[6]),
        .O(\crc_sum_q_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h8A88AAA88A888A88)) 
    \utmi_data_out_o[7]_INST_0 
       (.I0(\inport_data_q_reg[7] ),
        .I1(state_q[2]),
        .I2(state_q[0]),
        .I3(data_q[7]),
        .I4(\crc_sum_q_reg_n_0_[7] ),
        .I5(state_q[1]),
        .O(\utmi_data_out_o[7] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \utmi_data_out_o[7]_INST_0_i_2 
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(\token_ep_q_reg[2]_0 ),
        .I3(\token_ep_q_reg[3] ),
        .O(\crc_sum_q_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hFF4F0F4F)) 
    \utmi_data_out_o[7]_INST_0_i_3 
       (.I0(p_0_in[7]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(data_q[7]),
        .O(\crc_sum_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFBF0FB0)) 
    utmi_txvalid_o_INST_0
       (.I0(state_q[1]),
        .I1(inport_valid_q_reg_0),
        .I2(state_q[2]),
        .I3(state_q[0]),
        .I4(valid_q_reg_n_0),
        .O(utmi_txvalid_o));
  LUT5 #(
    .INIT(32'h00000100)) 
    valid_q_i_1
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(tx_valid_q_reg),
        .I4(\se0_cnt_q_reg[14] ),
        .O(valid_q));
  FDCE valid_q_reg
       (.C(clk_i),
        .CE(\data_q[7]_i_1_n_0 ),
        .CLR(rst_i),
        .D(valid_q),
        .Q(valid_q_reg_n_0));
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
