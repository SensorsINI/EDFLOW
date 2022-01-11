-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:55:23 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_dataSwitch_0_0/brd_dataSwitch_0_0_sim_netlist.vhdl
-- Design      : brd_dataSwitch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_dataSwitch_0_0_dataSwitch is
  port (
    data_o_num1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_o_num2 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk_i : in STD_LOGIC;
    data_vd_i : in STD_LOGIC;
    select_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_dataSwitch_0_0_dataSwitch : entity is "dataSwitch";
end brd_dataSwitch_0_0_dataSwitch;

architecture STRUCTURE of brd_dataSwitch_0_0_dataSwitch is
  signal \^data_o_num1\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^data_o_num2\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal numCh1 : STD_LOGIC;
  signal \numCh1[3]_i_2_n_0\ : STD_LOGIC;
  signal \numCh1[63]_i_3_n_0\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[51]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[59]_i_1_n_7\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \numCh1_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \numCh1_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal numCh2 : STD_LOGIC;
  signal \numCh2[3]_i_2_n_0\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[51]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[59]_i_1_n_7\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \numCh2_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \numCh2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_numCh1_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_numCh2_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  data_o_num1(63 downto 0) <= \^data_o_num1\(63 downto 0);
  data_o_num2(63 downto 0) <= \^data_o_num2\(63 downto 0);
\numCh1[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_num1\(0),
      O => \numCh1[3]_i_2_n_0\
    );
\numCh1[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_vd_i,
      I1 => select_i,
      O => numCh1
    );
\numCh1[63]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_i,
      O => \numCh1[63]_i_3_n_0\
    );
\numCh1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[3]_i_1_n_7\,
      Q => \^data_o_num1\(0)
    );
\numCh1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[11]_i_1_n_5\,
      Q => \^data_o_num1\(10)
    );
\numCh1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[11]_i_1_n_4\,
      Q => \^data_o_num1\(11)
    );
\numCh1_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[7]_i_1_n_0\,
      CO(3) => \numCh1_reg[11]_i_1_n_0\,
      CO(2) => \numCh1_reg[11]_i_1_n_1\,
      CO(1) => \numCh1_reg[11]_i_1_n_2\,
      CO(0) => \numCh1_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[11]_i_1_n_4\,
      O(2) => \numCh1_reg[11]_i_1_n_5\,
      O(1) => \numCh1_reg[11]_i_1_n_6\,
      O(0) => \numCh1_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(11 downto 8)
    );
\numCh1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[15]_i_1_n_7\,
      Q => \^data_o_num1\(12)
    );
\numCh1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[15]_i_1_n_6\,
      Q => \^data_o_num1\(13)
    );
\numCh1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[15]_i_1_n_5\,
      Q => \^data_o_num1\(14)
    );
\numCh1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[15]_i_1_n_4\,
      Q => \^data_o_num1\(15)
    );
\numCh1_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[11]_i_1_n_0\,
      CO(3) => \numCh1_reg[15]_i_1_n_0\,
      CO(2) => \numCh1_reg[15]_i_1_n_1\,
      CO(1) => \numCh1_reg[15]_i_1_n_2\,
      CO(0) => \numCh1_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[15]_i_1_n_4\,
      O(2) => \numCh1_reg[15]_i_1_n_5\,
      O(1) => \numCh1_reg[15]_i_1_n_6\,
      O(0) => \numCh1_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(15 downto 12)
    );
\numCh1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[19]_i_1_n_7\,
      Q => \^data_o_num1\(16)
    );
\numCh1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[19]_i_1_n_6\,
      Q => \^data_o_num1\(17)
    );
\numCh1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[19]_i_1_n_5\,
      Q => \^data_o_num1\(18)
    );
\numCh1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[19]_i_1_n_4\,
      Q => \^data_o_num1\(19)
    );
\numCh1_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[15]_i_1_n_0\,
      CO(3) => \numCh1_reg[19]_i_1_n_0\,
      CO(2) => \numCh1_reg[19]_i_1_n_1\,
      CO(1) => \numCh1_reg[19]_i_1_n_2\,
      CO(0) => \numCh1_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[19]_i_1_n_4\,
      O(2) => \numCh1_reg[19]_i_1_n_5\,
      O(1) => \numCh1_reg[19]_i_1_n_6\,
      O(0) => \numCh1_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(19 downto 16)
    );
