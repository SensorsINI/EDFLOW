--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Mon Jan 10 20:12:19 2022
--Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
--Command     : generate_target brd_wrapper.bd
--Design      : brd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_wrapper is
  port (
    ChipBiasAddrSelect_SBO_0 : out STD_LOGIC;
    ChipBiasBitIn_DO_0 : out STD_LOGIC;
    ChipBiasClock_CBO_0 : out STD_LOGIC;
    ChipBiasDiagSelect_SO_0 : out STD_LOGIC;
    ChipBiasEnable_SO_0 : out STD_LOGIC;
    ChipBiasLatch_SBO_0 : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DVSAERAck_SBO_0 : out STD_LOGIC;
    DVSAERData_AI_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DVSAERReq_ABI_0 : in STD_LOGIC;
    DVSAERReset_SBO_0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IMUClock_CZO_0 : out STD_LOGIC;
    IMUData_DZIO_0 : inout STD_LOGIC;
    IMUFSync_SO_0 : out STD_LOGIC;
    IMUInterrupt_AI_0 : in STD_LOGIC;
    SyncInClock_AI_0 : in STD_LOGIC;
    SyncInSignal1_AI_0 : in STD_LOGIC;
    SyncInSignal2_AI_0 : in STD_LOGIC;
    SyncInSignal_AI_0 : in STD_LOGIC;
    SyncOutClock_CO_0 : out STD_LOGIC;
    SyncOutSignal_SO_0 : out STD_LOGIC;
    led_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ulpi_clk60_i_0 : in STD_LOGIC;
    ulpi_data_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_dir_i_0 : in STD_LOGIC;
    ulpi_nxt_i_0 : in STD_LOGIC;
    ulpi_stp_o_0 : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC
  );
end brd_wrapper;

architecture STRUCTURE of brd_wrapper is
  component brd is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DVSAERData_AI_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DVSAERReq_ABI_0 : in STD_LOGIC;
    IMUInterrupt_AI_0 : in STD_LOGIC;
    led_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    IMUData_DZIO_0 : inout STD_LOGIC;
    SyncInClock_AI_0 : in STD_LOGIC;
    SyncInSignal1_AI_0 : in STD_LOGIC;
    SyncInSignal2_AI_0 : in STD_LOGIC;
    SyncInSignal_AI_0 : in STD_LOGIC;
    ChipBiasAddrSelect_SBO_0 : out STD_LOGIC;
    ChipBiasBitIn_DO_0 : out STD_LOGIC;
    ChipBiasClock_CBO_0 : out STD_LOGIC;
    ChipBiasDiagSelect_SO_0 : out STD_LOGIC;
    ChipBiasEnable_SO_0 : out STD_LOGIC;
    ChipBiasLatch_SBO_0 : out STD_LOGIC;
    DVSAERAck_SBO_0 : out STD_LOGIC;
    DVSAERReset_SBO_0 : out STD_LOGIC;
    IMUClock_CZO_0 : out STD_LOGIC;
    IMUFSync_SO_0 : out STD_LOGIC;
    SyncOutClock_CO_0 : out STD_LOGIC;
    SyncOutSignal_SO_0 : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    ulpi_dir_i_0 : in STD_LOGIC;
    ulpi_nxt_i_0 : in STD_LOGIC;
    ulpi_data_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_stp_o_0 : out STD_LOGIC;
    ulpi_clk60_i_0 : in STD_LOGIC
  );
  end component brd;
begin
brd_i: component brd
     port map (
      ChipBiasAddrSelect_SBO_0 => ChipBiasAddrSelect_SBO_0,
      ChipBiasBitIn_DO_0 => ChipBiasBitIn_DO_0,
      ChipBiasClock_CBO_0 => ChipBiasClock_CBO_0,
      ChipBiasDiagSelect_SO_0 => ChipBiasDiagSelect_SO_0,
      ChipBiasEnable_SO_0 => ChipBiasEnable_SO_0,
      ChipBiasLatch_SBO_0 => ChipBiasLatch_SBO_0,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      DVSAERAck_SBO_0 => DVSAERAck_SBO_0,
      DVSAERData_AI_0(10 downto 0) => DVSAERData_AI_0(10 downto 0),
      DVSAERReq_ABI_0 => DVSAERReq_ABI_0,
      DVSAERReset_SBO_0 => DVSAERReset_SBO_0,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IMUClock_CZO_0 => IMUClock_CZO_0,
      IMUData_DZIO_0 => IMUData_DZIO_0,
      IMUFSync_SO_0 => IMUFSync_SO_0,
      IMUInterrupt_AI_0 => IMUInterrupt_AI_0,
      SyncInClock_AI_0 => SyncInClock_AI_0,
      SyncInSignal1_AI_0 => SyncInSignal1_AI_0,
      SyncInSignal2_AI_0 => SyncInSignal2_AI_0,
      SyncInSignal_AI_0 => SyncInSignal_AI_0,
      SyncOutClock_CO_0 => SyncOutClock_CO_0,
      SyncOutSignal_SO_0 => SyncOutSignal_SO_0,
      led_0(5 downto 0) => led_0(5 downto 0),
      ulpi_clk60_i_0 => ulpi_clk60_i_0,
      ulpi_data_io_0(7 downto 0) => ulpi_data_io_0(7 downto 0),
      ulpi_dir_i_0 => ulpi_dir_i_0,
      ulpi_nxt_i_0 => ulpi_nxt_i_0,
      ulpi_stp_o_0 => ulpi_stp_o_0,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_hsync => vid_hsync,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
