-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:40:59 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_USBFifoToDVSSPI_0_0/brd_USBFifoToDVSSPI_0_0_sim_netlist.vhdl
-- Design      : brd_USBFifoToDVSSPI_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI is
  port (
    wrSetupIndex_q_do : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrOUTIndex_q_do[0]\ : out STD_LOGIC;
    \wrOUTIndex_q_do[1]\ : out STD_LOGIC;
    setupPktReceived_q_do : out STD_LOGIC;
    \wrOUTIndex_q_do[2]\ : out STD_LOGIC;
    outPktReceived_q_do : out STD_LOGIC;
    outputDataValid_o : out STD_LOGIC;
    outputData_o : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dvs_resp_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataSPIToSendPrepared_w_do : out STD_LOGIC;
    rxDataComplete_o : out STD_LOGIC;
    setupDataRecStart_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    outDataRecStart_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    inputDataValid_i : in STD_LOGIC;
    dataRecEnd_i : in STD_LOGIC;
    inputData_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dvsRXByte_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dvs_resp_addr_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spiReady_i : in STD_LOGIC;
    dvsRXDataValid_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI : entity is "USBFifoToDVSSPI";
end brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI;

architecture STRUCTURE of brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI is
  signal DVSRespData_q : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[14]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[15]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[16]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[17]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[18]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[19]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[20]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[21]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[22]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[23]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[24]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[25]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[26]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[27]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[28]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[29]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[30]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[31]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \DVSRespData_q_reg_n_0_[9]\ : STD_LOGIC;
  signal dataSPIToSendComb_w : STD_LOGIC_VECTOR ( 47 to 47 );
  signal dataSPIToSendPrepared_w_do_INST_0_i_1_n_0 : STD_LOGIC;
  signal dataSPIToSendPrepared_w_do_INST_0_i_2_n_0 : STD_LOGIC;
  signal outPktReceived_q0 : STD_LOGIC;
  signal \^outpktreceived_q_do\ : STD_LOGIC;
  signal \out_packet_q[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \out_packet_q[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \out_packet_q[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \out_packet_q[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \out_packet_q[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \out_packet_q[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \out_packet_q[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \out_packet_q[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \out_packet_q[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \out_packet_q_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_packet_q_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_packet_q_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_packet_q_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal rdIndex_q0 : STD_LOGIC;
  signal \rdIndex_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdIndex_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdIndex_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdIndex_q_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rxdatacomplete_o\ : STD_LOGIC;
  signal rxDataComplete_q_i_1_n_0 : STD_LOGIC;
  signal rxDataComplete_q_i_2_n_0 : STD_LOGIC;
  signal setupPktReceived_q0 : STD_LOGIC;
  signal \^setuppktreceived_q_do\ : STD_LOGIC;
  signal \setup_packet_q[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \setup_packet_q[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \setup_packet_q[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \setup_packet_q[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \setup_packet_q[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \setup_packet_q[2][6]_i_2_n_0\ : STD_LOGIC;
  signal \setup_packet_q[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \setup_packet_q[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \setup_packet_q[4][7]_i_3_n_0\ : STD_LOGIC;
  signal \setup_packet_q[4][7]_i_4_n_0\ : STD_LOGIC;
  signal \setup_packet_q_reg[2]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \setup_packet_q_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \setup_packet_q_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \setup_packet_q_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \setup_packet_q_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \setup_packet_q_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \setup_packet_q_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \setup_packet_q_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \setup_packet_q_reg_n_0_[0][6]\ : STD_LOGIC;
  signal wrOUTEn_q : STD_LOGIC;
  signal wrOUTEn_q_i_1_n_0 : STD_LOGIC;
  signal \wrOUTIndex_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrOUTIndex_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrOUTIndex_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \wrOUTIndex_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \^wroutindex_q_do[0]\ : STD_LOGIC;
  signal \^wroutindex_q_do[1]\ : STD_LOGIC;
  signal \^wroutindex_q_do[2]\ : STD_LOGIC;
  signal wrSetupEn_q : STD_LOGIC;
  signal wrSetupEn_q_i_1_n_0 : STD_LOGIC;
  signal \wrSetupIndex_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrSetupIndex_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \^wrsetupindex_q_do\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dataSPIToSendPrepared_w_do_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \out_packet_q[3][7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of outputDataValid_q_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdIndex_q[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdIndex_q[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rxDataComplete_q_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of setupPktReceived_q_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \setup_packet_q[0][7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \setup_packet_q[0][7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \setup_packet_q[4][7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of wrOUTEn_q_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wrOUTIndex_q[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wrOUTIndex_q[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of wrSetupEn_q_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wrSetupIndex_q[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrSetupIndex_q[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrSetupIndex_q[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wrSetupIndex_q[3]_i_2\ : label is "soft_lutpair2";
begin
  outPktReceived_q_do <= \^outpktreceived_q_do\;
  rxDataComplete_o <= \^rxdatacomplete_o\;
  setupPktReceived_q_do <= \^setuppktreceived_q_do\;
  \wrOUTIndex_q_do[0]\ <= \^wroutindex_q_do[0]\;
  \wrOUTIndex_q_do[1]\ <= \^wroutindex_q_do[1]\;
  \wrOUTIndex_q_do[2]\ <= \^wroutindex_q_do[2]\;
  wrSetupIndex_q_do(3 downto 0) <= \^wrsetupindex_q_do\(3 downto 0);
\DVSRespData_q[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rst_i,
      I1 => dvsRXDataValid_i,
      I2 => setupDataRecStart_i,
      I3 => rxDataComplete_q_i_2_n_0,
      O => DVSRespData_q
    );
\DVSRespData_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(0),
      Q => \DVSRespData_q_reg_n_0_[0]\,
      R => '0'
    );
\DVSRespData_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(10),
      Q => \DVSRespData_q_reg_n_0_[10]\,
      R => '0'
    );
\DVSRespData_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(11),
      Q => \DVSRespData_q_reg_n_0_[11]\,
      R => '0'
    );
\DVSRespData_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(12),
      Q => \DVSRespData_q_reg_n_0_[12]\,
      R => '0'
    );
\DVSRespData_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(13),
      Q => \DVSRespData_q_reg_n_0_[13]\,
      R => '0'
    );
\DVSRespData_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(14),
      Q => \DVSRespData_q_reg_n_0_[14]\,
      R => '0'
    );
\DVSRespData_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(15),
      Q => \DVSRespData_q_reg_n_0_[15]\,
      R => '0'
    );
\DVSRespData_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(16),
      Q => \DVSRespData_q_reg_n_0_[16]\,
      R => '0'
    );
\DVSRespData_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(17),
      Q => \DVSRespData_q_reg_n_0_[17]\,
      R => '0'
    );
\DVSRespData_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(18),
      Q => \DVSRespData_q_reg_n_0_[18]\,
      R => '0'
    );
\DVSRespData_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(19),
      Q => \DVSRespData_q_reg_n_0_[19]\,
      R => '0'
    );
\DVSRespData_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(1),
      Q => \DVSRespData_q_reg_n_0_[1]\,
      R => '0'
    );
\DVSRespData_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(20),
      Q => \DVSRespData_q_reg_n_0_[20]\,
      R => '0'
    );
\DVSRespData_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(21),
      Q => \DVSRespData_q_reg_n_0_[21]\,
      R => '0'
    );
\DVSRespData_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(22),
      Q => \DVSRespData_q_reg_n_0_[22]\,
      R => '0'
    );
\DVSRespData_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(23),
      Q => \DVSRespData_q_reg_n_0_[23]\,
      R => '0'
    );
\DVSRespData_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(24),
      Q => \DVSRespData_q_reg_n_0_[24]\,
      R => '0'
    );
\DVSRespData_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(25),
      Q => \DVSRespData_q_reg_n_0_[25]\,
      R => '0'
    );
\DVSRespData_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(26),
      Q => \DVSRespData_q_reg_n_0_[26]\,
      R => '0'
    );
\DVSRespData_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(27),
      Q => \DVSRespData_q_reg_n_0_[27]\,
      R => '0'
    );
\DVSRespData_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(28),
      Q => \DVSRespData_q_reg_n_0_[28]\,
      R => '0'
    );
\DVSRespData_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(29),
      Q => \DVSRespData_q_reg_n_0_[29]\,
      R => '0'
    );
\DVSRespData_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(2),
      Q => \DVSRespData_q_reg_n_0_[2]\,
      R => '0'
    );
\DVSRespData_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(30),
      Q => \DVSRespData_q_reg_n_0_[30]\,
      R => '0'
    );
\DVSRespData_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(31),
      Q => \DVSRespData_q_reg_n_0_[31]\,
      R => '0'
    );
\DVSRespData_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(3),
      Q => \DVSRespData_q_reg_n_0_[3]\,
      R => '0'
    );
\DVSRespData_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(4),
      Q => \DVSRespData_q_reg_n_0_[4]\,
      R => '0'
    );
\DVSRespData_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(5),
      Q => \DVSRespData_q_reg_n_0_[5]\,
      R => '0'
    );