\numCh1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[3]_i_1_n_6\,
      Q => \^data_o_num1\(1)
    );
\numCh1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[23]_i_1_n_7\,
      Q => \^data_o_num1\(20)
    );
\numCh1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[23]_i_1_n_6\,
      Q => \^data_o_num1\(21)
    );
\numCh1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[23]_i_1_n_5\,
      Q => \^data_o_num1\(22)
    );
\numCh1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[23]_i_1_n_4\,
      Q => \^data_o_num1\(23)
    );
\numCh1_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[19]_i_1_n_0\,
      CO(3) => \numCh1_reg[23]_i_1_n_0\,
      CO(2) => \numCh1_reg[23]_i_1_n_1\,
      CO(1) => \numCh1_reg[23]_i_1_n_2\,
      CO(0) => \numCh1_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[23]_i_1_n_4\,
      O(2) => \numCh1_reg[23]_i_1_n_5\,
      O(1) => \numCh1_reg[23]_i_1_n_6\,
      O(0) => \numCh1_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(23 downto 20)
    );
\numCh1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[27]_i_1_n_7\,
      Q => \^data_o_num1\(24)
    );
\numCh1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[27]_i_1_n_6\,
      Q => \^data_o_num1\(25)
    );
\numCh1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[27]_i_1_n_5\,
      Q => \^data_o_num1\(26)
    );
\numCh1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[27]_i_1_n_4\,
      Q => \^data_o_num1\(27)
    );
\numCh1_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[23]_i_1_n_0\,
      CO(3) => \numCh1_reg[27]_i_1_n_0\,
      CO(2) => \numCh1_reg[27]_i_1_n_1\,
      CO(1) => \numCh1_reg[27]_i_1_n_2\,
      CO(0) => \numCh1_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[27]_i_1_n_4\,
      O(2) => \numCh1_reg[27]_i_1_n_5\,
      O(1) => \numCh1_reg[27]_i_1_n_6\,
      O(0) => \numCh1_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(27 downto 24)
    );
\numCh1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[31]_i_1_n_7\,
      Q => \^data_o_num1\(28)
    );
\numCh1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[31]_i_1_n_6\,
      Q => \^data_o_num1\(29)
    );
\numCh1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[3]_i_1_n_5\,
      Q => \^data_o_num1\(2)
    );
\numCh1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[31]_i_1_n_5\,
      Q => \^data_o_num1\(30)
    );
\numCh1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[31]_i_1_n_4\,
      Q => \^data_o_num1\(31)
    );
\numCh1_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[27]_i_1_n_0\,
      CO(3) => \numCh1_reg[31]_i_1_n_0\,
      CO(2) => \numCh1_reg[31]_i_1_n_1\,
      CO(1) => \numCh1_reg[31]_i_1_n_2\,
      CO(0) => \numCh1_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[31]_i_1_n_4\,
      O(2) => \numCh1_reg[31]_i_1_n_5\,
      O(1) => \numCh1_reg[31]_i_1_n_6\,
      O(0) => \numCh1_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(31 downto 28)
    );
\numCh1_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[35]_i_1_n_7\,
      Q => \^data_o_num1\(32)
    );
\numCh1_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[35]_i_1_n_6\,
      Q => \^data_o_num1\(33)
    );
\numCh1_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[35]_i_1_n_5\,
      Q => \^data_o_num1\(34)
    );
\numCh1_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[35]_i_1_n_4\,
      Q => \^data_o_num1\(35)
    );
\numCh1_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[31]_i_1_n_0\,
      CO(3) => \numCh1_reg[35]_i_1_n_0\,
      CO(2) => \numCh1_reg[35]_i_1_n_1\,
      CO(1) => \numCh1_reg[35]_i_1_n_2\,
      CO(0) => \numCh1_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[35]_i_1_n_4\,
      O(2) => \numCh1_reg[35]_i_1_n_5\,
      O(1) => \numCh1_reg[35]_i_1_n_6\,
      O(0) => \numCh1_reg[35]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(35 downto 32)
    );
\numCh1_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[39]_i_1_n_7\,
      Q => \^data_o_num1\(36)
    );
\numCh1_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[39]_i_1_n_6\,
      Q => \^data_o_num1\(37)
    );
