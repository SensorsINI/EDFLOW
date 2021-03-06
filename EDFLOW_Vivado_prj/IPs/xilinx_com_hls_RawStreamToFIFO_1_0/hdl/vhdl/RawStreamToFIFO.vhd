-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RawStreamToFIFO is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    streamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    streamIn_V_V_TVALID : IN STD_LOGIC;
    streamIn_V_V_TREADY : OUT STD_LOGIC;
    fifoIFInFull_n_V : IN STD_LOGIC_VECTOR (0 downto 0);
    fifoIFOutData_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    fifoIFOutData_V_ap_vld : OUT STD_LOGIC;
    skippedData_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    skippedData_V_ap_vld : OUT STD_LOGIC;
    nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    skipNumReg_V : OUT STD_LOGIC_VECTOR (63 downto 0);
    lastTsReg_V : OUT STD_LOGIC_VECTOR (63 downto 0);
    lastTsReg_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of RawStreamToFIFO is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "RawStreamToFIFO,hls_ip_2018_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z045ffg900-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=5.289000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=393,HLS_SYN_LUT=234}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv48_F : STD_LOGIC_VECTOR (47 downto 0) := "000000000000000000000000000000000000000000001111";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal streamIn_V_V_0_vld_out : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal streamIn_V_V_0_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal streamIn_V_V_0_vld_in : STD_LOGIC;
    signal streamIn_V_V_0_ack_in : STD_LOGIC;
    signal streamIn_V_V_0_ack_out : STD_LOGIC;
    signal streamIn_V_V_0_payload_A : STD_LOGIC_VECTOR (15 downto 0);
    signal streamIn_V_V_0_payload_B : STD_LOGIC_VECTOR (15 downto 0);
    signal streamIn_V_V_0_sel_rd : STD_LOGIC := '0';
    signal streamIn_V_V_0_sel_wr : STD_LOGIC := '0';
    signal streamIn_V_V_0_sel : STD_LOGIC;
    signal streamIn_V_V_0_load_A : STD_LOGIC;
    signal streamIn_V_V_0_load_B : STD_LOGIC;
    signal streamIn_V_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal streamIn_V_V_0_state_cmp_full : STD_LOGIC;
    signal tsWrap_V : STD_LOGIC_VECTOR (47 downto 0) := "000000000000000000000000000000000000000000000000";
    signal ts_V : STD_LOGIC_VECTOR (47 downto 0) := "000000000000000000000000000000000000000000000000";
    signal glLastTS_V : STD_LOGIC_VECTOR (47 downto 0) := "000000000000000000000000000000000000000000000000";
    signal skipNumber_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal streamIn_V_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal fifoIFInFull_n_V_rea_reg_291 : STD_LOGIC_VECTOR (0 downto 0);
    signal fifoIFInFull_n_V_rea_reg_291_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_reg_295 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_145_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_231_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_skipNumber_V_loc_reg_135 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter1_skipNumber_V_loc_reg_135 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter2_skipNumber_V_loc_reg_135 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_181_p2 : STD_LOGIC_VECTOR (47 downto 0);
    signal r_V_fu_193_p2 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_1_fu_213_p3 : STD_LOGIC_VECTOR (47 downto 0);
    signal p_Result_s_fu_281_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_9_fu_157_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_6_fu_173_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_7_fu_177_p1 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_5_fu_209_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_4_fu_205_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_10_fu_269_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_2_fu_272_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_166 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    streamIn_V_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                streamIn_V_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((streamIn_V_V_0_ack_out = ap_const_logic_1) and (streamIn_V_V_0_vld_out = ap_const_logic_1))) then 
                                        streamIn_V_V_0_sel_rd <= not(streamIn_V_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    streamIn_V_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                streamIn_V_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((streamIn_V_V_0_ack_in = ap_const_logic_1) and (streamIn_V_V_0_vld_in = ap_const_logic_1))) then 
                                        streamIn_V_V_0_sel_wr <= not(streamIn_V_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    streamIn_V_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                streamIn_V_V_0_state <= ap_const_lv2_0;
            else
                if ((((streamIn_V_V_0_state = ap_const_lv2_2) and (streamIn_V_V_0_vld_in = ap_const_logic_0)) or ((streamIn_V_V_0_state = ap_const_lv2_3) and (streamIn_V_V_0_vld_in = ap_const_logic_0) and (streamIn_V_V_0_ack_out = ap_const_logic_1)))) then 
                    streamIn_V_V_0_state <= ap_const_lv2_2;
                elsif ((((streamIn_V_V_0_state = ap_const_lv2_1) and (streamIn_V_V_0_ack_out = ap_const_logic_0)) or ((streamIn_V_V_0_state = ap_const_lv2_3) and (streamIn_V_V_0_ack_out = ap_const_logic_0) and (streamIn_V_V_0_vld_in = ap_const_logic_1)))) then 
                    streamIn_V_V_0_state <= ap_const_lv2_1;
                elsif (((not(((streamIn_V_V_0_vld_in = ap_const_logic_0) and (streamIn_V_V_0_ack_out = ap_const_logic_1))) and not(((streamIn_V_V_0_ack_out = ap_const_logic_0) and (streamIn_V_V_0_vld_in = ap_const_logic_1))) and (streamIn_V_V_0_state = ap_const_lv2_3)) or ((streamIn_V_V_0_state = ap_const_lv2_1) and (streamIn_V_V_0_ack_out = ap_const_logic_1)) or ((streamIn_V_V_0_state = ap_const_lv2_2) and (streamIn_V_V_0_vld_in = ap_const_logic_1)))) then 
                    streamIn_V_V_0_state <= ap_const_lv2_3;
                else 
                    streamIn_V_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter2_skipNumber_V_loc_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_166)) then
                if ((fifoIFInFull_n_V_rea_reg_291 = ap_const_lv1_0)) then 
                    ap_phi_reg_pp0_iter2_skipNumber_V_loc_reg_135 <= tmp_3_fu_231_p2;
                elsif ((fifoIFInFull_n_V_rea_reg_291 = ap_const_lv1_1)) then 
                    ap_phi_reg_pp0_iter2_skipNumber_V_loc_reg_135 <= skipNumber_V;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter2_skipNumber_V_loc_reg_135 <= ap_phi_reg_pp0_iter1_skipNumber_V_loc_reg_135;
                end if;
            end if; 
        end if;
    end process;

    ts_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_166)) then
                if ((tmp_fu_145_p3 = ap_const_lv1_1)) then 
                    ts_V <= tmp_1_fu_213_p3;
                elsif (((tmp_2_fu_167_p2 = ap_const_lv1_1) and (tmp_fu_145_p3 = ap_const_lv1_0))) then 
                    ts_V <= r_V_fu_193_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_phi_reg_pp0_iter1_skipNumber_V_loc_reg_135 <= ap_phi_reg_pp0_iter0_skipNumber_V_loc_reg_135;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                fifoIFInFull_n_V_rea_reg_291 <= fifoIFInFull_n_V;
                fifoIFInFull_n_V_rea_reg_291_pp0_iter1_reg <= fifoIFInFull_n_V_rea_reg_291;
                tmp_V_reg_295 <= streamIn_V_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                glLastTS_V <= ts_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((fifoIFInFull_n_V_rea_reg_291 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                skipNumber_V <= tmp_3_fu_231_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((streamIn_V_V_0_load_A = ap_const_logic_1)) then
                streamIn_V_V_0_payload_A <= streamIn_V_V_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((streamIn_V_V_0_load_B = ap_const_logic_1)) then
                streamIn_V_V_0_payload_B <= streamIn_V_V_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_2_fu_167_p2 = ap_const_lv1_1) and (tmp_fu_145_p3 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tsWrap_V <= tmp_8_fu_181_p2;
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
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, streamIn_V_V_0_vld_out)
    begin
                ap_block_pp0_stage0_01001 <= (((streamIn_V_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, streamIn_V_V_0_vld_out)
    begin
                ap_block_pp0_stage0_11001 <= (((streamIn_V_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, streamIn_V_V_0_vld_out)
    begin
                ap_block_pp0_stage0_subdone <= (((streamIn_V_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(streamIn_V_V_0_vld_out)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (streamIn_V_V_0_vld_out = ap_const_logic_0);
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_166_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_166 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_skipNumber_V_loc_reg_135 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    fifoIFOutData_V <= p_Result_s_fu_281_p3;

    fifoIFOutData_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter2, fifoIFInFull_n_V_rea_reg_291_pp0_iter1_reg, ap_block_pp0_stage0_01001)
    begin
        if (((fifoIFInFull_n_V_rea_reg_291_pp0_iter1_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001))) then 
            fifoIFOutData_V_ap_vld <= ap_const_logic_1;
        else 
            fifoIFOutData_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    lastTsReg_V <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ts_V),64));

    lastTsReg_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_01001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001))) then 
            lastTsReg_V_ap_vld <= ap_const_logic_1;
        else 
            lastTsReg_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    nonMonTSDiffFlgReg_V <= "1" when (unsigned(ts_V) < unsigned(glLastTS_V)) else "0";

    nonMonTSDiffFlgReg_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_01001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001))) then 
            nonMonTSDiffFlgReg_V_ap_vld <= ap_const_logic_1;
        else 
            nonMonTSDiffFlgReg_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_2_fu_272_p4 <= tmp_V_reg_295(15 downto 8);
    p_Result_9_fu_157_p4 <= streamIn_V_V_0_data_out(14 downto 12);
    p_Result_s_fu_281_p3 <= (tmp_10_fu_269_p1 & p_Result_2_fu_272_p4);
    r_V_fu_193_p2 <= std_logic_vector(shift_left(unsigned(tmp_8_fu_181_p2),to_integer(unsigned('0' & ap_const_lv48_F(31-1 downto 0)))));
    skipNumReg_V <= ap_phi_reg_pp0_iter2_skipNumber_V_loc_reg_135;
    skippedData_V <= p_Result_s_fu_281_p3;

    skippedData_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter2, fifoIFInFull_n_V_rea_reg_291_pp0_iter1_reg, ap_block_pp0_stage0_01001)
    begin
        if (((fifoIFInFull_n_V_rea_reg_291_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001))) then 
            skippedData_V_ap_vld <= ap_const_logic_1;
        else 
            skippedData_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    streamIn_V_V_0_ack_in <= streamIn_V_V_0_state(1);

    streamIn_V_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            streamIn_V_V_0_ack_out <= ap_const_logic_1;
        else 
            streamIn_V_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    streamIn_V_V_0_data_out_assign_proc : process(streamIn_V_V_0_payload_A, streamIn_V_V_0_payload_B, streamIn_V_V_0_sel)
    begin
        if ((streamIn_V_V_0_sel = ap_const_logic_1)) then 
            streamIn_V_V_0_data_out <= streamIn_V_V_0_payload_B;
        else 
            streamIn_V_V_0_data_out <= streamIn_V_V_0_payload_A;
        end if; 
    end process;

    streamIn_V_V_0_load_A <= (streamIn_V_V_0_state_cmp_full and not(streamIn_V_V_0_sel_wr));
    streamIn_V_V_0_load_B <= (streamIn_V_V_0_state_cmp_full and streamIn_V_V_0_sel_wr);
    streamIn_V_V_0_sel <= streamIn_V_V_0_sel_rd;
    streamIn_V_V_0_state_cmp_full <= '0' when (streamIn_V_V_0_state = ap_const_lv2_1) else '1';
    streamIn_V_V_0_vld_in <= streamIn_V_V_TVALID;
    streamIn_V_V_0_vld_out <= streamIn_V_V_0_state(0);

    streamIn_V_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, streamIn_V_V_0_state, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            streamIn_V_V_TDATA_blk_n <= streamIn_V_V_0_state(0);
        else 
            streamIn_V_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    streamIn_V_V_TREADY <= streamIn_V_V_0_state(1);
    tmp_10_fu_269_p1 <= tmp_V_reg_295(8 - 1 downto 0);
    tmp_1_fu_213_p3 <= (tmp_5_fu_209_p1 & tmp_4_fu_205_p1);
    tmp_2_fu_167_p2 <= "1" when (p_Result_9_fu_157_p4 = ap_const_lv3_7) else "0";
    tmp_3_fu_231_p2 <= std_logic_vector(unsigned(skipNumber_V) + unsigned(ap_const_lv64_1));
    tmp_4_fu_205_p1 <= streamIn_V_V_0_data_out(15 - 1 downto 0);
    tmp_5_fu_209_p1 <= tsWrap_V(33 - 1 downto 0);
    tmp_6_fu_173_p1 <= streamIn_V_V_0_data_out(12 - 1 downto 0);
    tmp_7_fu_177_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_173_p1),48));
    tmp_8_fu_181_p2 <= std_logic_vector(unsigned(tsWrap_V) + unsigned(tmp_7_fu_177_p1));
    tmp_fu_145_p3 <= streamIn_V_V_0_data_out(15 downto 15);
end behav;
