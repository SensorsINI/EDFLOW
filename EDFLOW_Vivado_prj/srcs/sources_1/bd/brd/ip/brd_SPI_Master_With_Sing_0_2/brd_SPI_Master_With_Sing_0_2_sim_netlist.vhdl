-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:38:05 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_SPI_Master_With_Sing_0_2/brd_SPI_Master_With_Sing_0_2_sim_netlist.vhdl
-- Design      : brd_SPI_Master_With_Sing_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_SPI_Master_With_Sing_0_2_SPI_Master is
  port (
    w_Master_Ready_do : out STD_LOGIC;
    o_TX_Ready_reg_0 : out STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_SPI_Clk : out STD_LOGIC;
    o_SPI_MOSI : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_r_SM_CS_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_r_SM_CS_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_r_SM_CS_reg[0]\ : out STD_LOGIC;
    r_TX_Count_0 : out STD_LOGIC;
    \r_TX_Bit_Count_do[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_TX_Ready : out STD_LOGIC;
    r_CS_n_reg : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 47 downto 0 );
    i_Clk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r_CS_n_reg_0 : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_SM_CS1__2\ : in STD_LOGIC;
    r_CS_Inactive_Count : in STD_LOGIC_VECTOR ( 0 to 1 );
    i_Rst_L : in STD_LOGIC;
    i_SPI_MISO : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_SPI_Master_With_Sing_0_2_SPI_Master : entity is "SPI_Master";
end brd_SPI_Master_With_Sing_0_2_SPI_Master;

architecture STRUCTURE of brd_SPI_Master_With_Sing_0_2_SPI_Master is
  signal \FSM_onehot_r_SM_CS[2]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^o_rx_byte\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \o_RX_Byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[15]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[16]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[17]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[18]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[20]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[21]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[22]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[23]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[23]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[24]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[25]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[26]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[27]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[28]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[29]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[30]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[31]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[31]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[32]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[33]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[34]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[35]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[36]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[37]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[38]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[39]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[39]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[40]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[40]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[41]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[41]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[42]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[42]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[43]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[43]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[44]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[44]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[45]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[45]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[46]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[46]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[47]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[47]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[47]_i_3_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Byte[9]_i_1_n_0\ : STD_LOGIC;
  signal o_RX_DV5_out : STD_LOGIC;
  signal o_RX_DV_i_3_n_0 : STD_LOGIC;
  signal \^o_spi_mosi\ : STD_LOGIC;
  signal o_SPI_MOSI_i_12_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_13_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_14_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_15_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_16_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_17_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_18_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_19_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_1_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_20_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_21_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_22_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_23_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_i_2_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_10_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_11_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_3_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_4_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_5_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_6_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_7_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_8_n_0 : STD_LOGIC;
  signal o_SPI_MOSI_reg_i_9_n_0 : STD_LOGIC;
  signal \o_TX_Ready1__5\ : STD_LOGIC;
  signal o_TX_Ready_i_1_n_0 : STD_LOGIC;
  signal o_TX_Ready_i_3_n_0 : STD_LOGIC;
  signal \^o_tx_ready_reg_0\ : STD_LOGIC;
  signal r_Leading_Edge : STD_LOGIC;
  signal r_Leading_Edge6_in : STD_LOGIC;
  signal r_Leading_Edge7_out : STD_LOGIC;
  signal \r_RX_Bit_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Bit_Count[5]_i_3_n_0\ : STD_LOGIC;
  signal r_SPI_Clk : STD_LOGIC;
  signal r_SPI_Clk_Count : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \r_SPI_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_SPI_Clk_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_SPI_Clk_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_SPI_Clk_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_SPI_Clk_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_SPI_Clk_Edges_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_SPI_Clk_i_1_n_0 : STD_LOGIC;
  signal \r_TX_Bit_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_Bit_Count[5]_i_3_n_0\ : STD_LOGIC;
  signal \^r_tx_bit_count_do[5]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_TX_Byte : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal r_TX_DV : STD_LOGIC;
  signal r_Trailing_Edge4_out : STD_LOGIC;
  signal r_Trailing_Edge_i_2_n_0 : STD_LOGIC;
  signal r_Trailing_Edge_reg_n_0 : STD_LOGIC;
  signal \^w_master_ready_do\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_RX_Byte[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_RX_Byte[23]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_RX_Byte[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_RX_Byte[40]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_RX_Byte[41]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_RX_Byte[42]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_RX_Byte[43]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_RX_Byte[44]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_RX_Byte[45]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_RX_Byte[46]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_RX_Byte[47]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_RX_Byte[47]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_RX_Byte[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of o_TX_Ready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of o_TX_Ready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_Leading_Edge_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_RX_Bit_Count[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_RX_Bit_Count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_RX_Bit_Count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_RX_Bit_Count[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_RX_Bit_Count[5]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Count[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Count[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Count[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_SPI_Clk_Edges[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_SPI_Clk_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_TX_Bit_Count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_TX_Bit_Count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of r_Trailing_Edge_i_2 : label is "soft_lutpair7";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  o_RX_Byte(47 downto 0) <= \^o_rx_byte\(47 downto 0);
  o_SPI_MOSI <= \^o_spi_mosi\;
  o_TX_Ready_reg_0 <= \^o_tx_ready_reg_0\;
  \r_TX_Bit_Count_do[5]\(5 downto 0) <= \^r_tx_bit_count_do[5]\(5 downto 0);
  w_Master_Ready_do <= \^w_master_ready_do\;
\FSM_onehot_r_SM_CS[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => r_CS_n_reg_0,
      I3 => i_TX_DV,
      I4 => \FSM_onehot_r_SM_CS[2]_i_2_n_0\,
      I5 => in0(0),
      O => \FSM_onehot_r_SM_CS_reg[0]\
    );
\FSM_onehot_r_SM_CS[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
        port map (
      I0 => \out\(0),
      I1 => r_CS_n_reg_0,
      I2 => i_TX_DV,
      I3 => \FSM_onehot_r_SM_CS[2]_i_2_n_0\,
      I4 => in0(1),
      O => \FSM_onehot_r_SM_CS_reg[1]\
    );
\FSM_onehot_r_SM_CS[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => r_CS_n_reg_0,
      I3 => i_TX_DV,
      I4 => \FSM_onehot_r_SM_CS[2]_i_2_n_0\,
      I5 => in0(2),
      O => \FSM_onehot_r_SM_CS_reg[2]\
    );
\FSM_onehot_r_SM_CS[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FF08080808"
    )
        port map (
      I0 => \out\(1),
      I1 => \^w_master_ready_do\,
      I2 => \r_SM_CS1__2\,
      I3 => r_CS_Inactive_Count(0),
      I4 => r_CS_Inactive_Count(1),
      I5 => \out\(2),
      O => \FSM_onehot_r_SM_CS[2]_i_2_n_0\
    );
\o_RX_Byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[40]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(0),
      O => \o_RX_Byte[0]_i_1_n_0\
    );
\o_RX_Byte[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[42]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(10),
      O => \o_RX_Byte[10]_i_1_n_0\
    );
\o_RX_Byte[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[43]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(11),
      O => \o_RX_Byte[11]_i_1_n_0\
    );
\o_RX_Byte[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[44]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(12),
      O => \o_RX_Byte[12]_i_1_n_0\
    );
\o_RX_Byte[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[45]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(13),
      O => \o_RX_Byte[13]_i_1_n_0\
    );
\o_RX_Byte[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[46]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(14),
      O => \o_RX_Byte[14]_i_1_n_0\
    );
\o_RX_Byte[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[47]_i_3_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(15),
      O => \o_RX_Byte[15]_i_1_n_0\
    );
\o_RX_Byte[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => \o_RX_Byte[15]_i_2_n_0\
    );
\o_RX_Byte[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[40]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(16),
      O => \o_RX_Byte[16]_i_1_n_0\
    );
\o_RX_Byte[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[41]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(17),
      O => \o_RX_Byte[17]_i_1_n_0\
    );
\o_RX_Byte[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[42]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(18),
      O => \o_RX_Byte[18]_i_1_n_0\
    );
\o_RX_Byte[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[43]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(19),
      O => \o_RX_Byte[19]_i_1_n_0\
    );
\o_RX_Byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[41]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(1),
      O => \o_RX_Byte[1]_i_1_n_0\
    );
\o_RX_Byte[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[44]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(20),
      O => \o_RX_Byte[20]_i_1_n_0\
    );
\o_RX_Byte[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[45]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(21),
      O => \o_RX_Byte[21]_i_1_n_0\
    );
\o_RX_Byte[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[46]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(22),
      O => \o_RX_Byte[22]_i_1_n_0\
    );
\o_RX_Byte[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[23]_i_2_n_0\,
      I2 => \o_RX_Byte[47]_i_3_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(23),
      O => \o_RX_Byte[23]_i_1_n_0\
    );
\o_RX_Byte[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \o_RX_Byte[23]_i_2_n_0\
    );
\o_RX_Byte[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[40]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(24),
      O => \o_RX_Byte[24]_i_1_n_0\
    );
\o_RX_Byte[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[41]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(25),
      O => \o_RX_Byte[25]_i_1_n_0\
    );
\o_RX_Byte[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[42]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(26),
      O => \o_RX_Byte[26]_i_1_n_0\
    );
\o_RX_Byte[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[43]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(27),
      O => \o_RX_Byte[27]_i_1_n_0\
    );
\o_RX_Byte[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[44]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(28),
      O => \o_RX_Byte[28]_i_1_n_0\
    );
\o_RX_Byte[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[45]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(29),
      O => \o_RX_Byte[29]_i_1_n_0\
    );
\o_RX_Byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[42]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(2),
      O => \o_RX_Byte[2]_i_1_n_0\
    );
\o_RX_Byte[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[46]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(30),
      O => \o_RX_Byte[30]_i_1_n_0\
    );
\o_RX_Byte[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[31]_i_2_n_0\,
      I2 => \o_RX_Byte[47]_i_3_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(31),
      O => \o_RX_Byte[31]_i_1_n_0\
    );
\o_RX_Byte[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \o_RX_Byte[31]_i_2_n_0\
    );
\o_RX_Byte[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[40]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(32),
      O => \o_RX_Byte[32]_i_1_n_0\
    );
\o_RX_Byte[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[41]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(33),
      O => \o_RX_Byte[33]_i_1_n_0\
    );
\o_RX_Byte[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[42]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(34),
      O => \o_RX_Byte[34]_i_1_n_0\
    );
\o_RX_Byte[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[43]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(35),
      O => \o_RX_Byte[35]_i_1_n_0\
    );
\o_RX_Byte[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[44]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(36),
      O => \o_RX_Byte[36]_i_1_n_0\
    );
\o_RX_Byte[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[45]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(37),
      O => \o_RX_Byte[37]_i_1_n_0\
    );
\o_RX_Byte[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[46]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(38),
      O => \o_RX_Byte[38]_i_1_n_0\
    );
\o_RX_Byte[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[39]_i_2_n_0\,
      I2 => \o_RX_Byte[47]_i_3_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(39),
      O => \o_RX_Byte[39]_i_1_n_0\
    );
\o_RX_Byte[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \o_RX_Byte[39]_i_2_n_0\
    );
\o_RX_Byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[43]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(3),
      O => \o_RX_Byte[3]_i_1_n_0\
    );
\o_RX_Byte[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[40]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(40),
      O => \o_RX_Byte[40]_i_1_n_0\
    );
\o_RX_Byte[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \o_RX_Byte[40]_i_2_n_0\
    );
\o_RX_Byte[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[41]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(41),
      O => \o_RX_Byte[41]_i_1_n_0\
    );
\o_RX_Byte[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \o_RX_Byte[41]_i_2_n_0\
    );
\o_RX_Byte[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[42]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(42),
      O => \o_RX_Byte[42]_i_1_n_0\
    );
\o_RX_Byte[42]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \o_RX_Byte[42]_i_2_n_0\
    );
\o_RX_Byte[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[43]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(43),
      O => \o_RX_Byte[43]_i_1_n_0\
    );
\o_RX_Byte[43]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \o_RX_Byte[43]_i_2_n_0\
    );
\o_RX_Byte[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[44]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(44),
      O => \o_RX_Byte[44]_i_1_n_0\
    );
\o_RX_Byte[44]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \o_RX_Byte[44]_i_2_n_0\
    );
\o_RX_Byte[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[45]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(45),
      O => \o_RX_Byte[45]_i_1_n_0\
    );
\o_RX_Byte[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \o_RX_Byte[45]_i_2_n_0\
    );
\o_RX_Byte[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[46]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(46),
      O => \o_RX_Byte[46]_i_1_n_0\
    );
\o_RX_Byte[46]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \o_RX_Byte[46]_i_2_n_0\
    );
\o_RX_Byte[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[47]_i_2_n_0\,
      I2 => \o_RX_Byte[47]_i_3_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(47),
      O => \o_RX_Byte[47]_i_1_n_0\
    );
\o_RX_Byte[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => \o_RX_Byte[47]_i_2_n_0\
    );
\o_RX_Byte[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \o_RX_Byte[47]_i_3_n_0\
    );
\o_RX_Byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[44]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(4),
      O => \o_RX_Byte[4]_i_1_n_0\
    );
\o_RX_Byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[45]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(5),
      O => \o_RX_Byte[5]_i_1_n_0\
    );
\o_RX_Byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[46]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(6),
      O => \o_RX_Byte[6]_i_1_n_0\
    );