\numCh1_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[39]_i_1_n_5\,
      Q => \^data_o_num1\(38)
    );
\numCh1_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[39]_i_1_n_4\,
      Q => \^data_o_num1\(39)
    );
\numCh1_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[35]_i_1_n_0\,
      CO(3) => \numCh1_reg[39]_i_1_n_0\,
      CO(2) => \numCh1_reg[39]_i_1_n_1\,
      CO(1) => \numCh1_reg[39]_i_1_n_2\,
      CO(0) => \numCh1_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[39]_i_1_n_4\,
      O(2) => \numCh1_reg[39]_i_1_n_5\,
      O(1) => \numCh1_reg[39]_i_1_n_6\,
      O(0) => \numCh1_reg[39]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(39 downto 36)
    );
\numCh1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[3]_i_1_n_4\,
      Q => \^data_o_num1\(3)
    );
\numCh1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \numCh1_reg[3]_i_1_n_0\,
      CO(2) => \numCh1_reg[3]_i_1_n_1\,
      CO(1) => \numCh1_reg[3]_i_1_n_2\,
      CO(0) => \numCh1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \numCh1_reg[3]_i_1_n_4\,
      O(2) => \numCh1_reg[3]_i_1_n_5\,
      O(1) => \numCh1_reg[3]_i_1_n_6\,
      O(0) => \numCh1_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^data_o_num1\(3 downto 1),
      S(0) => \numCh1[3]_i_2_n_0\
    );
\numCh1_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[43]_i_1_n_7\,
      Q => \^data_o_num1\(40)
    );
\numCh1_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[43]_i_1_n_6\,
      Q => \^data_o_num1\(41)
    );
\numCh1_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[43]_i_1_n_5\,
      Q => \^data_o_num1\(42)
    );
\numCh1_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[43]_i_1_n_4\,
      Q => \^data_o_num1\(43)
    );
\numCh1_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[39]_i_1_n_0\,
      CO(3) => \numCh1_reg[43]_i_1_n_0\,
      CO(2) => \numCh1_reg[43]_i_1_n_1\,
      CO(1) => \numCh1_reg[43]_i_1_n_2\,
      CO(0) => \numCh1_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[43]_i_1_n_4\,
      O(2) => \numCh1_reg[43]_i_1_n_5\,
      O(1) => \numCh1_reg[43]_i_1_n_6\,
      O(0) => \numCh1_reg[43]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(43 downto 40)
    );
\numCh1_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[47]_i_1_n_7\,
      Q => \^data_o_num1\(44)
    );
\numCh1_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[47]_i_1_n_6\,
      Q => \^data_o_num1\(45)
    );
\numCh1_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[47]_i_1_n_5\,
      Q => \^data_o_num1\(46)
    );
\numCh1_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[47]_i_1_n_4\,
      Q => \^data_o_num1\(47)
    );
\numCh1_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[43]_i_1_n_0\,
      CO(3) => \numCh1_reg[47]_i_1_n_0\,
      CO(2) => \numCh1_reg[47]_i_1_n_1\,
      CO(1) => \numCh1_reg[47]_i_1_n_2\,
      CO(0) => \numCh1_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[47]_i_1_n_4\,
      O(2) => \numCh1_reg[47]_i_1_n_5\,
      O(1) => \numCh1_reg[47]_i_1_n_6\,
      O(0) => \numCh1_reg[47]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(47 downto 44)
    );
\numCh1_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[51]_i_1_n_7\,
      Q => \^data_o_num1\(48)
    );
\numCh1_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[51]_i_1_n_6\,
      Q => \^data_o_num1\(49)
    );
\numCh1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[7]_i_1_n_7\,
      Q => \^data_o_num1\(4)
    );
\numCh1_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[51]_i_1_n_5\,
      Q => \^data_o_num1\(50)
    );
\numCh1_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[51]_i_1_n_4\,
      Q => \^data_o_num1\(51)
    );
\numCh1_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[47]_i_1_n_0\,
      CO(3) => \numCh1_reg[51]_i_1_n_0\,
      CO(2) => \numCh1_reg[51]_i_1_n_1\,
      CO(1) => \numCh1_reg[51]_i_1_n_2\,
      CO(0) => \numCh1_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[51]_i_1_n_4\,
      O(2) => \numCh1_reg[51]_i_1_n_5\,
      O(1) => \numCh1_reg[51]_i_1_n_6\,
      O(0) => \numCh1_reg[51]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(51 downto 48)
    );
