-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity feedbackWithoutOFHis is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    OFRet_V : IN STD_LOGIC_VECTOR (15 downto 0);
    rotateFlg_V : IN STD_LOGIC_VECTOR (0 downto 0);
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    OFHistRadiusSum_V_i : IN STD_LOGIC_VECTOR (15 downto 0);
    OFHistRadiusSum_V_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    OFHistRadiusSum_V_o_ap_vld : OUT STD_LOGIC;
    OFHistCntSum_V_i : IN STD_LOGIC_VECTOR (15 downto 0);
    OFHistCntSum_V_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    OFHistCntSum_V_o_ap_vld : OUT STD_LOGIC;
    glAverageTargetValue_i : IN STD_LOGIC_VECTOR (15 downto 0);
    glAverageTargetValue_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    glAverageTargetValue_o_ap_vld : OUT STD_LOGIC;
    areaEventThr_i : IN STD_LOGIC_VECTOR (15 downto 0);
    areaEventThr_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    areaEventThr_o_ap_vld : OUT STD_LOGIC;
    glOFHistCntSum_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    glOFHistCntSum_V_ap_vld : OUT STD_LOGIC;
    glOFHistRadiusSum_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    glOFHistRadiusSum_V_ap_vld : OUT STD_LOGIC;
    areaEventThrBak : OUT STD_LOGIC_VECTOR (15 downto 0);
    areaEventThrBak_ap_vld : OUT STD_LOGIC;
    glAverageTargetValue_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    glAverageTargetValue_1_ap_vld : OUT STD_LOGIC );
end;


