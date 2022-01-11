-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:41:22 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_usb_cdc_core_0_0/brd_usb_cdc_core_0_0_stub.vhdl
-- Design      : brd_usb_cdc_core_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_usb_cdc_core_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    enable_i : in STD_LOGIC;
    utmi_data_in_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_txready_i : in STD_LOGIC;
    utmi_rxvalid_i : in STD_LOGIC;
    utmi_rxactive_i : in STD_LOGIC;
    utmi_rxerror_i : in STD_LOGIC;
    utmi_linestate_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inport_valid_i : in STD_LOGIC;
    inport_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outport_accept_i : in STD_LOGIC;
    ctrl_host_ack_i : in STD_LOGIC;
    setup_token_valid_intr_o : out STD_LOGIC;
    setup_valid_conter_q_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    state_r_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usb_rst_time_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    token_valid_w_do : out STD_LOGIC;
    token_dev_w_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    token_ep_w_do : out STD_LOGIC_VECTOR ( 3 downto 0 );
    current_addr_i_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    reg_dev_addr_i_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ctrl_sending_r_do : out STD_LOGIC;
    ctrl_send_accept_w_do : out STD_LOGIC;
    desc_addr_q_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    setup_valid_q_do : out STD_LOGIC;
    setup_frame_q_do : out STD_LOGIC;
    rx_last_w_do : out STD_LOGIC;
    bmRequestType_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bRequest_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wValue_w_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_reset_w_do : out STD_LOGIC;
    usb_reset_counter_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug_counter_q_do : out STD_LOGIC_VECTOR ( 63 downto 0 );
    current_token_debug_counter_q_do : out STD_LOGIC_VECTOR ( 63 downto 0 );
    token_valid_counter_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    setup_wr_idx_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ep0_rx_valid_w_do : out STD_LOGIC;
    rx_strb_w_do : out STD_LOGIC;
    ctrl_txvalid_q_do : out STD_LOGIC;
    ctrl_txdata_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl_txstall_q_do : out STD_LOGIC;
    ctrl_stall_r_do : out STD_LOGIC;
    ctrl_ack_r_do : out STD_LOGIC;
    readAXIBRAM_r_do : out STD_LOGIC;
    sie_tx_state_q_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usbf_tx_valid_q_do : out STD_LOGIC;
    usbf_tx_pid_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usbf_state_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usbf_ep_data_bit_r_do : out STD_LOGIC;
    usbf_new_data_bit_r_do : out STD_LOGIC;
    data_complete_o_do : out STD_LOGIC;
    setup_resp_valid_delay_q_do : out STD_LOGIC;
    token_valid_cnt_q_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status_stage_w_do : out STD_LOGIC;
    ep2_tx_data_valid_w_do : out STD_LOGIC;
    ep2_tx_data_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ep2_tx_data_last_w_do : out STD_LOGIC;
    ep2_tx_data_accept_w_do : out STD_LOGIC;
    inport_valid_q_do : out STD_LOGIC;
    usbfrx_shift_en_w_do : out STD_LOGIC;
    usbfrx_data_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usbfrx_data_ready_w_do : out STD_LOGIC;
    usbfrx_crc_byte_w_do : out STD_LOGIC;
    usbfrx_rx_active_w_do : out STD_LOGIC;
    vendorReqRecived_o : out STD_LOGIC;
    axi_bram_addr_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_bram_w_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_bram_r_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_data_out_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_txvalid_o : out STD_LOGIC;
    utmi_op_mode_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_xcvrselect_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_termselect_o : out STD_LOGIC;
    utmi_dppulldown_o : out STD_LOGIC;
    utmi_dmpulldown_o : out STD_LOGIC;
    tx_sent_data_counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    inport_accept_o : out STD_LOGIC;
    outport_valid_o : out STD_LOGIC;
    outport_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_out_do : out STD_LOGIC;
    ep0_rx_setup_w_do : out STD_LOGIC
  );

end brd_usb_cdc_core_0_0;

architecture stub of brd_usb_cdc_core_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_i,enable_i,utmi_data_in_i[7:0],utmi_txready_i,utmi_rxvalid_i,utmi_rxactive_i,utmi_rxerror_i,utmi_linestate_i[1:0],inport_valid_i,inport_data_i[7:0],outport_accept_i,ctrl_host_ack_i,setup_token_valid_intr_o,setup_valid_conter_q_o[15:0],state_r_do[2:0],usb_rst_time_do[31:0],token_valid_w_do,token_dev_w_do[6:0],token_ep_w_do[3:0],current_addr_i_do[6:0],reg_dev_addr_i_do[6:0],ctrl_sending_r_do,ctrl_send_accept_w_do,desc_addr_q_do[6:0],setup_valid_q_do,setup_frame_q_do,rx_last_w_do,bmRequestType_w_do[7:0],bRequest_w_do[7:0],wValue_w_do[15:0],usb_reset_w_do,usb_reset_counter_q_do[7:0],debug_counter_q_do[63:0],current_token_debug_counter_q_do[63:0],token_valid_counter_q_do[7:0],setup_wr_idx_q_do[2:0],ep0_rx_valid_w_do,rx_strb_w_do,ctrl_txvalid_q_do,ctrl_txdata_q_do[7:0],ctrl_txstall_q_do,ctrl_stall_r_do,ctrl_ack_r_do,readAXIBRAM_r_do,sie_tx_state_q_o[2:0],usbf_tx_valid_q_do,usbf_tx_pid_q_do[7:0],usbf_state_q_do[2:0],usbf_ep_data_bit_r_do,usbf_new_data_bit_r_do,data_complete_o_do,setup_resp_valid_delay_q_do,token_valid_cnt_q_do[31:0],status_stage_w_do,ep2_tx_data_valid_w_do,ep2_tx_data_w_do[7:0],ep2_tx_data_last_w_do,ep2_tx_data_accept_w_do,inport_valid_q_do,usbfrx_shift_en_w_do,usbfrx_data_w_do[7:0],usbfrx_data_ready_w_do,usbfrx_crc_byte_w_do,usbfrx_rx_active_w_do,vendorReqRecived_o,axi_bram_addr_o[1:0],axi_bram_w_data_o[7:0],axi_bram_r_data_i[7:0],utmi_data_out_o[7:0],utmi_txvalid_o,utmi_op_mode_o[1:0],utmi_xcvrselect_o[1:0],utmi_termselect_o,utmi_dppulldown_o,utmi_dmpulldown_o,tx_sent_data_counter_o[15:0],inport_accept_o,outport_valid_o,outport_data_o[7:0],rx_out_do,ep0_rx_setup_w_do";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "usb_cdc_core,Vivado 2018.1";
begin
end;