\DVSRespData_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(6),
      Q => \DVSRespData_q_reg_n_0_[6]\,
      R => '0'
    );
\DVSRespData_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(7),
      Q => \DVSRespData_q_reg_n_0_[7]\,
      R => '0'
    );
\DVSRespData_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(8),
      Q => \DVSRespData_q_reg_n_0_[8]\,
      R => '0'
    );
\DVSRespData_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => DVSRespData_q,
      D => dvsRXByte_i(9),
      Q => \DVSRespData_q_reg_n_0_[9]\,
      R => '0'
    );
dataSPIToSendPrepared_w_do_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^setuppktreceived_q_do\,
      I1 => dataSPIToSendComb_w(47),
      I2 => \^outpktreceived_q_do\,
      I3 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      O => dataSPIToSendPrepared_w_do
    );
dataSPIToSendPrepared_w_do_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => dataSPIToSendPrepared_w_do_INST_0_i_2_n_0,
      I1 => \setup_packet_q_reg_n_0_[0][0]\,
      I2 => \setup_packet_q_reg_n_0_[0][5]\,
      I3 => \setup_packet_q_reg_n_0_[0][6]\,
      O => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0
    );
dataSPIToSendPrepared_w_do_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \setup_packet_q_reg_n_0_[0][2]\,
      I1 => \setup_packet_q_reg_n_0_[0][1]\,
      I2 => \setup_packet_q_reg_n_0_[0][4]\,
      I3 => \setup_packet_q_reg_n_0_[0][3]\,
      O => dataSPIToSendPrepared_w_do_INST_0_i_2_n_0
    );