\numCh1_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[55]_i_1_n_7\,
      Q => \^data_o_num1\(52)
    );
\numCh1_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[55]_i_1_n_6\,
      Q => \^data_o_num1\(53)
    );
\numCh1_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[55]_i_1_n_5\,
      Q => \^data_o_num1\(54)
    );
\numCh1_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[55]_i_1_n_4\,
      Q => \^data_o_num1\(55)
    );
\numCh1_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[51]_i_1_n_0\,
      CO(3) => \numCh1_reg[55]_i_1_n_0\,
      CO(2) => \numCh1_reg[55]_i_1_n_1\,
      CO(1) => \numCh1_reg[55]_i_1_n_2\,
      CO(0) => \numCh1_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[55]_i_1_n_4\,
      O(2) => \numCh1_reg[55]_i_1_n_5\,
      O(1) => \numCh1_reg[55]_i_1_n_6\,
      O(0) => \numCh1_reg[55]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(55 downto 52)
    );
\numCh1_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[59]_i_1_n_7\,
      Q => \^data_o_num1\(56)
    );
\numCh1_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[59]_i_1_n_6\,
      Q => \^data_o_num1\(57)
    );
\numCh1_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[59]_i_1_n_5\,
      Q => \^data_o_num1\(58)
    );
\numCh1_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[59]_i_1_n_4\,
      Q => \^data_o_num1\(59)
    );
\numCh1_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[55]_i_1_n_0\,
      CO(3) => \numCh1_reg[59]_i_1_n_0\,
      CO(2) => \numCh1_reg[59]_i_1_n_1\,
      CO(1) => \numCh1_reg[59]_i_1_n_2\,
      CO(0) => \numCh1_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[59]_i_1_n_4\,
      O(2) => \numCh1_reg[59]_i_1_n_5\,
      O(1) => \numCh1_reg[59]_i_1_n_6\,
      O(0) => \numCh1_reg[59]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(59 downto 56)
    );
\numCh1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[7]_i_1_n_6\,
      Q => \^data_o_num1\(5)
    );
\numCh1_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[63]_i_2_n_7\,
      Q => \^data_o_num1\(60)
    );
\numCh1_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[63]_i_2_n_6\,
      Q => \^data_o_num1\(61)
    );
\numCh1_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[63]_i_2_n_5\,
      Q => \^data_o_num1\(62)
    );
\numCh1_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[63]_i_2_n_4\,
      Q => \^data_o_num1\(63)
    );
\numCh1_reg[63]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[59]_i_1_n_0\,
      CO(3) => \NLW_numCh1_reg[63]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \numCh1_reg[63]_i_2_n_1\,
      CO(1) => \numCh1_reg[63]_i_2_n_2\,
      CO(0) => \numCh1_reg[63]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[63]_i_2_n_4\,
      O(2) => \numCh1_reg[63]_i_2_n_5\,
      O(1) => \numCh1_reg[63]_i_2_n_6\,
      O(0) => \numCh1_reg[63]_i_2_n_7\,
      S(3 downto 0) => \^data_o_num1\(63 downto 60)
    );
\numCh1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[7]_i_1_n_5\,
      Q => \^data_o_num1\(6)
    );
\numCh1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[7]_i_1_n_4\,
      Q => \^data_o_num1\(7)
    );
\numCh1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh1_reg[3]_i_1_n_0\,
      CO(3) => \numCh1_reg[7]_i_1_n_0\,
      CO(2) => \numCh1_reg[7]_i_1_n_1\,
      CO(1) => \numCh1_reg[7]_i_1_n_2\,
      CO(0) => \numCh1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh1_reg[7]_i_1_n_4\,
      O(2) => \numCh1_reg[7]_i_1_n_5\,
      O(1) => \numCh1_reg[7]_i_1_n_6\,
      O(0) => \numCh1_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num1\(7 downto 4)
    );
\numCh1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[11]_i_1_n_7\,
      Q => \^data_o_num1\(8)
    );
\numCh1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh1,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh1_reg[11]_i_1_n_6\,
      Q => \^data_o_num1\(9)
    );