\o_RX_Byte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[7]_i_2_n_0\,
      I2 => \o_RX_Byte[47]_i_3_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(7),
      O => \o_RX_Byte[7]_i_1_n_0\
    );
\o_RX_Byte[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \o_RX_Byte[7]_i_2_n_0\
    );
\o_RX_Byte[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[40]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(8),
      O => \o_RX_Byte[8]_i_1_n_0\
    );
\o_RX_Byte[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => i_SPI_MISO,
      I1 => \o_RX_Byte[15]_i_2_n_0\,
      I2 => \o_RX_Byte[41]_i_2_n_0\,
      I3 => r_Leading_Edge,
      I4 => \^w_master_ready_do\,
      I5 => \^o_rx_byte\(9),
      O => \o_RX_Byte[9]_i_1_n_0\
    );
\o_RX_Byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[0]_i_1_n_0\,
      Q => \^o_rx_byte\(0)
    );
\o_RX_Byte_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[10]_i_1_n_0\,
      Q => \^o_rx_byte\(10)
    );
\o_RX_Byte_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[11]_i_1_n_0\,
      Q => \^o_rx_byte\(11)
    );
\o_RX_Byte_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[12]_i_1_n_0\,
      Q => \^o_rx_byte\(12)
    );
\o_RX_Byte_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[13]_i_1_n_0\,
      Q => \^o_rx_byte\(13)
    );
