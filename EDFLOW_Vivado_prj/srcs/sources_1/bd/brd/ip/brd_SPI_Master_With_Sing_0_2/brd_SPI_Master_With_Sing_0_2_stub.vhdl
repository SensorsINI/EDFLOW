-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 13:38:05 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_SPI_Master_With_Sing_0_2/brd_SPI_Master_With_Sing_0_2_stub.vhdl
-- Design      : brd_SPI_Master_With_Sing_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_SPI_Master_With_Sing_0_2 is
  Port ( 
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

end brd_SPI_Master_With_Sing_0_2;

architecture stub of brd_SPI_Master_With_Sing_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_Rst_L,i_Clk,i_TX_Count[2:0],i_TX_Byte[47:0],i_TX_DV,o_TX_Ready,o_RX_Count[1:0],o_RX_DV,o_RX_Byte[47:0],w_Master_Ready_do,r_RX_Bit_Count_do[5:0],r_TX_Bit_Count_do[5:0],o_SPI_Clk,i_SPI_MISO,o_SPI_MOSI,o_SPI_CS_n";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SPI_Master_With_Single_CS,Vivado 2018.1";
begin
end;
