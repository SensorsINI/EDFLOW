-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity finalCornerChecking is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (0 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of finalCornerChecking is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_B : STD_LOGIC_VECTOR (7 downto 0) := "00001011";
    constant ap_const_lv8_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000011";
    constant ap_const_lv96_2F1E0EFEEFE0E1F202122120 : STD_LOGIC_VECTOR (95 downto 0) := "001011110001111000001110111111101110111111100000111000011111001000000010000100100010000100100000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_const_lv8_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_const_lv8_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000101";
    constant ap_const_lv8_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000110";
    constant ap_const_lv8_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000111";
    constant ap_const_lv5_13 : STD_LOGIC_VECTOR (4 downto 0) := "10011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_read_3_reg_559 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_fu_72_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_reg_564 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_1_fu_462_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_1_reg_569 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_2_fu_476_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_2_reg_576 : STD_LOGIC_VECTOR (4 downto 0);
    signal sel_tmp2_fu_482_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp2_reg_583 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_i_i_fu_76_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal outerEndIdx_fu_82_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal colIndexBase_V_fu_98_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_i_i_fu_104_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_i_i_fu_116_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_1_i_s_fu_122_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_1_i_i_fu_134_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_2_i_s_fu_140_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_2_i_i_fu_152_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_3_i_s_fu_158_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_160_fu_162_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_159_fu_144_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_158_fu_126_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_157_fu_108_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_3_i_i_fu_182_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_4_i_s_fu_188_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_4_i_i_fu_200_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_5_i_s_fu_206_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_5_i_i_fu_218_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_6_i_s_fu_224_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_6_i_i_fu_236_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_12_7_i_s_fu_242_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_155_fu_94_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_i_i_49_fu_88_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_165_fu_254_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_166_fu_260_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_264_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal colIndexBase_V_1_fu_272_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_i_i_fu_280_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_14_i_i_fu_292_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_1_i_s_fu_298_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_14_1_i_i_fu_310_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_2_i_s_fu_316_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_14_2_i_i_fu_328_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_3_i_s_fu_334_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_170_fu_338_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_169_fu_320_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_168_fu_302_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_167_fu_284_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_14_3_i_i_fu_358_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_4_i_s_fu_364_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_14_4_i_i_fu_376_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_5_i_s_fu_382_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_14_5_i_i_fu_394_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_6_i_s_fu_400_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_14_6_i_i_fu_412_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal index_assign_14_7_i_s_fu_418_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_164_fu_246_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_163_fu_228_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_162_fu_210_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_161_fu_192_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_174_fu_422_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_173_fu_404_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_172_fu_386_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_171_fu_368_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal outerStartX_V_fu_170_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal outerEndX_V_fu_346_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal lhs_V_fu_454_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal rhs_V_fu_458_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal outerStartY_V_fu_430_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal outerEndY_V_fu_442_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal lhs_V_1_fu_468_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal rhs_V_1_fu_472_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal abscond_i_i_fu_493_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal neg_i_i_fu_488_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_45_i_i_fu_505_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal abs_i_i_fu_498_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_46_cast_i_i_fu_510_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal abscond1_i_i_fu_525_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal neg1_i_i_fu_520_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal abs1_i_i_fu_530_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_47_i_i_fu_514_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_49_i_i_fu_537_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp2_fu_547_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_543_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal isCornerOut_V_write_s_fu_553_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_return_preg <= isCornerOut_V_write_s_fu_553_p2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_read_3_reg_559 <= p_read;
                r_V_1_reg_569 <= r_V_1_fu_462_p2;
                r_V_2_reg_576 <= r_V_2_fu_476_p2;
                r_V_reg_564 <= r_V_fu_72_p1;
                sel_tmp2_reg_583 <= sel_tmp2_fu_482_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    abs1_i_i_fu_530_p3 <= 
        r_V_2_reg_576 when (abscond1_i_i_fu_525_p2(0) = '1') else 
        neg1_i_i_fu_520_p2;
    abs_i_i_fu_498_p3 <= 
        r_V_1_reg_569 when (abscond_i_i_fu_493_p2(0) = '1') else 
        neg_i_i_fu_488_p2;
    abscond1_i_i_fu_525_p2 <= "1" when (signed(r_V_2_reg_576) > signed(ap_const_lv5_0)) else "0";
    abscond_i_i_fu_493_p2 <= "1" when (signed(r_V_1_reg_569) > signed(ap_const_lv5_0)) else "0";
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, isCornerOut_V_write_s_fu_553_p2, ap_return_preg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_return <= isCornerOut_V_write_s_fu_553_p2;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    colIndexBase_V_1_fu_272_p3 <= (tmp_s_fu_264_p3 & ap_const_lv3_0);
    colIndexBase_V_fu_98_p2 <= std_logic_vector(shift_left(unsigned(p_read3),to_integer(unsigned('0' & ap_const_lv8_3(8-1 downto 0)))));
    index_assign_12_1_i_s_fu_122_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_i_i_fu_116_p2),32));
    index_assign_12_2_i_s_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_1_i_i_fu_134_p2),32));
    index_assign_12_3_i_s_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_2_i_i_fu_152_p2),32));
    index_assign_12_4_i_s_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_3_i_i_fu_182_p2),32));
    index_assign_12_5_i_s_fu_206_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_4_i_i_fu_200_p2),32));
    index_assign_12_6_i_s_fu_224_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_5_i_i_fu_218_p2),32));
    index_assign_12_7_i_s_fu_242_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_6_i_i_fu_236_p2),32));
    index_assign_12_i_i_fu_104_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(colIndexBase_V_fu_98_p2),32));
    index_assign_14_1_i_s_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_i_i_fu_292_p2),32));
    index_assign_14_2_i_s_fu_316_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_1_i_i_fu_310_p2),32));
    index_assign_14_3_i_s_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_2_i_i_fu_328_p2),32));
    index_assign_14_4_i_s_fu_364_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_3_i_i_fu_358_p2),32));
    index_assign_14_5_i_s_fu_382_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_4_i_i_fu_376_p2),32));
    index_assign_14_6_i_s_fu_400_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_5_i_i_fu_394_p2),32));
    index_assign_14_7_i_s_fu_418_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_14_6_i_i_fu_412_p2),32));
    index_assign_14_i_i_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(colIndexBase_V_1_fu_272_p3),32));
    isCornerOut_V_write_s_fu_553_p2 <= (tmp_fu_543_p2 and tmp2_fu_547_p2);
        lhs_V_1_fu_468_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(outerStartY_V_fu_430_p5),5));

        lhs_V_fu_454_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(outerStartX_V_fu_170_p5),5));

    neg1_i_i_fu_520_p2 <= std_logic_vector(unsigned(ap_const_lv5_0) - unsigned(r_V_2_reg_576));
    neg_i_i_fu_488_p2 <= std_logic_vector(unsigned(ap_const_lv5_0) - unsigned(r_V_1_reg_569));
    outerEndIdx_fu_82_p2 <= std_logic_vector(signed(ap_const_lv8_FF) + signed(tmp_i_i_fu_76_p2));
    outerEndX_V_fu_346_p5 <= (((tmp_170_fu_338_p3 & tmp_169_fu_320_p3) & tmp_168_fu_302_p3) & tmp_167_fu_284_p3);
    outerEndY_V_fu_442_p5 <= (((tmp_174_fu_422_p3 & tmp_173_fu_404_p3) & tmp_172_fu_386_p3) & tmp_171_fu_368_p3);
    outerStartX_V_fu_170_p5 <= (((tmp_160_fu_162_p3 & tmp_159_fu_144_p3) & tmp_158_fu_126_p3) & tmp_157_fu_108_p3);
    outerStartY_V_fu_430_p5 <= (((tmp_164_fu_246_p3 & tmp_163_fu_228_p3) & tmp_162_fu_210_p3) & tmp_161_fu_192_p3);
    r_V_14_1_i_i_fu_310_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_2);
    r_V_14_2_i_i_fu_328_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_3);
    r_V_14_3_i_i_fu_358_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_4);
    r_V_14_4_i_i_fu_376_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_5);
    r_V_14_5_i_i_fu_394_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_6);
    r_V_14_6_i_i_fu_412_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_7);
    r_V_14_i_i_fu_292_p2 <= (colIndexBase_V_1_fu_272_p3 or ap_const_lv8_1);
    r_V_1_fu_462_p2 <= std_logic_vector(signed(lhs_V_fu_454_p1) - signed(rhs_V_fu_458_p1));
    r_V_1_i_i_fu_134_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_2);
    r_V_2_fu_476_p2 <= std_logic_vector(signed(lhs_V_1_fu_468_p1) - signed(rhs_V_1_fu_472_p1));
    r_V_2_i_i_fu_152_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_3);
    r_V_3_i_i_fu_182_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_4);
    r_V_4_i_i_fu_200_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_5);
    r_V_5_i_i_fu_218_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_6);
    r_V_6_i_i_fu_236_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_7);
    r_V_fu_72_p1 <= p_read2(1 - 1 downto 0);
    r_V_i_i_fu_116_p2 <= (colIndexBase_V_fu_98_p2 or ap_const_lv8_1);
        rhs_V_1_fu_472_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(outerEndY_V_fu_442_p5),5));

        rhs_V_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(outerEndX_V_fu_346_p5),5));

    sel_tmp2_fu_482_p2 <= "0" when (p_read2 = ap_const_lv8_B) else "1";
    tmp2_fu_547_p2 <= (tmp_49_i_i_fu_537_p2 and tmp_47_i_i_fu_514_p2);
    tmp_155_fu_94_p1 <= tmp_i_i_fu_76_p2(5 - 1 downto 0);
    tmp_157_fu_108_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_i_i_fu_104_p1)) downto to_integer(unsigned(index_assign_12_i_i_fu_104_p1))) when (to_integer(unsigned(index_assign_12_i_i_fu_104_p1))>= 0 and to_integer(unsigned(index_assign_12_i_i_fu_104_p1))<=95) else "-";
    tmp_158_fu_126_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_1_i_s_fu_122_p1)) downto to_integer(unsigned(index_assign_12_1_i_s_fu_122_p1))) when (to_integer(unsigned(index_assign_12_1_i_s_fu_122_p1))>= 0 and to_integer(unsigned(index_assign_12_1_i_s_fu_122_p1))<=95) else "-";
    tmp_159_fu_144_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_2_i_s_fu_140_p1)) downto to_integer(unsigned(index_assign_12_2_i_s_fu_140_p1))) when (to_integer(unsigned(index_assign_12_2_i_s_fu_140_p1))>= 0 and to_integer(unsigned(index_assign_12_2_i_s_fu_140_p1))<=95) else "-";
    tmp_160_fu_162_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_3_i_s_fu_158_p1)) downto to_integer(unsigned(index_assign_12_3_i_s_fu_158_p1))) when (to_integer(unsigned(index_assign_12_3_i_s_fu_158_p1))>= 0 and to_integer(unsigned(index_assign_12_3_i_s_fu_158_p1))<=95) else "-";
    tmp_161_fu_192_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_4_i_s_fu_188_p1)) downto to_integer(unsigned(index_assign_12_4_i_s_fu_188_p1))) when (to_integer(unsigned(index_assign_12_4_i_s_fu_188_p1))>= 0 and to_integer(unsigned(index_assign_12_4_i_s_fu_188_p1))<=95) else "-";
    tmp_162_fu_210_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_5_i_s_fu_206_p1)) downto to_integer(unsigned(index_assign_12_5_i_s_fu_206_p1))) when (to_integer(unsigned(index_assign_12_5_i_s_fu_206_p1))>= 0 and to_integer(unsigned(index_assign_12_5_i_s_fu_206_p1))<=95) else "-";
    tmp_163_fu_228_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_6_i_s_fu_224_p1)) downto to_integer(unsigned(index_assign_12_6_i_s_fu_224_p1))) when (to_integer(unsigned(index_assign_12_6_i_s_fu_224_p1))>= 0 and to_integer(unsigned(index_assign_12_6_i_s_fu_224_p1))<=95) else "-";
    tmp_164_fu_246_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_12_7_i_s_fu_242_p1)) downto to_integer(unsigned(index_assign_12_7_i_s_fu_242_p1))) when (to_integer(unsigned(index_assign_12_7_i_s_fu_242_p1))>= 0 and to_integer(unsigned(index_assign_12_7_i_s_fu_242_p1))<=95) else "-";
    tmp_165_fu_254_p2 <= std_logic_vector(signed(ap_const_lv5_13) + signed(tmp_155_fu_94_p1));
    tmp_166_fu_260_p1 <= outerEndIdx_fu_82_p2(5 - 1 downto 0);
    tmp_167_fu_284_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_i_i_fu_280_p1)) downto to_integer(unsigned(index_assign_14_i_i_fu_280_p1))) when (to_integer(unsigned(index_assign_14_i_i_fu_280_p1))>= 0 and to_integer(unsigned(index_assign_14_i_i_fu_280_p1))<=95) else "-";
    tmp_168_fu_302_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_1_i_s_fu_298_p1)) downto to_integer(unsigned(index_assign_14_1_i_s_fu_298_p1))) when (to_integer(unsigned(index_assign_14_1_i_s_fu_298_p1))>= 0 and to_integer(unsigned(index_assign_14_1_i_s_fu_298_p1))<=95) else "-";
    tmp_169_fu_320_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_2_i_s_fu_316_p1)) downto to_integer(unsigned(index_assign_14_2_i_s_fu_316_p1))) when (to_integer(unsigned(index_assign_14_2_i_s_fu_316_p1))>= 0 and to_integer(unsigned(index_assign_14_2_i_s_fu_316_p1))<=95) else "-";
    tmp_170_fu_338_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_3_i_s_fu_334_p1)) downto to_integer(unsigned(index_assign_14_3_i_s_fu_334_p1))) when (to_integer(unsigned(index_assign_14_3_i_s_fu_334_p1))>= 0 and to_integer(unsigned(index_assign_14_3_i_s_fu_334_p1))<=95) else "-";
    tmp_171_fu_368_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_4_i_s_fu_364_p1)) downto to_integer(unsigned(index_assign_14_4_i_s_fu_364_p1))) when (to_integer(unsigned(index_assign_14_4_i_s_fu_364_p1))>= 0 and to_integer(unsigned(index_assign_14_4_i_s_fu_364_p1))<=95) else "-";
    tmp_172_fu_386_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_5_i_s_fu_382_p1)) downto to_integer(unsigned(index_assign_14_5_i_s_fu_382_p1))) when (to_integer(unsigned(index_assign_14_5_i_s_fu_382_p1))>= 0 and to_integer(unsigned(index_assign_14_5_i_s_fu_382_p1))<=95) else "-";
    tmp_173_fu_404_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_6_i_s_fu_400_p1)) downto to_integer(unsigned(index_assign_14_6_i_s_fu_400_p1))) when (to_integer(unsigned(index_assign_14_6_i_s_fu_400_p1))>= 0 and to_integer(unsigned(index_assign_14_6_i_s_fu_400_p1))<=95) else "-";
    tmp_174_fu_422_p3 <= ap_const_lv96_2F1E0EFEEFE0E1F202122120(to_integer(unsigned(index_assign_14_7_i_s_fu_418_p1)) downto to_integer(unsigned(index_assign_14_7_i_s_fu_418_p1))) when (to_integer(unsigned(index_assign_14_7_i_s_fu_418_p1))>= 0 and to_integer(unsigned(index_assign_14_7_i_s_fu_418_p1))<=95) else "-";
    tmp_45_i_i_fu_505_p2 <= (r_V_reg_564 xor ap_const_lv1_1);
    tmp_46_cast_i_i_fu_510_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_45_i_i_fu_505_p2),5));
    tmp_47_i_i_fu_514_p2 <= "1" when (signed(abs_i_i_fu_498_p3) > signed(tmp_46_cast_i_i_fu_510_p1)) else "0";
    tmp_49_i_i_fu_537_p2 <= "1" when (signed(abs1_i_i_fu_530_p3) > signed(tmp_46_cast_i_i_fu_510_p1)) else "0";
    tmp_fu_543_p2 <= (sel_tmp2_reg_583 and p_read_3_reg_559);
    tmp_i_i_49_fu_88_p2 <= "1" when (unsigned(outerEndIdx_fu_82_p2) > unsigned(ap_const_lv8_B)) else "0";
    tmp_i_i_fu_76_p2 <= std_logic_vector(unsigned(p_read2) + unsigned(p_read3));
    tmp_s_fu_264_p3 <= 
        tmp_165_fu_254_p2 when (tmp_i_i_49_fu_88_p2(0) = '1') else 
        tmp_166_fu_260_p1;
end behav;