\numCh2[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_num2\(0),
      O => \numCh2[3]_i_2_n_0\
    );
\numCh2[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_vd_i,
      I1 => select_i,
      O => numCh2
    );
\numCh2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[3]_i_1_n_7\,
      Q => \^data_o_num2\(0)
    );
\numCh2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[11]_i_1_n_5\,
      Q => \^data_o_num2\(10)
    );
\numCh2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[11]_i_1_n_4\,
      Q => \^data_o_num2\(11)
    );
\numCh2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[7]_i_1_n_0\,
      CO(3) => \numCh2_reg[11]_i_1_n_0\,
      CO(2) => \numCh2_reg[11]_i_1_n_1\,
      CO(1) => \numCh2_reg[11]_i_1_n_2\,
      CO(0) => \numCh2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[11]_i_1_n_4\,
      O(2) => \numCh2_reg[11]_i_1_n_5\,
      O(1) => \numCh2_reg[11]_i_1_n_6\,
      O(0) => \numCh2_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(11 downto 8)
    );
\numCh2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[15]_i_1_n_7\,
      Q => \^data_o_num2\(12)
    );
\numCh2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[15]_i_1_n_6\,
      Q => \^data_o_num2\(13)
    );
\numCh2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[15]_i_1_n_5\,
      Q => \^data_o_num2\(14)
    );
\numCh2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[15]_i_1_n_4\,
      Q => \^data_o_num2\(15)
    );
\numCh2_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[11]_i_1_n_0\,
      CO(3) => \numCh2_reg[15]_i_1_n_0\,
      CO(2) => \numCh2_reg[15]_i_1_n_1\,
      CO(1) => \numCh2_reg[15]_i_1_n_2\,
      CO(0) => \numCh2_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[15]_i_1_n_4\,
      O(2) => \numCh2_reg[15]_i_1_n_5\,
      O(1) => \numCh2_reg[15]_i_1_n_6\,
      O(0) => \numCh2_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(15 downto 12)
    );
\numCh2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[19]_i_1_n_7\,
      Q => \^data_o_num2\(16)
    );
\numCh2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[19]_i_1_n_6\,
      Q => \^data_o_num2\(17)
    );
\numCh2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[19]_i_1_n_5\,
      Q => \^data_o_num2\(18)
    );
\numCh2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[19]_i_1_n_4\,
      Q => \^data_o_num2\(19)
    );
\numCh2_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[15]_i_1_n_0\,
      CO(3) => \numCh2_reg[19]_i_1_n_0\,
      CO(2) => \numCh2_reg[19]_i_1_n_1\,
      CO(1) => \numCh2_reg[19]_i_1_n_2\,
      CO(0) => \numCh2_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[19]_i_1_n_4\,
      O(2) => \numCh2_reg[19]_i_1_n_5\,
      O(1) => \numCh2_reg[19]_i_1_n_6\,
      O(0) => \numCh2_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(19 downto 16)
    );
\numCh2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[3]_i_1_n_6\,
      Q => \^data_o_num2\(1)
    );
\numCh2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[23]_i_1_n_7\,
      Q => \^data_o_num2\(20)
    );
\numCh2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[23]_i_1_n_6\,
      Q => \^data_o_num2\(21)
    );
\numCh2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[23]_i_1_n_5\,
      Q => \^data_o_num2\(22)
    );
\numCh2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[23]_i_1_n_4\,
      Q => \^data_o_num2\(23)
    );
\numCh2_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[19]_i_1_n_0\,
      CO(3) => \numCh2_reg[23]_i_1_n_0\,
      CO(2) => \numCh2_reg[23]_i_1_n_1\,
      CO(1) => \numCh2_reg[23]_i_1_n_2\,
      CO(0) => \numCh2_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[23]_i_1_n_4\,
      O(2) => \numCh2_reg[23]_i_1_n_5\,
      O(1) => \numCh2_reg[23]_i_1_n_6\,
      O(0) => \numCh2_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(23 downto 20)
    );
\numCh2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[27]_i_1_n_7\,
      Q => \^data_o_num2\(24)
    );
\numCh2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[27]_i_1_n_6\,
      Q => \^data_o_num2\(25)
    );