\dvs_resp_data_o[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[16]\,
      I1 => \DVSRespData_q_reg_n_0_[24]\,
      I2 => \DVSRespData_q_reg_n_0_[0]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[8]\,
      O => dvs_resp_data_o(0)
    );
\dvs_resp_data_o[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[17]\,
      I1 => \DVSRespData_q_reg_n_0_[25]\,
      I2 => \DVSRespData_q_reg_n_0_[1]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[9]\,
      O => dvs_resp_data_o(1)
    );
\dvs_resp_data_o[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[18]\,
      I1 => \DVSRespData_q_reg_n_0_[26]\,
      I2 => \DVSRespData_q_reg_n_0_[2]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[10]\,
      O => dvs_resp_data_o(2)
    );
\dvs_resp_data_o[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[19]\,
      I1 => \DVSRespData_q_reg_n_0_[27]\,
      I2 => \DVSRespData_q_reg_n_0_[3]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[11]\,
      O => dvs_resp_data_o(3)
    );
\dvs_resp_data_o[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[20]\,
      I1 => \DVSRespData_q_reg_n_0_[28]\,
      I2 => \DVSRespData_q_reg_n_0_[4]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[12]\,
      O => dvs_resp_data_o(4)
    );
\dvs_resp_data_o[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[21]\,
      I1 => \DVSRespData_q_reg_n_0_[29]\,
      I2 => \DVSRespData_q_reg_n_0_[5]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[13]\,
      O => dvs_resp_data_o(5)
    );
\dvs_resp_data_o[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[22]\,
      I1 => \DVSRespData_q_reg_n_0_[30]\,
      I2 => \DVSRespData_q_reg_n_0_[6]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[14]\,
      O => dvs_resp_data_o(6)
    );
\dvs_resp_data_o[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DVSRespData_q_reg_n_0_[23]\,
      I1 => \DVSRespData_q_reg_n_0_[31]\,
      I2 => \DVSRespData_q_reg_n_0_[7]\,
      I3 => dvs_resp_addr_i(1),
      I4 => dvs_resp_addr_i(0),
      I5 => \DVSRespData_q_reg_n_0_[15]\,
      O => dvs_resp_data_o(7)
    );
outPktReceived_q_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^wroutindex_q_do[1]\,
      I1 => \^wroutindex_q_do[0]\,
      I2 => dataRecEnd_i,
      I3 => \^wroutindex_q_do[2]\,
      O => outPktReceived_q0
    );
outPktReceived_q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => outPktReceived_q0,
      Q => \^outpktreceived_q_do\
    );
\out_packet_q[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0000"
    )
        port map (
      I0 => \out_packet_q[3][7]_i_3_n_0\,
      I1 => \^wroutindex_q_do[0]\,
      I2 => \^wroutindex_q_do[1]\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q[0][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0202"
    )
        port map (
      I0 => \out_packet_q[3][7]_i_3_n_0\,
      I1 => \^wroutindex_q_do[0]\,
      I2 => \^wroutindex_q_do[1]\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[0][7]_i_2_n_0\
    );
\out_packet_q[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0000"
    )
        port map (
      I0 => \out_packet_q[3][7]_i_3_n_0\,
      I1 => \^wroutindex_q_do[0]\,
      I2 => \^wroutindex_q_do[1]\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q[1][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \out_packet_q[3][7]_i_3_n_0\,
      I1 => \^wroutindex_q_do[0]\,
      I2 => \^wroutindex_q_do[1]\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[1][7]_i_2_n_0\
    );
\out_packet_q[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0000"
    )
        port map (
      I0 => \out_packet_q[3][7]_i_3_n_0\,
      I1 => \^wroutindex_q_do[1]\,
      I2 => \^wroutindex_q_do[0]\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q[2][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \out_packet_q[3][7]_i_3_n_0\,
      I1 => \^wroutindex_q_do[1]\,
      I2 => \^wroutindex_q_do[0]\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[2][7]_i_2_n_0\
    );
\out_packet_q[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF0000"
    )
        port map (
      I0 => \^wroutindex_q_do[0]\,
      I1 => \^wroutindex_q_do[1]\,
      I2 => \out_packet_q[3][7]_i_3_n_0\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q[3][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \^wroutindex_q_do[0]\,
      I1 => \^wroutindex_q_do[1]\,
      I2 => \out_packet_q[3][7]_i_3_n_0\,
      I3 => rst_i,
      I4 => outDataRecStart_i,
      O => \out_packet_q[3][7]_i_2_n_0\
    );
\out_packet_q[3][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^wroutindex_q_do[2]\,
      I1 => wrOUTEn_q,
      I2 => rst_i,
      I3 => inputDataValid_i,
      I4 => dataRecEnd_i,
      O => \out_packet_q[3][7]_i_3_n_0\
    );
\out_packet_q_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(0),
      Q => \out_packet_q_reg[0]\(0),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(1),
      Q => \out_packet_q_reg[0]\(1),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(2),
      Q => \out_packet_q_reg[0]\(2),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(3),
      Q => \out_packet_q_reg[0]\(3),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(4),
      Q => \out_packet_q_reg[0]\(4),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(5),
      Q => \out_packet_q_reg[0]\(5),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(6),
      Q => \out_packet_q_reg[0]\(6),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(7),
      Q => \out_packet_q_reg[0]\(7),
      R => \out_packet_q[0][7]_i_1_n_0\
    );
\out_packet_q_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(0),
      Q => \out_packet_q_reg[1]\(0),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(1),
      Q => \out_packet_q_reg[1]\(1),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(2),
      Q => \out_packet_q_reg[1]\(2),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(3),
      Q => \out_packet_q_reg[1]\(3),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(4),
      Q => \out_packet_q_reg[1]\(4),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(5),
      Q => \out_packet_q_reg[1]\(5),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(6),
      Q => \out_packet_q_reg[1]\(6),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[1][7]_i_2_n_0\,
      D => inputData_i(7),
      Q => \out_packet_q_reg[1]\(7),
      R => \out_packet_q[1][7]_i_1_n_0\
    );
\out_packet_q_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(0),
      Q => \out_packet_q_reg[2]\(0),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(1),
      Q => \out_packet_q_reg[2]\(1),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(2),
      Q => \out_packet_q_reg[2]\(2),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(3),
      Q => \out_packet_q_reg[2]\(3),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(4),
      Q => \out_packet_q_reg[2]\(4),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(5),
      Q => \out_packet_q_reg[2]\(5),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(6),
      Q => \out_packet_q_reg[2]\(6),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[2][7]_i_2_n_0\,
      D => inputData_i(7),
      Q => \out_packet_q_reg[2]\(7),
      R => \out_packet_q[2][7]_i_1_n_0\
    );
\out_packet_q_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(0),
      Q => \out_packet_q_reg[3]\(0),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(1),
      Q => \out_packet_q_reg[3]\(1),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(2),
      Q => \out_packet_q_reg[3]\(2),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(3),
      Q => \out_packet_q_reg[3]\(3),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(4),
      Q => \out_packet_q_reg[3]\(4),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(5),
      Q => \out_packet_q_reg[3]\(5),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(6),
      Q => \out_packet_q_reg[3]\(6),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
\out_packet_q_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \out_packet_q[3][7]_i_2_n_0\,
      D => inputData_i(7),
      Q => \out_packet_q_reg[3]\(7),
      R => \out_packet_q[3][7]_i_1_n_0\
    );
