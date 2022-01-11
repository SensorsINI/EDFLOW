-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat May  8 22:22:07 2021
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_eventStreamDuplicate_0_0/brd_eventStreamDuplicate_0_0_stub.vhdl
-- Design      : brd_eventStreamDuplicate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_eventStreamDuplicate_0_0 is
  Port ( 
    s_axi_config_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_config_AWVALID : in STD_LOGIC;
    s_axi_config_AWREADY : out STD_LOGIC;
    s_axi_config_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_WVALID : in STD_LOGIC;
    s_axi_config_WREADY : out STD_LOGIC;
    s_axi_config_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_BVALID : out STD_LOGIC;
    s_axi_config_BREADY : in STD_LOGIC;
    s_axi_config_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_config_ARVALID : in STD_LOGIC;
    s_axi_config_ARREADY : out STD_LOGIC;
    s_axi_config_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_RVALID : out STD_LOGIC;
    s_axi_config_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    xStreamOut0_V_V_TVALID : out STD_LOGIC;
    xStreamOut0_V_V_TREADY : in STD_LOGIC;
    xStreamOut0_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamOut0_V_V_TVALID : out STD_LOGIC;
    yStreamOut0_V_V_TREADY : in STD_LOGIC;
    yStreamOut0_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    polStreamOut0_V_V_TVALID : out STD_LOGIC;
    polStreamOut0_V_V_TREADY : in STD_LOGIC;
    polStreamOut0_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tsStreamOut0_V_V_TVALID : out STD_LOGIC;
    tsStreamOut0_V_V_TREADY : in STD_LOGIC;
    tsStreamOut0_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    custDataStreamOut0_V_V_TVALID : out STD_LOGIC;
    custDataStreamOut0_V_V_TREADY : in STD_LOGIC;
    custDataStreamOut0_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    xStreamOut1_V_V_TVALID : out STD_LOGIC;
    xStreamOut1_V_V_TREADY : in STD_LOGIC;
    xStreamOut1_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamOut1_V_V_TVALID : out STD_LOGIC;
    yStreamOut1_V_V_TREADY : in STD_LOGIC;
    yStreamOut1_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    polStreamOut1_V_V_TVALID : out STD_LOGIC;
    polStreamOut1_V_V_TREADY : in STD_LOGIC;
    polStreamOut1_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tsStreamOut1_V_V_TVALID : out STD_LOGIC;
    tsStreamOut1_V_V_TREADY : in STD_LOGIC;
    tsStreamOut1_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    custDataStreamOut1_V_V_TVALID : out STD_LOGIC;
    custDataStreamOut1_V_V_TREADY : in STD_LOGIC;
    custDataStreamOut1_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    xStreamIn_V_V_TVALID : in STD_LOGIC;
    xStreamIn_V_V_TREADY : out STD_LOGIC;
    xStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn_V_V_TVALID : in STD_LOGIC;
    yStreamIn_V_V_TREADY : out STD_LOGIC;
    yStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn_V_V_TVALID : in STD_LOGIC;
    tsStreamIn_V_V_TREADY : out STD_LOGIC;
    tsStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn_V_V_TVALID : in STD_LOGIC;
    polStreamIn_V_V_TREADY : out STD_LOGIC;
    polStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    custDataStreamIn_V_V_TVALID : in STD_LOGIC;
    custDataStreamIn_V_V_TREADY : out STD_LOGIC;
    custDataStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end brd_eventStreamDuplicate_0_0;

architecture stub of brd_eventStreamDuplicate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_config_AWADDR[4:0],s_axi_config_AWVALID,s_axi_config_AWREADY,s_axi_config_WDATA[31:0],s_axi_config_WSTRB[3:0],s_axi_config_WVALID,s_axi_config_WREADY,s_axi_config_BRESP[1:0],s_axi_config_BVALID,s_axi_config_BREADY,s_axi_config_ARADDR[4:0],s_axi_config_ARVALID,s_axi_config_ARREADY,s_axi_config_RDATA[31:0],s_axi_config_RRESP[1:0],s_axi_config_RVALID,s_axi_config_RREADY,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,xStreamOut0_V_V_TVALID,xStreamOut0_V_V_TREADY,xStreamOut0_V_V_TDATA[15:0],yStreamOut0_V_V_TVALID,yStreamOut0_V_V_TREADY,yStreamOut0_V_V_TDATA[15:0],polStreamOut0_V_V_TVALID,polStreamOut0_V_V_TREADY,polStreamOut0_V_V_TDATA[7:0],tsStreamOut0_V_V_TVALID,tsStreamOut0_V_V_TREADY,tsStreamOut0_V_V_TDATA[63:0],custDataStreamOut0_V_V_TVALID,custDataStreamOut0_V_V_TREADY,custDataStreamOut0_V_V_TDATA[15:0],xStreamOut1_V_V_TVALID,xStreamOut1_V_V_TREADY,xStreamOut1_V_V_TDATA[15:0],yStreamOut1_V_V_TVALID,yStreamOut1_V_V_TREADY,yStreamOut1_V_V_TDATA[15:0],polStreamOut1_V_V_TVALID,polStreamOut1_V_V_TREADY,polStreamOut1_V_V_TDATA[7:0],tsStreamOut1_V_V_TVALID,tsStreamOut1_V_V_TREADY,tsStreamOut1_V_V_TDATA[63:0],custDataStreamOut1_V_V_TVALID,custDataStreamOut1_V_V_TREADY,custDataStreamOut1_V_V_TDATA[15:0],xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],custDataStreamIn_V_V_TVALID,custDataStreamIn_V_V_TREADY,custDataStreamIn_V_V_TDATA[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "eventStreamDuplicate,Vivado 2018.1";
begin
end;
