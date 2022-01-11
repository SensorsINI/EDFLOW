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

-- IP VLNV: xilinx.com:module_ref:SPI_Master_With_Single_CS:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_SPI_Master_With_Sing_0_2 IS
  PORT (
    i_Rst_L : IN STD_LOGIC;
    i_Clk : IN STD_LOGIC;
    i_TX_Count : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    i_TX_Byte : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    i_TX_DV : IN STD_LOGIC;
    o_TX_Ready : OUT STD_LOGIC;
    o_RX_Count : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_RX_DV : OUT STD_LOGIC;
    o_RX_Byte : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    w_Master_Ready_do : OUT STD_LOGIC;
    r_RX_Bit_Count_do : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    r_TX_Bit_Count_do : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    o_SPI_Clk : OUT STD_LOGIC;
    i_SPI_MISO : IN STD_LOGIC;
    o_SPI_MOSI : OUT STD_LOGIC;
    o_SPI_CS_n : OUT STD_LOGIC
  );
END brd_SPI_Master_With_Sing_0_2;

ARCHITECTURE brd_SPI_Master_With_Sing_0_2_arch OF brd_SPI_Master_With_Sing_0_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_SPI_Master_With_Sing_0_2_arch: ARCHITECTURE IS "yes";
  COMPONENT SPI_Master_With_Single_CS IS
    GENERIC (
      SPI_MODE : INTEGER;
      CLKS_PER_HALF_BIT : INTEGER;
      MAX_BYTES_PER_CS : INTEGER;
      CS_INACTIVE_CLKS : INTEGER
    );
    PORT (
      i_Rst_L : IN STD_LOGIC;
      i_Clk : IN STD_LOGIC;
      i_TX_Count : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      i_TX_Byte : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      i_TX_DV : IN STD_LOGIC;
      o_TX_Ready : OUT STD_LOGIC;
      o_RX_Count : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_RX_DV : OUT STD_LOGIC;
      o_RX_Byte : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      w_Master_Ready_do : OUT STD_LOGIC;
      r_RX_Bit_Count_do : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      r_TX_Bit_Count_do : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      o_SPI_Clk : OUT STD_LOGIC;
      i_SPI_MISO : IN STD_LOGIC;
      o_SPI_MOSI : OUT STD_LOGIC;
      o_SPI_CS_n : OUT STD_LOGIC
    );
  END COMPONENT SPI_Master_With_Single_CS;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_SPI_Master_With_Sing_0_2_arch: ARCHITECTURE IS "SPI_Master_With_Single_CS,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_SPI_Master_With_Sing_0_2_arch : ARCHITECTURE IS "brd_SPI_Master_With_Sing_0_2,SPI_Master_With_Single_CS,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_SPI_Master_With_Sing_0_2_arch: ARCHITECTURE IS "brd_SPI_Master_With_Sing_0_2,SPI_Master_With_Single_CS,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_Master_With_Single_CS,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,SPI_MODE=0,CLKS_PER_HALF_BIT=10,MAX_BYTES_PER_CS=6,CS_INACTIVE_CLKS=1}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_SPI_Clk: SIGNAL IS "XIL_INTERFACENAME o_SPI_Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN brd_SPI_Master_With_Sing_0_2_o_SPI_Clk";
  ATTRIBUTE X_INTERFACE_INFO OF o_SPI_Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 o_SPI_Clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_Clk: SIGNAL IS "XIL_INTERFACENAME i_Clk, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF i_Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_Clk CLK";
BEGIN
  U0 : SPI_Master_With_Single_CS
    GENERIC MAP (
      SPI_MODE => 0,
      CLKS_PER_HALF_BIT => 10,
      MAX_BYTES_PER_CS => 6,
      CS_INACTIVE_CLKS => 1
    )
    PORT MAP (
      i_Rst_L => i_Rst_L,
      i_Clk => i_Clk,
      i_TX_Count => i_TX_Count,
      i_TX_Byte => i_TX_Byte,
      i_TX_DV => i_TX_DV,
      o_TX_Ready => o_TX_Ready,
      o_RX_Count => o_RX_Count,
      o_RX_DV => o_RX_DV,
      o_RX_Byte => o_RX_Byte,
      w_Master_Ready_do => w_Master_Ready_do,
      r_RX_Bit_Count_do => r_RX_Bit_Count_do,
      r_TX_Bit_Count_do => r_TX_Bit_Count_do,
      o_SPI_Clk => o_SPI_Clk,
      i_SPI_MISO => i_SPI_MISO,
      o_SPI_MOSI => o_SPI_MOSI,
      o_SPI_CS_n => o_SPI_CS_n
    );
END brd_SPI_Master_With_Sing_0_2_arch;