\numCh2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[27]_i_1_n_5\,
      Q => \^data_o_num2\(26)
    );
\numCh2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[27]_i_1_n_4\,
      Q => \^data_o_num2\(27)
    );
\numCh2_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[23]_i_1_n_0\,
      CO(3) => \numCh2_reg[27]_i_1_n_0\,
      CO(2) => \numCh2_reg[27]_i_1_n_1\,
      CO(1) => \numCh2_reg[27]_i_1_n_2\,
      CO(0) => \numCh2_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[27]_i_1_n_4\,
      O(2) => \numCh2_reg[27]_i_1_n_5\,
      O(1) => \numCh2_reg[27]_i_1_n_6\,
      O(0) => \numCh2_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(27 downto 24)
    );
\numCh2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[31]_i_1_n_7\,
      Q => \^data_o_num2\(28)
    );
\numCh2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[31]_i_1_n_6\,
      Q => \^data_o_num2\(29)
    );
\numCh2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[3]_i_1_n_5\,
      Q => \^data_o_num2\(2)
    );
\numCh2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[31]_i_1_n_5\,
      Q => \^data_o_num2\(30)
    );
\numCh2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[31]_i_1_n_4\,
      Q => \^data_o_num2\(31)
    );
\numCh2_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[27]_i_1_n_0\,
      CO(3) => \numCh2_reg[31]_i_1_n_0\,
      CO(2) => \numCh2_reg[31]_i_1_n_1\,
      CO(1) => \numCh2_reg[31]_i_1_n_2\,
      CO(0) => \numCh2_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[31]_i_1_n_4\,
      O(2) => \numCh2_reg[31]_i_1_n_5\,
      O(1) => \numCh2_reg[31]_i_1_n_6\,
      O(0) => \numCh2_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(31 downto 28)
    );
\numCh2_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[35]_i_1_n_7\,
      Q => \^data_o_num2\(32)
    );
\numCh2_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[35]_i_1_n_6\,
      Q => \^data_o_num2\(33)
    );
\numCh2_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[35]_i_1_n_5\,
      Q => \^data_o_num2\(34)
    );
\numCh2_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[35]_i_1_n_4\,
      Q => \^data_o_num2\(35)
    );
\numCh2_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[31]_i_1_n_0\,
      CO(3) => \numCh2_reg[35]_i_1_n_0\,
      CO(2) => \numCh2_reg[35]_i_1_n_1\,
      CO(1) => \numCh2_reg[35]_i_1_n_2\,
      CO(0) => \numCh2_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[35]_i_1_n_4\,
      O(2) => \numCh2_reg[35]_i_1_n_5\,
      O(1) => \numCh2_reg[35]_i_1_n_6\,
      O(0) => \numCh2_reg[35]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(35 downto 32)
    );
\numCh2_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[39]_i_1_n_7\,
      Q => \^data_o_num2\(36)
    );
\numCh2_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[39]_i_1_n_6\,
      Q => \^data_o_num2\(37)
    );
\numCh2_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[39]_i_1_n_5\,
      Q => \^data_o_num2\(38)
    );
\numCh2_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[39]_i_1_n_4\,
      Q => \^data_o_num2\(39)
    );
\numCh2_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[35]_i_1_n_0\,
      CO(3) => \numCh2_reg[39]_i_1_n_0\,
      CO(2) => \numCh2_reg[39]_i_1_n_1\,
      CO(1) => \numCh2_reg[39]_i_1_n_2\,
      CO(0) => \numCh2_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[39]_i_1_n_4\,
      O(2) => \numCh2_reg[39]_i_1_n_5\,
      O(1) => \numCh2_reg[39]_i_1_n_6\,
      O(0) => \numCh2_reg[39]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(39 downto 36)
    );
\numCh2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[3]_i_1_n_4\,
      Q => \^data_o_num2\(3)
    );
\numCh2_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \numCh2_reg[3]_i_1_n_0\,
      CO(2) => \numCh2_reg[3]_i_1_n_1\,
      CO(1) => \numCh2_reg[3]_i_1_n_2\,
      CO(0) => \numCh2_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \numCh2_reg[3]_i_1_n_4\,
      O(2) => \numCh2_reg[3]_i_1_n_5\,
      O(1) => \numCh2_reg[3]_i_1_n_6\,
      O(0) => \numCh2_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^data_o_num2\(3 downto 1),
      S(0) => \numCh2[3]_i_2_n_0\
    );
