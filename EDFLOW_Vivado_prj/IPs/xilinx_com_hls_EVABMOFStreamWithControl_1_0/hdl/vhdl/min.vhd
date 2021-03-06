-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity min is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    inArr_V_read : IN STD_LOGIC_VECTOR (111 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of min is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_4F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001111";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal i_0_tmpIdx_3_fu_144_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_0_tmpIdx_3_reg_273 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_s_126_fu_152_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_s_126_reg_278 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_38_reg_284 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_39_reg_290 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_41_reg_296 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_fu_62_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_V_fu_58_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1_fu_72_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_90_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_s_fu_82_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_2_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_36_fu_114_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_s_125_fu_106_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_3_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_37_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_tmpIdx_2_fu_130_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_0_tmpIdx_1_cast_fu_78_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_4_fu_193_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_127_fu_197_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_40_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_tmpIdx_4_fu_208_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_0_tmpIdx_3_cast_fu_190_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_s_128_fu_230_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_6_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_tmpIdx_5_fu_222_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_0_tmpIdx_6_fu_242_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_s_129_fu_254_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_0_tmpIdx_6_cast_fu_250_p1 : STD_LOGIC_VECTOR (7 downto 0);


begin



    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce))) then
                i_0_tmpIdx_3_reg_273 <= i_0_tmpIdx_3_fu_144_p3;
                p_s_126_reg_278 <= p_s_126_fu_152_p3;
                tmp_38_reg_284 <= inArr_V_read(79 downto 64);
                tmp_39_reg_290 <= inArr_V_read(95 downto 80);
                tmp_41_reg_296 <= inArr_V_read(111 downto 96);
            end if;
        end if;
    end process;
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
    ap_return_0 <= p_s_129_fu_254_p3;
    ap_return_1 <= i_0_tmpIdx_6_cast_fu_250_p1;
    i_0_tmpIdx_1_cast_fu_78_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_72_p2),2));
    i_0_tmpIdx_2_fu_130_p3 <= 
        ap_const_lv2_3 when (tmp_3_fu_124_p2(0) = '1') else 
        ap_const_lv2_2;
    i_0_tmpIdx_3_cast_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_tmpIdx_3_reg_273),3));
    i_0_tmpIdx_3_fu_144_p3 <= 
        i_0_tmpIdx_2_fu_130_p3 when (tmp_37_fu_138_p2(0) = '1') else 
        i_0_tmpIdx_1_cast_fu_78_p1;
    i_0_tmpIdx_4_fu_208_p3 <= 
        ap_const_lv3_5 when (tmp_5_fu_203_p2(0) = '1') else 
        ap_const_lv3_4;
    i_0_tmpIdx_5_fu_222_p3 <= 
        i_0_tmpIdx_4_fu_208_p3 when (tmp_40_fu_216_p2(0) = '1') else 
        i_0_tmpIdx_3_cast_fu_190_p1;
    i_0_tmpIdx_6_cast_fu_250_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_tmpIdx_6_fu_242_p3),8));
    i_0_tmpIdx_6_fu_242_p3 <= 
        ap_const_lv3_6 when (tmp_6_fu_237_p2(0) = '1') else 
        i_0_tmpIdx_5_fu_222_p3;
    p_s_125_fu_106_p3 <= 
        tmp_s_fu_90_p4 when (tmp_2_fu_100_p2(0) = '1') else 
        p_s_fu_82_p3;
    p_s_126_fu_152_p3 <= 
        tmp_36_fu_114_p4 when (tmp_3_fu_124_p2(0) = '1') else 
        p_s_125_fu_106_p3;
    p_s_127_fu_197_p3 <= 
        tmp_38_reg_284 when (tmp_4_fu_193_p2(0) = '1') else 
        p_s_126_reg_278;
    p_s_128_fu_230_p3 <= 
        tmp_39_reg_290 when (tmp_5_fu_203_p2(0) = '1') else 
        p_s_127_fu_197_p3;
    p_s_129_fu_254_p3 <= 
        tmp_41_reg_296 when (tmp_6_fu_237_p2(0) = '1') else 
        p_s_128_fu_230_p3;
    p_s_fu_82_p3 <= 
        tmp_fu_62_p4 when (tmp_1_fu_72_p2(0) = '1') else 
        tmp_V_fu_58_p1;
    tmp_1_fu_72_p2 <= "1" when (signed(tmp_fu_62_p4) < signed(tmp_V_fu_58_p1)) else "0";
    tmp_2_fu_100_p2 <= "1" when (signed(tmp_s_fu_90_p4) < signed(p_s_fu_82_p3)) else "0";
    tmp_36_fu_114_p4 <= inArr_V_read(63 downto 48);
    tmp_37_fu_138_p2 <= (tmp_3_fu_124_p2 or tmp_2_fu_100_p2);
    tmp_3_fu_124_p2 <= "1" when (signed(tmp_36_fu_114_p4) < signed(p_s_125_fu_106_p3)) else "0";
    tmp_40_fu_216_p2 <= (tmp_5_fu_203_p2 or tmp_4_fu_193_p2);
    tmp_4_fu_193_p2 <= "1" when (signed(tmp_38_reg_284) < signed(p_s_126_reg_278)) else "0";
    tmp_5_fu_203_p2 <= "1" when (signed(tmp_39_reg_290) < signed(p_s_127_fu_197_p3)) else "0";
    tmp_6_fu_237_p2 <= "1" when (signed(tmp_41_reg_296) < signed(p_s_128_fu_230_p3)) else "0";
    tmp_V_fu_58_p1 <= inArr_V_read(16 - 1 downto 0);
    tmp_fu_62_p4 <= inArr_V_read(31 downto 16);
    tmp_s_fu_90_p4 <= inArr_V_read(47 downto 32);
end behav;