outputDataValid_q_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      I1 => \^outpktreceived_q_do\,
      I2 => dataSPIToSendComb_w(47),
      I3 => \^setuppktreceived_q_do\,
      O => p_0_in
    );
outputDataValid_q_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => spiReady_i,
      I1 => \rdIndex_q_reg__0\(0),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(2),
      I4 => \rdIndex_q_reg__0\(3),
      O => rdIndex_q0
    );
outputDataValid_q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => rdIndex_q0,
      Q => outputDataValid_o
    );
\outputData_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(0),
      O => p_1_in(0)
    );
\outputData_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(2),
      O => p_1_in(10)
    );
\outputData_q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(3),
      O => p_1_in(11)
    );
\outputData_q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(4),
      O => p_1_in(12)
    );
\outputData_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(5),
      O => p_1_in(13)
    );
\outputData_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(6),
      O => p_1_in(14)
    );
\outputData_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(7),
      O => p_1_in(15)
    );
\outputData_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(0),
      O => p_1_in(16)
    );
\outputData_q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(1),
      O => p_1_in(17)
    );
\outputData_q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(2),
      O => p_1_in(18)
    );
\outputData_q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(3),
      O => p_1_in(19)
    );
\outputData_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(1),
      O => p_1_in(1)
    );
\outputData_q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(4),
      O => p_1_in(20)
    );
\outputData_q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(5),
      O => p_1_in(21)
    );
\outputData_q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(6),
      O => p_1_in(22)
    );
\outputData_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[1]\(7),
      O => p_1_in(23)
    );
\outputData_q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(0),
      O => p_1_in(24)
    );
\outputData_q[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(1),
      O => p_1_in(25)
    );
\outputData_q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(2),
      O => p_1_in(26)
    );
\outputData_q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(3),
      O => p_1_in(27)
    );
\outputData_q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(4),
      O => p_1_in(28)
    );
\outputData_q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(5),
      O => p_1_in(29)
    );
\outputData_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(2),
      O => p_1_in(2)
    );
\outputData_q[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(6),
      O => p_1_in(30)
    );
\outputData_q[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[0]\(7),
      O => p_1_in(31)
    );
\outputData_q[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(0),
      O => p_1_in(32)
    );
\outputData_q[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(1),
      O => p_1_in(33)
    );
\outputData_q[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(2),
      O => p_1_in(34)
    );
\outputData_q[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(3),
      O => p_1_in(35)
    );
\outputData_q[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(4),
      O => p_1_in(36)
    );
\outputData_q[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(5),
      O => p_1_in(37)
    );
\outputData_q[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(6),
      O => p_1_in(38)
    );
\outputData_q[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[4]\(7),
      O => p_1_in(39)
    );
\outputData_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(3),
      O => p_1_in(3)
    );
\outputData_q[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(0),
      O => p_1_in(40)
    );