\numCh2_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[43]_i_1_n_7\,
      Q => \^data_o_num2\(40)
    );
\numCh2_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[43]_i_1_n_6\,
      Q => \^data_o_num2\(41)
    );
\numCh2_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[43]_i_1_n_5\,
      Q => \^data_o_num2\(42)
    );
\numCh2_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[43]_i_1_n_4\,
      Q => \^data_o_num2\(43)
    );
\numCh2_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[39]_i_1_n_0\,
      CO(3) => \numCh2_reg[43]_i_1_n_0\,
      CO(2) => \numCh2_reg[43]_i_1_n_1\,
      CO(1) => \numCh2_reg[43]_i_1_n_2\,
      CO(0) => \numCh2_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[43]_i_1_n_4\,
      O(2) => \numCh2_reg[43]_i_1_n_5\,
      O(1) => \numCh2_reg[43]_i_1_n_6\,
      O(0) => \numCh2_reg[43]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(43 downto 40)
    );
\numCh2_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[47]_i_1_n_7\,
      Q => \^data_o_num2\(44)
    );
\numCh2_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[47]_i_1_n_6\,
      Q => \^data_o_num2\(45)
    );
\numCh2_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[47]_i_1_n_5\,
      Q => \^data_o_num2\(46)
    );
\numCh2_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[47]_i_1_n_4\,
      Q => \^data_o_num2\(47)
    );
\numCh2_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[43]_i_1_n_0\,
      CO(3) => \numCh2_reg[47]_i_1_n_0\,
      CO(2) => \numCh2_reg[47]_i_1_n_1\,
      CO(1) => \numCh2_reg[47]_i_1_n_2\,
      CO(0) => \numCh2_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[47]_i_1_n_4\,
      O(2) => \numCh2_reg[47]_i_1_n_5\,
      O(1) => \numCh2_reg[47]_i_1_n_6\,
      O(0) => \numCh2_reg[47]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(47 downto 44)
    );
\numCh2_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[51]_i_1_n_7\,
      Q => \^data_o_num2\(48)
    );
\numCh2_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[51]_i_1_n_6\,
      Q => \^data_o_num2\(49)
    );
\numCh2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[7]_i_1_n_7\,
      Q => \^data_o_num2\(4)
    );
\numCh2_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[51]_i_1_n_5\,
      Q => \^data_o_num2\(50)
    );
\numCh2_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[51]_i_1_n_4\,
      Q => \^data_o_num2\(51)
    );
\numCh2_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[47]_i_1_n_0\,
      CO(3) => \numCh2_reg[51]_i_1_n_0\,
      CO(2) => \numCh2_reg[51]_i_1_n_1\,
      CO(1) => \numCh2_reg[51]_i_1_n_2\,
      CO(0) => \numCh2_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[51]_i_1_n_4\,
      O(2) => \numCh2_reg[51]_i_1_n_5\,
      O(1) => \numCh2_reg[51]_i_1_n_6\,
      O(0) => \numCh2_reg[51]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(51 downto 48)
    );
\numCh2_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[55]_i_1_n_7\,
      Q => \^data_o_num2\(52)
    );
\numCh2_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[55]_i_1_n_6\,
      Q => \^data_o_num2\(53)
    );
\numCh2_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[55]_i_1_n_5\,
      Q => \^data_o_num2\(54)
    );
\numCh2_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[55]_i_1_n_4\,
      Q => \^data_o_num2\(55)
    );
\numCh2_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[51]_i_1_n_0\,
      CO(3) => \numCh2_reg[55]_i_1_n_0\,
      CO(2) => \numCh2_reg[55]_i_1_n_1\,
      CO(1) => \numCh2_reg[55]_i_1_n_2\,
      CO(0) => \numCh2_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[55]_i_1_n_4\,
      O(2) => \numCh2_reg[55]_i_1_n_5\,
      O(1) => \numCh2_reg[55]_i_1_n_6\,
      O(0) => \numCh2_reg[55]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(55 downto 52)
    );
\numCh2_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[59]_i_1_n_7\,
      Q => \^data_o_num2\(56)
    );
\numCh2_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[59]_i_1_n_6\,
      Q => \^data_o_num2\(57)
    );