\o_RX_Byte_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[14]_i_1_n_0\,
      Q => \^o_rx_byte\(14)
    );
\o_RX_Byte_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[15]_i_1_n_0\,
      Q => \^o_rx_byte\(15)
    );
\o_RX_Byte_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[16]_i_1_n_0\,
      Q => \^o_rx_byte\(16)
    );
\o_RX_Byte_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[17]_i_1_n_0\,
      Q => \^o_rx_byte\(17)
    );
\o_RX_Byte_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[18]_i_1_n_0\,
      Q => \^o_rx_byte\(18)
    );
\o_RX_Byte_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[19]_i_1_n_0\,
      Q => \^o_rx_byte\(19)
    );
\o_RX_Byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[1]_i_1_n_0\,
      Q => \^o_rx_byte\(1)
    );
\o_RX_Byte_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[20]_i_1_n_0\,
      Q => \^o_rx_byte\(20)
    );
\o_RX_Byte_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[21]_i_1_n_0\,
      Q => \^o_rx_byte\(21)
    );
\o_RX_Byte_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[22]_i_1_n_0\,
      Q => \^o_rx_byte\(22)
    );
\o_RX_Byte_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[23]_i_1_n_0\,
      Q => \^o_rx_byte\(23)
    );
\o_RX_Byte_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[24]_i_1_n_0\,
      Q => \^o_rx_byte\(24)
    );
\o_RX_Byte_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[25]_i_1_n_0\,
      Q => \^o_rx_byte\(25)
    );
\o_RX_Byte_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[26]_i_1_n_0\,
      Q => \^o_rx_byte\(26)
    );
\o_RX_Byte_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[27]_i_1_n_0\,
      Q => \^o_rx_byte\(27)
    );
\o_RX_Byte_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[28]_i_1_n_0\,
      Q => \^o_rx_byte\(28)
    );
\o_RX_Byte_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[29]_i_1_n_0\,
      Q => \^o_rx_byte\(29)
    );
\o_RX_Byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[2]_i_1_n_0\,
      Q => \^o_rx_byte\(2)
    );
\o_RX_Byte_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[30]_i_1_n_0\,
      Q => \^o_rx_byte\(30)
    );
\o_RX_Byte_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[31]_i_1_n_0\,
      Q => \^o_rx_byte\(31)
    );
\o_RX_Byte_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[32]_i_1_n_0\,
      Q => \^o_rx_byte\(32)
    );
\o_RX_Byte_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[33]_i_1_n_0\,
      Q => \^o_rx_byte\(33)
    );
\o_RX_Byte_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[34]_i_1_n_0\,
      Q => \^o_rx_byte\(34)
    );
\o_RX_Byte_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[35]_i_1_n_0\,
      Q => \^o_rx_byte\(35)
    );
\o_RX_Byte_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[36]_i_1_n_0\,
      Q => \^o_rx_byte\(36)
    );
\o_RX_Byte_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[37]_i_1_n_0\,
      Q => \^o_rx_byte\(37)
    );
\o_RX_Byte_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[38]_i_1_n_0\,
      Q => \^o_rx_byte\(38)
    );
\o_RX_Byte_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[39]_i_1_n_0\,
      Q => \^o_rx_byte\(39)
    );
\o_RX_Byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[3]_i_1_n_0\,
      Q => \^o_rx_byte\(3)
    );
\o_RX_Byte_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[40]_i_1_n_0\,
      Q => \^o_rx_byte\(40)
    );
\o_RX_Byte_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[41]_i_1_n_0\,
      Q => \^o_rx_byte\(41)
    );
\o_RX_Byte_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[42]_i_1_n_0\,
      Q => \^o_rx_byte\(42)
    );
\o_RX_Byte_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[43]_i_1_n_0\,
      Q => \^o_rx_byte\(43)
    );
\o_RX_Byte_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[44]_i_1_n_0\,
      Q => \^o_rx_byte\(44)
    );
\o_RX_Byte_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[45]_i_1_n_0\,
      Q => \^o_rx_byte\(45)
    );
\o_RX_Byte_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[46]_i_1_n_0\,
      Q => \^o_rx_byte\(46)
    );
\o_RX_Byte_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[47]_i_1_n_0\,
      Q => \^o_rx_byte\(47)
    );
\o_RX_Byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[4]_i_1_n_0\,
      Q => \^o_rx_byte\(4)
    );
\o_RX_Byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[5]_i_1_n_0\,
      Q => \^o_rx_byte\(5)
    );
\o_RX_Byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[6]_i_1_n_0\,
      Q => \^o_rx_byte\(6)
    );
\o_RX_Byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[7]_i_1_n_0\,
      Q => \^o_rx_byte\(7)
    );
\o_RX_Byte_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[8]_i_1_n_0\,
      Q => \^o_rx_byte\(8)
    );
\o_RX_Byte_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => \o_RX_Byte[9]_i_1_n_0\,
      Q => \^o_rx_byte\(9)
    );
o_RX_DV_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => o_RX_DV_i_3_n_0,
      I1 => \^w_master_ready_do\,
      I2 => r_Leading_Edge,
      O => o_RX_DV5_out
    );
o_RX_DV_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Rst_L,
      O => \^o_tx_ready_reg_0\
    );
o_RX_DV_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => o_RX_DV_i_3_n_0
    );
o_RX_DV_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => o_RX_DV5_out,
      Q => o_RX_DV
    );
o_SPI_Clk_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => r_SPI_Clk,
      Q => o_SPI_Clk
    );
o_SPI_MOSI_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAACF0000AAC0"
    )
        port map (
      I0 => r_TX_Byte(47),
      I1 => o_SPI_MOSI_i_2_n_0,
      I2 => r_Trailing_Edge_reg_n_0,
      I3 => r_TX_DV,
      I4 => \^w_master_ready_do\,
      I5 => \^o_spi_mosi\,
      O => o_SPI_MOSI_i_1_n_0
    );
o_SPI_MOSI_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(35),
      I1 => r_TX_Byte(34),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(33),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(32),
      O => o_SPI_MOSI_i_12_n_0
    );
o_SPI_MOSI_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(39),
      I1 => r_TX_Byte(38),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(37),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(36),
      O => o_SPI_MOSI_i_13_n_0
    );
o_SPI_MOSI_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(43),
      I1 => r_TX_Byte(42),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(41),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(40),
      O => o_SPI_MOSI_i_14_n_0
    );
o_SPI_MOSI_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(47),
      I1 => r_TX_Byte(46),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(45),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(44),
      O => o_SPI_MOSI_i_15_n_0
    );
o_SPI_MOSI_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(19),
      I1 => r_TX_Byte(18),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(17),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(16),
      O => o_SPI_MOSI_i_16_n_0
    );
o_SPI_MOSI_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(23),
      I1 => r_TX_Byte(22),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(21),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(20),
      O => o_SPI_MOSI_i_17_n_0
    );
o_SPI_MOSI_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(27),
      I1 => r_TX_Byte(26),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(25),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(24),
      O => o_SPI_MOSI_i_18_n_0
    );
o_SPI_MOSI_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(31),
      I1 => r_TX_Byte(30),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(29),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(28),
      O => o_SPI_MOSI_i_19_n_0
    );
