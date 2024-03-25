-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    reset : IN STD_LOGIC_VECTOR (0 downto 0);
    out_r : OUT STD_LOGIC_VECTOR (3 downto 0);
    out_r_ap_vld : OUT STD_LOGIC );
end;


architecture behav of counter is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "counter_counter,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.417000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=5,HLS_SYN_LUT=47,HLS_VERSION=2023_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal ap_phi_mux_p_0_0_0_phi_fu_48_p6 : STD_LOGIC_VECTOR (3 downto 0);
    signal reset_read_read_fu_32_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln14_fu_69_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln11_fu_63_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


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


    count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_start = ap_const_logic_1) and (icmp_ln11_fu_63_p2 = ap_const_lv1_1) and (reset_read_read_fu_32_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (reset_read_read_fu_32_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                count <= ap_const_lv4_0;
            elsif (((ap_start = ap_const_logic_1) and (icmp_ln11_fu_63_p2 = ap_const_lv1_0) and (reset_read_read_fu_32_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                count <= add_ln14_fu_69_p2;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln14_fu_69_p2 <= std_logic_vector(unsigned(count) + unsigned(ap_const_lv4_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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


    ap_phi_mux_p_0_0_0_phi_fu_48_p6_assign_proc : process(ap_CS_fsm_state1, reset_read_read_fu_32_p2, add_ln14_fu_69_p2, icmp_ln11_fu_63_p2)
    begin
        if (((icmp_ln11_fu_63_p2 = ap_const_lv1_0) and (reset_read_read_fu_32_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_phi_mux_p_0_0_0_phi_fu_48_p6 <= add_ln14_fu_69_p2;
        elsif ((((icmp_ln11_fu_63_p2 = ap_const_lv1_1) and (reset_read_read_fu_32_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((reset_read_read_fu_32_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_phi_mux_p_0_0_0_phi_fu_48_p6 <= ap_const_lv4_0;
        else 
            ap_phi_mux_p_0_0_0_phi_fu_48_p6 <= "XXXX";
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln11_fu_63_p2 <= "1" when (count = ap_const_lv4_9) else "0";
    out_r <= ap_phi_mux_p_0_0_0_phi_fu_48_p6;

    out_r_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_r_ap_vld <= ap_const_logic_1;
        else 
            out_r_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    reset_read_read_fu_32_p2 <= reset;
end behav;