\outputData_q[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(1),
      O => p_1_in(41)
    );
\outputData_q[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(2),
      O => p_1_in(42)
    );
\outputData_q[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(3),
      O => p_1_in(43)
    );
\outputData_q[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(4),
      O => p_1_in(44)
    );
\outputData_q[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(5),
      O => p_1_in(45)
    );
\outputData_q[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \setup_packet_q_reg[2]\(6),
      O => p_1_in(46)
    );
\outputData_q[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => dataSPIToSendComb_w(47),
      O => p_1_in(47)
    );
\outputData_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(4),
      O => p_1_in(4)
    );
\outputData_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(5),
      O => p_1_in(5)
    );
\outputData_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(6),
      O => p_1_in(6)
    );
\outputData_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[3]\(7),
      O => p_1_in(7)
    );
\outputData_q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(0),
      O => p_1_in(8)
    );
\outputData_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(3),
      I1 => \rdIndex_q_reg__0\(2),
      I2 => \rdIndex_q_reg__0\(1),
      I3 => \rdIndex_q_reg__0\(0),
      I4 => spiReady_i,
      I5 => \out_packet_q_reg[2]\(1),
      O => p_1_in(9)
    );
\outputData_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(0),
      Q => outputData_o(0)
    );
\outputData_q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(10),
      Q => outputData_o(10)
    );
\outputData_q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(11),
      Q => outputData_o(11)
    );
\outputData_q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(12),
      Q => outputData_o(12)
    );
\outputData_q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(13),
      Q => outputData_o(13)
    );
\outputData_q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(14),
      Q => outputData_o(14)
    );
\outputData_q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(15),
      Q => outputData_o(15)
    );
\outputData_q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(16),
      Q => outputData_o(16)
    );
\outputData_q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(17),
      Q => outputData_o(17)
    );
\outputData_q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(18),
      Q => outputData_o(18)
    );
\outputData_q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(19),
      Q => outputData_o(19)
    );
\outputData_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(1),
      Q => outputData_o(1)
    );
\outputData_q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(20),
      Q => outputData_o(20)
    );
\outputData_q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(21),
      Q => outputData_o(21)
    );
\outputData_q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(22),
      Q => outputData_o(22)
    );
\outputData_q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(23),
      Q => outputData_o(23)
    );
\outputData_q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(24),
      Q => outputData_o(24)
    );
\outputData_q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(25),
      Q => outputData_o(25)
    );
\outputData_q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(26),
      Q => outputData_o(26)
    );
\outputData_q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(27),
      Q => outputData_o(27)
    );
\outputData_q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(28),
      Q => outputData_o(28)
    );
\outputData_q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(29),
      Q => outputData_o(29)
    );
\outputData_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(2),
      Q => outputData_o(2)
    );
\outputData_q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(30),
      Q => outputData_o(30)
    );
\outputData_q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(31),
      Q => outputData_o(31)
    );
\outputData_q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(32),
      Q => outputData_o(32)
    );
\outputData_q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(33),
      Q => outputData_o(33)
    );
\outputData_q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(34),
      Q => outputData_o(34)
    );
\outputData_q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(35),
      Q => outputData_o(35)
    );
\outputData_q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(36),
      Q => outputData_o(36)
    );
\outputData_q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(37),
      Q => outputData_o(37)
    );
\outputData_q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(38),
      Q => outputData_o(38)
    );
\outputData_q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(39),
      Q => outputData_o(39)
    );
\outputData_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(3),
      Q => outputData_o(3)
    );
\outputData_q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(40),
      Q => outputData_o(40)
    );
\outputData_q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(41),
      Q => outputData_o(41)
    );
\outputData_q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(42),
      Q => outputData_o(42)
    );
\outputData_q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(43),
      Q => outputData_o(43)
    );
\outputData_q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(44),
      Q => outputData_o(44)
    );
\outputData_q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(45),
      Q => outputData_o(45)
    );
\outputData_q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(46),
      Q => outputData_o(46)
    );
\outputData_q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(47),
      Q => outputData_o(47)
    );
\outputData_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(4),
      Q => outputData_o(4)
    );
\outputData_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(5),
      Q => outputData_o(5)
    );
\outputData_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(6),
      Q => outputData_o(6)
    );
\outputData_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(7),
      Q => outputData_o(7)
    );
\outputData_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(8),
      Q => outputData_o(8)
    );
\outputData_q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => p_0_in,
      CLR => rst_i,
      D => p_1_in(9),
      Q => outputData_o(9)
    );
\rdIndex_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF47"
    )
        port map (
      I0 => \^setuppktreceived_q_do\,
      I1 => dataSPIToSendComb_w(47),
      I2 => \^outpktreceived_q_do\,
      I3 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      I4 => \rdIndex_q_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\rdIndex_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF47FF470000"
    )
        port map (
      I0 => \^setuppktreceived_q_do\,
      I1 => dataSPIToSendComb_w(47),
      I2 => \^outpktreceived_q_do\,
      I3 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      I4 => \rdIndex_q_reg__0\(1),
      I5 => \rdIndex_q_reg__0\(0),
      O => \p_0_in__1\(1)
    );
