-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:usb_cdc_core:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_usb_cdc_core_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    rst_i : IN STD_LOGIC;
    enable_i : IN STD_LOGIC;
    utmi_data_in_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    utmi_txready_i : IN STD_LOGIC;
    utmi_rxvalid_i : IN STD_LOGIC;
    utmi_rxactive_i : IN STD_LOGIC;
    utmi_rxerror_i : IN STD_LOGIC;
    utmi_linestate_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    inport_valid_i : IN STD_LOGIC;
    inport_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    outport_accept_i : IN STD_LOGIC;
    ctrl_host_ack_i : IN STD_LOGIC;
    setup_token_valid_intr_o : OUT STD_LOGIC;
    setup_valid_conter_q_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    state_r_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    usb_rst_time_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    token_valid_w_do : OUT STD_LOGIC;
    token_dev_w_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    token_ep_w_do : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    current_addr_i_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    reg_dev_addr_i_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    ctrl_sending_r_do : OUT STD_LOGIC;
    ctrl_send_accept_w_do : OUT STD_LOGIC;
    desc_addr_q_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    setup_valid_q_do : OUT STD_LOGIC;
    setup_frame_q_do : OUT STD_LOGIC;
    rx_last_w_do : OUT STD_LOGIC;
    bmRequestType_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    bRequest_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wValue_w_do : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    usb_reset_w_do : OUT STD_LOGIC;
    usb_reset_counter_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    debug_counter_q_do : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    current_token_debug_counter_q_do : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    token_valid_counter_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    setup_wr_idx_q_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ep0_rx_valid_w_do : OUT STD_LOGIC;
    rx_strb_w_do : OUT STD_LOGIC;
    ctrl_txvalid_q_do : OUT STD_LOGIC;
    ctrl_txdata_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ctrl_txstall_q_do : OUT STD_LOGIC;
    ctrl_stall_r_do : OUT STD_LOGIC;
    ctrl_ack_r_do : OUT STD_LOGIC;
    readAXIBRAM_r_do : OUT STD_LOGIC;
    sie_tx_state_q_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    usbf_tx_valid_q_do : OUT STD_LOGIC;
    usbf_tx_pid_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    usbf_state_q_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    usbf_ep_data_bit_r_do : OUT STD_LOGIC;
    usbf_new_data_bit_r_do : OUT STD_LOGIC;
    data_complete_o_do : OUT STD_LOGIC;
    setup_resp_valid_delay_q_do : OUT STD_LOGIC;
    token_valid_cnt_q_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    status_stage_w_do : OUT STD_LOGIC;
    ep2_tx_data_valid_w_do : OUT STD_LOGIC;
    ep2_tx_data_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ep2_tx_data_last_w_do : OUT STD_LOGIC;
    ep2_tx_data_accept_w_do : OUT STD_LOGIC;
    inport_valid_q_do : OUT STD_LOGIC;
    usbfrx_shift_en_w_do : OUT STD_LOGIC;
    usbfrx_data_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    usbfrx_data_ready_w_do : OUT STD_LOGIC;
    usbfrx_crc_byte_w_do : OUT STD_LOGIC;
    usbfrx_rx_active_w_do : OUT STD_LOGIC;
    vendorReqRecived_o : OUT STD_LOGIC;
    axi_bram_addr_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axi_bram_w_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    axi_bram_r_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    utmi_data_out_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    utmi_txvalid_o : OUT STD_LOGIC;
    utmi_op_mode_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    utmi_xcvrselect_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    utmi_termselect_o : OUT STD_LOGIC;
    utmi_dppulldown_o : OUT STD_LOGIC;
    utmi_dmpulldown_o : OUT STD_LOGIC;
    tx_sent_data_counter_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    inport_accept_o : OUT STD_LOGIC;
    outport_valid_o : OUT STD_LOGIC;
    outport_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_out_do : OUT STD_LOGIC;
    ep0_rx_setup_w_do : OUT STD_LOGIC
  );
END brd_usb_cdc_core_0_0;

