-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:55:23 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_dataSwitch_0_0/brd_dataSwitch_0_0_stub.vhdl
-- Design      : brd_dataSwitch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_dataSwitch_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC;
    select_i : in STD_LOGIC;
    data_vd_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_o_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_o_vd1 : out STD_LOGIC;
    data_o_num1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_o_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_o_vd2 : out STD_LOGIC;
    data_o_num2 : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end brd_dataSwitch_0_0;

architecture stub of brd_dataSwitch_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_n_i,select_i,data_vd_i,data_i[15:0],data_o_1[15:0],data_o_vd1,data_o_num1[63:0],data_o_2[15:0],data_o_vd2,data_o_num2[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dataSwitch,Vivado 2018.1";
begin
end;