\rdIndex_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4700000000FF47"
    )
        port map (
      I0 => \^setuppktreceived_q_do\,
      I1 => dataSPIToSendComb_w(47),
      I2 => \^outpktreceived_q_do\,
      I3 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      I4 => \rdIndex_q_reg__0\(2),
      I5 => \rdIndex_q[2]_i_2_n_0\,
      O => \p_0_in__1\(2)
    );
\rdIndex_q[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(0),
      I1 => \rdIndex_q_reg__0\(1),
      O => \rdIndex_q[2]_i_2_n_0\
    );
\rdIndex_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEFEA"
    )
        port map (
      I0 => rdIndex_q0,
      I1 => \^setuppktreceived_q_do\,
      I2 => dataSPIToSendComb_w(47),
      I3 => \^outpktreceived_q_do\,
      I4 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      O => \rdIndex_q[3]_i_1_n_0\
    );
\rdIndex_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F8000007F807F80"
    )
        port map (
      I0 => \rdIndex_q_reg__0\(0),
      I1 => \rdIndex_q_reg__0\(1),
      I2 => \rdIndex_q_reg__0\(2),
      I3 => \rdIndex_q_reg__0\(3),
      I4 => dataSPIToSendPrepared_w_do_INST_0_i_1_n_0,
      I5 => \rdIndex_q[3]_i_3_n_0\,
      O => \p_0_in__1\(3)
    );
\rdIndex_q[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^setuppktreceived_q_do\,
      I1 => dataSPIToSendComb_w(47),
      I2 => \^outpktreceived_q_do\,
      O => \rdIndex_q[3]_i_3_n_0\
    );
\rdIndex_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \rdIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__1\(0),
      Q => \rdIndex_q_reg__0\(0)
    );
\rdIndex_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \rdIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__1\(1),
      Q => \rdIndex_q_reg__0\(1)
    );
\rdIndex_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \rdIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__1\(2),
      Q => \rdIndex_q_reg__0\(2)
    );
\rdIndex_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \rdIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__1\(3),
      Q => \rdIndex_q_reg__0\(3)
    );
rxDataComplete_q_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0D"
    )
        port map (
      I0 => rxDataComplete_q_i_2_n_0,
      I1 => dvsRXDataValid_i,
      I2 => setupDataRecStart_i,
      I3 => \^rxdatacomplete_o\,
      O => rxDataComplete_q_i_1_n_0
    );
rxDataComplete_q_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => dataSPIToSendComb_w(47),
      I1 => dataSPIToSendPrepared_w_do_INST_0_i_2_n_0,
      I2 => \setup_packet_q_reg_n_0_[0][0]\,
      I3 => \setup_packet_q_reg_n_0_[0][5]\,
      I4 => \setup_packet_q_reg_n_0_[0][6]\,
      I5 => \^setuppktreceived_q_do\,
      O => rxDataComplete_q_i_2_n_0
    );
rxDataComplete_q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => rxDataComplete_q_i_1_n_0,
      Q => \^rxdatacomplete_o\
    );
setupPktReceived_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^wrsetupindex_q_do\(0),
      I1 => \^wrsetupindex_q_do\(1),
      I2 => \^wrsetupindex_q_do\(2),
      I3 => dataRecEnd_i,
      I4 => \^wrsetupindex_q_do\(3),
      O => setupPktReceived_q0
    );
setupPktReceived_q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => setupPktReceived_q0,
      Q => \^setuppktreceived_q_do\
    );