o_SPI_MOSI_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => o_SPI_MOSI_reg_i_3_n_0,
      I1 => \^r_tx_bit_count_do[5]\(5),
      I2 => o_SPI_MOSI_reg_i_4_n_0,
      I3 => \^r_tx_bit_count_do[5]\(4),
      I4 => o_SPI_MOSI_reg_i_5_n_0,
      O => o_SPI_MOSI_i_2_n_0
    );
o_SPI_MOSI_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(3),
      I1 => r_TX_Byte(2),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(1),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(0),
      O => o_SPI_MOSI_i_20_n_0
    );
o_SPI_MOSI_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(7),
      I1 => r_TX_Byte(6),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(5),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(4),
      O => o_SPI_MOSI_i_21_n_0
    );
o_SPI_MOSI_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(11),
      I1 => r_TX_Byte(10),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(9),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(8),
      O => o_SPI_MOSI_i_22_n_0
    );
o_SPI_MOSI_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Byte(15),
      I1 => r_TX_Byte(14),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_Byte(13),
      I4 => \^r_tx_bit_count_do[5]\(0),
      I5 => r_TX_Byte(12),
      O => o_SPI_MOSI_i_23_n_0
    );
o_SPI_MOSI_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => o_SPI_MOSI_i_1_n_0,
      Q => \^o_spi_mosi\
    );
o_SPI_MOSI_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => o_SPI_MOSI_i_20_n_0,
      I1 => o_SPI_MOSI_i_21_n_0,
      O => o_SPI_MOSI_reg_i_10_n_0,
      S => \^r_tx_bit_count_do[5]\(2)
    );
o_SPI_MOSI_reg_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => o_SPI_MOSI_i_22_n_0,
      I1 => o_SPI_MOSI_i_23_n_0,
      O => o_SPI_MOSI_reg_i_11_n_0,
      S => \^r_tx_bit_count_do[5]\(2)
    );
o_SPI_MOSI_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => o_SPI_MOSI_reg_i_6_n_0,
      I1 => o_SPI_MOSI_reg_i_7_n_0,
      O => o_SPI_MOSI_reg_i_3_n_0,
      S => \^r_tx_bit_count_do[5]\(3)
    );
o_SPI_MOSI_reg_i_4: unisim.vcomponents.MUXF8
     port map (
      I0 => o_SPI_MOSI_reg_i_8_n_0,
      I1 => o_SPI_MOSI_reg_i_9_n_0,
      O => o_SPI_MOSI_reg_i_4_n_0,
      S => \^r_tx_bit_count_do[5]\(3)
    );
o_SPI_MOSI_reg_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => o_SPI_MOSI_reg_i_10_n_0,
      I1 => o_SPI_MOSI_reg_i_11_n_0,
      O => o_SPI_MOSI_reg_i_5_n_0,
      S => \^r_tx_bit_count_do[5]\(3)
    );
o_SPI_MOSI_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => o_SPI_MOSI_i_12_n_0,
      I1 => o_SPI_MOSI_i_13_n_0,
      O => o_SPI_MOSI_reg_i_6_n_0,
      S => \^r_tx_bit_count_do[5]\(2)
    );
o_SPI_MOSI_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => o_SPI_MOSI_i_14_n_0,
      I1 => o_SPI_MOSI_i_15_n_0,
      O => o_SPI_MOSI_reg_i_7_n_0,
      S => \^r_tx_bit_count_do[5]\(2)
    );
o_SPI_MOSI_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => o_SPI_MOSI_i_16_n_0,
      I1 => o_SPI_MOSI_i_17_n_0,
      O => o_SPI_MOSI_reg_i_8_n_0,
      S => \^r_tx_bit_count_do[5]\(2)
    );
o_SPI_MOSI_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => o_SPI_MOSI_i_18_n_0,
      I1 => o_SPI_MOSI_i_19_n_0,
      O => o_SPI_MOSI_reg_i_9_n_0,
      S => \^r_tx_bit_count_do[5]\(2)
    );
o_TX_Ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => \out\(1),
      I1 => \^w_master_ready_do\,
      I2 => \r_SM_CS1__2\,
      I3 => \out\(0),
      I4 => i_TX_DV,
      O => o_TX_Ready
    );
o_TX_Ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_TX_DV,
      I1 => \o_TX_Ready1__5\,
      O => o_TX_Ready_i_1_n_0
    );
o_TX_Ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(0),
      I1 => \r_SPI_Clk_Edges_reg__0\(1),
      I2 => \r_SPI_Clk_Edges_reg__0\(2),
      I3 => \r_SPI_Clk_Edges_reg__0\(3),
      I4 => o_TX_Ready_i_3_n_0,
      O => \o_TX_Ready1__5\
    );
o_TX_Ready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(6),
      I1 => \r_SPI_Clk_Edges_reg__0\(7),
      I2 => \r_SPI_Clk_Edges_reg__0\(5),
      I3 => \r_SPI_Clk_Edges_reg__0\(4),
      O => o_TX_Ready_i_3_n_0
    );
o_TX_Ready_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => o_TX_Ready_i_1_n_0,
      Q => \^w_master_ready_do\
    );
r_CS_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AFF2A2A2A2A2A"
    )
        port map (
      I0 => r_CS_n_reg_0,
      I1 => i_TX_DV,
      I2 => \out\(0),
      I3 => \^w_master_ready_do\,
      I4 => \r_SM_CS1__2\,
      I5 => \out\(1),
      O => r_CS_n_reg
    );
r_Leading_Edge_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i_TX_DV,
      I1 => \o_TX_Ready1__5\,
      I2 => r_Leading_Edge6_in,
      O => r_Leading_Edge7_out
    );
r_Leading_Edge_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[4]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I2 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      I3 => \r_SPI_Clk_Count_reg_n_0_[3]\,
      I4 => \r_SPI_Clk_Count_reg_n_0_[2]\,
      O => r_Leading_Edge6_in
    );
r_Leading_Edge_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => r_Leading_Edge7_out,
      Q => r_Leading_Edge
    );
\r_RX_Bit_Count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^q\(0),
      O => \r_RX_Bit_Count[0]_i_1_n_0\
    );
\r_RX_Bit_Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \r_RX_Bit_Count[1]_i_1_n_0\
    );
\r_RX_Bit_Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \r_RX_Bit_Count[2]_i_1_n_0\
    );
\r_RX_Bit_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \r_RX_Bit_Count[3]_i_1_n_0\
    );
\r_RX_Bit_Count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^w_master_ready_do\,
      O => \r_RX_Bit_Count[4]_i_1_n_0\
    );
\r_RX_Bit_Count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => r_Leading_Edge,
      O => \r_RX_Bit_Count[5]_i_1_n_0\
    );
\r_RX_Bit_Count[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^q\(5),
      I2 => \r_RX_Bit_Count[5]_i_3_n_0\,
      I3 => \^q\(4),
      O => \r_RX_Bit_Count[5]_i_2_n_0\
    );
\r_RX_Bit_Count[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \r_RX_Bit_Count[5]_i_3_n_0\
    );
\r_RX_Bit_Count_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_RX_Bit_Count[5]_i_1_n_0\,
      D => \r_RX_Bit_Count[0]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^q\(0)
    );
\r_RX_Bit_Count_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_RX_Bit_Count[5]_i_1_n_0\,
      D => \r_RX_Bit_Count[1]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^q\(1)
    );
\r_RX_Bit_Count_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_RX_Bit_Count[5]_i_1_n_0\,
      D => \r_RX_Bit_Count[2]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^q\(2)
    );
