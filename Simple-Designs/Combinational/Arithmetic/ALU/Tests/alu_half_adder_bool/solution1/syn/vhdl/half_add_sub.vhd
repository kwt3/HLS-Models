-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity half_add_sub is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A : IN STD_LOGIC_VECTOR (0 downto 0);
    B : IN STD_LOGIC_VECTOR (0 downto 0);
    sum : OUT STD_LOGIC_VECTOR (0 downto 0);
    sum_ap_vld : OUT STD_LOGIC;
    carry : OUT STD_LOGIC_VECTOR (0 downto 0);
    carry_ap_vld : OUT STD_LOGIC;
    op : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of half_add_sub is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "half_add_sub_half_add_sub,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.668500,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=17,HLS_VERSION=2023_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal op_read_read_fu_36_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln7_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin



    and_ln7_fu_76_p2 <= (B and A);
    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;

    carry_assign_proc : process(ap_start, op_read_read_fu_36_p2, and_ln7_fu_76_p2)
    begin
        if ((ap_start = ap_const_logic_1)) then
            if ((op_read_read_fu_36_p2 = ap_const_lv32_0)) then 
                carry <= and_ln7_fu_76_p2;
            elsif ((op_read_read_fu_36_p2 = ap_const_lv32_1)) then 
                carry <= ap_const_lv1_1;
            else 
                carry <= "X";
            end if;
        else 
            carry <= "X";
        end if; 
    end process;


    carry_ap_vld_assign_proc : process(ap_start, op_read_read_fu_36_p2)
    begin
        if ((((ap_start = ap_const_logic_1) and (op_read_read_fu_36_p2 = ap_const_lv32_0)) or ((ap_start = ap_const_logic_1) and (op_read_read_fu_36_p2 = ap_const_lv32_1)))) then 
            carry_ap_vld <= ap_const_logic_1;
        else 
            carry_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    op_read_read_fu_36_p2 <= op;
    sum <= (B xor A);

    sum_ap_vld_assign_proc : process(ap_start, op_read_read_fu_36_p2)
    begin
        if ((((ap_start = ap_const_logic_1) and (op_read_read_fu_36_p2 = ap_const_lv32_0)) or ((ap_start = ap_const_logic_1) and (op_read_read_fu_36_p2 = ap_const_lv32_1)))) then 
            sum_ap_vld <= ap_const_logic_1;
        else 
            sum_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;