ARCHITECTURE brd_usb_cdc_core_0_0_arch OF brd_usb_cdc_core_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_usb_cdc_core_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT usb_cdc_core IS
    GENERIC (
      USB_SPEED_HS : STRING
    );
    PORT (
      clk_i : IN STD_LOGIC;
      rst_i : IN STD_LOGIC;
      enable_i : IN STD_LOGIC;
      utmi_data_in_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      utmi_txready_i : IN STD_LOGIC;
      utmi_rxvalid_i : IN STD_LOGIC;
      utmi_rxactive_i : IN STD_LOGIC;
      utmi_rxerror_i : IN STD_LOGIC;
      utmi_linestate_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      inport_valid_i : IN STD_LOGIC;
      inport_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      outport_accept_i : IN STD_LOGIC;
      ctrl_host_ack_i : IN STD_LOGIC;
      setup_token_valid_intr_o : OUT STD_LOGIC;
      setup_valid_conter_q_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      state_r_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      usb_rst_time_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      token_valid_w_do : OUT STD_LOGIC;
      token_dev_w_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      token_ep_w_do : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      current_addr_i_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      reg_dev_addr_i_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      ctrl_sending_r_do : OUT STD_LOGIC;
      ctrl_send_accept_w_do : OUT STD_LOGIC;
      desc_addr_q_do : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      setup_valid_q_do : OUT STD_LOGIC;
      setup_frame_q_do : OUT STD_LOGIC;
      rx_last_w_do : OUT STD_LOGIC;
      bmRequestType_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      bRequest_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      wValue_w_do : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      usb_reset_w_do : OUT STD_LOGIC;
      usb_reset_counter_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      debug_counter_q_do : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      current_token_debug_counter_q_do : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      token_valid_counter_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      setup_wr_idx_q_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ep0_rx_valid_w_do : OUT STD_LOGIC;
      rx_strb_w_do : OUT STD_LOGIC;
      ctrl_txvalid_q_do : OUT STD_LOGIC;
      ctrl_txdata_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ctrl_txstall_q_do : OUT STD_LOGIC;
      ctrl_stall_r_do : OUT STD_LOGIC;
      ctrl_ack_r_do : OUT STD_LOGIC;
      readAXIBRAM_r_do : OUT STD_LOGIC;
      sie_tx_state_q_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      usbf_tx_valid_q_do : OUT STD_LOGIC;
      usbf_tx_pid_q_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      usbf_state_q_do : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      usbf_ep_data_bit_r_do : OUT STD_LOGIC;
      usbf_new_data_bit_r_do : OUT STD_LOGIC;
      data_complete_o_do : OUT STD_LOGIC;
      setup_resp_valid_delay_q_do : OUT STD_LOGIC;
      token_valid_cnt_q_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      status_stage_w_do : OUT STD_LOGIC;
      ep2_tx_data_valid_w_do : OUT STD_LOGIC;
      ep2_tx_data_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ep2_tx_data_last_w_do : OUT STD_LOGIC;
      ep2_tx_data_accept_w_do : OUT STD_LOGIC;
      inport_valid_q_do : OUT STD_LOGIC;
      usbfrx_shift_en_w_do : OUT STD_LOGIC;
      usbfrx_data_w_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      usbfrx_data_ready_w_do : OUT STD_LOGIC;
      usbfrx_crc_byte_w_do : OUT STD_LOGIC;
      usbfrx_rx_active_w_do : OUT STD_LOGIC;
      vendorReqRecived_o : OUT STD_LOGIC;
      axi_bram_addr_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axi_bram_w_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      axi_bram_r_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      utmi_data_out_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      utmi_txvalid_o : OUT STD_LOGIC;
      utmi_op_mode_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      utmi_xcvrselect_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      utmi_termselect_o : OUT STD_LOGIC;
      utmi_dppulldown_o : OUT STD_LOGIC;
      utmi_dmpulldown_o : OUT STD_LOGIC;
      tx_sent_data_counter_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      inport_accept_o : OUT STD_LOGIC;
      outport_valid_o : OUT STD_LOGIC;
      outport_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rx_out_do : OUT STD_LOGIC;
      ep0_rx_setup_w_do : OUT STD_LOGIC
    );
  END COMPONENT usb_cdc_core;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_usb_cdc_core_0_0_arch: ARCHITECTURE IS "usb_cdc_core,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_usb_cdc_core_0_0_arch : ARCHITECTURE IS "brd_usb_cdc_core_0_0,usb_cdc_core,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_usb_cdc_core_0_0_arch: ARCHITECTURE IS "brd_usb_cdc_core_0_0,usb_cdc_core,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=usb_cdc_core,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,USB_SPEED_HS=True}";