\r_RX_Bit_Count_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_RX_Bit_Count[5]_i_1_n_0\,
      D => \r_RX_Bit_Count[3]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^q\(3)
    );
\r_RX_Bit_Count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_RX_Bit_Count[5]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_RX_Bit_Count[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\r_RX_Bit_Count_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_RX_Bit_Count[5]_i_1_n_0\,
      D => \r_RX_Bit_Count[5]_i_2_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^q\(5)
    );
\r_SPI_Clk_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      O => \r_SPI_Clk_Count[0]_i_1_n_0\
    );
\r_SPI_Clk_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      O => r_SPI_Clk_Count(1)
    );
\r_SPI_Clk_Count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A2FF00"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[4]\,
      I2 => \r_SPI_Clk_Count_reg_n_0_[3]\,
      I3 => \r_SPI_Clk_Count_reg_n_0_[2]\,
      I4 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      O => r_SPI_Clk_Count(2)
    );
\r_SPI_Clk_Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[3]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I2 => \r_SPI_Clk_Count_reg_n_0_[2]\,
      I3 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      O => r_SPI_Clk_Count(3)
    );
\r_SPI_Clk_Count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \o_TX_Ready1__5\,
      I1 => i_TX_DV,
      O => \r_SPI_Clk_Count[4]_i_1_n_0\
    );
\r_SPI_Clk_Count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CC4CCCC"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[4]\,
      I2 => \r_SPI_Clk_Count_reg_n_0_[3]\,
      I3 => \r_SPI_Clk_Count_reg_n_0_[2]\,
      I4 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      O => r_SPI_Clk_Count(4)
    );
\r_SPI_Clk_Count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Count[4]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Count[0]_i_1_n_0\,
      Q => \r_SPI_Clk_Count_reg_n_0_[0]\
    );
\r_SPI_Clk_Count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Count[4]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => r_SPI_Clk_Count(1),
      Q => \r_SPI_Clk_Count_reg_n_0_[1]\
    );
\r_SPI_Clk_Count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Count[4]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => r_SPI_Clk_Count(2),
      Q => \r_SPI_Clk_Count_reg_n_0_[2]\
    );
\r_SPI_Clk_Count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Count[4]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => r_SPI_Clk_Count(3),
      Q => \r_SPI_Clk_Count_reg_n_0_[3]\
    );
\r_SPI_Clk_Count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Count[4]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => r_SPI_Clk_Count(4),
      Q => \r_SPI_Clk_Count_reg_n_0_[4]\
    );
\r_SPI_Clk_Edges[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(0),
      I1 => i_TX_DV,
      O => \r_SPI_Clk_Edges[0]_i_1_n_0\
    );
\r_SPI_Clk_Edges[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(1),
      I1 => \r_SPI_Clk_Edges_reg__0\(0),
      I2 => i_TX_DV,
      O => \r_SPI_Clk_Edges[1]_i_1_n_0\
    );
\r_SPI_Clk_Edges[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A9"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(2),
      I1 => \r_SPI_Clk_Edges_reg__0\(0),
      I2 => \r_SPI_Clk_Edges_reg__0\(1),
      I3 => i_TX_DV,
      O => \r_SPI_Clk_Edges[2]_i_1_n_0\
    );
\r_SPI_Clk_Edges[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA9"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(3),
      I1 => \r_SPI_Clk_Edges_reg__0\(1),
      I2 => \r_SPI_Clk_Edges_reg__0\(0),
      I3 => \r_SPI_Clk_Edges_reg__0\(2),
      I4 => i_TX_DV,
      O => \r_SPI_Clk_Edges[3]_i_1_n_0\
    );
\r_SPI_Clk_Edges[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA9"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(4),
      I1 => \r_SPI_Clk_Edges_reg__0\(2),
      I2 => \r_SPI_Clk_Edges_reg__0\(0),
      I3 => \r_SPI_Clk_Edges_reg__0\(1),
      I4 => \r_SPI_Clk_Edges_reg__0\(3),
      I5 => i_TX_DV,
      O => \r_SPI_Clk_Edges[4]_i_1_n_0\
    );
\r_SPI_Clk_Edges[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEB"
    )
        port map (
      I0 => i_TX_DV,
      I1 => \r_SPI_Clk_Edges_reg__0\(5),
      I2 => \r_SPI_Clk_Edges_reg__0\(3),
      I3 => \r_SPI_Clk_Edges[5]_i_2_n_0\,
      I4 => \r_SPI_Clk_Edges_reg__0\(2),
      I5 => \r_SPI_Clk_Edges_reg__0\(4),
      O => \r_SPI_Clk_Edges[5]_i_1_n_0\
    );
\r_SPI_Clk_Edges[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(0),
      I1 => \r_SPI_Clk_Edges_reg__0\(1),
      O => \r_SPI_Clk_Edges[5]_i_2_n_0\
    );
\r_SPI_Clk_Edges[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => i_TX_DV,
      I1 => \r_SPI_Clk_Edges_reg__0\(6),
      I2 => \r_SPI_Clk_Edges[7]_i_4_n_0\,
      O => \r_SPI_Clk_Edges[6]_i_1_n_0\
    );
\r_SPI_Clk_Edges[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => i_TX_DV,
      I1 => \r_SPI_Clk_Edges[7]_i_3_n_0\,
      I2 => \o_TX_Ready1__5\,
      O => \r_SPI_Clk_Edges[7]_i_1_n_0\
    );
\r_SPI_Clk_Edges[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A9"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(7),
      I1 => \r_SPI_Clk_Edges[7]_i_4_n_0\,
      I2 => \r_SPI_Clk_Edges_reg__0\(6),
      I3 => i_TX_DV,
      O => \r_SPI_Clk_Edges[7]_i_2_n_0\
    );
\r_SPI_Clk_Edges[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00102000"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[4]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[2]\,
      I2 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      I3 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I4 => \r_SPI_Clk_Count_reg_n_0_[3]\,
      O => \r_SPI_Clk_Edges[7]_i_3_n_0\
    );
\r_SPI_Clk_Edges[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_SPI_Clk_Edges_reg__0\(4),
      I1 => \r_SPI_Clk_Edges_reg__0\(2),
      I2 => \r_SPI_Clk_Edges_reg__0\(0),
      I3 => \r_SPI_Clk_Edges_reg__0\(1),
      I4 => \r_SPI_Clk_Edges_reg__0\(3),
      I5 => \r_SPI_Clk_Edges_reg__0\(5),
      O => \r_SPI_Clk_Edges[7]_i_4_n_0\
    );
\r_SPI_Clk_Edges_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[0]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(0)
    );
\r_SPI_Clk_Edges_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[1]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(1)
    );
\r_SPI_Clk_Edges_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[2]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(2)
    );
\r_SPI_Clk_Edges_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[3]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(3)
    );
\r_SPI_Clk_Edges_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[4]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(4)
    );
\r_SPI_Clk_Edges_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[5]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(5)
    );
\r_SPI_Clk_Edges_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[6]_i_1_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(6)
    );
\r_SPI_Clk_Edges_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_SPI_Clk_Edges[7]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_SPI_Clk_Edges[7]_i_2_n_0\,
      Q => \r_SPI_Clk_Edges_reg__0\(7)
    );
r_SPI_Clk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \r_SPI_Clk_Edges[7]_i_3_n_0\,
      I1 => \o_TX_Ready1__5\,
      I2 => i_TX_DV,
      I3 => r_SPI_Clk,
      O => r_SPI_Clk_i_1_n_0
    );