\numCh2_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[59]_i_1_n_5\,
      Q => \^data_o_num2\(58)
    );
\numCh2_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[59]_i_1_n_4\,
      Q => \^data_o_num2\(59)
    );
\numCh2_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[55]_i_1_n_0\,
      CO(3) => \numCh2_reg[59]_i_1_n_0\,
      CO(2) => \numCh2_reg[59]_i_1_n_1\,
      CO(1) => \numCh2_reg[59]_i_1_n_2\,
      CO(0) => \numCh2_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[59]_i_1_n_4\,
      O(2) => \numCh2_reg[59]_i_1_n_5\,
      O(1) => \numCh2_reg[59]_i_1_n_6\,
      O(0) => \numCh2_reg[59]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(59 downto 56)
    );
\numCh2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[7]_i_1_n_6\,
      Q => \^data_o_num2\(5)
    );
\numCh2_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[63]_i_2_n_7\,
      Q => \^data_o_num2\(60)
    );
\numCh2_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[63]_i_2_n_6\,
      Q => \^data_o_num2\(61)
    );
\numCh2_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[63]_i_2_n_5\,
      Q => \^data_o_num2\(62)
    );
\numCh2_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[63]_i_2_n_4\,
      Q => \^data_o_num2\(63)
    );
\numCh2_reg[63]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[59]_i_1_n_0\,
      CO(3) => \NLW_numCh2_reg[63]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \numCh2_reg[63]_i_2_n_1\,
      CO(1) => \numCh2_reg[63]_i_2_n_2\,
      CO(0) => \numCh2_reg[63]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[63]_i_2_n_4\,
      O(2) => \numCh2_reg[63]_i_2_n_5\,
      O(1) => \numCh2_reg[63]_i_2_n_6\,
      O(0) => \numCh2_reg[63]_i_2_n_7\,
      S(3 downto 0) => \^data_o_num2\(63 downto 60)
    );
\numCh2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[7]_i_1_n_5\,
      Q => \^data_o_num2\(6)
    );
\numCh2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[7]_i_1_n_4\,
      Q => \^data_o_num2\(7)
    );
\numCh2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \numCh2_reg[3]_i_1_n_0\,
      CO(3) => \numCh2_reg[7]_i_1_n_0\,
      CO(2) => \numCh2_reg[7]_i_1_n_1\,
      CO(1) => \numCh2_reg[7]_i_1_n_2\,
      CO(0) => \numCh2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \numCh2_reg[7]_i_1_n_4\,
      O(2) => \numCh2_reg[7]_i_1_n_5\,
      O(1) => \numCh2_reg[7]_i_1_n_6\,
      O(0) => \numCh2_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^data_o_num2\(7 downto 4)
    );
\numCh2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[11]_i_1_n_7\,
      Q => \^data_o_num2\(8)
    );
\numCh2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => numCh2,
      CLR => \numCh1[63]_i_3_n_0\,
      D => \numCh2_reg[11]_i_1_n_6\,
      Q => \^data_o_num2\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_dataSwitch_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_dataSwitch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_dataSwitch_0_0 : entity is "brd_dataSwitch_0_0,dataSwitch,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_dataSwitch_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_dataSwitch_0_0 : entity is "dataSwitch,Vivado 2018.1";
end brd_dataSwitch_0_0;

architecture STRUCTURE of brd_dataSwitch_0_0 is
  signal \^data_i\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \^data_i\(15 downto 0) <= data_i(15 downto 0);
  data_o_1(15 downto 0) <= \^data_i\(15 downto 0);
  data_o_2(15 downto 0) <= \^data_i\(15 downto 0);
U0: entity work.brd_dataSwitch_0_0_dataSwitch
     port map (
      clk_i => clk_i,
      data_o_num1(63 downto 0) => data_o_num1(63 downto 0),
      data_o_num2(63 downto 0) => data_o_num2(63 downto 0),
      data_vd_i => data_vd_i,
      rst_n_i => rst_n_i,
      select_i => select_i
    );
data_o_vd1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_vd_i,
      I1 => select_i,
      O => data_o_vd1
    );
data_o_vd2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => select_i,
      I1 => data_vd_i,
      O => data_o_vd2
    );
end STRUCTURE;