\setup_packet_q[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444C44444444444"
    )
        port map (
      I0 => rst_i,
      I1 => setupDataRecStart_i,
      I2 => \setup_packet_q[0][7]_i_3_n_0\,
      I3 => \setup_packet_q[0][7]_i_4_n_0\,
      I4 => \^wrsetupindex_q_do\(3),
      I5 => wrSetupEn_q,
      O => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q[0][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F44444444444"
    )
        port map (
      I0 => rst_i,
      I1 => setupDataRecStart_i,
      I2 => \setup_packet_q[0][7]_i_3_n_0\,
      I3 => \setup_packet_q[0][7]_i_4_n_0\,
      I4 => \^wrsetupindex_q_do\(3),
      I5 => wrSetupEn_q,
      O => \setup_packet_q[0][7]_i_2_n_0\
    );
\setup_packet_q[0][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => dataRecEnd_i,
      I1 => inputDataValid_i,
      I2 => rst_i,
      O => \setup_packet_q[0][7]_i_3_n_0\
    );
\setup_packet_q[0][7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^wrsetupindex_q_do\(2),
      I1 => \^wrsetupindex_q_do\(1),
      I2 => \^wrsetupindex_q_do\(0),
      O => \setup_packet_q[0][7]_i_4_n_0\
    );
\setup_packet_q[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => setupDataRecStart_i,
      I1 => \setup_packet_q[2][6]_i_2_n_0\,
      O => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q[2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \setup_packet_q[4][7]_i_3_n_0\,
      I1 => \setup_packet_q[0][7]_i_3_n_0\,
      I2 => \^wrsetupindex_q_do\(0),
      I3 => \^wrsetupindex_q_do\(1),
      I4 => \^wrsetupindex_q_do\(2),
      I5 => \setup_packet_q[4][7]_i_4_n_0\,
      O => \setup_packet_q[2][6]_i_2_n_0\
    );
\setup_packet_q[4][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => setupDataRecStart_i,
      I1 => \setup_packet_q[4][7]_i_2_n_0\,
      O => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q[4][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \setup_packet_q[4][7]_i_3_n_0\,
      I1 => \setup_packet_q[0][7]_i_3_n_0\,
      I2 => \^wrsetupindex_q_do\(0),
      I3 => \^wrsetupindex_q_do\(2),
      I4 => \^wrsetupindex_q_do\(1),
      I5 => \setup_packet_q[4][7]_i_4_n_0\,
      O => \setup_packet_q[4][7]_i_2_n_0\
    );
\setup_packet_q[4][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => setupDataRecStart_i,
      I1 => rst_i,
      O => \setup_packet_q[4][7]_i_3_n_0\
    );
\setup_packet_q[4][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wrSetupEn_q,
      I1 => \^wrsetupindex_q_do\(3),
      O => \setup_packet_q[4][7]_i_4_n_0\
    );
\setup_packet_q_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(0),
      Q => \setup_packet_q_reg_n_0_[0][0]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(1),
      Q => \setup_packet_q_reg_n_0_[0][1]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(2),
      Q => \setup_packet_q_reg_n_0_[0][2]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(3),
      Q => \setup_packet_q_reg_n_0_[0][3]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(4),
      Q => \setup_packet_q_reg_n_0_[0][4]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(5),
      Q => \setup_packet_q_reg_n_0_[0][5]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(6),
      Q => \setup_packet_q_reg_n_0_[0][6]\,
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[0][7]_i_2_n_0\,
      D => inputData_i(7),
      Q => dataSPIToSendComb_w(47),
      R => \setup_packet_q[0][7]_i_1_n_0\
    );
\setup_packet_q_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(0),
      Q => \setup_packet_q_reg[2]\(0),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(1),
      Q => \setup_packet_q_reg[2]\(1),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(2),
      Q => \setup_packet_q_reg[2]\(2),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(3),
      Q => \setup_packet_q_reg[2]\(3),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(4),
      Q => \setup_packet_q_reg[2]\(4),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(5),
      Q => \setup_packet_q_reg[2]\(5),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[2][6]_i_2_n_0\,
      D => inputData_i(6),
      Q => \setup_packet_q_reg[2]\(6),
      R => \setup_packet_q[2][6]_i_1_n_0\
    );
\setup_packet_q_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(0),
      Q => \setup_packet_q_reg[4]\(0),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(1),
      Q => \setup_packet_q_reg[4]\(1),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(2),
      Q => \setup_packet_q_reg[4]\(2),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(3),
      Q => \setup_packet_q_reg[4]\(3),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(4),
      Q => \setup_packet_q_reg[4]\(4),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(5),
      Q => \setup_packet_q_reg[4]\(5),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(6),
      Q => \setup_packet_q_reg[4]\(6),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
\setup_packet_q_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \setup_packet_q[4][7]_i_2_n_0\,
      D => inputData_i(7),
      Q => \setup_packet_q_reg[4]\(7),
      R => \setup_packet_q[4][7]_i_1_n_0\
    );
wrOUTEn_q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => outDataRecStart_i,
      I1 => dataRecEnd_i,
      I2 => wrOUTEn_q,
      O => wrOUTEn_q_i_1_n_0
    );
wrOUTEn_q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => wrOUTEn_q_i_1_n_0,
      Q => wrOUTEn_q
    );
\wrOUTIndex_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F70008"
    )
        port map (
      I0 => wrOUTEn_q,
      I1 => inputDataValid_i,
      I2 => dataRecEnd_i,
      I3 => outDataRecStart_i,
      I4 => \^wroutindex_q_do[0]\,
      O => \wrOUTIndex_q[0]_i_1_n_0\
    );
\wrOUTIndex_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF7F00000080"
    )
        port map (
      I0 => \^wroutindex_q_do[0]\,
      I1 => wrOUTEn_q,
      I2 => inputDataValid_i,
      I3 => dataRecEnd_i,
      I4 => outDataRecStart_i,
      I5 => \^wroutindex_q_do[1]\,
      O => \wrOUTIndex_q[1]_i_1_n_0\
    );
\wrOUTIndex_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF0800"
    )
        port map (
      I0 => \^wroutindex_q_do[0]\,
      I1 => \^wroutindex_q_do[1]\,
      I2 => outDataRecStart_i,
      I3 => \wrOUTIndex_q[2]_i_2_n_0\,
      I4 => \^wroutindex_q_do[2]\,
      O => \wrOUTIndex_q[2]_i_1_n_0\
    );
\wrOUTIndex_q[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => wrOUTEn_q,
      I1 => inputDataValid_i,
      I2 => dataRecEnd_i,
      I3 => outDataRecStart_i,
      O => \wrOUTIndex_q[2]_i_2_n_0\
    );
\wrOUTIndex_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => \wrOUTIndex_q[0]_i_1_n_0\,
      Q => \^wroutindex_q_do[0]\
    );
\wrOUTIndex_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => \wrOUTIndex_q[1]_i_1_n_0\,
      Q => \^wroutindex_q_do[1]\
    );
\wrOUTIndex_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => \wrOUTIndex_q[2]_i_1_n_0\,
      Q => \^wroutindex_q_do[2]\
    );