r_SPI_Clk_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => r_SPI_Clk_i_1_n_0,
      Q => r_SPI_Clk
    );
\r_TX_Bit_Count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^r_tx_bit_count_do[5]\(0),
      I2 => r_TX_DV,
      O => \r_TX_Bit_Count[0]_i_1_n_0\
    );
\r_TX_Bit_Count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^r_tx_bit_count_do[5]\(0),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => r_TX_DV,
      O => \r_TX_Bit_Count[1]_i_1_n_0\
    );
\r_TX_Bit_Count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^r_tx_bit_count_do[5]\(1),
      I2 => \^r_tx_bit_count_do[5]\(0),
      I3 => \^r_tx_bit_count_do[5]\(2),
      I4 => r_TX_DV,
      O => \r_TX_Bit_Count[2]_i_1_n_0\
    );
\r_TX_Bit_Count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^r_tx_bit_count_do[5]\(2),
      I2 => \^r_tx_bit_count_do[5]\(0),
      I3 => \^r_tx_bit_count_do[5]\(1),
      I4 => \^r_tx_bit_count_do[5]\(3),
      I5 => r_TX_DV,
      O => \r_TX_Bit_Count[3]_i_1_n_0\
    );
\r_TX_Bit_Count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \r_TX_Bit_Count[5]_i_3_n_0\,
      I1 => \^r_tx_bit_count_do[5]\(4),
      I2 => r_TX_DV,
      I3 => \^w_master_ready_do\,
      O => \r_TX_Bit_Count[4]_i_1_n_0\
    );
\r_TX_Bit_Count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => r_Trailing_Edge_reg_n_0,
      I2 => r_TX_DV,
      O => \r_TX_Bit_Count[5]_i_1_n_0\
    );
\r_TX_Bit_Count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAB"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \^r_tx_bit_count_do[5]\(4),
      I2 => \r_TX_Bit_Count[5]_i_3_n_0\,
      I3 => \^r_tx_bit_count_do[5]\(5),
      I4 => r_TX_DV,
      O => \r_TX_Bit_Count[5]_i_2_n_0\
    );
\r_TX_Bit_Count[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^r_tx_bit_count_do[5]\(2),
      I1 => \^r_tx_bit_count_do[5]\(0),
      I2 => \^r_tx_bit_count_do[5]\(1),
      I3 => \^r_tx_bit_count_do[5]\(3),
      O => \r_TX_Bit_Count[5]_i_3_n_0\
    );
\r_TX_Bit_Count_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_TX_Bit_Count[5]_i_1_n_0\,
      D => \r_TX_Bit_Count[0]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^r_tx_bit_count_do[5]\(0)
    );
\r_TX_Bit_Count_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_TX_Bit_Count[5]_i_1_n_0\,
      D => \r_TX_Bit_Count[1]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^r_tx_bit_count_do[5]\(1)
    );
\r_TX_Bit_Count_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_TX_Bit_Count[5]_i_1_n_0\,
      D => \r_TX_Bit_Count[2]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^r_tx_bit_count_do[5]\(2)
    );
\r_TX_Bit_Count_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_TX_Bit_Count[5]_i_1_n_0\,
      D => \r_TX_Bit_Count[3]_i_1_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^r_tx_bit_count_do[5]\(3)
    );
\r_TX_Bit_Count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => \r_TX_Bit_Count[5]_i_1_n_0\,
      CLR => \^o_tx_ready_reg_0\,
      D => \r_TX_Bit_Count[4]_i_1_n_0\,
      Q => \^r_tx_bit_count_do[5]\(4)
    );
\r_TX_Bit_Count_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => \r_TX_Bit_Count[5]_i_1_n_0\,
      D => \r_TX_Bit_Count[5]_i_2_n_0\,
      PRE => \^o_tx_ready_reg_0\,
      Q => \^r_tx_bit_count_do[5]\(5)
    );
\r_TX_Byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(0),
      Q => r_TX_Byte(0)
    );
\r_TX_Byte_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(10),
      Q => r_TX_Byte(10)
    );
\r_TX_Byte_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(11),
      Q => r_TX_Byte(11)
    );
\r_TX_Byte_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(12),
      Q => r_TX_Byte(12)
    );
\r_TX_Byte_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(13),
      Q => r_TX_Byte(13)
    );
\r_TX_Byte_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(14),
      Q => r_TX_Byte(14)
    );
\r_TX_Byte_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(15),
      Q => r_TX_Byte(15)
    );
\r_TX_Byte_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(16),
      Q => r_TX_Byte(16)
    );
\r_TX_Byte_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(17),
      Q => r_TX_Byte(17)
    );
\r_TX_Byte_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(18),
      Q => r_TX_Byte(18)
    );
\r_TX_Byte_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(19),
      Q => r_TX_Byte(19)
    );
\r_TX_Byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(1),
      Q => r_TX_Byte(1)
    );
\r_TX_Byte_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(20),
      Q => r_TX_Byte(20)
    );
\r_TX_Byte_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(21),
      Q => r_TX_Byte(21)
    );
\r_TX_Byte_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(22),
      Q => r_TX_Byte(22)
    );
\r_TX_Byte_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(23),
      Q => r_TX_Byte(23)
    );
\r_TX_Byte_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(24),
      Q => r_TX_Byte(24)
    );
\r_TX_Byte_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(25),
      Q => r_TX_Byte(25)
    );
\r_TX_Byte_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(26),
      Q => r_TX_Byte(26)
    );
\r_TX_Byte_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(27),
      Q => r_TX_Byte(27)
    );
\r_TX_Byte_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(28),
      Q => r_TX_Byte(28)
    );
\r_TX_Byte_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(29),
      Q => r_TX_Byte(29)
    );
\r_TX_Byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(2),
      Q => r_TX_Byte(2)
    );
\r_TX_Byte_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(30),
      Q => r_TX_Byte(30)
    );
\r_TX_Byte_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(31),
      Q => r_TX_Byte(31)
    );
\r_TX_Byte_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(32),
      Q => r_TX_Byte(32)
    );
\r_TX_Byte_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(33),
      Q => r_TX_Byte(33)
    );
\r_TX_Byte_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(34),
      Q => r_TX_Byte(34)
    );
\r_TX_Byte_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(35),
      Q => r_TX_Byte(35)
    );
\r_TX_Byte_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(36),
      Q => r_TX_Byte(36)
    );
\r_TX_Byte_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(37),
      Q => r_TX_Byte(37)
    );
\r_TX_Byte_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(38),
      Q => r_TX_Byte(38)
    );
\r_TX_Byte_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(39),
      Q => r_TX_Byte(39)
    );
\r_TX_Byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(3),
      Q => r_TX_Byte(3)
    );
\r_TX_Byte_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(40),
      Q => r_TX_Byte(40)
    );
\r_TX_Byte_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(41),
      Q => r_TX_Byte(41)
    );
\r_TX_Byte_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(42),
      Q => r_TX_Byte(42)
    );
\r_TX_Byte_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(43),
      Q => r_TX_Byte(43)
    );
\r_TX_Byte_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(44),
      Q => r_TX_Byte(44)
    );
\r_TX_Byte_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(45),
      Q => r_TX_Byte(45)
    );
\r_TX_Byte_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(46),
      Q => r_TX_Byte(46)
    );
\r_TX_Byte_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(47),
      Q => r_TX_Byte(47)
    );