BEGIN
  U0 : usb_cdc_core
    GENERIC MAP (
      USB_SPEED_HS => "True"
    )
    PORT MAP (
      clk_i => clk_i,
      rst_i => rst_i,
      enable_i => enable_i,
      utmi_data_in_i => utmi_data_in_i,
      utmi_txready_i => utmi_txready_i,
      utmi_rxvalid_i => utmi_rxvalid_i,
      utmi_rxactive_i => utmi_rxactive_i,
      utmi_rxerror_i => utmi_rxerror_i,
      utmi_linestate_i => utmi_linestate_i,
      inport_valid_i => inport_valid_i,
      inport_data_i => inport_data_i,
      outport_accept_i => outport_accept_i,
      ctrl_host_ack_i => ctrl_host_ack_i,
      setup_token_valid_intr_o => setup_token_valid_intr_o,
      setup_valid_conter_q_o => setup_valid_conter_q_o,
      state_r_do => state_r_do,
      usb_rst_time_do => usb_rst_time_do,
      token_valid_w_do => token_valid_w_do,
      token_dev_w_do => token_dev_w_do,
      token_ep_w_do => token_ep_w_do,
      current_addr_i_do => current_addr_i_do,
      reg_dev_addr_i_do => reg_dev_addr_i_do,
      ctrl_sending_r_do => ctrl_sending_r_do,
      ctrl_send_accept_w_do => ctrl_send_accept_w_do,
      desc_addr_q_do => desc_addr_q_do,
      setup_valid_q_do => setup_valid_q_do,
      setup_frame_q_do => setup_frame_q_do,
      rx_last_w_do => rx_last_w_do,
      bmRequestType_w_do => bmRequestType_w_do,
      bRequest_w_do => bRequest_w_do,
      wValue_w_do => wValue_w_do,
      usb_reset_w_do => usb_reset_w_do,
      usb_reset_counter_q_do => usb_reset_counter_q_do,
      debug_counter_q_do => debug_counter_q_do,
      current_token_debug_counter_q_do => current_token_debug_counter_q_do,
      token_valid_counter_q_do => token_valid_counter_q_do,
      setup_wr_idx_q_do => setup_wr_idx_q_do,
      ep0_rx_valid_w_do => ep0_rx_valid_w_do,
      rx_strb_w_do => rx_strb_w_do,
      ctrl_txvalid_q_do => ctrl_txvalid_q_do,
      ctrl_txdata_q_do => ctrl_txdata_q_do,
      ctrl_txstall_q_do => ctrl_txstall_q_do,
      ctrl_stall_r_do => ctrl_stall_r_do,
      ctrl_ack_r_do => ctrl_ack_r_do,
      readAXIBRAM_r_do => readAXIBRAM_r_do,
      sie_tx_state_q_o => sie_tx_state_q_o,
      usbf_tx_valid_q_do => usbf_tx_valid_q_do,
      usbf_tx_pid_q_do => usbf_tx_pid_q_do,
      usbf_state_q_do => usbf_state_q_do,
      usbf_ep_data_bit_r_do => usbf_ep_data_bit_r_do,
      usbf_new_data_bit_r_do => usbf_new_data_bit_r_do,
      data_complete_o_do => data_complete_o_do,
      setup_resp_valid_delay_q_do => setup_resp_valid_delay_q_do,
      token_valid_cnt_q_do => token_valid_cnt_q_do,
      status_stage_w_do => status_stage_w_do,
      ep2_tx_data_valid_w_do => ep2_tx_data_valid_w_do,
      ep2_tx_data_w_do => ep2_tx_data_w_do,
      ep2_tx_data_last_w_do => ep2_tx_data_last_w_do,
      ep2_tx_data_accept_w_do => ep2_tx_data_accept_w_do,
      inport_valid_q_do => inport_valid_q_do,
      usbfrx_shift_en_w_do => usbfrx_shift_en_w_do,
      usbfrx_data_w_do => usbfrx_data_w_do,
      usbfrx_data_ready_w_do => usbfrx_data_ready_w_do,
      usbfrx_crc_byte_w_do => usbfrx_crc_byte_w_do,
      usbfrx_rx_active_w_do => usbfrx_rx_active_w_do,
      vendorReqRecived_o => vendorReqRecived_o,
      axi_bram_addr_o => axi_bram_addr_o,
      axi_bram_w_data_o => axi_bram_w_data_o,
      axi_bram_r_data_i => axi_bram_r_data_i,
      utmi_data_out_o => utmi_data_out_o,
      utmi_txvalid_o => utmi_txvalid_o,
      utmi_op_mode_o => utmi_op_mode_o,
      utmi_xcvrselect_o => utmi_xcvrselect_o,
      utmi_termselect_o => utmi_termselect_o,
      utmi_dppulldown_o => utmi_dppulldown_o,
      utmi_dmpulldown_o => utmi_dmpulldown_o,
      tx_sent_data_counter_o => tx_sent_data_counter_o,
      inport_accept_o => inport_accept_o,
      outport_valid_o => outport_valid_o,
      outport_data_o => outport_data_o,
      rx_out_do => rx_out_do,
      ep0_rx_setup_w_do => ep0_rx_setup_w_do
    );
END brd_usb_cdc_core_0_0_arch;
