-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity getInitOffsetForNext is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    select_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    select_V_empty_n : IN STD_LOGIC;
    select_V_read : OUT STD_LOGIC;
    miniSumStreamScale2_V_V_dout : IN STD_LOGIC_VECTOR (14 downto 0);
    miniSumStreamScale2_V_V_empty_n : IN STD_LOGIC;
    miniSumStreamScale2_V_V_read : OUT STD_LOGIC;
    OFRetStreamScale2_V_V_dout : IN STD_LOGIC_VECTOR (5 downto 0);
    OFRetStreamScale2_V_V_empty_n : IN STD_LOGIC;
    OFRetStreamScale2_V_V_read : OUT STD_LOGIC;
    xInitOffsetScale1Stream_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    xInitOffsetScale1Stream_V_V_full_n : IN STD_LOGIC;
    xInitOffsetScale1Stream_V_V_write : OUT STD_LOGIC;
    yInitOffsetScale1Stream_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    yInitOffsetScale1Stream_V_V_full_n : IN STD_LOGIC;
    yInitOffsetScale1Stream_V_V_write : OUT STD_LOGIC;
    xInitOffsetScale1StreamCopy_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    xInitOffsetScale1StreamCopy_V_V_full_n : IN STD_LOGIC;
    xInitOffsetScale1StreamCopy_V_V_write : OUT STD_LOGIC;
    yInitOffsetScale1StreamCopy_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    yInitOffsetScale1StreamCopy_V_V_full_n : IN STD_LOGIC;
    yInitOffsetScale1StreamCopy_V_V_write : OUT STD_LOGIC;
    miniSumStreamScale2Copy_V_V_din : OUT STD_LOGIC_VECTOR (14 downto 0);
    miniSumStreamScale2Copy_V_V_full_n : IN STD_LOGIC;
    miniSumStreamScale2Copy_V_V_write : OUT STD_LOGIC;
    OFRetStreamScale2Copy_V_V_din : OUT STD_LOGIC_VECTOR (5 downto 0);
    OFRetStreamScale2Copy_V_V_full_n : IN STD_LOGIC;
    OFRetStreamScale2Copy_V_V_write : OUT STD_LOGIC );
end;