\r_TX_Byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(4),
      Q => r_TX_Byte(4)
    );
\r_TX_Byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(5),
      Q => r_TX_Byte(5)
    );
\r_TX_Byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(6),
      Q => r_TX_Byte(6)
    );
\r_TX_Byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(7),
      Q => r_TX_Byte(7)
    );
\r_TX_Byte_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(8),
      Q => r_TX_Byte(8)
    );
\r_TX_Byte_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => i_TX_DV,
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_Byte(9),
      Q => r_TX_Byte(9)
    );
\r_TX_Count[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800880088008800"
    )
        port map (
      I0 => r_CS_n_reg_0,
      I1 => \out\(0),
      I2 => \^w_master_ready_do\,
      I3 => i_TX_DV,
      I4 => \r_SM_CS1__2\,
      I5 => \out\(1),
      O => r_TX_Count_0
    );
r_TX_DV_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => i_TX_DV,
      Q => r_TX_DV
    );
r_Trailing_Edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => i_TX_DV,
      I1 => \o_TX_Ready1__5\,
      I2 => \r_SPI_Clk_Count_reg_n_0_[4]\,
      I3 => \r_SPI_Clk_Count_reg_n_0_[2]\,
      I4 => r_Trailing_Edge_i_2_n_0,
      I5 => \r_SPI_Clk_Count_reg_n_0_[3]\,
      O => r_Trailing_Edge4_out
    );
r_Trailing_Edge_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_SPI_Clk_Count_reg_n_0_[1]\,
      I1 => \r_SPI_Clk_Count_reg_n_0_[0]\,
      O => r_Trailing_Edge_i_2_n_0
    );
r_Trailing_Edge_reg: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => \^o_tx_ready_reg_0\,
      D => r_Trailing_Edge4_out,
      Q => r_Trailing_Edge_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS is
  port (
    w_Master_Ready_do : out STD_LOGIC;
    r_RX_Bit_Count_do : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_SPI_CS_n : out STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 47 downto 0 );
    r_TX_Bit_Count_do : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_SPI_Clk : out STD_LOGIC;
    o_RX_Count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_TX_Ready : out STD_LOGIC;
    o_SPI_MOSI : out STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_Clk : in STD_LOGIC;
    i_SPI_MISO : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 47 downto 0 );
    i_Rst_L : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS : entity is "SPI_Master_With_Single_CS";
end brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS;

architecture STRUCTURE of brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS is
  signal \FSM_onehot_r_SM_CS_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_r_SM_CS_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_r_SM_CS_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_r_SM_CS_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_r_SM_CS_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_r_SM_CS_reg_n_0_[2]\ : signal is "yes";
  signal SPI_Master_Inst_n_1 : STD_LOGIC;
  signal SPI_Master_Inst_n_11 : STD_LOGIC;
  signal SPI_Master_Inst_n_12 : STD_LOGIC;
  signal SPI_Master_Inst_n_13 : STD_LOGIC;
  signal SPI_Master_Inst_n_22 : STD_LOGIC;
  signal \^o_rx_count\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \o_RX_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_RX_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \^o_rx_dv\ : STD_LOGIC;
  signal \^o_spi_cs_n\ : STD_LOGIC;
  signal r_CS_Inactive_Count : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \r_CS_Inactive_Count[-1]_i_1_n_0\ : STD_LOGIC;
  signal \r_CS_Inactive_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_CS1__2\ : STD_LOGIC;
  signal r_TX_Count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_TX_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Count[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_Count[2]_i_2_n_0\ : STD_LOGIC;
  signal r_TX_Count_0 : STD_LOGIC;
  signal \^w_master_ready_do\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_SM_CS_reg[0]\ : label is "IDLE:001,TRANSFER:010,CS_INACTIVE:100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_r_SM_CS_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_SM_CS_reg[1]\ : label is "IDLE:001,TRANSFER:010,CS_INACTIVE:100,";
  attribute KEEP of \FSM_onehot_r_SM_CS_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_SM_CS_reg[2]\ : label is "IDLE:001,TRANSFER:010,CS_INACTIVE:100,";
  attribute KEEP of \FSM_onehot_r_SM_CS_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_RX_Count[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_RX_Count[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of o_TX_Ready_INST_0_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_TX_Count[1]_i_1\ : label is "soft_lutpair20";
begin
  o_RX_Count(1 downto 0) <= \^o_rx_count\(1 downto 0);
  o_RX_DV <= \^o_rx_dv\;
  o_SPI_CS_n <= \^o_spi_cs_n\;
  w_Master_Ready_do <= \^w_master_ready_do\;
\FSM_onehot_r_SM_CS_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => SPI_Master_Inst_n_13,
      PRE => SPI_Master_Inst_n_1,
      Q => \FSM_onehot_r_SM_CS_reg_n_0_[0]\
    );
\FSM_onehot_r_SM_CS_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => SPI_Master_Inst_n_12,
      Q => \FSM_onehot_r_SM_CS_reg_n_0_[1]\
    );
\FSM_onehot_r_SM_CS_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => SPI_Master_Inst_n_11,
      Q => \FSM_onehot_r_SM_CS_reg_n_0_[2]\
    );
SPI_Master_Inst: entity work.brd_SPI_Master_With_Sing_0_2_SPI_Master
     port map (
      \FSM_onehot_r_SM_CS_reg[0]\ => SPI_Master_Inst_n_13,
      \FSM_onehot_r_SM_CS_reg[1]\ => SPI_Master_Inst_n_12,
      \FSM_onehot_r_SM_CS_reg[2]\ => SPI_Master_Inst_n_11,
      Q(5 downto 0) => r_RX_Bit_Count_do(5 downto 0),
      i_Clk => i_Clk,
      i_Rst_L => i_Rst_L,
      i_SPI_MISO => i_SPI_MISO,
      i_TX_Byte(47 downto 0) => i_TX_Byte(47 downto 0),
      i_TX_DV => i_TX_DV,
      in0(2) => \FSM_onehot_r_SM_CS_reg_n_0_[2]\,
      in0(1) => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      in0(0) => \FSM_onehot_r_SM_CS_reg_n_0_[0]\,
      o_RX_Byte(47 downto 0) => o_RX_Byte(47 downto 0),
      o_RX_DV => \^o_rx_dv\,
      o_SPI_Clk => o_SPI_Clk,
      o_SPI_MOSI => o_SPI_MOSI,
      o_TX_Ready => o_TX_Ready,
      o_TX_Ready_reg_0 => SPI_Master_Inst_n_1,
      \out\(2) => \FSM_onehot_r_SM_CS_reg_n_0_[2]\,
      \out\(1) => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      \out\(0) => \FSM_onehot_r_SM_CS_reg_n_0_[0]\,
      r_CS_Inactive_Count(0 to 1) => r_CS_Inactive_Count(0 to 1),
      r_CS_n_reg => SPI_Master_Inst_n_22,
      r_CS_n_reg_0 => \^o_spi_cs_n\,
      \r_SM_CS1__2\ => \r_SM_CS1__2\,
      \r_TX_Bit_Count_do[5]\(5 downto 0) => r_TX_Bit_Count_do(5 downto 0),
      r_TX_Count_0 => r_TX_Count_0,
      w_Master_Ready_do => \^w_master_ready_do\
    );
\o_RX_Count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^o_rx_count\(0),
      I1 => \^o_rx_dv\,
      I2 => \^o_spi_cs_n\,
      O => \o_RX_Count[0]_i_1_n_0\
    );
