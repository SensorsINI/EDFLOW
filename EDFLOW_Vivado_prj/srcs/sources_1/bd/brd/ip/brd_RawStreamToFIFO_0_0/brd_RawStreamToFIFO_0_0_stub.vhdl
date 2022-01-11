-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat May  8 22:21:56 2021
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_RawStreamToFIFO_0_0/brd_RawStreamToFIFO_0_0_stub.vhdl
-- Design      : brd_RawStreamToFIFO_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_RawStreamToFIFO_0_0 is
  Port ( 
    fifoIFOutData_V_ap_vld : out STD_LOGIC;
    skippedData_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    lastTsReg_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    streamIn_V_V_TVALID : in STD_LOGIC;
    streamIn_V_V_TREADY : out STD_LOGIC;
    streamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifoIFInFull_n_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoIFOutData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    skippedData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    skipNumReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    lastTsReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end brd_RawStreamToFIFO_0_0;

architecture stub of brd_RawStreamToFIFO_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "fifoIFOutData_V_ap_vld,skippedData_V_ap_vld,nonMonTSDiffFlgReg_V_ap_vld,lastTsReg_V_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,streamIn_V_V_TVALID,streamIn_V_V_TREADY,streamIn_V_V_TDATA[15:0],fifoIFInFull_n_V[0:0],fifoIFOutData_V[15:0],skippedData_V[15:0],nonMonTSDiffFlgReg_V[0:0],skipNumReg_V[63:0],lastTsReg_V[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RawStreamToFIFO,Vivado 2018.1";
begin
end;
