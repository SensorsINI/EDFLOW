// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:41:22 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_usb_cdc_core_0_0/brd_usb_cdc_core_0_0_stub.v
// Design      : brd_usb_cdc_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "usb_cdc_core,Vivado 2018.1" *)
module brd_usb_cdc_core_0_0(clk_i, rst_i, enable_i, utmi_data_in_i, 
  utmi_txready_i, utmi_rxvalid_i, utmi_rxactive_i, utmi_rxerror_i, utmi_linestate_i, 
  inport_valid_i, inport_data_i, outport_accept_i, ctrl_host_ack_i, 
  setup_token_valid_intr_o, setup_valid_conter_q_o, state_r_do, usb_rst_time_do, 
  token_valid_w_do, token_dev_w_do, token_ep_w_do, current_addr_i_do, reg_dev_addr_i_do, 
  ctrl_sending_r_do, ctrl_send_accept_w_do, desc_addr_q_do, setup_valid_q_do, 
  setup_frame_q_do, rx_last_w_do, bmRequestType_w_do, bRequest_w_do, wValue_w_do, 
  usb_reset_w_do, usb_reset_counter_q_do, debug_counter_q_do, 
  current_token_debug_counter_q_do, token_valid_counter_q_do, setup_wr_idx_q_do, 
  ep0_rx_valid_w_do, rx_strb_w_do, ctrl_txvalid_q_do, ctrl_txdata_q_do, ctrl_txstall_q_do, 
  ctrl_stall_r_do, ctrl_ack_r_do, readAXIBRAM_r_do, sie_tx_state_q_o, usbf_tx_valid_q_do, 
  usbf_tx_pid_q_do, usbf_state_q_do, usbf_ep_data_bit_r_do, usbf_new_data_bit_r_do, 
  data_complete_o_do, setup_resp_valid_delay_q_do, token_valid_cnt_q_do, 
  status_stage_w_do, ep2_tx_data_valid_w_do, ep2_tx_data_w_do, ep2_tx_data_last_w_do, 
  ep2_tx_data_accept_w_do, inport_valid_q_do, usbfrx_shift_en_w_do, usbfrx_data_w_do, 
  usbfrx_data_ready_w_do, usbfrx_crc_byte_w_do, usbfrx_rx_active_w_do, 
  vendorReqRecived_o, axi_bram_addr_o, axi_bram_w_data_o, axi_bram_r_data_i, 
  utmi_data_out_o, utmi_txvalid_o, utmi_op_mode_o, utmi_xcvrselect_o, utmi_termselect_o, 
  utmi_dppulldown_o, utmi_dmpulldown_o, tx_sent_data_counter_o, inport_accept_o, 
  outport_valid_o, outport_data_o, rx_out_do, ep0_rx_setup_w_do)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_i,enable_i,utmi_data_in_i[7:0],utmi_txready_i,utmi_rxvalid_i,utmi_rxactive_i,utmi_rxerror_i,utmi_linestate_i[1:0],inport_valid_i,inport_data_i[7:0],outport_accept_i,ctrl_host_ack_i,setup_token_valid_intr_o,setup_valid_conter_q_o[15:0],state_r_do[2:0],usb_rst_time_do[31:0],token_valid_w_do,token_dev_w_do[6:0],token_ep_w_do[3:0],current_addr_i_do[6:0],reg_dev_addr_i_do[6:0],ctrl_sending_r_do,ctrl_send_accept_w_do,desc_addr_q_do[6:0],setup_valid_q_do,setup_frame_q_do,rx_last_w_do,bmRequestType_w_do[7:0],bRequest_w_do[7:0],wValue_w_do[15:0],usb_reset_w_do,usb_reset_counter_q_do[7:0],debug_counter_q_do[63:0],current_token_debug_counter_q_do[63:0],token_valid_counter_q_do[7:0],setup_wr_idx_q_do[2:0],ep0_rx_valid_w_do,rx_strb_w_do,ctrl_txvalid_q_do,ctrl_txdata_q_do[7:0],ctrl_txstall_q_do,ctrl_stall_r_do,ctrl_ack_r_do,readAXIBRAM_r_do,sie_tx_state_q_o[2:0],usbf_tx_valid_q_do,usbf_tx_pid_q_do[7:0],usbf_state_q_do[2:0],usbf_ep_data_bit_r_do,usbf_new_data_bit_r_do,data_complete_o_do,setup_resp_valid_delay_q_do,token_valid_cnt_q_do[31:0],status_stage_w_do,ep2_tx_data_valid_w_do,ep2_tx_data_w_do[7:0],ep2_tx_data_last_w_do,ep2_tx_data_accept_w_do,inport_valid_q_do,usbfrx_shift_en_w_do,usbfrx_data_w_do[7:0],usbfrx_data_ready_w_do,usbfrx_crc_byte_w_do,usbfrx_rx_active_w_do,vendorReqRecived_o,axi_bram_addr_o[1:0],axi_bram_w_data_o[7:0],axi_bram_r_data_i[7:0],utmi_data_out_o[7:0],utmi_txvalid_o,utmi_op_mode_o[1:0],utmi_xcvrselect_o[1:0],utmi_termselect_o,utmi_dppulldown_o,utmi_dmpulldown_o,tx_sent_data_counter_o[15:0],inport_accept_o,outport_valid_o,outport_data_o[7:0],rx_out_do,ep0_rx_setup_w_do" */;
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
endmodule