\o_RX_Count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^o_rx_count\(1),
      I1 => \^o_rx_dv\,
      I2 => \^o_rx_count\(0),
      I3 => \^o_spi_cs_n\,
      O => \o_RX_Count[1]_i_1_n_0\
    );
\o_RX_Count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clk,
      CE => '1',
      D => \o_RX_Count[0]_i_1_n_0\,
      Q => \^o_rx_count\(0),
      R => '0'
    );
\o_RX_Count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clk,
      CE => '1',
      D => \o_RX_Count[1]_i_1_n_0\,
      Q => \^o_rx_count\(1),
      R => '0'
    );
o_TX_Ready_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r_TX_Count(1),
      I1 => r_TX_Count(2),
      I2 => r_TX_Count(0),
      O => \r_SM_CS1__2\
    );
\r_CS_Inactive_Count[-1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000020DF00DF00"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \r_SM_CS1__2\,
      I2 => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      I3 => r_CS_Inactive_Count(0),
      I4 => r_CS_Inactive_Count(1),
      I5 => \FSM_onehot_r_SM_CS_reg_n_0_[2]\,
      O => \r_CS_Inactive_Count[-1]_i_1_n_0\
    );
\r_CS_Inactive_Count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF20FFFF2020"
    )
        port map (
      I0 => \^w_master_ready_do\,
      I1 => \r_SM_CS1__2\,
      I2 => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      I3 => r_CS_Inactive_Count(0),
      I4 => r_CS_Inactive_Count(1),
      I5 => \FSM_onehot_r_SM_CS_reg_n_0_[2]\,
      O => \r_CS_Inactive_Count[0]_i_1_n_0\
    );
\r_CS_Inactive_Count_reg[-1]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => \r_CS_Inactive_Count[-1]_i_1_n_0\,
      Q => r_CS_Inactive_Count(0)
    );
\r_CS_Inactive_Count_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => '1',
      D => \r_CS_Inactive_Count[0]_i_1_n_0\,
      PRE => SPI_Master_Inst_n_1,
      Q => r_CS_Inactive_Count(1)
    );
r_CS_n_reg: unisim.vcomponents.FDPE
     port map (
      C => i_Clk,
      CE => '1',
      D => SPI_Master_Inst_n_22,
      PRE => SPI_Master_Inst_n_1,
      Q => \^o_spi_cs_n\
    );
\r_TX_Count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44FFF400"
    )
        port map (
      I0 => i_TX_Count(0),
      I1 => \FSM_onehot_r_SM_CS_reg_n_0_[0]\,
      I2 => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      I3 => r_TX_Count_0,
      I4 => r_TX_Count(0),
      O => \r_TX_Count[0]_i_1_n_0\
    );
\r_TX_Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_TX_Count[1]_i_2_n_0\,
      I1 => r_TX_Count_0,
      I2 => r_TX_Count(1),
      O => \r_TX_Count[1]_i_1_n_0\
    );
\r_TX_Count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9090FF90909090"
    )
        port map (
      I0 => i_TX_Count(0),
      I1 => i_TX_Count(1),
      I2 => \FSM_onehot_r_SM_CS_reg_n_0_[0]\,
      I3 => r_TX_Count(0),
      I4 => r_TX_Count(1),
      I5 => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      O => \r_TX_Count[1]_i_2_n_0\
    );
\r_TX_Count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFFFFABAA0000"
    )
        port map (
      I0 => \r_TX_Count[2]_i_2_n_0\,
      I1 => r_TX_Count(1),
      I2 => r_TX_Count(0),
      I3 => \FSM_onehot_r_SM_CS_reg_n_0_[1]\,
      I4 => r_TX_Count_0,
      I5 => r_TX_Count(2),
      O => \r_TX_Count[2]_i_1_n_0\
    );
\r_TX_Count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => \FSM_onehot_r_SM_CS_reg_n_0_[0]\,
      I1 => i_TX_Count(2),
      I2 => i_TX_Count(0),
      I3 => i_TX_Count(1),
      O => \r_TX_Count[2]_i_2_n_0\
    );
\r_TX_Count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => \r_TX_Count[0]_i_1_n_0\,
      Q => r_TX_Count(0)
    );
\r_TX_Count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => \r_TX_Count[1]_i_1_n_0\,
      Q => r_TX_Count(1)
    );
\r_TX_Count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_Clk,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => \r_TX_Count[2]_i_1_n_0\,
      Q => r_TX_Count(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_SPI_Master_With_Sing_0_2 is
  port (
    i_Rst_L : in STD_LOGIC;
    i_Clk : in STD_LOGIC;
    i_TX_Count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_TX_Byte : in STD_LOGIC_VECTOR ( 47 downto 0 );
    i_TX_DV : in STD_LOGIC;
    o_TX_Ready : out STD_LOGIC;
    o_RX_Count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_RX_DV : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 47 downto 0 );
    w_Master_Ready_do : out STD_LOGIC;
    r_RX_Bit_Count_do : out STD_LOGIC_VECTOR ( 5 downto 0 );
    r_TX_Bit_Count_do : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_SPI_Clk : out STD_LOGIC;
    i_SPI_MISO : in STD_LOGIC;
    o_SPI_MOSI : out STD_LOGIC;
    o_SPI_CS_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_SPI_Master_With_Sing_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_SPI_Master_With_Sing_0_2 : entity is "brd_SPI_Master_With_Sing_0_2,SPI_Master_With_Single_CS,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_SPI_Master_With_Sing_0_2 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_SPI_Master_With_Sing_0_2 : entity is "SPI_Master_With_Single_CS,Vivado 2018.1";
end brd_SPI_Master_With_Sing_0_2;

architecture STRUCTURE of brd_SPI_Master_With_Sing_0_2 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_Clk : signal is "xilinx.com:signal:clock:1.0 i_Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_Clk : signal is "XIL_INTERFACENAME i_Clk, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of o_SPI_Clk : signal is "xilinx.com:signal:clock:1.0 o_SPI_Clk CLK";
  attribute x_interface_parameter of o_SPI_Clk : signal is "XIL_INTERFACENAME o_SPI_Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN brd_SPI_Master_With_Sing_0_2_o_SPI_Clk";
begin
U0: entity work.brd_SPI_Master_With_Sing_0_2_SPI_Master_With_Single_CS
     port map (
      i_Clk => i_Clk,
      i_Rst_L => i_Rst_L,
      i_SPI_MISO => i_SPI_MISO,
      i_TX_Byte(47 downto 0) => i_TX_Byte(47 downto 0),
      i_TX_Count(2 downto 0) => i_TX_Count(2 downto 0),
      i_TX_DV => i_TX_DV,
      o_RX_Byte(47 downto 0) => o_RX_Byte(47 downto 0),
      o_RX_Count(1 downto 0) => o_RX_Count(1 downto 0),
      o_RX_DV => o_RX_DV,
      o_SPI_CS_n => o_SPI_CS_n,
      o_SPI_Clk => o_SPI_Clk,
      o_SPI_MOSI => o_SPI_MOSI,
      o_TX_Ready => o_TX_Ready,
      r_RX_Bit_Count_do(5 downto 0) => r_RX_Bit_Count_do(5 downto 0),
      r_TX_Bit_Count_do(5 downto 0) => r_TX_Bit_Count_do(5 downto 0),
      w_Master_Ready_do => w_Master_Ready_do
    );
end STRUCTURE;
