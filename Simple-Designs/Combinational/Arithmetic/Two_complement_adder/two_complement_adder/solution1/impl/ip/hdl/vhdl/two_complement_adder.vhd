-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity two_complement_adder is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a : IN STD_LOGIC_VECTOR (7 downto 0);
    b : IN STD_LOGIC_VECTOR (7 downto 0);
    s_i : IN STD_LOGIC_VECTOR (7 downto 0);
    s_o : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_o_ap_vld : OUT STD_LOGIC;
    overflow : OUT STD_LOGIC_VECTOR (0 downto 0);
    overflow_ap_vld : OUT STD_LOGIC );
end;


architecture behav of two_complement_adder is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "two_complement_adder_two_complement_adder,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.552400,HLS_SYN_LAT=25,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=36,HLS_SYN_LUT=335,HLS_VERSION=2023_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_reg_199 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal temp_sum_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal temp_sum_ce0 : STD_LOGIC;
    signal temp_sum_we0 : STD_LOGIC;
    signal temp_sum_d0 : STD_LOGIC_VECTOR (0 downto 0);
    signal temp_sum_q0 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_idle : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_ready : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_ce0 : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_we0 : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_d0 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_carry_out : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_carry_out_ap_vld : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_done : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_idle : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_ready : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_ce0 : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_p_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_p_out_ap_vld : STD_LOGIC;
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal carry_loc_fu_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_1_fu_138_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_156_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_2_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_1_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_8_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        a_load : IN STD_LOGIC_VECTOR (7 downto 0);
        b_load : IN STD_LOGIC_VECTOR (7 downto 0);
        temp_sum_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        temp_sum_ce0 : OUT STD_LOGIC;
        temp_sum_we0 : OUT STD_LOGIC;
        temp_sum_d0 : OUT STD_LOGIC_VECTOR (0 downto 0);
        carry_out : OUT STD_LOGIC_VECTOR (0 downto 0);
        carry_out_ap_vld : OUT STD_LOGIC );
    end component;


    component two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_16_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        s_load : IN STD_LOGIC_VECTOR (7 downto 0);
        temp_sum_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        temp_sum_ce0 : OUT STD_LOGIC;
        temp_sum_q0 : IN STD_LOGIC_VECTOR (0 downto 0);
        p_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_out_ap_vld : OUT STD_LOGIC );
    end component;


    component two_complement_adder_temp_sum_RAM_AUTO_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (0 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    temp_sum_U : component two_complement_adder_temp_sum_RAM_AUTO_1R1W
    generic map (
        DataWidth => 1,
        AddressRange => 9,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => temp_sum_address0,
        ce0 => temp_sum_ce0,
        we0 => temp_sum_we0,
        d0 => temp_sum_d0,
        q0 => temp_sum_q0);

    grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103 : component two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_8_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start,
        ap_done => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done,
        ap_idle => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_idle,
        ap_ready => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_ready,
        a_load => a,
        b_load => b,
        temp_sum_address0 => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_address0,
        temp_sum_ce0 => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_ce0,
        temp_sum_we0 => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_we0,
        temp_sum_d0 => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_d0,
        carry_out => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_carry_out,
        carry_out_ap_vld => grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_carry_out_ap_vld);

    grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114 : component two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_16_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start,
        ap_done => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_done,
        ap_idle => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_idle,
        ap_ready => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_ready,
        s_load => s_i,
        temp_sum_address0 => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_address0,
        temp_sum_ce0 => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_ce0,
        temp_sum_q0 => temp_sum_q0,
        p_out => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_p_out,
        p_out_ap_vld => grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_p_out_ap_vld);





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


    grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_ready = ap_const_logic_1)) then 
                    grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_ready = ap_const_logic_1)) then 
                    grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_carry_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                carry_loc_fu_50 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_carry_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                tmp_reg_199 <= a(7 downto 7);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done, grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done)
    begin
        if ((grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;

    ap_ST_fsm_state5_blk_assign_proc : process(grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_done)
    begin
        if ((grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state5_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state5_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state6_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start <= grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_ap_start_reg;
    grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start <= grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg;
    overflow <= (xor_ln21_2_fu_164_p2 and xor_ln21_1_fu_150_p2);

    overflow_ap_vld_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            overflow_ap_vld <= ap_const_logic_1;
        else 
            overflow_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    s_o <= grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_p_out;

    s_o_ap_vld_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            s_o_ap_vld <= ap_const_logic_1;
        else 
            s_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    temp_sum_address0_assign_proc : process(grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_address0, grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_address0, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            temp_sum_address0 <= ap_const_lv64_8(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            temp_sum_address0 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            temp_sum_address0 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_address0;
        else 
            temp_sum_address0 <= "XXXX";
        end if; 
    end process;


    temp_sum_ce0_assign_proc : process(grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_ce0, grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_ce0, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            temp_sum_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            temp_sum_ce0 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_temp_sum_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            temp_sum_ce0 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_ce0;
        else 
            temp_sum_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    temp_sum_d0_assign_proc : process(grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_d0, ap_CS_fsm_state2, carry_loc_fu_50, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            temp_sum_d0 <= carry_loc_fu_50;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            temp_sum_d0 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_d0;
        else 
            temp_sum_d0 <= "X";
        end if; 
    end process;


    temp_sum_we0_assign_proc : process(grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_we0, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            temp_sum_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            temp_sum_we0 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_8_1_fu_103_temp_sum_we0;
        else 
            temp_sum_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_138_p3 <= b(7 downto 7);
    tmp_2_fu_156_p3 <= grp_two_complement_adder_Pipeline_VITIS_LOOP_16_2_fu_114_p_out(7 downto 7);
    xor_ln21_1_fu_150_p2 <= (xor_ln21_fu_145_p2 xor ap_const_lv1_1);
    xor_ln21_2_fu_164_p2 <= (tmp_reg_199 xor tmp_2_fu_156_p3);
    xor_ln21_fu_145_p2 <= (tmp_reg_199 xor tmp_1_fu_138_p3);
end behav;