architecture behav of getInitOffsetForNext is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_1A : STD_LOGIC_VECTOR (4 downto 0) := "11010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal select_V_blk_n : STD_LOGIC;
    signal miniSumStreamScale2_V_V_blk_n : STD_LOGIC;
    signal OFRetStreamScale2_V_V_blk_n : STD_LOGIC;
    signal xInitOffsetScale1Stream_V_V_blk_n : STD_LOGIC;
    signal yInitOffsetScale1Stream_V_V_blk_n : STD_LOGIC;
    signal xInitOffsetScale1StreamCopy_V_V_blk_n : STD_LOGIC;
    signal yInitOffsetScale1StreamCopy_V_V_blk_n : STD_LOGIC;
    signal miniSumStreamScale2Copy_V_V_blk_n : STD_LOGIC;
    signal OFRetStreamScale2Copy_V_V_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal tmp_V_88_fu_146_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_V_91_fu_180_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_124_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_i_fu_128_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_cast_i_fu_136_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_fu_140_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_152_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1071_i_fu_162_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1071_cast_i_fu_170_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_54_fu_174_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                elsif ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    OFRetStreamScale2Copy_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OFRetStreamScale2Copy_V_V_blk_n <= OFRetStreamScale2Copy_V_V_full_n;
        else 
            OFRetStreamScale2Copy_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    OFRetStreamScale2Copy_V_V_din <= OFRetStreamScale2_V_V_dout;

    OFRetStreamScale2Copy_V_V_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OFRetStreamScale2Copy_V_V_write <= ap_const_logic_1;
        else 
            OFRetStreamScale2Copy_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    OFRetStreamScale2_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, OFRetStreamScale2_V_V_empty_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OFRetStreamScale2_V_V_blk_n <= OFRetStreamScale2_V_V_empty_n;
        else 
            OFRetStreamScale2_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    OFRetStreamScale2_V_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OFRetStreamScale2_V_V_read <= ap_const_logic_1;
        else 
            OFRetStreamScale2_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    miniSumStreamScale2Copy_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, miniSumStreamScale2Copy_V_V_full_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            miniSumStreamScale2Copy_V_V_blk_n <= miniSumStreamScale2Copy_V_V_full_n;
        else 
            miniSumStreamScale2Copy_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    miniSumStreamScale2Copy_V_V_din <= miniSumStreamScale2_V_V_dout;

    miniSumStreamScale2Copy_V_V_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            miniSumStreamScale2Copy_V_V_write <= ap_const_logic_1;
        else 
            miniSumStreamScale2Copy_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    miniSumStreamScale2_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, miniSumStreamScale2_V_V_empty_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            miniSumStreamScale2_V_V_blk_n <= miniSumStreamScale2_V_V_empty_n;
        else 
            miniSumStreamScale2_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    miniSumStreamScale2_V_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            miniSumStreamScale2_V_V_read <= ap_const_logic_1;
        else 
            miniSumStreamScale2_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    r_V_54_fu_174_p2 <= std_logic_vector(signed(ap_const_lv5_1A) + signed(tmp_1071_cast_i_fu_170_p1));
    r_V_fu_140_p2 <= std_logic_vector(signed(ap_const_lv5_1A) + signed(tmp_cast_i_fu_136_p1));

    select_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_empty_n)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            select_V_blk_n <= select_V_empty_n;
        else 
            select_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    select_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            select_V_read <= ap_const_logic_1;
        else 
            select_V_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1071_cast_i_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1071_i_fu_162_p3),5));
    tmp_1071_i_fu_162_p3 <= (tmp_s_fu_152_p4 & ap_const_lv1_0);
        tmp_V_88_fu_146_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_fu_140_p2),8));

        tmp_V_91_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_54_fu_174_p2),8));

    tmp_cast_i_fu_136_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_i_fu_128_p3),5));
    tmp_fu_124_p1 <= OFRetStreamScale2_V_V_dout(3 - 1 downto 0);
    tmp_i_fu_128_p3 <= (tmp_fu_124_p1 & ap_const_lv1_0);
    tmp_s_fu_152_p4 <= OFRetStreamScale2_V_V_dout(5 downto 3);

    xInitOffsetScale1StreamCopy_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, xInitOffsetScale1StreamCopy_V_V_full_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            xInitOffsetScale1StreamCopy_V_V_blk_n <= xInitOffsetScale1StreamCopy_V_V_full_n;
        else 
            xInitOffsetScale1StreamCopy_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    xInitOffsetScale1StreamCopy_V_V_din <= tmp_V_88_fu_146_p1;

    xInitOffsetScale1StreamCopy_V_V_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            xInitOffsetScale1StreamCopy_V_V_write <= ap_const_logic_1;
        else 
            xInitOffsetScale1StreamCopy_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    xInitOffsetScale1Stream_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, xInitOffsetScale1Stream_V_V_full_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            xInitOffsetScale1Stream_V_V_blk_n <= xInitOffsetScale1Stream_V_V_full_n;
        else 
            xInitOffsetScale1Stream_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    xInitOffsetScale1Stream_V_V_din <= tmp_V_88_fu_146_p1;

    xInitOffsetScale1Stream_V_V_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            xInitOffsetScale1Stream_V_V_write <= ap_const_logic_1;
        else 
            xInitOffsetScale1Stream_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    yInitOffsetScale1StreamCopy_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, yInitOffsetScale1StreamCopy_V_V_full_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            yInitOffsetScale1StreamCopy_V_V_blk_n <= yInitOffsetScale1StreamCopy_V_V_full_n;
        else 
            yInitOffsetScale1StreamCopy_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    yInitOffsetScale1StreamCopy_V_V_din <= tmp_V_91_fu_180_p1;

    yInitOffsetScale1StreamCopy_V_V_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            yInitOffsetScale1StreamCopy_V_V_write <= ap_const_logic_1;
        else 
            yInitOffsetScale1StreamCopy_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    yInitOffsetScale1Stream_V_V_blk_n_assign_proc : process(ap_CS_fsm_state1, select_V_dout, yInitOffsetScale1Stream_V_V_full_n)
    begin
        if (((select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            yInitOffsetScale1Stream_V_V_blk_n <= yInitOffsetScale1Stream_V_V_full_n;
        else 
            yInitOffsetScale1Stream_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    yInitOffsetScale1Stream_V_V_din <= tmp_V_91_fu_180_p1;

    yInitOffsetScale1Stream_V_V_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_V_dout, select_V_empty_n, miniSumStreamScale2_V_V_empty_n, OFRetStreamScale2_V_V_empty_n, xInitOffsetScale1Stream_V_V_full_n, yInitOffsetScale1Stream_V_V_full_n, xInitOffsetScale1StreamCopy_V_V_full_n, yInitOffsetScale1StreamCopy_V_V_full_n, miniSumStreamScale2Copy_V_V_full_n, OFRetStreamScale2Copy_V_V_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (select_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1StreamCopy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (yInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (xInitOffsetScale1Stream_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2Copy_V_V_full_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2Copy_V_V_full_n)) or ((select_V_dout = ap_const_lv1_1) and (miniSumStreamScale2_V_V_empty_n = ap_const_logic_0)) or ((select_V_dout = ap_const_lv1_1) and (ap_const_logic_0 = OFRetStreamScale2_V_V_empty_n)))) and (select_V_dout = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            yInitOffsetScale1Stream_V_V_write <= ap_const_logic_1;
        else 
            yInitOffsetScale1Stream_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