architecture behav of feedbackWithoutOFHis is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_7F7F : STD_LOGIC_VECTOR (15 downto 0) := "0111111101111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv16_64 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001100100";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv16_7D0 : STD_LOGIC_VECTOR (15 downto 0) := "0000011111010000";
    constant ap_const_lv11_7D0 : STD_LOGIC_VECTOR (10 downto 0) := "11111010000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_i_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_reg_428 : STD_LOGIC_VECTOR (0 downto 0);
    signal xOFRet_V_fu_151_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal xOFRet_V_reg_435 : STD_LOGIC_VECTOR (7 downto 0);
    signal yOFRet_V_reg_440 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_414_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmpRadius_V_reg_445 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal not_tmp_i_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal OFHistRadiusSum_V_lo_1_fu_201_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal OFHistRadiusSum_V_lo_1_reg_455 : STD_LOGIC_VECTOR (15 downto 0);
    signal OFHistCntSum_V_loc_i_fu_208_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal OFHistCntSum_V_loc_i_reg_462 : STD_LOGIC_VECTOR (15 downto 0);
    signal areaEventThr_load_reg_472 : STD_LOGIC_VECTOR (15 downto 0);
    signal demorgan_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal demorgan_reg_482 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_56_fu_422_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_56_reg_486 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal OFHistRadiusSum_V_fl_reg_102 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_phi_mux_OFHistRadiusSum_V_ne_phi_fu_115_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal OFHistRadiusSum_V_ne_reg_112 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_mux_OFHistCntSum_V_new_1_phi_fu_125_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal OFHistCntSum_V_new_1_reg_122 : STD_LOGIC_VECTOR (15 downto 0);
    signal storemerge_i_fu_375_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_mux_thrRet_write_assign_phi_fu_135_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal thrRet_write_assign_reg_132 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_215_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_55_fu_171_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_V_4_fu_168_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_V_55_fu_171_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_i_130_fu_185_p2 : STD_LOGIC_VECTOR (15 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of tmp_i_130_fu_185_p2 : signal is "no";
    signal tmp_1087_i_fu_190_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1088_i_fu_243_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_shl_i_fu_275_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal p_shl_cast_i_fu_282_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_1089_cast3_i_fu_272_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_1090_i_fu_286_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_s_fu_292_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_1092_i_fu_306_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal deltaThr_fu_302_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1094_i_fu_314_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1095_i_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2541_fu_343_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_161_fu_333_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1096_i_fu_346_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1097_i_fu_357_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1096_cast_i_fu_351_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_1_i_fu_363_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1093_i_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_i_fu_325_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_1_cast_i_fu_371_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_414_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_V_3_fu_165_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_414_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_414_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_V_56_fu_422_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_V_56_fu_422_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_56_fu_422_p00 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_56_fu_422_p10 : STD_LOGIC_VECTOR (31 downto 0);

    component EVABMOFStreamWithZio IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component EVABMOFStreamWith0iy IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    EVABMOFStreamWithZio_U630 : component EVABMOFStreamWithZio
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => grp_fu_414_p0,
        din1 => grp_fu_414_p1,
        din2 => grp_fu_414_p2,
        dout => grp_fu_414_p3);

    EVABMOFStreamWith0iy_U631 : component EVABMOFStreamWith0iy
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        din0 => r_V_56_fu_422_p0,
        din1 => r_V_56_fu_422_p1,
        dout => r_V_56_fu_422_p2);





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


    OFHistCntSum_V_new_1_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((demorgan_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                OFHistCntSum_V_new_1_reg_122 <= OFHistCntSum_V_loc_i_fu_208_p3;
            elsif (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                OFHistCntSum_V_new_1_reg_122 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;

    OFHistRadiusSum_V_fl_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((demorgan_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                OFHistRadiusSum_V_fl_reg_102 <= not_tmp_i_fu_196_p2;
            elsif (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                OFHistRadiusSum_V_fl_reg_102 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    OFHistRadiusSum_V_ne_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((demorgan_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                OFHistRadiusSum_V_ne_reg_112 <= OFHistRadiusSum_V_lo_1_fu_201_p3;
            elsif (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                OFHistRadiusSum_V_ne_reg_112 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;

    thrRet_write_assign_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((demorgan_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                thrRet_write_assign_reg_132 <= areaEventThr_i;
            elsif (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                thrRet_write_assign_reg_132 <= storemerge_i_fu_375_p3;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                OFHistCntSum_V_loc_i_reg_462 <= OFHistCntSum_V_loc_i_fu_208_p3;
                OFHistRadiusSum_V_lo_1_reg_455 <= OFHistRadiusSum_V_lo_1_fu_201_p3;
                areaEventThr_load_reg_472 <= areaEventThr_i;
                demorgan_reg_482 <= demorgan_fu_249_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                r_V_56_reg_486 <= r_V_56_fu_422_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_reg_428 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmpRadius_V_reg_445 <= grp_fu_414_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_i_reg_428 <= tmp_i_fu_145_p2;
                xOFRet_V_reg_435 <= xOFRet_V_fu_151_p1;
                yOFRet_V_reg_440 <= OFRet_V(15 downto 8);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, demorgan_fu_249_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((demorgan_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    OFHistCntSum_V_loc_i_fu_208_p3 <= 
        OFHistCntSum_V_i when (tmp_i_reg_428(0) = '1') else 
        tmp_1087_i_fu_190_p2;

    OFHistCntSum_V_o_assign_proc : process(OFHistCntSum_V_i, ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4, ap_CS_fsm_state5, ap_phi_mux_OFHistCntSum_V_new_1_phi_fu_125_p4)
    begin
        if (((ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            OFHistCntSum_V_o <= ap_phi_mux_OFHistCntSum_V_new_1_phi_fu_125_p4;
        else 
            OFHistCntSum_V_o <= OFHistCntSum_V_i;
        end if; 
    end process;


    OFHistCntSum_V_o_ap_vld_assign_proc : process(ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4, ap_CS_fsm_state5)
    begin
        if (((ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            OFHistCntSum_V_o_ap_vld <= ap_const_logic_1;
        else 
            OFHistCntSum_V_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    OFHistRadiusSum_V_lo_1_fu_201_p3 <= 
        OFHistRadiusSum_V_i when (tmp_i_reg_428(0) = '1') else 
        tmp_i_130_fu_185_p2;

    OFHistRadiusSum_V_o_assign_proc : process(OFHistRadiusSum_V_i, ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4, ap_CS_fsm_state5, ap_phi_mux_OFHistRadiusSum_V_ne_phi_fu_115_p4)
    begin
        if (((ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            OFHistRadiusSum_V_o <= ap_phi_mux_OFHistRadiusSum_V_ne_phi_fu_115_p4;
        else 
            OFHistRadiusSum_V_o <= OFHistRadiusSum_V_i;
        end if; 
    end process;


    OFHistRadiusSum_V_o_ap_vld_assign_proc : process(ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4, ap_CS_fsm_state5)
    begin
        if (((ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            OFHistRadiusSum_V_o_ap_vld <= ap_const_logic_1;
        else 
            OFHistRadiusSum_V_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
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


    ap_phi_mux_OFHistCntSum_V_new_1_phi_fu_125_p4_assign_proc : process(demorgan_reg_482, ap_CS_fsm_state5, OFHistCntSum_V_new_1_reg_122)
    begin
        if (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_phi_mux_OFHistCntSum_V_new_1_phi_fu_125_p4 <= ap_const_lv16_0;
        else 
            ap_phi_mux_OFHistCntSum_V_new_1_phi_fu_125_p4 <= OFHistCntSum_V_new_1_reg_122;
        end if; 
    end process;


    ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4_assign_proc : process(demorgan_reg_482, OFHistRadiusSum_V_fl_reg_102, ap_CS_fsm_state5)
    begin
        if (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 <= ap_const_lv1_1;
        else 
            ap_phi_mux_OFHistRadiusSum_V_fl_phi_fu_105_p4 <= OFHistRadiusSum_V_fl_reg_102;
        end if; 
    end process;


    ap_phi_mux_OFHistRadiusSum_V_ne_phi_fu_115_p4_assign_proc : process(demorgan_reg_482, ap_CS_fsm_state5, OFHistRadiusSum_V_ne_reg_112)
    begin
        if (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_phi_mux_OFHistRadiusSum_V_ne_phi_fu_115_p4 <= ap_const_lv16_0;
        else 
            ap_phi_mux_OFHistRadiusSum_V_ne_phi_fu_115_p4 <= OFHistRadiusSum_V_ne_reg_112;
        end if; 
    end process;


    ap_phi_mux_thrRet_write_assign_phi_fu_135_p4_assign_proc : process(demorgan_reg_482, ap_CS_fsm_state5, storemerge_i_fu_375_p3, thrRet_write_assign_reg_132)
    begin
        if (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_phi_mux_thrRet_write_assign_phi_fu_135_p4 <= storemerge_i_fu_375_p3;
        else 
            ap_phi_mux_thrRet_write_assign_phi_fu_135_p4 <= thrRet_write_assign_reg_132;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    areaEventThrBak <= ap_phi_mux_thrRet_write_assign_phi_fu_135_p4;

    areaEventThrBak_ap_vld_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            areaEventThrBak_ap_vld <= ap_const_logic_1;
        else 
            areaEventThrBak_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    areaEventThr_o_assign_proc : process(areaEventThr_i, demorgan_reg_482, ap_CS_fsm_state5, storemerge_i_fu_375_p3)
    begin
        if (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            areaEventThr_o <= storemerge_i_fu_375_p3;
        else 
            areaEventThr_o <= areaEventThr_i;
        end if; 
    end process;


    areaEventThr_o_ap_vld_assign_proc : process(demorgan_reg_482, ap_CS_fsm_state5)
    begin
        if (((demorgan_reg_482 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            areaEventThr_o_ap_vld <= ap_const_logic_1;
        else 
            areaEventThr_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

        deltaThr_fu_302_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_s_fu_292_p4),16));

    demorgan_fu_249_p2 <= (tmp_1088_i_fu_243_p2 and rotateFlg_V);
    glAverageTargetValue_1 <= glAverageTargetValue_i;

    glAverageTargetValue_1_ap_vld_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            glAverageTargetValue_1_ap_vld <= ap_const_logic_1;
        else 
            glAverageTargetValue_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    glAverageTargetValue_o_assign_proc : process(p_read, glAverageTargetValue_i, ap_CS_fsm_state3, tmp_fu_215_p3)
    begin
        if (((tmp_fu_215_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            glAverageTargetValue_o <= p_read(23 downto 8);
        else 
            glAverageTargetValue_o <= glAverageTargetValue_i;
        end if; 
    end process;


    glAverageTargetValue_o_ap_vld_assign_proc : process(ap_CS_fsm_state3, tmp_fu_215_p3)
    begin
        if (((tmp_fu_215_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            glAverageTargetValue_o_ap_vld <= ap_const_logic_1;
        else 
            glAverageTargetValue_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    glOFHistCntSum_V <= OFHistCntSum_V_loc_i_reg_462;

    glOFHistCntSum_V_ap_vld_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            glOFHistCntSum_V_ap_vld <= ap_const_logic_1;
        else 
            glOFHistCntSum_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    glOFHistRadiusSum_V <= OFHistRadiusSum_V_lo_1_reg_455;

    glOFHistRadiusSum_V_ap_vld_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            glOFHistRadiusSum_V_ap_vld <= ap_const_logic_1;
        else 
            glOFHistRadiusSum_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_414_p0 <= lhs_V_3_fu_165_p1(8 - 1 downto 0);
    grp_fu_414_p1 <= lhs_V_3_fu_165_p1(8 - 1 downto 0);
    grp_fu_414_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(r_V_55_fu_171_p0) * signed(r_V_55_fu_171_p1))), 16));
        lhs_V_3_fu_165_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(xOFRet_V_reg_435),16));

        lhs_V_4_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(yOFRet_V_reg_440),16));

    not_tmp_i_fu_196_p2 <= (tmp_i_reg_428 xor ap_const_lv1_1);
    p_1_cast_i_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_1_i_fu_363_p3),16));
    p_1_i_fu_363_p3 <= 
        tmp_1096_cast_i_fu_351_p2 when (tmp_1097_i_fu_357_p2(0) = '1') else 
        ap_const_lv11_7D0;
    p_i_fu_325_p3 <= 
        tmp_1094_i_fu_314_p2 when (tmp_1095_i_fu_319_p2(0) = '1') else 
        ap_const_lv16_64;
    p_shl_cast_i_fu_282_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_i_fu_275_p3),19));
    p_shl_i_fu_275_p3 <= (areaEventThr_load_reg_472 & ap_const_lv2_0);
    r_V_55_fu_171_p0 <= lhs_V_4_fu_168_p1(8 - 1 downto 0);
    r_V_55_fu_171_p1 <= lhs_V_4_fu_168_p1(8 - 1 downto 0);
    r_V_56_fu_422_p0 <= r_V_56_fu_422_p00(16 - 1 downto 0);
    r_V_56_fu_422_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(glAverageTargetValue_i),32));
    r_V_56_fu_422_p1 <= r_V_56_fu_422_p10(16 - 1 downto 0);
    r_V_56_fu_422_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(OFHistCntSum_V_loc_i_reg_462),32));
    storemerge_i_fu_375_p3 <= 
        p_i_fu_325_p3 when (tmp_1093_i_fu_309_p2(0) = '1') else 
        p_1_cast_i_fu_371_p1;
    tmp_1087_i_fu_190_p2 <= std_logic_vector(unsigned(ap_const_lv16_1) + unsigned(OFHistCntSum_V_i));
    tmp_1088_i_fu_243_p2 <= "0" when (OFHistCntSum_V_loc_i_fu_208_p3 = ap_const_lv16_0) else "1";
    tmp_1089_cast3_i_fu_272_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(areaEventThr_load_reg_472),19));
    tmp_1090_i_fu_286_p2 <= std_logic_vector(unsigned(p_shl_cast_i_fu_282_p1) - unsigned(tmp_1089_cast3_i_fu_272_p1));
    tmp_1092_i_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(OFHistRadiusSum_V_lo_1_reg_455),32));
    tmp_1093_i_fu_309_p2 <= "1" when (unsigned(tmp_1092_i_fu_306_p1) > unsigned(r_V_56_reg_486)) else "0";
    tmp_1094_i_fu_314_p2 <= std_logic_vector(unsigned(areaEventThr_load_reg_472) - unsigned(deltaThr_fu_302_p1));
    tmp_1095_i_fu_319_p2 <= "1" when (unsigned(tmp_1094_i_fu_314_p2) > unsigned(ap_const_lv16_64)) else "0";
    tmp_1096_cast_i_fu_351_p2 <= std_logic_vector(unsigned(tmp_2541_fu_343_p1) + unsigned(tmp_161_fu_333_p4));
    tmp_1096_i_fu_346_p2 <= std_logic_vector(unsigned(areaEventThr_load_reg_472) + unsigned(deltaThr_fu_302_p1));
    tmp_1097_i_fu_357_p2 <= "1" when (unsigned(tmp_1096_i_fu_346_p2) < unsigned(ap_const_lv16_7D0)) else "0";
    tmp_161_fu_333_p4 <= tmp_1090_i_fu_286_p2(16 downto 6);
    tmp_2541_fu_343_p1 <= areaEventThr_load_reg_472(11 - 1 downto 0);
    tmp_fu_215_p3 <= p_read(1 downto 1);
    tmp_i_130_fu_185_p2 <= std_logic_vector(signed(tmpRadius_V_reg_445) + signed(OFHistRadiusSum_V_i));
    tmp_i_fu_145_p2 <= "1" when (OFRet_V = ap_const_lv16_7F7F) else "0";
    tmp_s_fu_292_p4 <= tmp_1090_i_fu_286_p2(18 downto 6);
    xOFRet_V_fu_151_p1 <= OFRet_V(8 - 1 downto 0);
end behav;