wrSetupEn_q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => setupDataRecStart_i,
      I1 => dataRecEnd_i,
      I2 => wrSetupEn_q,
      O => wrSetupEn_q_i_1_n_0
    );
wrSetupEn_q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => rst_i,
      D => wrSetupEn_q_i_1_n_0,
      Q => wrSetupEn_q
    );
\wrSetupIndex_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^wrsetupindex_q_do\(0),
      I1 => setupDataRecStart_i,
      O => \wrSetupIndex_q[0]_i_1_n_0\
    );
\wrSetupIndex_q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^wrsetupindex_q_do\(0),
      I1 => \^wrsetupindex_q_do\(1),
      I2 => setupDataRecStart_i,
      O => \p_0_in__0\(1)
    );
\wrSetupIndex_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \^wrsetupindex_q_do\(0),
      I1 => \^wrsetupindex_q_do\(1),
      I2 => \^wrsetupindex_q_do\(2),
      I3 => setupDataRecStart_i,
      O => \p_0_in__0\(2)
    );
\wrSetupIndex_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => wrSetupEn_q,
      I1 => inputDataValid_i,
      I2 => dataRecEnd_i,
      I3 => setupDataRecStart_i,
      O => \wrSetupIndex_q[3]_i_1_n_0\
    );
\wrSetupIndex_q[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \^wrsetupindex_q_do\(1),
      I1 => \^wrsetupindex_q_do\(0),
      I2 => \^wrsetupindex_q_do\(2),
      I3 => \^wrsetupindex_q_do\(3),
      I4 => setupDataRecStart_i,
      O => \p_0_in__0\(3)
    );
\wrSetupIndex_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \wrSetupIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \wrSetupIndex_q[0]_i_1_n_0\,
      Q => \^wrsetupindex_q_do\(0)
    );
\wrSetupIndex_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \wrSetupIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__0\(1),
      Q => \^wrsetupindex_q_do\(1)
    );
\wrSetupIndex_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \wrSetupIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__0\(2),
      Q => \^wrsetupindex_q_do\(2)
    );
\wrSetupIndex_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \wrSetupIndex_q[3]_i_1_n_0\,
      CLR => rst_i,
      D => \p_0_in__0\(3),
      Q => \^wrsetupindex_q_do\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_USBFifoToDVSSPI_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    spiReady_i : in STD_LOGIC;
    setupDataRecStart_i : in STD_LOGIC;
    outDataRecStart_i : in STD_LOGIC;
    dataRecEnd_i : in STD_LOGIC;
    inputDataValid_i : in STD_LOGIC;
    inputData_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dvsRXDataValid_i : in STD_LOGIC;
    dvsRXByte_i : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dvs_resp_addr_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    setupPktReceived_q_do : out STD_LOGIC;
    outPktReceived_q_do : out STD_LOGIC;
    dataSPIToSendPrepared_w_do : out STD_LOGIC;
    wrSetupIndex_q_do : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrOUTIndex_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    outputDataValid_o : out STD_LOGIC;
    outputData_o : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rxDataComplete_o : out STD_LOGIC;
    dvs_resp_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_USBFifoToDVSSPI_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_USBFifoToDVSSPI_0_0 : entity is "brd_USBFifoToDVSSPI_0_0,USBFifoToDVSSPI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_USBFifoToDVSSPI_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_USBFifoToDVSSPI_0_0 : entity is "USBFifoToDVSSPI,Vivado 2018.1";
end brd_USBFifoToDVSSPI_0_0;

architecture STRUCTURE of brd_USBFifoToDVSSPI_0_0 is
begin
U0: entity work.brd_USBFifoToDVSSPI_0_0_USBFifoToDVSSPI
     port map (
      clk_i => clk_i,
      dataRecEnd_i => dataRecEnd_i,
      dataSPIToSendPrepared_w_do => dataSPIToSendPrepared_w_do,
      dvsRXByte_i(31 downto 0) => dvsRXByte_i(31 downto 0),
      dvsRXDataValid_i => dvsRXDataValid_i,
      dvs_resp_addr_i(1 downto 0) => dvs_resp_addr_i(1 downto 0),
      dvs_resp_data_o(7 downto 0) => dvs_resp_data_o(7 downto 0),
      inputDataValid_i => inputDataValid_i,
      inputData_i(7 downto 0) => inputData_i(7 downto 0),
      outDataRecStart_i => outDataRecStart_i,
      outPktReceived_q_do => outPktReceived_q_do,
      outputDataValid_o => outputDataValid_o,
      outputData_o(47 downto 0) => outputData_o(47 downto 0),
      rst_i => rst_i,
      rxDataComplete_o => rxDataComplete_o,
      setupDataRecStart_i => setupDataRecStart_i,
      setupPktReceived_q_do => setupPktReceived_q_do,
      spiReady_i => spiReady_i,
      \wrOUTIndex_q_do[0]\ => wrOUTIndex_q_do(0),
      \wrOUTIndex_q_do[1]\ => wrOUTIndex_q_do(1),
      \wrOUTIndex_q_do[2]\ => wrOUTIndex_q_do(2),
      wrSetupIndex_q_do(3 downto 0) => wrSetupIndex_q_do(3 downto 0)
    );
end STRUCTURE;
