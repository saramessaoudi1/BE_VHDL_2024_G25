-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/09/2024 03:21:15"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GestionADC IS
    PORT (
	clk_50MHz : IN std_logic;
	raz_n : IN std_logic;
	data_in : IN std_logic;
	clk_1M : BUFFER std_logic;
	cs : BUFFER std_logic;
	start_conv : BUFFER std_logic;
	data_out : BUFFER std_logic_vector(11 DOWNTO 0);
	out_pwm : BUFFER std_logic;
	out_sens : BUFFER std_logic;
	sens : IN std_logic;
	enable : IN std_logic;
	fin_course_g : BUFFER std_logic;
	fin_course_d : BUFFER std_logic
	);
END GestionADC;

-- Design Ports Information
-- clk_1M	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cs	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- start_conv	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[2]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[3]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[4]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[5]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[7]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[8]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[9]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[10]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[11]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_pwm	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_sens	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sens	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fin_course_g	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fin_course_d	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- enable	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- raz_n	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GestionADC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_raz_n : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_clk_1M : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_start_conv : std_logic;
SIGNAL ww_data_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_out_pwm : std_logic;
SIGNAL ww_out_sens : std_logic;
SIGNAL ww_sens : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_fin_course_g : std_logic;
SIGNAL ww_fin_course_d : std_logic;
SIGNAL \sig_1MHz_inst|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sens~input_o\ : std_logic;
SIGNAL \clk_1M~output_o\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \start_conv~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \out_pwm~output_o\ : std_logic;
SIGNAL \out_sens~output_o\ : std_logic;
SIGNAL \fin_course_g~output_o\ : std_logic;
SIGNAL \fin_course_d~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \raz_n~input_o\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[8]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~0_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[30]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~17\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~18_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[9]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~19\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~20_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[10]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~21\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[11]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~23\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~24_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[12]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~25\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~26_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[13]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~27\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~28_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[14]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~29\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~30_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[15]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~31\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~32_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[16]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~33\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~34_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[17]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~35\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~36_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[18]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~37\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~38_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[19]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~39\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~40_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[20]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~41\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~42_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[21]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~43\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~44_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[22]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~45\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~46_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[23]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~47\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~48_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[24]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~49\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~50_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[25]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~51\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~52_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[26]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~53\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~54_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[27]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~55\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~56_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[28]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~57\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~58_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[29]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~59\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~60_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[31]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~61\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~62_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~5_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~6_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~7_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~8_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~9_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|cnt~0_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[0]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~1\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~2_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[1]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~3\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~4_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[2]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~5\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~6_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|cnt~1_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[3]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~7\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~8_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|cnt~2_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[4]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~9\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~10_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[5]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~11\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~12_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[6]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~13\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~14_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|gene_1M:cnt[7]~q\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~15\ : std_logic;
SIGNAL \sig_1MHz_inst|Add0~16_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|tmp~0_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|tmp~feeder_combout\ : std_logic;
SIGNAL \sig_1MHz_inst|tmp~q\ : std_logic;
SIGNAL \sig_1MHz_inst|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \chipselect_inst|compt2~0_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[13]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~0_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[0]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~1\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~2_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[1]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~3\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~4_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[2]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~5\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~6_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[3]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~7\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~8_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|count_conv~7_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[4]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~9\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~10_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[5]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~11\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~12_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|count_conv~6_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[6]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~13\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~14_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[7]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~15\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~16_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|count_conv~5_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[8]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~17\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~18_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|count_conv~4_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[9]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~19\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~20_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[10]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~21\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~22_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[11]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~23\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~24_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[12]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~25\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~26_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|count_conv~9_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[15]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~27\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~29\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~30_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|count_conv~8_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|gene_start_conv:count_conv[14]~q\ : std_logic;
SIGNAL \sig_10Hz_inst|Add0~28_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|tmp~0_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|tmp~q\ : std_logic;
SIGNAL \chipselect_inst|compt1~0_combout\ : std_logic;
SIGNAL \chipselect_inst|compt1~3_combout\ : std_logic;
SIGNAL \chipselect_inst|Add0~2_combout\ : std_logic;
SIGNAL \chipselect_inst|compt1~2_combout\ : std_logic;
SIGNAL \chipselect_inst|Add0~1_combout\ : std_logic;
SIGNAL \chipselect_inst|compt1~1_combout\ : std_logic;
SIGNAL \chipselect_inst|Add0~0_combout\ : std_logic;
SIGNAL \chipselect_inst|compt1~4_combout\ : std_logic;
SIGNAL \chipselect_inst|compt1~5_combout\ : std_logic;
SIGNAL \chipselect_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \chipselect_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \chipselect_inst|cs~0_combout\ : std_logic;
SIGNAL \chipselect_inst|Add1~3_combout\ : std_logic;
SIGNAL \chipselect_inst|Add1~2_combout\ : std_logic;
SIGNAL \chipselect_inst|Add1~0_combout\ : std_logic;
SIGNAL \chipselect_inst|Add1~1_combout\ : std_logic;
SIGNAL \chipselect_inst|Equal0~0_combout\ : std_logic;
SIGNAL \chipselect_inst|compt2~1_combout\ : std_logic;
SIGNAL \chipselect_inst|Equal0~1_combout\ : std_logic;
SIGNAL \chipselect_inst|cs~feeder_combout\ : std_logic;
SIGNAL \chipselect_inst|cs~q\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|counter~4_combout\ : std_logic;
SIGNAL \registre_decalage_inst|counter[0]~7_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[0]~2_combout\ : std_logic;
SIGNAL \registre_decalage_inst|counter[1]~6_combout\ : std_logic;
SIGNAL \registre_decalage_inst|Add0~0_combout\ : std_logic;
SIGNAL \registre_decalage_inst|counter[2]~5_combout\ : std_logic;
SIGNAL \registre_decalage_inst|counter[3]~2_combout\ : std_logic;
SIGNAL \registre_decalage_inst|counter[3]~3_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[0]~3_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \controlbutee_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \controlbutee_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \controlbutee_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \controlbutee_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \GestPWM_inst|counter[0]~32_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[0]~33\ : std_logic;
SIGNAL \GestPWM_inst|counter[1]~34_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[1]~35\ : std_logic;
SIGNAL \GestPWM_inst|counter[2]~36_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[2]~37\ : std_logic;
SIGNAL \GestPWM_inst|counter[3]~38_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[3]~39\ : std_logic;
SIGNAL \GestPWM_inst|counter[4]~40_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[4]~41\ : std_logic;
SIGNAL \GestPWM_inst|counter[5]~42_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[5]~43\ : std_logic;
SIGNAL \GestPWM_inst|counter[6]~44_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[6]~45\ : std_logic;
SIGNAL \GestPWM_inst|counter[7]~46_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[7]~47\ : std_logic;
SIGNAL \GestPWM_inst|counter[8]~48_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[8]~49\ : std_logic;
SIGNAL \GestPWM_inst|counter[9]~50_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[9]~51\ : std_logic;
SIGNAL \GestPWM_inst|counter[10]~52_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[10]~53\ : std_logic;
SIGNAL \GestPWM_inst|counter[11]~54_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[11]~55\ : std_logic;
SIGNAL \GestPWM_inst|counter[12]~56_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[12]~57\ : std_logic;
SIGNAL \GestPWM_inst|counter[13]~58_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[13]~59\ : std_logic;
SIGNAL \GestPWM_inst|counter[14]~60_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[14]~61\ : std_logic;
SIGNAL \GestPWM_inst|counter[15]~62_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[15]~63\ : std_logic;
SIGNAL \GestPWM_inst|counter[16]~64_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[16]~65\ : std_logic;
SIGNAL \GestPWM_inst|counter[17]~66_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[17]~67\ : std_logic;
SIGNAL \GestPWM_inst|counter[18]~68_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[18]~69\ : std_logic;
SIGNAL \GestPWM_inst|counter[19]~70_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[19]~71\ : std_logic;
SIGNAL \GestPWM_inst|counter[20]~72_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[20]~73\ : std_logic;
SIGNAL \GestPWM_inst|counter[21]~74_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[21]~75\ : std_logic;
SIGNAL \GestPWM_inst|counter[22]~76_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[22]~77\ : std_logic;
SIGNAL \GestPWM_inst|counter[23]~78_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[23]~79\ : std_logic;
SIGNAL \GestPWM_inst|counter[24]~80_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[24]~81\ : std_logic;
SIGNAL \GestPWM_inst|counter[25]~82_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[25]~83\ : std_logic;
SIGNAL \GestPWM_inst|counter[26]~84_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[26]~85\ : std_logic;
SIGNAL \GestPWM_inst|counter[27]~86_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[27]~87\ : std_logic;
SIGNAL \GestPWM_inst|counter[28]~88_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[28]~89\ : std_logic;
SIGNAL \GestPWM_inst|counter[29]~90_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[29]~91\ : std_logic;
SIGNAL \GestPWM_inst|counter[30]~92_combout\ : std_logic;
SIGNAL \GestPWM_inst|counter[30]~93\ : std_logic;
SIGNAL \GestPWM_inst|counter[31]~94_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \GestPWM_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \GestPWM_inst|PWM_n~0_combout\ : std_logic;
SIGNAL \GestPWM_inst|PWM_n~q\ : std_logic;
SIGNAL \controlbutee_inst|fin_course_d~0_combout\ : std_logic;
SIGNAL \controlbutee_inst|fin_course_d~1_combout\ : std_logic;
SIGNAL \controlbutee_inst|fin_course_d~2_combout\ : std_logic;
SIGNAL \controlbutee_inst|fin_course_d~3_combout\ : std_logic;
SIGNAL \controlbutee_inst|out_pwm~0_combout\ : std_logic;
SIGNAL \registre_decalage_inst|data_buffer\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \chipselect_inst|compt2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \GestPWM_inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \registre_decalage_inst|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \registre_decalage_inst|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \chipselect_inst|compt1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \controlbutee_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \sig_10Hz_inst|ALT_INV_tmp~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
ww_raz_n <= raz_n;
ww_data_in <= data_in;
clk_1M <= ww_clk_1M;
cs <= ww_cs;
start_conv <= ww_start_conv;
data_out <= ww_data_out;
out_pwm <= ww_out_pwm;
out_sens <= ww_out_sens;
ww_sens <= sens;
ww_enable <= enable;
fin_course_g <= ww_fin_course_g;
fin_course_d <= ww_fin_course_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sig_1MHz_inst|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sig_1MHz_inst|tmp~q\);

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);
\controlbutee_inst|ALT_INV_LessThan0~3_combout\ <= NOT \controlbutee_inst|LessThan0~3_combout\;
\sig_10Hz_inst|ALT_INV_tmp~q\ <= NOT \sig_10Hz_inst|tmp~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y21_N23
\clk_1M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_1MHz_inst|tmp~q\,
	devoe => ww_devoe,
	o => \clk_1M~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\cs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chipselect_inst|cs~q\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\start_conv~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \start_conv~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(8),
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(9),
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(10),
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre_decalage_inst|data_out\(11),
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\out_pwm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlbutee_inst|out_pwm~0_combout\,
	devoe => ww_devoe,
	o => \out_pwm~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\out_sens~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_sens~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\fin_course_g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlbutee_inst|ALT_INV_LessThan0~3_combout\,
	devoe => ww_devoe,
	o => \fin_course_g~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\fin_course_d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlbutee_inst|fin_course_d~3_combout\,
	devoe => ww_devoe,
	o => \fin_course_d~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G18
\clk_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N1
\raz_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raz_n,
	o => \raz_n~input_o\);

-- Location: FF_X51_Y14_N17
\sig_1MHz_inst|gene_1M:cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~16_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[8]~q\);

-- Location: LCCOMB_X51_Y14_N0
\sig_1MHz_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~0_combout\ = \sig_1MHz_inst|gene_1M:cnt[0]~q\ $ (VCC)
-- \sig_1MHz_inst|Add0~1\ = CARRY(\sig_1MHz_inst|gene_1M:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[0]~q\,
	datad => VCC,
	combout => \sig_1MHz_inst|Add0~0_combout\,
	cout => \sig_1MHz_inst|Add0~1\);

-- Location: FF_X51_Y13_N29
\sig_1MHz_inst|gene_1M:cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~60_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[30]~q\);

-- Location: LCCOMB_X51_Y14_N16
\sig_1MHz_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~16_combout\ = (\sig_1MHz_inst|gene_1M:cnt[8]~q\ & (\sig_1MHz_inst|Add0~15\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[8]~q\ & (!\sig_1MHz_inst|Add0~15\ & VCC))
-- \sig_1MHz_inst|Add0~17\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[8]~q\ & !\sig_1MHz_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[8]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~15\,
	combout => \sig_1MHz_inst|Add0~16_combout\,
	cout => \sig_1MHz_inst|Add0~17\);

-- Location: LCCOMB_X51_Y14_N18
\sig_1MHz_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~18_combout\ = (\sig_1MHz_inst|gene_1M:cnt[9]~q\ & (!\sig_1MHz_inst|Add0~17\)) # (!\sig_1MHz_inst|gene_1M:cnt[9]~q\ & ((\sig_1MHz_inst|Add0~17\) # (GND)))
-- \sig_1MHz_inst|Add0~19\ = CARRY((!\sig_1MHz_inst|Add0~17\) # (!\sig_1MHz_inst|gene_1M:cnt[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[9]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~17\,
	combout => \sig_1MHz_inst|Add0~18_combout\,
	cout => \sig_1MHz_inst|Add0~19\);

-- Location: FF_X51_Y14_N19
\sig_1MHz_inst|gene_1M:cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~18_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[9]~q\);

-- Location: LCCOMB_X51_Y14_N20
\sig_1MHz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~20_combout\ = (\sig_1MHz_inst|gene_1M:cnt[10]~q\ & (\sig_1MHz_inst|Add0~19\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[10]~q\ & (!\sig_1MHz_inst|Add0~19\ & VCC))
-- \sig_1MHz_inst|Add0~21\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[10]~q\ & !\sig_1MHz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[10]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~19\,
	combout => \sig_1MHz_inst|Add0~20_combout\,
	cout => \sig_1MHz_inst|Add0~21\);

-- Location: FF_X51_Y14_N21
\sig_1MHz_inst|gene_1M:cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~20_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[10]~q\);

-- Location: LCCOMB_X51_Y14_N22
\sig_1MHz_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~22_combout\ = (\sig_1MHz_inst|gene_1M:cnt[11]~q\ & (!\sig_1MHz_inst|Add0~21\)) # (!\sig_1MHz_inst|gene_1M:cnt[11]~q\ & ((\sig_1MHz_inst|Add0~21\) # (GND)))
-- \sig_1MHz_inst|Add0~23\ = CARRY((!\sig_1MHz_inst|Add0~21\) # (!\sig_1MHz_inst|gene_1M:cnt[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[11]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~21\,
	combout => \sig_1MHz_inst|Add0~22_combout\,
	cout => \sig_1MHz_inst|Add0~23\);

-- Location: FF_X51_Y14_N23
\sig_1MHz_inst|gene_1M:cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~22_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[11]~q\);

-- Location: LCCOMB_X51_Y14_N24
\sig_1MHz_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~24_combout\ = (\sig_1MHz_inst|gene_1M:cnt[12]~q\ & (\sig_1MHz_inst|Add0~23\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[12]~q\ & (!\sig_1MHz_inst|Add0~23\ & VCC))
-- \sig_1MHz_inst|Add0~25\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[12]~q\ & !\sig_1MHz_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[12]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~23\,
	combout => \sig_1MHz_inst|Add0~24_combout\,
	cout => \sig_1MHz_inst|Add0~25\);

-- Location: FF_X51_Y14_N25
\sig_1MHz_inst|gene_1M:cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~24_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[12]~q\);

-- Location: LCCOMB_X51_Y14_N26
\sig_1MHz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~26_combout\ = (\sig_1MHz_inst|gene_1M:cnt[13]~q\ & (!\sig_1MHz_inst|Add0~25\)) # (!\sig_1MHz_inst|gene_1M:cnt[13]~q\ & ((\sig_1MHz_inst|Add0~25\) # (GND)))
-- \sig_1MHz_inst|Add0~27\ = CARRY((!\sig_1MHz_inst|Add0~25\) # (!\sig_1MHz_inst|gene_1M:cnt[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[13]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~25\,
	combout => \sig_1MHz_inst|Add0~26_combout\,
	cout => \sig_1MHz_inst|Add0~27\);

-- Location: FF_X51_Y14_N27
\sig_1MHz_inst|gene_1M:cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~26_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[13]~q\);

-- Location: LCCOMB_X51_Y14_N28
\sig_1MHz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~28_combout\ = (\sig_1MHz_inst|gene_1M:cnt[14]~q\ & (\sig_1MHz_inst|Add0~27\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[14]~q\ & (!\sig_1MHz_inst|Add0~27\ & VCC))
-- \sig_1MHz_inst|Add0~29\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[14]~q\ & !\sig_1MHz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[14]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~27\,
	combout => \sig_1MHz_inst|Add0~28_combout\,
	cout => \sig_1MHz_inst|Add0~29\);

-- Location: FF_X51_Y14_N29
\sig_1MHz_inst|gene_1M:cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~28_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[14]~q\);

-- Location: LCCOMB_X51_Y14_N30
\sig_1MHz_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~30_combout\ = (\sig_1MHz_inst|gene_1M:cnt[15]~q\ & (!\sig_1MHz_inst|Add0~29\)) # (!\sig_1MHz_inst|gene_1M:cnt[15]~q\ & ((\sig_1MHz_inst|Add0~29\) # (GND)))
-- \sig_1MHz_inst|Add0~31\ = CARRY((!\sig_1MHz_inst|Add0~29\) # (!\sig_1MHz_inst|gene_1M:cnt[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[15]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~29\,
	combout => \sig_1MHz_inst|Add0~30_combout\,
	cout => \sig_1MHz_inst|Add0~31\);

-- Location: FF_X51_Y14_N31
\sig_1MHz_inst|gene_1M:cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~30_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[15]~q\);

-- Location: LCCOMB_X51_Y13_N0
\sig_1MHz_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~32_combout\ = (\sig_1MHz_inst|gene_1M:cnt[16]~q\ & (\sig_1MHz_inst|Add0~31\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[16]~q\ & (!\sig_1MHz_inst|Add0~31\ & VCC))
-- \sig_1MHz_inst|Add0~33\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[16]~q\ & !\sig_1MHz_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[16]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~31\,
	combout => \sig_1MHz_inst|Add0~32_combout\,
	cout => \sig_1MHz_inst|Add0~33\);

-- Location: FF_X51_Y13_N1
\sig_1MHz_inst|gene_1M:cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~32_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[16]~q\);

-- Location: LCCOMB_X51_Y13_N2
\sig_1MHz_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~34_combout\ = (\sig_1MHz_inst|gene_1M:cnt[17]~q\ & (!\sig_1MHz_inst|Add0~33\)) # (!\sig_1MHz_inst|gene_1M:cnt[17]~q\ & ((\sig_1MHz_inst|Add0~33\) # (GND)))
-- \sig_1MHz_inst|Add0~35\ = CARRY((!\sig_1MHz_inst|Add0~33\) # (!\sig_1MHz_inst|gene_1M:cnt[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[17]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~33\,
	combout => \sig_1MHz_inst|Add0~34_combout\,
	cout => \sig_1MHz_inst|Add0~35\);

-- Location: FF_X51_Y13_N3
\sig_1MHz_inst|gene_1M:cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~34_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[17]~q\);

-- Location: LCCOMB_X51_Y13_N4
\sig_1MHz_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~36_combout\ = (\sig_1MHz_inst|gene_1M:cnt[18]~q\ & (\sig_1MHz_inst|Add0~35\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[18]~q\ & (!\sig_1MHz_inst|Add0~35\ & VCC))
-- \sig_1MHz_inst|Add0~37\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[18]~q\ & !\sig_1MHz_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[18]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~35\,
	combout => \sig_1MHz_inst|Add0~36_combout\,
	cout => \sig_1MHz_inst|Add0~37\);

-- Location: FF_X51_Y13_N5
\sig_1MHz_inst|gene_1M:cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~36_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[18]~q\);

-- Location: LCCOMB_X51_Y13_N6
\sig_1MHz_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~38_combout\ = (\sig_1MHz_inst|gene_1M:cnt[19]~q\ & (!\sig_1MHz_inst|Add0~37\)) # (!\sig_1MHz_inst|gene_1M:cnt[19]~q\ & ((\sig_1MHz_inst|Add0~37\) # (GND)))
-- \sig_1MHz_inst|Add0~39\ = CARRY((!\sig_1MHz_inst|Add0~37\) # (!\sig_1MHz_inst|gene_1M:cnt[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[19]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~37\,
	combout => \sig_1MHz_inst|Add0~38_combout\,
	cout => \sig_1MHz_inst|Add0~39\);

-- Location: FF_X51_Y13_N7
\sig_1MHz_inst|gene_1M:cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~38_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[19]~q\);

-- Location: LCCOMB_X51_Y13_N8
\sig_1MHz_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~40_combout\ = (\sig_1MHz_inst|gene_1M:cnt[20]~q\ & (\sig_1MHz_inst|Add0~39\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[20]~q\ & (!\sig_1MHz_inst|Add0~39\ & VCC))
-- \sig_1MHz_inst|Add0~41\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[20]~q\ & !\sig_1MHz_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[20]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~39\,
	combout => \sig_1MHz_inst|Add0~40_combout\,
	cout => \sig_1MHz_inst|Add0~41\);

-- Location: FF_X51_Y13_N9
\sig_1MHz_inst|gene_1M:cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~40_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[20]~q\);

-- Location: LCCOMB_X51_Y13_N10
\sig_1MHz_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~42_combout\ = (\sig_1MHz_inst|gene_1M:cnt[21]~q\ & (!\sig_1MHz_inst|Add0~41\)) # (!\sig_1MHz_inst|gene_1M:cnt[21]~q\ & ((\sig_1MHz_inst|Add0~41\) # (GND)))
-- \sig_1MHz_inst|Add0~43\ = CARRY((!\sig_1MHz_inst|Add0~41\) # (!\sig_1MHz_inst|gene_1M:cnt[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[21]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~41\,
	combout => \sig_1MHz_inst|Add0~42_combout\,
	cout => \sig_1MHz_inst|Add0~43\);

-- Location: FF_X51_Y13_N11
\sig_1MHz_inst|gene_1M:cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~42_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[21]~q\);

-- Location: LCCOMB_X51_Y13_N12
\sig_1MHz_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~44_combout\ = (\sig_1MHz_inst|gene_1M:cnt[22]~q\ & (\sig_1MHz_inst|Add0~43\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[22]~q\ & (!\sig_1MHz_inst|Add0~43\ & VCC))
-- \sig_1MHz_inst|Add0~45\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[22]~q\ & !\sig_1MHz_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[22]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~43\,
	combout => \sig_1MHz_inst|Add0~44_combout\,
	cout => \sig_1MHz_inst|Add0~45\);

-- Location: FF_X51_Y13_N13
\sig_1MHz_inst|gene_1M:cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~44_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[22]~q\);

-- Location: LCCOMB_X51_Y13_N14
\sig_1MHz_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~46_combout\ = (\sig_1MHz_inst|gene_1M:cnt[23]~q\ & (!\sig_1MHz_inst|Add0~45\)) # (!\sig_1MHz_inst|gene_1M:cnt[23]~q\ & ((\sig_1MHz_inst|Add0~45\) # (GND)))
-- \sig_1MHz_inst|Add0~47\ = CARRY((!\sig_1MHz_inst|Add0~45\) # (!\sig_1MHz_inst|gene_1M:cnt[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[23]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~45\,
	combout => \sig_1MHz_inst|Add0~46_combout\,
	cout => \sig_1MHz_inst|Add0~47\);

-- Location: FF_X51_Y13_N15
\sig_1MHz_inst|gene_1M:cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~46_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[23]~q\);

-- Location: LCCOMB_X51_Y13_N16
\sig_1MHz_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~48_combout\ = (\sig_1MHz_inst|gene_1M:cnt[24]~q\ & (\sig_1MHz_inst|Add0~47\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[24]~q\ & (!\sig_1MHz_inst|Add0~47\ & VCC))
-- \sig_1MHz_inst|Add0~49\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[24]~q\ & !\sig_1MHz_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[24]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~47\,
	combout => \sig_1MHz_inst|Add0~48_combout\,
	cout => \sig_1MHz_inst|Add0~49\);

-- Location: FF_X51_Y13_N17
\sig_1MHz_inst|gene_1M:cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~48_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[24]~q\);

-- Location: LCCOMB_X51_Y13_N18
\sig_1MHz_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~50_combout\ = (\sig_1MHz_inst|gene_1M:cnt[25]~q\ & (!\sig_1MHz_inst|Add0~49\)) # (!\sig_1MHz_inst|gene_1M:cnt[25]~q\ & ((\sig_1MHz_inst|Add0~49\) # (GND)))
-- \sig_1MHz_inst|Add0~51\ = CARRY((!\sig_1MHz_inst|Add0~49\) # (!\sig_1MHz_inst|gene_1M:cnt[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[25]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~49\,
	combout => \sig_1MHz_inst|Add0~50_combout\,
	cout => \sig_1MHz_inst|Add0~51\);

-- Location: FF_X51_Y13_N19
\sig_1MHz_inst|gene_1M:cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~50_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[25]~q\);

-- Location: LCCOMB_X51_Y13_N20
\sig_1MHz_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~52_combout\ = (\sig_1MHz_inst|gene_1M:cnt[26]~q\ & (\sig_1MHz_inst|Add0~51\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[26]~q\ & (!\sig_1MHz_inst|Add0~51\ & VCC))
-- \sig_1MHz_inst|Add0~53\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[26]~q\ & !\sig_1MHz_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[26]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~51\,
	combout => \sig_1MHz_inst|Add0~52_combout\,
	cout => \sig_1MHz_inst|Add0~53\);

-- Location: FF_X51_Y13_N21
\sig_1MHz_inst|gene_1M:cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~52_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[26]~q\);

-- Location: LCCOMB_X51_Y13_N22
\sig_1MHz_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~54_combout\ = (\sig_1MHz_inst|gene_1M:cnt[27]~q\ & (!\sig_1MHz_inst|Add0~53\)) # (!\sig_1MHz_inst|gene_1M:cnt[27]~q\ & ((\sig_1MHz_inst|Add0~53\) # (GND)))
-- \sig_1MHz_inst|Add0~55\ = CARRY((!\sig_1MHz_inst|Add0~53\) # (!\sig_1MHz_inst|gene_1M:cnt[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[27]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~53\,
	combout => \sig_1MHz_inst|Add0~54_combout\,
	cout => \sig_1MHz_inst|Add0~55\);

-- Location: FF_X51_Y13_N23
\sig_1MHz_inst|gene_1M:cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~54_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[27]~q\);

-- Location: LCCOMB_X51_Y13_N24
\sig_1MHz_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~56_combout\ = (\sig_1MHz_inst|gene_1M:cnt[28]~q\ & (\sig_1MHz_inst|Add0~55\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[28]~q\ & (!\sig_1MHz_inst|Add0~55\ & VCC))
-- \sig_1MHz_inst|Add0~57\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[28]~q\ & !\sig_1MHz_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[28]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~55\,
	combout => \sig_1MHz_inst|Add0~56_combout\,
	cout => \sig_1MHz_inst|Add0~57\);

-- Location: FF_X51_Y13_N25
\sig_1MHz_inst|gene_1M:cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~56_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[28]~q\);

-- Location: LCCOMB_X51_Y13_N26
\sig_1MHz_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~58_combout\ = (\sig_1MHz_inst|gene_1M:cnt[29]~q\ & (!\sig_1MHz_inst|Add0~57\)) # (!\sig_1MHz_inst|gene_1M:cnt[29]~q\ & ((\sig_1MHz_inst|Add0~57\) # (GND)))
-- \sig_1MHz_inst|Add0~59\ = CARRY((!\sig_1MHz_inst|Add0~57\) # (!\sig_1MHz_inst|gene_1M:cnt[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[29]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~57\,
	combout => \sig_1MHz_inst|Add0~58_combout\,
	cout => \sig_1MHz_inst|Add0~59\);

-- Location: FF_X51_Y13_N27
\sig_1MHz_inst|gene_1M:cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~58_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[29]~q\);

-- Location: LCCOMB_X51_Y13_N28
\sig_1MHz_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~60_combout\ = (\sig_1MHz_inst|gene_1M:cnt[30]~q\ & (\sig_1MHz_inst|Add0~59\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[30]~q\ & (!\sig_1MHz_inst|Add0~59\ & VCC))
-- \sig_1MHz_inst|Add0~61\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[30]~q\ & !\sig_1MHz_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[30]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~59\,
	combout => \sig_1MHz_inst|Add0~60_combout\,
	cout => \sig_1MHz_inst|Add0~61\);

-- Location: FF_X51_Y13_N31
\sig_1MHz_inst|gene_1M:cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~62_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[31]~q\);

-- Location: LCCOMB_X51_Y13_N30
\sig_1MHz_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~62_combout\ = \sig_1MHz_inst|gene_1M:cnt[31]~q\ $ (\sig_1MHz_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[31]~q\,
	cin => \sig_1MHz_inst|Add0~61\,
	combout => \sig_1MHz_inst|Add0~62_combout\);

-- Location: LCCOMB_X52_Y13_N4
\sig_1MHz_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~5_combout\ = (!\sig_1MHz_inst|Add0~32_combout\ & (!\sig_1MHz_inst|Add0~36_combout\ & (!\sig_1MHz_inst|Add0~38_combout\ & !\sig_1MHz_inst|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~32_combout\,
	datab => \sig_1MHz_inst|Add0~36_combout\,
	datac => \sig_1MHz_inst|Add0~38_combout\,
	datad => \sig_1MHz_inst|Add0~34_combout\,
	combout => \sig_1MHz_inst|Equal0~5_combout\);

-- Location: LCCOMB_X52_Y13_N12
\sig_1MHz_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~6_combout\ = (!\sig_1MHz_inst|Add0~46_combout\ & (!\sig_1MHz_inst|Add0~40_combout\ & (!\sig_1MHz_inst|Add0~44_combout\ & !\sig_1MHz_inst|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~46_combout\,
	datab => \sig_1MHz_inst|Add0~40_combout\,
	datac => \sig_1MHz_inst|Add0~44_combout\,
	datad => \sig_1MHz_inst|Add0~42_combout\,
	combout => \sig_1MHz_inst|Equal0~6_combout\);

-- Location: LCCOMB_X52_Y13_N2
\sig_1MHz_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~7_combout\ = (!\sig_1MHz_inst|Add0~48_combout\ & (!\sig_1MHz_inst|Add0~50_combout\ & (\sig_1MHz_inst|Equal0~5_combout\ & \sig_1MHz_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~48_combout\,
	datab => \sig_1MHz_inst|Add0~50_combout\,
	datac => \sig_1MHz_inst|Equal0~5_combout\,
	datad => \sig_1MHz_inst|Equal0~6_combout\,
	combout => \sig_1MHz_inst|Equal0~7_combout\);

-- Location: LCCOMB_X52_Y13_N24
\sig_1MHz_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~8_combout\ = (!\sig_1MHz_inst|Add0~52_combout\ & (!\sig_1MHz_inst|Add0~56_combout\ & (!\sig_1MHz_inst|Add0~54_combout\ & \sig_1MHz_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~52_combout\,
	datab => \sig_1MHz_inst|Add0~56_combout\,
	datac => \sig_1MHz_inst|Add0~54_combout\,
	datad => \sig_1MHz_inst|Equal0~7_combout\,
	combout => \sig_1MHz_inst|Equal0~8_combout\);

-- Location: LCCOMB_X52_Y13_N6
\sig_1MHz_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~9_combout\ = (!\sig_1MHz_inst|Add0~60_combout\ & (!\sig_1MHz_inst|Add0~62_combout\ & (!\sig_1MHz_inst|Add0~58_combout\ & \sig_1MHz_inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~60_combout\,
	datab => \sig_1MHz_inst|Add0~62_combout\,
	datac => \sig_1MHz_inst|Add0~58_combout\,
	datad => \sig_1MHz_inst|Equal0~8_combout\,
	combout => \sig_1MHz_inst|Equal0~9_combout\);

-- Location: LCCOMB_X52_Y13_N0
\sig_1MHz_inst|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|cnt~0_combout\ = (\sig_1MHz_inst|Add0~0_combout\ & ((!\sig_1MHz_inst|Equal0~9_combout\) # (!\sig_1MHz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|Add0~0_combout\,
	datac => \sig_1MHz_inst|Equal0~4_combout\,
	datad => \sig_1MHz_inst|Equal0~9_combout\,
	combout => \sig_1MHz_inst|cnt~0_combout\);

-- Location: FF_X52_Y13_N1
\sig_1MHz_inst|gene_1M:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|cnt~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[0]~q\);

-- Location: LCCOMB_X51_Y14_N2
\sig_1MHz_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~2_combout\ = (\sig_1MHz_inst|gene_1M:cnt[1]~q\ & (!\sig_1MHz_inst|Add0~1\)) # (!\sig_1MHz_inst|gene_1M:cnt[1]~q\ & ((\sig_1MHz_inst|Add0~1\) # (GND)))
-- \sig_1MHz_inst|Add0~3\ = CARRY((!\sig_1MHz_inst|Add0~1\) # (!\sig_1MHz_inst|gene_1M:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[1]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~1\,
	combout => \sig_1MHz_inst|Add0~2_combout\,
	cout => \sig_1MHz_inst|Add0~3\);

-- Location: FF_X51_Y14_N3
\sig_1MHz_inst|gene_1M:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~2_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[1]~q\);

-- Location: LCCOMB_X51_Y14_N4
\sig_1MHz_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~4_combout\ = (\sig_1MHz_inst|gene_1M:cnt[2]~q\ & (\sig_1MHz_inst|Add0~3\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[2]~q\ & (!\sig_1MHz_inst|Add0~3\ & VCC))
-- \sig_1MHz_inst|Add0~5\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[2]~q\ & !\sig_1MHz_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[2]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~3\,
	combout => \sig_1MHz_inst|Add0~4_combout\,
	cout => \sig_1MHz_inst|Add0~5\);

-- Location: FF_X51_Y14_N5
\sig_1MHz_inst|gene_1M:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~4_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[2]~q\);

-- Location: LCCOMB_X51_Y14_N6
\sig_1MHz_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~6_combout\ = (\sig_1MHz_inst|gene_1M:cnt[3]~q\ & (!\sig_1MHz_inst|Add0~5\)) # (!\sig_1MHz_inst|gene_1M:cnt[3]~q\ & ((\sig_1MHz_inst|Add0~5\) # (GND)))
-- \sig_1MHz_inst|Add0~7\ = CARRY((!\sig_1MHz_inst|Add0~5\) # (!\sig_1MHz_inst|gene_1M:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[3]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~5\,
	combout => \sig_1MHz_inst|Add0~6_combout\,
	cout => \sig_1MHz_inst|Add0~7\);

-- Location: LCCOMB_X52_Y13_N8
\sig_1MHz_inst|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|cnt~1_combout\ = (\sig_1MHz_inst|Add0~6_combout\ & ((!\sig_1MHz_inst|Equal0~9_combout\) # (!\sig_1MHz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~6_combout\,
	datac => \sig_1MHz_inst|Equal0~4_combout\,
	datad => \sig_1MHz_inst|Equal0~9_combout\,
	combout => \sig_1MHz_inst|cnt~1_combout\);

-- Location: FF_X52_Y13_N9
\sig_1MHz_inst|gene_1M:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|cnt~1_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[3]~q\);

-- Location: LCCOMB_X51_Y14_N8
\sig_1MHz_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~8_combout\ = (\sig_1MHz_inst|gene_1M:cnt[4]~q\ & (\sig_1MHz_inst|Add0~7\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[4]~q\ & (!\sig_1MHz_inst|Add0~7\ & VCC))
-- \sig_1MHz_inst|Add0~9\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[4]~q\ & !\sig_1MHz_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[4]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~7\,
	combout => \sig_1MHz_inst|Add0~8_combout\,
	cout => \sig_1MHz_inst|Add0~9\);

-- Location: LCCOMB_X52_Y13_N26
\sig_1MHz_inst|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|cnt~2_combout\ = (\sig_1MHz_inst|Add0~8_combout\ & ((!\sig_1MHz_inst|Equal0~9_combout\) # (!\sig_1MHz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|Add0~8_combout\,
	datac => \sig_1MHz_inst|Equal0~4_combout\,
	datad => \sig_1MHz_inst|Equal0~9_combout\,
	combout => \sig_1MHz_inst|cnt~2_combout\);

-- Location: FF_X52_Y13_N27
\sig_1MHz_inst|gene_1M:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|cnt~2_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[4]~q\);

-- Location: LCCOMB_X51_Y14_N10
\sig_1MHz_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~10_combout\ = (\sig_1MHz_inst|gene_1M:cnt[5]~q\ & (!\sig_1MHz_inst|Add0~9\)) # (!\sig_1MHz_inst|gene_1M:cnt[5]~q\ & ((\sig_1MHz_inst|Add0~9\) # (GND)))
-- \sig_1MHz_inst|Add0~11\ = CARRY((!\sig_1MHz_inst|Add0~9\) # (!\sig_1MHz_inst|gene_1M:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[5]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~9\,
	combout => \sig_1MHz_inst|Add0~10_combout\,
	cout => \sig_1MHz_inst|Add0~11\);

-- Location: FF_X51_Y14_N11
\sig_1MHz_inst|gene_1M:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~10_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[5]~q\);

-- Location: LCCOMB_X51_Y14_N12
\sig_1MHz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~12_combout\ = (\sig_1MHz_inst|gene_1M:cnt[6]~q\ & (\sig_1MHz_inst|Add0~11\ $ (GND))) # (!\sig_1MHz_inst|gene_1M:cnt[6]~q\ & (!\sig_1MHz_inst|Add0~11\ & VCC))
-- \sig_1MHz_inst|Add0~13\ = CARRY((\sig_1MHz_inst|gene_1M:cnt[6]~q\ & !\sig_1MHz_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|gene_1M:cnt[6]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~11\,
	combout => \sig_1MHz_inst|Add0~12_combout\,
	cout => \sig_1MHz_inst|Add0~13\);

-- Location: FF_X51_Y14_N13
\sig_1MHz_inst|gene_1M:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~12_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[6]~q\);

-- Location: LCCOMB_X51_Y14_N14
\sig_1MHz_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Add0~14_combout\ = (\sig_1MHz_inst|gene_1M:cnt[7]~q\ & (!\sig_1MHz_inst|Add0~13\)) # (!\sig_1MHz_inst|gene_1M:cnt[7]~q\ & ((\sig_1MHz_inst|Add0~13\) # (GND)))
-- \sig_1MHz_inst|Add0~15\ = CARRY((!\sig_1MHz_inst|Add0~13\) # (!\sig_1MHz_inst|gene_1M:cnt[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|gene_1M:cnt[7]~q\,
	datad => VCC,
	cin => \sig_1MHz_inst|Add0~13\,
	combout => \sig_1MHz_inst|Add0~14_combout\,
	cout => \sig_1MHz_inst|Add0~15\);

-- Location: FF_X51_Y14_N15
\sig_1MHz_inst|gene_1M:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|Add0~14_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|gene_1M:cnt[7]~q\);

-- Location: LCCOMB_X52_Y13_N10
\sig_1MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~2_combout\ = (!\sig_1MHz_inst|Add0~16_combout\ & (!\sig_1MHz_inst|Add0~18_combout\ & (!\sig_1MHz_inst|Add0~22_combout\ & !\sig_1MHz_inst|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~16_combout\,
	datab => \sig_1MHz_inst|Add0~18_combout\,
	datac => \sig_1MHz_inst|Add0~22_combout\,
	datad => \sig_1MHz_inst|Add0~20_combout\,
	combout => \sig_1MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y14_N8
\sig_1MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~0_combout\ = (\sig_1MHz_inst|Add0~0_combout\ & (\sig_1MHz_inst|Add0~6_combout\ & (!\sig_1MHz_inst|Add0~4_combout\ & !\sig_1MHz_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~0_combout\,
	datab => \sig_1MHz_inst|Add0~6_combout\,
	datac => \sig_1MHz_inst|Add0~4_combout\,
	datad => \sig_1MHz_inst|Add0~2_combout\,
	combout => \sig_1MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y13_N22
\sig_1MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~3_combout\ = (!\sig_1MHz_inst|Add0~30_combout\ & (!\sig_1MHz_inst|Add0~26_combout\ & (!\sig_1MHz_inst|Add0~28_combout\ & !\sig_1MHz_inst|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~30_combout\,
	datab => \sig_1MHz_inst|Add0~26_combout\,
	datac => \sig_1MHz_inst|Add0~28_combout\,
	datad => \sig_1MHz_inst|Add0~24_combout\,
	combout => \sig_1MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y14_N10
\sig_1MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~1_combout\ = (!\sig_1MHz_inst|Add0~14_combout\ & (!\sig_1MHz_inst|Add0~10_combout\ & (!\sig_1MHz_inst|Add0~12_combout\ & \sig_1MHz_inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Add0~14_combout\,
	datab => \sig_1MHz_inst|Add0~10_combout\,
	datac => \sig_1MHz_inst|Add0~12_combout\,
	datad => \sig_1MHz_inst|Add0~8_combout\,
	combout => \sig_1MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y13_N30
\sig_1MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|Equal0~4_combout\ = (\sig_1MHz_inst|Equal0~2_combout\ & (\sig_1MHz_inst|Equal0~0_combout\ & (\sig_1MHz_inst|Equal0~3_combout\ & \sig_1MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Equal0~2_combout\,
	datab => \sig_1MHz_inst|Equal0~0_combout\,
	datac => \sig_1MHz_inst|Equal0~3_combout\,
	datad => \sig_1MHz_inst|Equal0~1_combout\,
	combout => \sig_1MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y13_N16
\sig_1MHz_inst|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|tmp~0_combout\ = \sig_1MHz_inst|tmp~q\ $ (((\sig_1MHz_inst|Equal0~4_combout\ & (\raz_n~input_o\ & \sig_1MHz_inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_1MHz_inst|Equal0~4_combout\,
	datab => \raz_n~input_o\,
	datac => \sig_1MHz_inst|tmp~q\,
	datad => \sig_1MHz_inst|Equal0~9_combout\,
	combout => \sig_1MHz_inst|tmp~0_combout\);

-- Location: LCCOMB_X52_Y13_N18
\sig_1MHz_inst|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_1MHz_inst|tmp~feeder_combout\ = \sig_1MHz_inst|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_1MHz_inst|tmp~0_combout\,
	combout => \sig_1MHz_inst|tmp~feeder_combout\);

-- Location: FF_X52_Y13_N19
\sig_1MHz_inst|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \sig_1MHz_inst|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_1MHz_inst|tmp~q\);

-- Location: CLKCTRL_G9
\sig_1MHz_inst|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sig_1MHz_inst|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sig_1MHz_inst|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y14_N12
\chipselect_inst|compt2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt2~0_combout\ = (!\chipselect_inst|compt2\(0) & !\chipselect_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \chipselect_inst|compt2\(0),
	datad => \chipselect_inst|Equal0~1_combout\,
	combout => \chipselect_inst|compt2~0_combout\);

-- Location: FF_X49_Y14_N27
\sig_10Hz_inst|gene_start_conv:count_conv[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~26_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[13]~q\);

-- Location: LCCOMB_X49_Y14_N0
\sig_10Hz_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~0_combout\ = \sig_10Hz_inst|gene_start_conv:count_conv[0]~q\ $ (VCC)
-- \sig_10Hz_inst|Add0~1\ = CARRY(\sig_10Hz_inst|gene_start_conv:count_conv[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[0]~q\,
	datad => VCC,
	combout => \sig_10Hz_inst|Add0~0_combout\,
	cout => \sig_10Hz_inst|Add0~1\);

-- Location: FF_X49_Y14_N1
\sig_10Hz_inst|gene_start_conv:count_conv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[0]~q\);

-- Location: LCCOMB_X49_Y14_N2
\sig_10Hz_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~2_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[1]~q\ & (!\sig_10Hz_inst|Add0~1\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[1]~q\ & ((\sig_10Hz_inst|Add0~1\) # (GND)))
-- \sig_10Hz_inst|Add0~3\ = CARRY((!\sig_10Hz_inst|Add0~1\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[1]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~1\,
	combout => \sig_10Hz_inst|Add0~2_combout\,
	cout => \sig_10Hz_inst|Add0~3\);

-- Location: FF_X49_Y14_N3
\sig_10Hz_inst|gene_start_conv:count_conv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~2_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[1]~q\);

-- Location: LCCOMB_X49_Y14_N4
\sig_10Hz_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~4_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[2]~q\ & (\sig_10Hz_inst|Add0~3\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[2]~q\ & (!\sig_10Hz_inst|Add0~3\ & VCC))
-- \sig_10Hz_inst|Add0~5\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[2]~q\ & !\sig_10Hz_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[2]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~3\,
	combout => \sig_10Hz_inst|Add0~4_combout\,
	cout => \sig_10Hz_inst|Add0~5\);

-- Location: FF_X49_Y14_N5
\sig_10Hz_inst|gene_start_conv:count_conv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~4_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[2]~q\);

-- Location: LCCOMB_X49_Y14_N6
\sig_10Hz_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~6_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[3]~q\ & (!\sig_10Hz_inst|Add0~5\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[3]~q\ & ((\sig_10Hz_inst|Add0~5\) # (GND)))
-- \sig_10Hz_inst|Add0~7\ = CARRY((!\sig_10Hz_inst|Add0~5\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[3]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~5\,
	combout => \sig_10Hz_inst|Add0~6_combout\,
	cout => \sig_10Hz_inst|Add0~7\);

-- Location: FF_X49_Y14_N7
\sig_10Hz_inst|gene_start_conv:count_conv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~6_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[3]~q\);

-- Location: LCCOMB_X49_Y14_N8
\sig_10Hz_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~8_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[4]~q\ & (\sig_10Hz_inst|Add0~7\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[4]~q\ & (!\sig_10Hz_inst|Add0~7\ & VCC))
-- \sig_10Hz_inst|Add0~9\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[4]~q\ & !\sig_10Hz_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[4]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~7\,
	combout => \sig_10Hz_inst|Add0~8_combout\,
	cout => \sig_10Hz_inst|Add0~9\);

-- Location: LCCOMB_X48_Y14_N14
\sig_10Hz_inst|count_conv~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|count_conv~7_combout\ = (\sig_10Hz_inst|Add0~8_combout\ & !\sig_10Hz_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_10Hz_inst|Add0~8_combout\,
	datad => \sig_10Hz_inst|Equal0~4_combout\,
	combout => \sig_10Hz_inst|count_conv~7_combout\);

-- Location: FF_X48_Y14_N15
\sig_10Hz_inst|gene_start_conv:count_conv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|count_conv~7_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[4]~q\);

-- Location: LCCOMB_X49_Y14_N10
\sig_10Hz_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~10_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[5]~q\ & (!\sig_10Hz_inst|Add0~9\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[5]~q\ & ((\sig_10Hz_inst|Add0~9\) # (GND)))
-- \sig_10Hz_inst|Add0~11\ = CARRY((!\sig_10Hz_inst|Add0~9\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[5]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~9\,
	combout => \sig_10Hz_inst|Add0~10_combout\,
	cout => \sig_10Hz_inst|Add0~11\);

-- Location: FF_X49_Y14_N11
\sig_10Hz_inst|gene_start_conv:count_conv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~10_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[5]~q\);

-- Location: LCCOMB_X49_Y14_N12
\sig_10Hz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~12_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[6]~q\ & (\sig_10Hz_inst|Add0~11\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[6]~q\ & (!\sig_10Hz_inst|Add0~11\ & VCC))
-- \sig_10Hz_inst|Add0~13\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[6]~q\ & !\sig_10Hz_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[6]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~11\,
	combout => \sig_10Hz_inst|Add0~12_combout\,
	cout => \sig_10Hz_inst|Add0~13\);

-- Location: LCCOMB_X48_Y14_N16
\sig_10Hz_inst|count_conv~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|count_conv~6_combout\ = (\sig_10Hz_inst|Add0~12_combout\ & !\sig_10Hz_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_10Hz_inst|Add0~12_combout\,
	datad => \sig_10Hz_inst|Equal0~4_combout\,
	combout => \sig_10Hz_inst|count_conv~6_combout\);

-- Location: FF_X48_Y14_N17
\sig_10Hz_inst|gene_start_conv:count_conv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|count_conv~6_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[6]~q\);

-- Location: LCCOMB_X49_Y14_N14
\sig_10Hz_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~14_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[7]~q\ & (!\sig_10Hz_inst|Add0~13\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[7]~q\ & ((\sig_10Hz_inst|Add0~13\) # (GND)))
-- \sig_10Hz_inst|Add0~15\ = CARRY((!\sig_10Hz_inst|Add0~13\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[7]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~13\,
	combout => \sig_10Hz_inst|Add0~14_combout\,
	cout => \sig_10Hz_inst|Add0~15\);

-- Location: FF_X49_Y14_N15
\sig_10Hz_inst|gene_start_conv:count_conv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~14_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[7]~q\);

-- Location: LCCOMB_X49_Y14_N16
\sig_10Hz_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~16_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[8]~q\ & (\sig_10Hz_inst|Add0~15\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[8]~q\ & (!\sig_10Hz_inst|Add0~15\ & VCC))
-- \sig_10Hz_inst|Add0~17\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[8]~q\ & !\sig_10Hz_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[8]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~15\,
	combout => \sig_10Hz_inst|Add0~16_combout\,
	cout => \sig_10Hz_inst|Add0~17\);

-- Location: LCCOMB_X48_Y14_N2
\sig_10Hz_inst|count_conv~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|count_conv~5_combout\ = (\sig_10Hz_inst|Add0~16_combout\ & !\sig_10Hz_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|Add0~16_combout\,
	datad => \sig_10Hz_inst|Equal0~4_combout\,
	combout => \sig_10Hz_inst|count_conv~5_combout\);

-- Location: FF_X48_Y14_N3
\sig_10Hz_inst|gene_start_conv:count_conv[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|count_conv~5_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[8]~q\);

-- Location: LCCOMB_X49_Y14_N18
\sig_10Hz_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~18_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[9]~q\ & (!\sig_10Hz_inst|Add0~17\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[9]~q\ & ((\sig_10Hz_inst|Add0~17\) # (GND)))
-- \sig_10Hz_inst|Add0~19\ = CARRY((!\sig_10Hz_inst|Add0~17\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[9]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~17\,
	combout => \sig_10Hz_inst|Add0~18_combout\,
	cout => \sig_10Hz_inst|Add0~19\);

-- Location: LCCOMB_X48_Y14_N0
\sig_10Hz_inst|count_conv~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|count_conv~4_combout\ = (\sig_10Hz_inst|Add0~18_combout\ & !\sig_10Hz_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|Add0~18_combout\,
	datad => \sig_10Hz_inst|Equal0~4_combout\,
	combout => \sig_10Hz_inst|count_conv~4_combout\);

-- Location: FF_X48_Y14_N1
\sig_10Hz_inst|gene_start_conv:count_conv[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|count_conv~4_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[9]~q\);

-- Location: LCCOMB_X49_Y14_N20
\sig_10Hz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~20_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[10]~q\ & (\sig_10Hz_inst|Add0~19\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[10]~q\ & (!\sig_10Hz_inst|Add0~19\ & VCC))
-- \sig_10Hz_inst|Add0~21\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[10]~q\ & !\sig_10Hz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[10]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~19\,
	combout => \sig_10Hz_inst|Add0~20_combout\,
	cout => \sig_10Hz_inst|Add0~21\);

-- Location: FF_X49_Y14_N21
\sig_10Hz_inst|gene_start_conv:count_conv[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~20_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[10]~q\);

-- Location: LCCOMB_X49_Y14_N22
\sig_10Hz_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~22_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[11]~q\ & (!\sig_10Hz_inst|Add0~21\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[11]~q\ & ((\sig_10Hz_inst|Add0~21\) # (GND)))
-- \sig_10Hz_inst|Add0~23\ = CARRY((!\sig_10Hz_inst|Add0~21\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[11]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~21\,
	combout => \sig_10Hz_inst|Add0~22_combout\,
	cout => \sig_10Hz_inst|Add0~23\);

-- Location: FF_X49_Y14_N23
\sig_10Hz_inst|gene_start_conv:count_conv[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~22_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[11]~q\);

-- Location: LCCOMB_X49_Y14_N24
\sig_10Hz_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~24_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[12]~q\ & (\sig_10Hz_inst|Add0~23\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[12]~q\ & (!\sig_10Hz_inst|Add0~23\ & VCC))
-- \sig_10Hz_inst|Add0~25\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[12]~q\ & !\sig_10Hz_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[12]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~23\,
	combout => \sig_10Hz_inst|Add0~24_combout\,
	cout => \sig_10Hz_inst|Add0~25\);

-- Location: FF_X49_Y14_N25
\sig_10Hz_inst|gene_start_conv:count_conv[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|Add0~24_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[12]~q\);

-- Location: LCCOMB_X49_Y14_N26
\sig_10Hz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~26_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[13]~q\ & (!\sig_10Hz_inst|Add0~25\)) # (!\sig_10Hz_inst|gene_start_conv:count_conv[13]~q\ & ((\sig_10Hz_inst|Add0~25\) # (GND)))
-- \sig_10Hz_inst|Add0~27\ = CARRY((!\sig_10Hz_inst|Add0~25\) # (!\sig_10Hz_inst|gene_start_conv:count_conv[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|gene_start_conv:count_conv[13]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~25\,
	combout => \sig_10Hz_inst|Add0~26_combout\,
	cout => \sig_10Hz_inst|Add0~27\);

-- Location: LCCOMB_X48_Y14_N18
\sig_10Hz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Equal0~0_combout\ = (!\sig_10Hz_inst|Add0~4_combout\ & (!\sig_10Hz_inst|Add0~0_combout\ & (!\sig_10Hz_inst|Add0~2_combout\ & !\sig_10Hz_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~4_combout\,
	datab => \sig_10Hz_inst|Add0~0_combout\,
	datac => \sig_10Hz_inst|Add0~2_combout\,
	datad => \sig_10Hz_inst|Add0~6_combout\,
	combout => \sig_10Hz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y14_N28
\sig_10Hz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Equal0~1_combout\ = (\sig_10Hz_inst|Add0~8_combout\ & (!\sig_10Hz_inst|Add0~10_combout\ & (\sig_10Hz_inst|Add0~12_combout\ & \sig_10Hz_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~8_combout\,
	datab => \sig_10Hz_inst|Add0~10_combout\,
	datac => \sig_10Hz_inst|Add0~12_combout\,
	datad => \sig_10Hz_inst|Equal0~0_combout\,
	combout => \sig_10Hz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y14_N6
\sig_10Hz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Equal0~2_combout\ = (\sig_10Hz_inst|Add0~18_combout\ & (\sig_10Hz_inst|Add0~16_combout\ & (!\sig_10Hz_inst|Add0~14_combout\ & \sig_10Hz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~18_combout\,
	datab => \sig_10Hz_inst|Add0~16_combout\,
	datac => \sig_10Hz_inst|Add0~14_combout\,
	datad => \sig_10Hz_inst|Equal0~1_combout\,
	combout => \sig_10Hz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y14_N24
\sig_10Hz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Equal0~3_combout\ = (!\sig_10Hz_inst|Add0~20_combout\ & (!\sig_10Hz_inst|Add0~24_combout\ & (!\sig_10Hz_inst|Add0~22_combout\ & \sig_10Hz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~20_combout\,
	datab => \sig_10Hz_inst|Add0~24_combout\,
	datac => \sig_10Hz_inst|Add0~22_combout\,
	datad => \sig_10Hz_inst|Equal0~2_combout\,
	combout => \sig_10Hz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y14_N20
\sig_10Hz_inst|count_conv~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|count_conv~9_combout\ = (\sig_10Hz_inst|Add0~30_combout\ & ((\sig_10Hz_inst|Add0~26_combout\) # ((!\sig_10Hz_inst|Equal0~3_combout\) # (!\sig_10Hz_inst|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~26_combout\,
	datab => \sig_10Hz_inst|Add0~28_combout\,
	datac => \sig_10Hz_inst|Add0~30_combout\,
	datad => \sig_10Hz_inst|Equal0~3_combout\,
	combout => \sig_10Hz_inst|count_conv~9_combout\);

-- Location: FF_X48_Y14_N21
\sig_10Hz_inst|gene_start_conv:count_conv[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|count_conv~9_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[15]~q\);

-- Location: LCCOMB_X49_Y14_N28
\sig_10Hz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~28_combout\ = (\sig_10Hz_inst|gene_start_conv:count_conv[14]~q\ & (\sig_10Hz_inst|Add0~27\ $ (GND))) # (!\sig_10Hz_inst|gene_start_conv:count_conv[14]~q\ & (!\sig_10Hz_inst|Add0~27\ & VCC))
-- \sig_10Hz_inst|Add0~29\ = CARRY((\sig_10Hz_inst|gene_start_conv:count_conv[14]~q\ & !\sig_10Hz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sig_10Hz_inst|gene_start_conv:count_conv[14]~q\,
	datad => VCC,
	cin => \sig_10Hz_inst|Add0~27\,
	combout => \sig_10Hz_inst|Add0~28_combout\,
	cout => \sig_10Hz_inst|Add0~29\);

-- Location: LCCOMB_X49_Y14_N30
\sig_10Hz_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Add0~30_combout\ = \sig_10Hz_inst|Add0~29\ $ (\sig_10Hz_inst|gene_start_conv:count_conv[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sig_10Hz_inst|gene_start_conv:count_conv[15]~q\,
	cin => \sig_10Hz_inst|Add0~29\,
	combout => \sig_10Hz_inst|Add0~30_combout\);

-- Location: LCCOMB_X48_Y14_N30
\sig_10Hz_inst|count_conv~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|count_conv~8_combout\ = (\sig_10Hz_inst|Add0~28_combout\ & ((\sig_10Hz_inst|Add0~26_combout\) # ((!\sig_10Hz_inst|Equal0~3_combout\) # (!\sig_10Hz_inst|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~26_combout\,
	datab => \sig_10Hz_inst|Add0~28_combout\,
	datac => \sig_10Hz_inst|Add0~30_combout\,
	datad => \sig_10Hz_inst|Equal0~3_combout\,
	combout => \sig_10Hz_inst|count_conv~8_combout\);

-- Location: FF_X48_Y14_N31
\sig_10Hz_inst|gene_start_conv:count_conv[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|count_conv~8_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|gene_start_conv:count_conv[14]~q\);

-- Location: LCCOMB_X48_Y14_N10
\sig_10Hz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|Equal0~4_combout\ = (!\sig_10Hz_inst|Add0~26_combout\ & (\sig_10Hz_inst|Add0~28_combout\ & (\sig_10Hz_inst|Add0~30_combout\ & \sig_10Hz_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_10Hz_inst|Add0~26_combout\,
	datab => \sig_10Hz_inst|Add0~28_combout\,
	datac => \sig_10Hz_inst|Add0~30_combout\,
	datad => \sig_10Hz_inst|Equal0~3_combout\,
	combout => \sig_10Hz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y14_N12
\sig_10Hz_inst|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_10Hz_inst|tmp~0_combout\ = \sig_10Hz_inst|tmp~q\ $ (((\raz_n~input_o\ & \sig_10Hz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raz_n~input_o\,
	datac => \sig_10Hz_inst|tmp~q\,
	datad => \sig_10Hz_inst|Equal0~4_combout\,
	combout => \sig_10Hz_inst|tmp~0_combout\);

-- Location: FF_X48_Y14_N13
\sig_10Hz_inst|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \sig_10Hz_inst|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_10Hz_inst|tmp~q\);

-- Location: LCCOMB_X47_Y14_N8
\chipselect_inst|compt1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt1~0_combout\ = (!\chipselect_inst|compt1\(0) & ((\chipselect_inst|LessThan0~1_combout\) # (!\chipselect_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect_inst|LessThan0~1_combout\,
	datac => \chipselect_inst|compt1\(0),
	datad => \chipselect_inst|Equal0~1_combout\,
	combout => \chipselect_inst|compt1~0_combout\);

-- Location: FF_X47_Y14_N9
\chipselect_inst|compt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt1~0_combout\,
	clrn => \raz_n~input_o\,
	ena => \sig_10Hz_inst|ALT_INV_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt1\(0));

-- Location: LCCOMB_X47_Y14_N22
\chipselect_inst|compt1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt1~3_combout\ = (\chipselect_inst|LessThan0~1_combout\ & (\chipselect_inst|compt1\(0) $ ((\chipselect_inst|compt1\(1))))) # (!\chipselect_inst|LessThan0~1_combout\ & (!\chipselect_inst|Equal0~1_combout\ & (\chipselect_inst|compt1\(0) 
-- $ (\chipselect_inst|compt1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(0),
	datab => \chipselect_inst|LessThan0~1_combout\,
	datac => \chipselect_inst|compt1\(1),
	datad => \chipselect_inst|Equal0~1_combout\,
	combout => \chipselect_inst|compt1~3_combout\);

-- Location: FF_X47_Y14_N23
\chipselect_inst|compt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt1~3_combout\,
	clrn => \raz_n~input_o\,
	ena => \sig_10Hz_inst|ALT_INV_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt1\(1));

-- Location: LCCOMB_X47_Y14_N28
\chipselect_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add0~2_combout\ = \chipselect_inst|compt1\(2) $ (((\chipselect_inst|compt1\(1) & \chipselect_inst|compt1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(1),
	datab => \chipselect_inst|compt1\(2),
	datac => \chipselect_inst|compt1\(0),
	combout => \chipselect_inst|Add0~2_combout\);

-- Location: LCCOMB_X47_Y14_N16
\chipselect_inst|compt1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt1~2_combout\ = (\chipselect_inst|Add0~2_combout\ & ((\chipselect_inst|LessThan0~1_combout\) # (!\chipselect_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect_inst|Equal0~1_combout\,
	datac => \chipselect_inst|LessThan0~1_combout\,
	datad => \chipselect_inst|Add0~2_combout\,
	combout => \chipselect_inst|compt1~2_combout\);

-- Location: FF_X47_Y14_N17
\chipselect_inst|compt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt1~2_combout\,
	clrn => \raz_n~input_o\,
	ena => \sig_10Hz_inst|ALT_INV_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt1\(2));

-- Location: LCCOMB_X47_Y14_N6
\chipselect_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add0~1_combout\ = \chipselect_inst|compt1\(3) $ (((\chipselect_inst|compt1\(1) & (\chipselect_inst|compt1\(2) & \chipselect_inst|compt1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(1),
	datab => \chipselect_inst|compt1\(2),
	datac => \chipselect_inst|compt1\(0),
	datad => \chipselect_inst|compt1\(3),
	combout => \chipselect_inst|Add0~1_combout\);

-- Location: LCCOMB_X47_Y14_N18
\chipselect_inst|compt1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt1~1_combout\ = (\chipselect_inst|Add0~1_combout\ & ((\chipselect_inst|LessThan0~1_combout\) # (!\chipselect_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|Add0~1_combout\,
	datab => \chipselect_inst|LessThan0~1_combout\,
	datac => \chipselect_inst|Equal0~1_combout\,
	combout => \chipselect_inst|compt1~1_combout\);

-- Location: FF_X47_Y14_N19
\chipselect_inst|compt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt1~1_combout\,
	clrn => \raz_n~input_o\,
	ena => \sig_10Hz_inst|ALT_INV_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt1\(3));

-- Location: LCCOMB_X47_Y14_N20
\chipselect_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add0~0_combout\ = (\chipselect_inst|compt1\(1) & (\chipselect_inst|compt1\(2) & (\chipselect_inst|compt1\(0) & \chipselect_inst|compt1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(1),
	datab => \chipselect_inst|compt1\(2),
	datac => \chipselect_inst|compt1\(0),
	datad => \chipselect_inst|compt1\(3),
	combout => \chipselect_inst|Add0~0_combout\);

-- Location: LCCOMB_X47_Y14_N10
\chipselect_inst|compt1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt1~4_combout\ = (!\chipselect_inst|Equal0~1_combout\ & (\chipselect_inst|compt1\(4) $ (\chipselect_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect_inst|Equal0~1_combout\,
	datac => \chipselect_inst|compt1\(4),
	datad => \chipselect_inst|Add0~0_combout\,
	combout => \chipselect_inst|compt1~4_combout\);

-- Location: FF_X47_Y14_N11
\chipselect_inst|compt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt1~4_combout\,
	clrn => \raz_n~input_o\,
	ena => \sig_10Hz_inst|ALT_INV_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt1\(4));

-- Location: LCCOMB_X47_Y14_N26
\chipselect_inst|compt1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt1~5_combout\ = (!\chipselect_inst|Equal0~1_combout\ & (\chipselect_inst|compt1\(5) $ (((\chipselect_inst|compt1\(4) & \chipselect_inst|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(4),
	datab => \chipselect_inst|Equal0~1_combout\,
	datac => \chipselect_inst|compt1\(5),
	datad => \chipselect_inst|Add0~0_combout\,
	combout => \chipselect_inst|compt1~5_combout\);

-- Location: FF_X47_Y14_N27
\chipselect_inst|compt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt1~5_combout\,
	clrn => \raz_n~input_o\,
	ena => \sig_10Hz_inst|ALT_INV_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt1\(5));

-- Location: LCCOMB_X47_Y14_N12
\chipselect_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|LessThan0~0_combout\ = (((\chipselect_inst|compt1\(0)) # (!\chipselect_inst|compt1\(3))) # (!\chipselect_inst|compt1\(2))) # (!\chipselect_inst|compt1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(1),
	datab => \chipselect_inst|compt1\(2),
	datac => \chipselect_inst|compt1\(0),
	datad => \chipselect_inst|compt1\(3),
	combout => \chipselect_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y14_N4
\chipselect_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|LessThan0~1_combout\ = (\chipselect_inst|LessThan0~0_combout\ & ((\chipselect_inst|compt1\(4) & (\chipselect_inst|Add0~0_combout\ & \chipselect_inst|compt1\(5))) # (!\chipselect_inst|compt1\(4) & (!\chipselect_inst|Add0~0_combout\ & 
-- !\chipselect_inst|compt1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt1\(4),
	datab => \chipselect_inst|Add0~0_combout\,
	datac => \chipselect_inst|compt1\(5),
	datad => \chipselect_inst|LessThan0~0_combout\,
	combout => \chipselect_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y14_N30
\chipselect_inst|cs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|cs~0_combout\ = (\raz_n~input_o\ & (!\sig_10Hz_inst|tmp~q\ & !\chipselect_inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \raz_n~input_o\,
	datab => \sig_10Hz_inst|tmp~q\,
	datad => \chipselect_inst|LessThan0~1_combout\,
	combout => \chipselect_inst|cs~0_combout\);

-- Location: FF_X46_Y14_N13
\chipselect_inst|compt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt2~0_combout\,
	ena => \chipselect_inst|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt2\(0));

-- Location: LCCOMB_X46_Y14_N22
\chipselect_inst|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add1~3_combout\ = \chipselect_inst|compt2\(1) $ (\chipselect_inst|compt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \chipselect_inst|compt2\(1),
	datad => \chipselect_inst|compt2\(0),
	combout => \chipselect_inst|Add1~3_combout\);

-- Location: FF_X46_Y14_N23
\chipselect_inst|compt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|Add1~3_combout\,
	ena => \chipselect_inst|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt2\(1));

-- Location: LCCOMB_X46_Y14_N18
\chipselect_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add1~2_combout\ = \chipselect_inst|compt2\(2) $ (((\chipselect_inst|compt2\(1) & \chipselect_inst|compt2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt2\(1),
	datac => \chipselect_inst|compt2\(2),
	datad => \chipselect_inst|compt2\(0),
	combout => \chipselect_inst|Add1~2_combout\);

-- Location: FF_X46_Y14_N19
\chipselect_inst|compt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|Add1~2_combout\,
	ena => \chipselect_inst|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt2\(2));

-- Location: LCCOMB_X46_Y14_N4
\chipselect_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add1~0_combout\ = (\chipselect_inst|compt2\(0) & (\chipselect_inst|compt2\(1) & \chipselect_inst|compt2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt2\(0),
	datac => \chipselect_inst|compt2\(1),
	datad => \chipselect_inst|compt2\(2),
	combout => \chipselect_inst|Add1~0_combout\);

-- Location: LCCOMB_X46_Y14_N28
\chipselect_inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Add1~1_combout\ = \chipselect_inst|compt2\(3) $ (((\chipselect_inst|compt2\(1) & (\chipselect_inst|compt2\(2) & \chipselect_inst|compt2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt2\(1),
	datab => \chipselect_inst|compt2\(2),
	datac => \chipselect_inst|compt2\(3),
	datad => \chipselect_inst|compt2\(0),
	combout => \chipselect_inst|Add1~1_combout\);

-- Location: FF_X46_Y14_N29
\chipselect_inst|compt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|Add1~1_combout\,
	ena => \chipselect_inst|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt2\(3));

-- Location: LCCOMB_X46_Y14_N16
\chipselect_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Equal0~0_combout\ = (!\chipselect_inst|compt2\(0) & (!\chipselect_inst|compt2\(2) & (!\chipselect_inst|compt2\(1) & !\chipselect_inst|compt2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt2\(0),
	datab => \chipselect_inst|compt2\(2),
	datac => \chipselect_inst|compt2\(1),
	datad => \chipselect_inst|compt2\(3),
	combout => \chipselect_inst|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y14_N10
\chipselect_inst|compt2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|compt2~1_combout\ = (!\chipselect_inst|Equal0~0_combout\ & (\chipselect_inst|compt2\(4) $ (((\chipselect_inst|Add1~0_combout\ & \chipselect_inst|compt2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|Add1~0_combout\,
	datab => \chipselect_inst|Equal0~0_combout\,
	datac => \chipselect_inst|compt2\(4),
	datad => \chipselect_inst|compt2\(3),
	combout => \chipselect_inst|compt2~1_combout\);

-- Location: FF_X46_Y14_N11
\chipselect_inst|compt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|compt2~1_combout\,
	ena => \chipselect_inst|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|compt2\(4));

-- Location: LCCOMB_X46_Y14_N6
\chipselect_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|Equal0~1_combout\ = (\chipselect_inst|Equal0~0_combout\ & (\chipselect_inst|compt2\(4) $ (((\chipselect_inst|compt2\(3) & \chipselect_inst|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|compt2\(4),
	datab => \chipselect_inst|compt2\(3),
	datac => \chipselect_inst|Add1~0_combout\,
	datad => \chipselect_inst|Equal0~0_combout\,
	combout => \chipselect_inst|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y14_N8
\chipselect_inst|cs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \chipselect_inst|cs~feeder_combout\ = \chipselect_inst|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \chipselect_inst|Equal0~1_combout\,
	combout => \chipselect_inst|cs~feeder_combout\);

-- Location: FF_X46_Y14_N9
\chipselect_inst|cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \chipselect_inst|cs~feeder_combout\,
	ena => \chipselect_inst|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chipselect_inst|cs~q\);

-- Location: IOIBUF_X45_Y0_N15
\data_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LCCOMB_X44_Y14_N28
\registre_decalage_inst|data_buffer[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[0]~feeder_combout\ = \data_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in~input_o\,
	combout => \registre_decalage_inst|data_buffer[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y14_N20
\registre_decalage_inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|counter~4_combout\ = (\chipselect_inst|cs~q\) # ((!\sig_10Hz_inst|tmp~q\ & ((!\registre_decalage_inst|counter[3]~2_combout\) # (!\registre_decalage_inst|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|cs~q\,
	datab => \registre_decalage_inst|counter\(3),
	datac => \registre_decalage_inst|counter[3]~2_combout\,
	datad => \sig_10Hz_inst|tmp~q\,
	combout => \registre_decalage_inst|counter~4_combout\);

-- Location: LCCOMB_X44_Y14_N12
\registre_decalage_inst|counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|counter[0]~7_combout\ = (\registre_decalage_inst|counter\(0) & (((!\registre_decalage_inst|counter~4_combout\)))) # (!\registre_decalage_inst|counter\(0) & (!\chipselect_inst|cs~q\ & ((!\sig_10Hz_inst|tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|cs~q\,
	datab => \registre_decalage_inst|counter~4_combout\,
	datac => \registre_decalage_inst|counter\(0),
	datad => \sig_10Hz_inst|tmp~q\,
	combout => \registre_decalage_inst|counter[0]~7_combout\);

-- Location: FF_X44_Y14_N13
\registre_decalage_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|counter[0]~7_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|counter\(0));

-- Location: LCCOMB_X44_Y14_N18
\registre_decalage_inst|data_buffer[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[0]~2_combout\ = (!\chipselect_inst|cs~q\ & !\sig_10Hz_inst|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|cs~q\,
	datad => \sig_10Hz_inst|tmp~q\,
	combout => \registre_decalage_inst|data_buffer[0]~2_combout\);

-- Location: LCCOMB_X44_Y14_N22
\registre_decalage_inst|counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|counter[1]~6_combout\ = (\registre_decalage_inst|counter~4_combout\ & (\registre_decalage_inst|data_buffer[0]~2_combout\ & (\registre_decalage_inst|counter\(0) $ (\registre_decalage_inst|counter\(1))))) # 
-- (!\registre_decalage_inst|counter~4_combout\ & (((\registre_decalage_inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|counter\(0),
	datab => \registre_decalage_inst|data_buffer[0]~2_combout\,
	datac => \registre_decalage_inst|counter\(1),
	datad => \registre_decalage_inst|counter~4_combout\,
	combout => \registre_decalage_inst|counter[1]~6_combout\);

-- Location: FF_X44_Y14_N23
\registre_decalage_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|counter[1]~6_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|counter\(1));

-- Location: LCCOMB_X44_Y14_N10
\registre_decalage_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|Add0~0_combout\ = \registre_decalage_inst|counter\(2) $ (((\registre_decalage_inst|counter\(0) & \registre_decalage_inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|counter\(0),
	datac => \registre_decalage_inst|counter\(1),
	datad => \registre_decalage_inst|counter\(2),
	combout => \registre_decalage_inst|Add0~0_combout\);

-- Location: LCCOMB_X44_Y14_N2
\registre_decalage_inst|counter[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|counter[2]~5_combout\ = (\registre_decalage_inst|counter~4_combout\ & (\registre_decalage_inst|Add0~0_combout\ & (\registre_decalage_inst|data_buffer[0]~2_combout\))) # (!\registre_decalage_inst|counter~4_combout\ & 
-- (((\registre_decalage_inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|Add0~0_combout\,
	datab => \registre_decalage_inst|data_buffer[0]~2_combout\,
	datac => \registre_decalage_inst|counter\(2),
	datad => \registre_decalage_inst|counter~4_combout\,
	combout => \registre_decalage_inst|counter[2]~5_combout\);

-- Location: FF_X44_Y14_N3
\registre_decalage_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|counter[2]~5_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|counter\(2));

-- Location: LCCOMB_X44_Y14_N8
\registre_decalage_inst|counter[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|counter[3]~2_combout\ = (\registre_decalage_inst|counter\(0) & (\registre_decalage_inst|counter\(1) & \registre_decalage_inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|counter\(0),
	datac => \registre_decalage_inst|counter\(1),
	datad => \registre_decalage_inst|counter\(2),
	combout => \registre_decalage_inst|counter[3]~2_combout\);

-- Location: LCCOMB_X44_Y14_N0
\registre_decalage_inst|counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|counter[3]~3_combout\ = (!\chipselect_inst|cs~q\ & ((\registre_decalage_inst|counter\(3)) # ((\registre_decalage_inst|counter[3]~2_combout\ & !\sig_10Hz_inst|tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|cs~q\,
	datab => \registre_decalage_inst|counter[3]~2_combout\,
	datac => \registre_decalage_inst|counter\(3),
	datad => \sig_10Hz_inst|tmp~q\,
	combout => \registre_decalage_inst|counter[3]~3_combout\);

-- Location: FF_X44_Y14_N1
\registre_decalage_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|counter[3]~3_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|counter\(3));

-- Location: LCCOMB_X44_Y14_N6
\registre_decalage_inst|data_buffer[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[0]~3_combout\ = (!\chipselect_inst|cs~q\ & (!\sig_10Hz_inst|tmp~q\ & ((!\registre_decalage_inst|counter[3]~2_combout\) # (!\registre_decalage_inst|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect_inst|cs~q\,
	datab => \registre_decalage_inst|counter\(3),
	datac => \registre_decalage_inst|counter[3]~2_combout\,
	datad => \sig_10Hz_inst|tmp~q\,
	combout => \registre_decalage_inst|data_buffer[0]~3_combout\);

-- Location: FF_X44_Y14_N29
\registre_decalage_inst|data_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_buffer[0]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(0));

-- Location: FF_X46_Y14_N31
\registre_decalage_inst|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(0),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(0));

-- Location: LCCOMB_X44_Y14_N14
\registre_decalage_inst|data_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[1]~feeder_combout\ = \registre_decalage_inst|data_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(0),
	combout => \registre_decalage_inst|data_buffer[1]~feeder_combout\);

-- Location: FF_X44_Y14_N15
\registre_decalage_inst|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_buffer[1]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(1));

-- Location: LCCOMB_X45_Y14_N0
\registre_decalage_inst|data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_out[1]~feeder_combout\ = \registre_decalage_inst|data_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(1),
	combout => \registre_decalage_inst|data_out[1]~feeder_combout\);

-- Location: FF_X45_Y14_N1
\registre_decalage_inst|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_out[1]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(1));

-- Location: FF_X44_Y14_N25
\registre_decalage_inst|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(1),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(2));

-- Location: LCCOMB_X45_Y14_N30
\registre_decalage_inst|data_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_out[2]~feeder_combout\ = \registre_decalage_inst|data_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(2),
	combout => \registre_decalage_inst|data_out[2]~feeder_combout\);

-- Location: FF_X45_Y14_N31
\registre_decalage_inst|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_out[2]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(2));

-- Location: LCCOMB_X44_Y14_N30
\registre_decalage_inst|data_buffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[3]~feeder_combout\ = \registre_decalage_inst|data_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(2),
	combout => \registre_decalage_inst|data_buffer[3]~feeder_combout\);

-- Location: FF_X44_Y14_N31
\registre_decalage_inst|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_buffer[3]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(3));

-- Location: FF_X45_Y14_N25
\registre_decalage_inst|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(3),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(3));

-- Location: FF_X44_Y14_N17
\registre_decalage_inst|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(3),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(4));

-- Location: FF_X45_Y14_N7
\registre_decalage_inst|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(4),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(4));

-- Location: LCCOMB_X44_Y14_N26
\registre_decalage_inst|data_buffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[5]~feeder_combout\ = \registre_decalage_inst|data_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(4),
	combout => \registre_decalage_inst|data_buffer[5]~feeder_combout\);

-- Location: FF_X44_Y14_N27
\registre_decalage_inst|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_buffer[5]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(5));

-- Location: FF_X45_Y14_N21
\registre_decalage_inst|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(5),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(5));

-- Location: FF_X44_Y14_N5
\registre_decalage_inst|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(5),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(6));

-- Location: FF_X45_Y14_N3
\registre_decalage_inst|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(6),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(6));

-- Location: FF_X45_Y14_N5
\registre_decalage_inst|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(6),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(7));

-- Location: FF_X45_Y14_N19
\registre_decalage_inst|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(7),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(7));

-- Location: FF_X45_Y14_N27
\registre_decalage_inst|data_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(7),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(8));

-- Location: FF_X45_Y14_N11
\registre_decalage_inst|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(8),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(8));

-- Location: FF_X45_Y14_N17
\registre_decalage_inst|data_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(8),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(9));

-- Location: LCCOMB_X45_Y14_N8
\registre_decalage_inst|data_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_out[9]~feeder_combout\ = \registre_decalage_inst|data_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(9),
	combout => \registre_decalage_inst|data_out[9]~feeder_combout\);

-- Location: FF_X45_Y14_N9
\registre_decalage_inst|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_out[9]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(9));

-- Location: LCCOMB_X45_Y14_N14
\registre_decalage_inst|data_buffer[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre_decalage_inst|data_buffer[10]~feeder_combout\ = \registre_decalage_inst|data_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registre_decalage_inst|data_buffer\(9),
	combout => \registre_decalage_inst|data_buffer[10]~feeder_combout\);

-- Location: FF_X45_Y14_N15
\registre_decalage_inst|data_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	d => \registre_decalage_inst|data_buffer[10]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(10));

-- Location: FF_X45_Y14_N29
\registre_decalage_inst|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(10),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(10));

-- Location: FF_X45_Y14_N23
\registre_decalage_inst|data_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(10),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \registre_decalage_inst|data_buffer[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_buffer\(11));

-- Location: FF_X45_Y14_N13
\registre_decalage_inst|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig_1MHz_inst|tmp~clkctrl_outclk\,
	asdata => \registre_decalage_inst|data_buffer\(11),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \chipselect_inst|cs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre_decalage_inst|data_out\(11));

-- Location: LCCOMB_X45_Y14_N24
\controlbutee_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|LessThan0~1_combout\ = (!\registre_decalage_inst|data_out\(3) & (((!\registre_decalage_inst|data_out\(1) & !\registre_decalage_inst|data_out\(0))) # (!\registre_decalage_inst|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|data_out\(2),
	datab => \registre_decalage_inst|data_out\(1),
	datac => \registre_decalage_inst|data_out\(3),
	datad => \registre_decalage_inst|data_out\(0),
	combout => \controlbutee_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y14_N18
\controlbutee_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|LessThan0~0_combout\ = ((!\registre_decalage_inst|data_out\(7)) # (!\registre_decalage_inst|data_out\(8))) # (!\registre_decalage_inst|data_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|data_out\(6),
	datab => \registre_decalage_inst|data_out\(8),
	datac => \registre_decalage_inst|data_out\(7),
	combout => \controlbutee_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y14_N6
\controlbutee_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|LessThan0~2_combout\ = (\controlbutee_inst|LessThan0~0_combout\) # ((!\registre_decalage_inst|data_out\(5) & ((\controlbutee_inst|LessThan0~1_combout\) # (!\registre_decalage_inst|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|data_out\(5),
	datab => \controlbutee_inst|LessThan0~1_combout\,
	datac => \registre_decalage_inst|data_out\(4),
	datad => \controlbutee_inst|LessThan0~0_combout\,
	combout => \controlbutee_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X45_Y14_N28
\controlbutee_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|LessThan0~3_combout\ = (\registre_decalage_inst|data_out\(11)) # ((\registre_decalage_inst|data_out\(10) & ((\registre_decalage_inst|data_out\(9)) # (!\controlbutee_inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|data_out\(11),
	datab => \registre_decalage_inst|data_out\(9),
	datac => \registre_decalage_inst|data_out\(10),
	datad => \controlbutee_inst|LessThan0~2_combout\,
	combout => \controlbutee_inst|LessThan0~3_combout\);

-- Location: IOIBUF_X27_Y0_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X40_Y10_N0
\GestPWM_inst|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[0]~32_combout\ = \GestPWM_inst|counter\(0) $ (VCC)
-- \GestPWM_inst|counter[0]~33\ = CARRY(\GestPWM_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(0),
	datad => VCC,
	combout => \GestPWM_inst|counter[0]~32_combout\,
	cout => \GestPWM_inst|counter[0]~33\);

-- Location: LCCOMB_X41_Y9_N2
\GestPWM_inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~8_combout\ = ((!\GestPWM_inst|counter\(5) & !\GestPWM_inst|counter\(4))) # (!\GestPWM_inst|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(5),
	datac => \GestPWM_inst|counter\(4),
	datad => \GestPWM_inst|counter\(10),
	combout => \GestPWM_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X41_Y9_N14
\GestPWM_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~7_combout\ = (\GestPWM_inst|counter\(6) & (\GestPWM_inst|counter\(8) & \GestPWM_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(6),
	datac => \GestPWM_inst|counter\(8),
	datad => \GestPWM_inst|counter\(7),
	combout => \GestPWM_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X41_Y9_N0
\GestPWM_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~9_combout\ = ((\GestPWM_inst|counter\(9) & (!\GestPWM_inst|LessThan0~8_combout\ & \GestPWM_inst|LessThan0~7_combout\))) # (!\GestPWM_inst|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(9),
	datab => \GestPWM_inst|LessThan0~8_combout\,
	datac => \GestPWM_inst|LessThan0~7_combout\,
	datad => \GestPWM_inst|LessThan0~6_combout\,
	combout => \GestPWM_inst|LessThan0~9_combout\);

-- Location: FF_X40_Y10_N1
\GestPWM_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[0]~32_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(0));

-- Location: LCCOMB_X40_Y10_N2
\GestPWM_inst|counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[1]~34_combout\ = (\GestPWM_inst|counter\(1) & (!\GestPWM_inst|counter[0]~33\)) # (!\GestPWM_inst|counter\(1) & ((\GestPWM_inst|counter[0]~33\) # (GND)))
-- \GestPWM_inst|counter[1]~35\ = CARRY((!\GestPWM_inst|counter[0]~33\) # (!\GestPWM_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(1),
	datad => VCC,
	cin => \GestPWM_inst|counter[0]~33\,
	combout => \GestPWM_inst|counter[1]~34_combout\,
	cout => \GestPWM_inst|counter[1]~35\);

-- Location: FF_X40_Y10_N3
\GestPWM_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[1]~34_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(1));

-- Location: LCCOMB_X40_Y10_N4
\GestPWM_inst|counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[2]~36_combout\ = (\GestPWM_inst|counter\(2) & (\GestPWM_inst|counter[1]~35\ $ (GND))) # (!\GestPWM_inst|counter\(2) & (!\GestPWM_inst|counter[1]~35\ & VCC))
-- \GestPWM_inst|counter[2]~37\ = CARRY((\GestPWM_inst|counter\(2) & !\GestPWM_inst|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(2),
	datad => VCC,
	cin => \GestPWM_inst|counter[1]~35\,
	combout => \GestPWM_inst|counter[2]~36_combout\,
	cout => \GestPWM_inst|counter[2]~37\);

-- Location: FF_X40_Y10_N5
\GestPWM_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[2]~36_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(2));

-- Location: LCCOMB_X40_Y10_N6
\GestPWM_inst|counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[3]~38_combout\ = (\GestPWM_inst|counter\(3) & (!\GestPWM_inst|counter[2]~37\)) # (!\GestPWM_inst|counter\(3) & ((\GestPWM_inst|counter[2]~37\) # (GND)))
-- \GestPWM_inst|counter[3]~39\ = CARRY((!\GestPWM_inst|counter[2]~37\) # (!\GestPWM_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(3),
	datad => VCC,
	cin => \GestPWM_inst|counter[2]~37\,
	combout => \GestPWM_inst|counter[3]~38_combout\,
	cout => \GestPWM_inst|counter[3]~39\);

-- Location: FF_X40_Y10_N7
\GestPWM_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[3]~38_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(3));

-- Location: LCCOMB_X40_Y10_N8
\GestPWM_inst|counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[4]~40_combout\ = (\GestPWM_inst|counter\(4) & (\GestPWM_inst|counter[3]~39\ $ (GND))) # (!\GestPWM_inst|counter\(4) & (!\GestPWM_inst|counter[3]~39\ & VCC))
-- \GestPWM_inst|counter[4]~41\ = CARRY((\GestPWM_inst|counter\(4) & !\GestPWM_inst|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(4),
	datad => VCC,
	cin => \GestPWM_inst|counter[3]~39\,
	combout => \GestPWM_inst|counter[4]~40_combout\,
	cout => \GestPWM_inst|counter[4]~41\);

-- Location: FF_X40_Y10_N9
\GestPWM_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[4]~40_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(4));

-- Location: LCCOMB_X40_Y10_N10
\GestPWM_inst|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[5]~42_combout\ = (\GestPWM_inst|counter\(5) & (!\GestPWM_inst|counter[4]~41\)) # (!\GestPWM_inst|counter\(5) & ((\GestPWM_inst|counter[4]~41\) # (GND)))
-- \GestPWM_inst|counter[5]~43\ = CARRY((!\GestPWM_inst|counter[4]~41\) # (!\GestPWM_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(5),
	datad => VCC,
	cin => \GestPWM_inst|counter[4]~41\,
	combout => \GestPWM_inst|counter[5]~42_combout\,
	cout => \GestPWM_inst|counter[5]~43\);

-- Location: FF_X40_Y10_N11
\GestPWM_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[5]~42_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(5));

-- Location: LCCOMB_X40_Y10_N12
\GestPWM_inst|counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[6]~44_combout\ = (\GestPWM_inst|counter\(6) & (\GestPWM_inst|counter[5]~43\ $ (GND))) # (!\GestPWM_inst|counter\(6) & (!\GestPWM_inst|counter[5]~43\ & VCC))
-- \GestPWM_inst|counter[6]~45\ = CARRY((\GestPWM_inst|counter\(6) & !\GestPWM_inst|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(6),
	datad => VCC,
	cin => \GestPWM_inst|counter[5]~43\,
	combout => \GestPWM_inst|counter[6]~44_combout\,
	cout => \GestPWM_inst|counter[6]~45\);

-- Location: FF_X40_Y10_N13
\GestPWM_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[6]~44_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(6));

-- Location: LCCOMB_X40_Y10_N14
\GestPWM_inst|counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[7]~46_combout\ = (\GestPWM_inst|counter\(7) & (!\GestPWM_inst|counter[6]~45\)) # (!\GestPWM_inst|counter\(7) & ((\GestPWM_inst|counter[6]~45\) # (GND)))
-- \GestPWM_inst|counter[7]~47\ = CARRY((!\GestPWM_inst|counter[6]~45\) # (!\GestPWM_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(7),
	datad => VCC,
	cin => \GestPWM_inst|counter[6]~45\,
	combout => \GestPWM_inst|counter[7]~46_combout\,
	cout => \GestPWM_inst|counter[7]~47\);

-- Location: FF_X40_Y10_N15
\GestPWM_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[7]~46_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(7));

-- Location: LCCOMB_X40_Y10_N16
\GestPWM_inst|counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[8]~48_combout\ = (\GestPWM_inst|counter\(8) & (\GestPWM_inst|counter[7]~47\ $ (GND))) # (!\GestPWM_inst|counter\(8) & (!\GestPWM_inst|counter[7]~47\ & VCC))
-- \GestPWM_inst|counter[8]~49\ = CARRY((\GestPWM_inst|counter\(8) & !\GestPWM_inst|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(8),
	datad => VCC,
	cin => \GestPWM_inst|counter[7]~47\,
	combout => \GestPWM_inst|counter[8]~48_combout\,
	cout => \GestPWM_inst|counter[8]~49\);

-- Location: FF_X40_Y10_N17
\GestPWM_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[8]~48_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(8));

-- Location: LCCOMB_X40_Y10_N18
\GestPWM_inst|counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[9]~50_combout\ = (\GestPWM_inst|counter\(9) & (!\GestPWM_inst|counter[8]~49\)) # (!\GestPWM_inst|counter\(9) & ((\GestPWM_inst|counter[8]~49\) # (GND)))
-- \GestPWM_inst|counter[9]~51\ = CARRY((!\GestPWM_inst|counter[8]~49\) # (!\GestPWM_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(9),
	datad => VCC,
	cin => \GestPWM_inst|counter[8]~49\,
	combout => \GestPWM_inst|counter[9]~50_combout\,
	cout => \GestPWM_inst|counter[9]~51\);

-- Location: FF_X40_Y10_N19
\GestPWM_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[9]~50_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(9));

-- Location: LCCOMB_X40_Y10_N20
\GestPWM_inst|counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[10]~52_combout\ = (\GestPWM_inst|counter\(10) & (\GestPWM_inst|counter[9]~51\ $ (GND))) # (!\GestPWM_inst|counter\(10) & (!\GestPWM_inst|counter[9]~51\ & VCC))
-- \GestPWM_inst|counter[10]~53\ = CARRY((\GestPWM_inst|counter\(10) & !\GestPWM_inst|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(10),
	datad => VCC,
	cin => \GestPWM_inst|counter[9]~51\,
	combout => \GestPWM_inst|counter[10]~52_combout\,
	cout => \GestPWM_inst|counter[10]~53\);

-- Location: FF_X40_Y10_N21
\GestPWM_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[10]~52_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(10));

-- Location: LCCOMB_X40_Y10_N22
\GestPWM_inst|counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[11]~54_combout\ = (\GestPWM_inst|counter\(11) & (!\GestPWM_inst|counter[10]~53\)) # (!\GestPWM_inst|counter\(11) & ((\GestPWM_inst|counter[10]~53\) # (GND)))
-- \GestPWM_inst|counter[11]~55\ = CARRY((!\GestPWM_inst|counter[10]~53\) # (!\GestPWM_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(11),
	datad => VCC,
	cin => \GestPWM_inst|counter[10]~53\,
	combout => \GestPWM_inst|counter[11]~54_combout\,
	cout => \GestPWM_inst|counter[11]~55\);

-- Location: FF_X40_Y10_N23
\GestPWM_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[11]~54_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(11));

-- Location: LCCOMB_X40_Y10_N24
\GestPWM_inst|counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[12]~56_combout\ = (\GestPWM_inst|counter\(12) & (\GestPWM_inst|counter[11]~55\ $ (GND))) # (!\GestPWM_inst|counter\(12) & (!\GestPWM_inst|counter[11]~55\ & VCC))
-- \GestPWM_inst|counter[12]~57\ = CARRY((\GestPWM_inst|counter\(12) & !\GestPWM_inst|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(12),
	datad => VCC,
	cin => \GestPWM_inst|counter[11]~55\,
	combout => \GestPWM_inst|counter[12]~56_combout\,
	cout => \GestPWM_inst|counter[12]~57\);

-- Location: FF_X40_Y10_N25
\GestPWM_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[12]~56_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(12));

-- Location: LCCOMB_X40_Y10_N26
\GestPWM_inst|counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[13]~58_combout\ = (\GestPWM_inst|counter\(13) & (!\GestPWM_inst|counter[12]~57\)) # (!\GestPWM_inst|counter\(13) & ((\GestPWM_inst|counter[12]~57\) # (GND)))
-- \GestPWM_inst|counter[13]~59\ = CARRY((!\GestPWM_inst|counter[12]~57\) # (!\GestPWM_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(13),
	datad => VCC,
	cin => \GestPWM_inst|counter[12]~57\,
	combout => \GestPWM_inst|counter[13]~58_combout\,
	cout => \GestPWM_inst|counter[13]~59\);

-- Location: FF_X40_Y10_N27
\GestPWM_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[13]~58_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(13));

-- Location: LCCOMB_X40_Y10_N28
\GestPWM_inst|counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[14]~60_combout\ = (\GestPWM_inst|counter\(14) & (\GestPWM_inst|counter[13]~59\ $ (GND))) # (!\GestPWM_inst|counter\(14) & (!\GestPWM_inst|counter[13]~59\ & VCC))
-- \GestPWM_inst|counter[14]~61\ = CARRY((\GestPWM_inst|counter\(14) & !\GestPWM_inst|counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(14),
	datad => VCC,
	cin => \GestPWM_inst|counter[13]~59\,
	combout => \GestPWM_inst|counter[14]~60_combout\,
	cout => \GestPWM_inst|counter[14]~61\);

-- Location: FF_X40_Y10_N29
\GestPWM_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[14]~60_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(14));

-- Location: LCCOMB_X40_Y10_N30
\GestPWM_inst|counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[15]~62_combout\ = (\GestPWM_inst|counter\(15) & (!\GestPWM_inst|counter[14]~61\)) # (!\GestPWM_inst|counter\(15) & ((\GestPWM_inst|counter[14]~61\) # (GND)))
-- \GestPWM_inst|counter[15]~63\ = CARRY((!\GestPWM_inst|counter[14]~61\) # (!\GestPWM_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(15),
	datad => VCC,
	cin => \GestPWM_inst|counter[14]~61\,
	combout => \GestPWM_inst|counter[15]~62_combout\,
	cout => \GestPWM_inst|counter[15]~63\);

-- Location: FF_X40_Y10_N31
\GestPWM_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[15]~62_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(15));

-- Location: LCCOMB_X40_Y9_N0
\GestPWM_inst|counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[16]~64_combout\ = (\GestPWM_inst|counter\(16) & (\GestPWM_inst|counter[15]~63\ $ (GND))) # (!\GestPWM_inst|counter\(16) & (!\GestPWM_inst|counter[15]~63\ & VCC))
-- \GestPWM_inst|counter[16]~65\ = CARRY((\GestPWM_inst|counter\(16) & !\GestPWM_inst|counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(16),
	datad => VCC,
	cin => \GestPWM_inst|counter[15]~63\,
	combout => \GestPWM_inst|counter[16]~64_combout\,
	cout => \GestPWM_inst|counter[16]~65\);

-- Location: FF_X40_Y9_N1
\GestPWM_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[16]~64_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(16));

-- Location: LCCOMB_X40_Y9_N2
\GestPWM_inst|counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[17]~66_combout\ = (\GestPWM_inst|counter\(17) & (!\GestPWM_inst|counter[16]~65\)) # (!\GestPWM_inst|counter\(17) & ((\GestPWM_inst|counter[16]~65\) # (GND)))
-- \GestPWM_inst|counter[17]~67\ = CARRY((!\GestPWM_inst|counter[16]~65\) # (!\GestPWM_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(17),
	datad => VCC,
	cin => \GestPWM_inst|counter[16]~65\,
	combout => \GestPWM_inst|counter[17]~66_combout\,
	cout => \GestPWM_inst|counter[17]~67\);

-- Location: FF_X40_Y9_N3
\GestPWM_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[17]~66_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(17));

-- Location: LCCOMB_X40_Y9_N4
\GestPWM_inst|counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[18]~68_combout\ = (\GestPWM_inst|counter\(18) & (\GestPWM_inst|counter[17]~67\ $ (GND))) # (!\GestPWM_inst|counter\(18) & (!\GestPWM_inst|counter[17]~67\ & VCC))
-- \GestPWM_inst|counter[18]~69\ = CARRY((\GestPWM_inst|counter\(18) & !\GestPWM_inst|counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(18),
	datad => VCC,
	cin => \GestPWM_inst|counter[17]~67\,
	combout => \GestPWM_inst|counter[18]~68_combout\,
	cout => \GestPWM_inst|counter[18]~69\);

-- Location: FF_X40_Y9_N5
\GestPWM_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[18]~68_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(18));

-- Location: LCCOMB_X40_Y9_N6
\GestPWM_inst|counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[19]~70_combout\ = (\GestPWM_inst|counter\(19) & (!\GestPWM_inst|counter[18]~69\)) # (!\GestPWM_inst|counter\(19) & ((\GestPWM_inst|counter[18]~69\) # (GND)))
-- \GestPWM_inst|counter[19]~71\ = CARRY((!\GestPWM_inst|counter[18]~69\) # (!\GestPWM_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(19),
	datad => VCC,
	cin => \GestPWM_inst|counter[18]~69\,
	combout => \GestPWM_inst|counter[19]~70_combout\,
	cout => \GestPWM_inst|counter[19]~71\);

-- Location: FF_X40_Y9_N7
\GestPWM_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[19]~70_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(19));

-- Location: LCCOMB_X40_Y9_N8
\GestPWM_inst|counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[20]~72_combout\ = (\GestPWM_inst|counter\(20) & (\GestPWM_inst|counter[19]~71\ $ (GND))) # (!\GestPWM_inst|counter\(20) & (!\GestPWM_inst|counter[19]~71\ & VCC))
-- \GestPWM_inst|counter[20]~73\ = CARRY((\GestPWM_inst|counter\(20) & !\GestPWM_inst|counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(20),
	datad => VCC,
	cin => \GestPWM_inst|counter[19]~71\,
	combout => \GestPWM_inst|counter[20]~72_combout\,
	cout => \GestPWM_inst|counter[20]~73\);

-- Location: FF_X40_Y9_N9
\GestPWM_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[20]~72_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(20));

-- Location: LCCOMB_X40_Y9_N10
\GestPWM_inst|counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[21]~74_combout\ = (\GestPWM_inst|counter\(21) & (!\GestPWM_inst|counter[20]~73\)) # (!\GestPWM_inst|counter\(21) & ((\GestPWM_inst|counter[20]~73\) # (GND)))
-- \GestPWM_inst|counter[21]~75\ = CARRY((!\GestPWM_inst|counter[20]~73\) # (!\GestPWM_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(21),
	datad => VCC,
	cin => \GestPWM_inst|counter[20]~73\,
	combout => \GestPWM_inst|counter[21]~74_combout\,
	cout => \GestPWM_inst|counter[21]~75\);

-- Location: FF_X40_Y9_N11
\GestPWM_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[21]~74_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(21));

-- Location: LCCOMB_X40_Y9_N12
\GestPWM_inst|counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[22]~76_combout\ = (\GestPWM_inst|counter\(22) & (\GestPWM_inst|counter[21]~75\ $ (GND))) # (!\GestPWM_inst|counter\(22) & (!\GestPWM_inst|counter[21]~75\ & VCC))
-- \GestPWM_inst|counter[22]~77\ = CARRY((\GestPWM_inst|counter\(22) & !\GestPWM_inst|counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(22),
	datad => VCC,
	cin => \GestPWM_inst|counter[21]~75\,
	combout => \GestPWM_inst|counter[22]~76_combout\,
	cout => \GestPWM_inst|counter[22]~77\);

-- Location: FF_X40_Y9_N13
\GestPWM_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[22]~76_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(22));

-- Location: LCCOMB_X40_Y9_N14
\GestPWM_inst|counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[23]~78_combout\ = (\GestPWM_inst|counter\(23) & (!\GestPWM_inst|counter[22]~77\)) # (!\GestPWM_inst|counter\(23) & ((\GestPWM_inst|counter[22]~77\) # (GND)))
-- \GestPWM_inst|counter[23]~79\ = CARRY((!\GestPWM_inst|counter[22]~77\) # (!\GestPWM_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(23),
	datad => VCC,
	cin => \GestPWM_inst|counter[22]~77\,
	combout => \GestPWM_inst|counter[23]~78_combout\,
	cout => \GestPWM_inst|counter[23]~79\);

-- Location: FF_X40_Y9_N15
\GestPWM_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[23]~78_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(23));

-- Location: LCCOMB_X40_Y9_N16
\GestPWM_inst|counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[24]~80_combout\ = (\GestPWM_inst|counter\(24) & (\GestPWM_inst|counter[23]~79\ $ (GND))) # (!\GestPWM_inst|counter\(24) & (!\GestPWM_inst|counter[23]~79\ & VCC))
-- \GestPWM_inst|counter[24]~81\ = CARRY((\GestPWM_inst|counter\(24) & !\GestPWM_inst|counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(24),
	datad => VCC,
	cin => \GestPWM_inst|counter[23]~79\,
	combout => \GestPWM_inst|counter[24]~80_combout\,
	cout => \GestPWM_inst|counter[24]~81\);

-- Location: FF_X40_Y9_N17
\GestPWM_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[24]~80_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(24));

-- Location: LCCOMB_X40_Y9_N18
\GestPWM_inst|counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[25]~82_combout\ = (\GestPWM_inst|counter\(25) & (!\GestPWM_inst|counter[24]~81\)) # (!\GestPWM_inst|counter\(25) & ((\GestPWM_inst|counter[24]~81\) # (GND)))
-- \GestPWM_inst|counter[25]~83\ = CARRY((!\GestPWM_inst|counter[24]~81\) # (!\GestPWM_inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(25),
	datad => VCC,
	cin => \GestPWM_inst|counter[24]~81\,
	combout => \GestPWM_inst|counter[25]~82_combout\,
	cout => \GestPWM_inst|counter[25]~83\);

-- Location: FF_X40_Y9_N19
\GestPWM_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[25]~82_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(25));

-- Location: LCCOMB_X40_Y9_N20
\GestPWM_inst|counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[26]~84_combout\ = (\GestPWM_inst|counter\(26) & (\GestPWM_inst|counter[25]~83\ $ (GND))) # (!\GestPWM_inst|counter\(26) & (!\GestPWM_inst|counter[25]~83\ & VCC))
-- \GestPWM_inst|counter[26]~85\ = CARRY((\GestPWM_inst|counter\(26) & !\GestPWM_inst|counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(26),
	datad => VCC,
	cin => \GestPWM_inst|counter[25]~83\,
	combout => \GestPWM_inst|counter[26]~84_combout\,
	cout => \GestPWM_inst|counter[26]~85\);

-- Location: FF_X40_Y9_N21
\GestPWM_inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[26]~84_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(26));

-- Location: LCCOMB_X40_Y9_N22
\GestPWM_inst|counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[27]~86_combout\ = (\GestPWM_inst|counter\(27) & (!\GestPWM_inst|counter[26]~85\)) # (!\GestPWM_inst|counter\(27) & ((\GestPWM_inst|counter[26]~85\) # (GND)))
-- \GestPWM_inst|counter[27]~87\ = CARRY((!\GestPWM_inst|counter[26]~85\) # (!\GestPWM_inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(27),
	datad => VCC,
	cin => \GestPWM_inst|counter[26]~85\,
	combout => \GestPWM_inst|counter[27]~86_combout\,
	cout => \GestPWM_inst|counter[27]~87\);

-- Location: FF_X40_Y9_N23
\GestPWM_inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[27]~86_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(27));

-- Location: LCCOMB_X40_Y9_N24
\GestPWM_inst|counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[28]~88_combout\ = (\GestPWM_inst|counter\(28) & (\GestPWM_inst|counter[27]~87\ $ (GND))) # (!\GestPWM_inst|counter\(28) & (!\GestPWM_inst|counter[27]~87\ & VCC))
-- \GestPWM_inst|counter[28]~89\ = CARRY((\GestPWM_inst|counter\(28) & !\GestPWM_inst|counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(28),
	datad => VCC,
	cin => \GestPWM_inst|counter[27]~87\,
	combout => \GestPWM_inst|counter[28]~88_combout\,
	cout => \GestPWM_inst|counter[28]~89\);

-- Location: FF_X40_Y9_N25
\GestPWM_inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[28]~88_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(28));

-- Location: LCCOMB_X40_Y9_N26
\GestPWM_inst|counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[29]~90_combout\ = (\GestPWM_inst|counter\(29) & (!\GestPWM_inst|counter[28]~89\)) # (!\GestPWM_inst|counter\(29) & ((\GestPWM_inst|counter[28]~89\) # (GND)))
-- \GestPWM_inst|counter[29]~91\ = CARRY((!\GestPWM_inst|counter[28]~89\) # (!\GestPWM_inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(29),
	datad => VCC,
	cin => \GestPWM_inst|counter[28]~89\,
	combout => \GestPWM_inst|counter[29]~90_combout\,
	cout => \GestPWM_inst|counter[29]~91\);

-- Location: FF_X40_Y9_N27
\GestPWM_inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[29]~90_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(29));

-- Location: LCCOMB_X40_Y9_N28
\GestPWM_inst|counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[30]~92_combout\ = (\GestPWM_inst|counter\(30) & (\GestPWM_inst|counter[29]~91\ $ (GND))) # (!\GestPWM_inst|counter\(30) & (!\GestPWM_inst|counter[29]~91\ & VCC))
-- \GestPWM_inst|counter[30]~93\ = CARRY((\GestPWM_inst|counter\(30) & !\GestPWM_inst|counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(30),
	datad => VCC,
	cin => \GestPWM_inst|counter[29]~91\,
	combout => \GestPWM_inst|counter[30]~92_combout\,
	cout => \GestPWM_inst|counter[30]~93\);

-- Location: FF_X40_Y9_N29
\GestPWM_inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[30]~92_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(30));

-- Location: LCCOMB_X40_Y9_N30
\GestPWM_inst|counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|counter[31]~94_combout\ = \GestPWM_inst|counter\(31) $ (\GestPWM_inst|counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(31),
	cin => \GestPWM_inst|counter[30]~93\,
	combout => \GestPWM_inst|counter[31]~94_combout\);

-- Location: FF_X40_Y9_N31
\GestPWM_inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|counter[31]~94_combout\,
	clrn => \raz_n~input_o\,
	sclr => \GestPWM_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|counter\(31));

-- Location: LCCOMB_X41_Y9_N26
\GestPWM_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~5_combout\ = (!\GestPWM_inst|counter\(28) & (!\GestPWM_inst|counter\(27) & (!\GestPWM_inst|counter\(29) & !\GestPWM_inst|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(28),
	datab => \GestPWM_inst|counter\(27),
	datac => \GestPWM_inst|counter\(29),
	datad => \GestPWM_inst|counter\(30),
	combout => \GestPWM_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X41_Y9_N22
\GestPWM_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~1_combout\ = (!\GestPWM_inst|counter\(17) & (!\GestPWM_inst|counter\(15) & (!\GestPWM_inst|counter\(18) & !\GestPWM_inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(17),
	datab => \GestPWM_inst|counter\(15),
	datac => \GestPWM_inst|counter\(18),
	datad => \GestPWM_inst|counter\(16),
	combout => \GestPWM_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y9_N18
\GestPWM_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~3_combout\ = (!\GestPWM_inst|counter\(23) & (!\GestPWM_inst|counter\(25) & (!\GestPWM_inst|counter\(24) & !\GestPWM_inst|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(23),
	datab => \GestPWM_inst|counter\(25),
	datac => \GestPWM_inst|counter\(24),
	datad => \GestPWM_inst|counter\(26),
	combout => \GestPWM_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y9_N8
\GestPWM_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~2_combout\ = (!\GestPWM_inst|counter\(20) & (!\GestPWM_inst|counter\(19) & (!\GestPWM_inst|counter\(22) & !\GestPWM_inst|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(20),
	datab => \GestPWM_inst|counter\(19),
	datac => \GestPWM_inst|counter\(22),
	datad => \GestPWM_inst|counter\(21),
	combout => \GestPWM_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X41_Y9_N20
\GestPWM_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~0_combout\ = (!\GestPWM_inst|counter\(12) & (!\GestPWM_inst|counter\(11) & (!\GestPWM_inst|counter\(13) & !\GestPWM_inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(12),
	datab => \GestPWM_inst|counter\(11),
	datac => \GestPWM_inst|counter\(13),
	datad => \GestPWM_inst|counter\(14),
	combout => \GestPWM_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y9_N12
\GestPWM_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~4_combout\ = (\GestPWM_inst|LessThan0~1_combout\ & (\GestPWM_inst|LessThan0~3_combout\ & (\GestPWM_inst|LessThan0~2_combout\ & \GestPWM_inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|LessThan0~1_combout\,
	datab => \GestPWM_inst|LessThan0~3_combout\,
	datac => \GestPWM_inst|LessThan0~2_combout\,
	datad => \GestPWM_inst|LessThan0~0_combout\,
	combout => \GestPWM_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X41_Y9_N24
\GestPWM_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan0~6_combout\ = (!\GestPWM_inst|counter\(31) & (\GestPWM_inst|LessThan0~5_combout\ & \GestPWM_inst|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GestPWM_inst|counter\(31),
	datac => \GestPWM_inst|LessThan0~5_combout\,
	datad => \GestPWM_inst|LessThan0~4_combout\,
	combout => \GestPWM_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X41_Y10_N12
\GestPWM_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan1~0_combout\ = (!\GestPWM_inst|counter\(5) & (((!\GestPWM_inst|counter\(3)) # (!\GestPWM_inst|counter\(2))) # (!\GestPWM_inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|counter\(4),
	datab => \GestPWM_inst|counter\(2),
	datac => \GestPWM_inst|counter\(3),
	datad => \GestPWM_inst|counter\(5),
	combout => \GestPWM_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X41_Y9_N28
\GestPWM_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|LessThan1~1_combout\ = ((!\GestPWM_inst|counter\(9) & ((\GestPWM_inst|LessThan1~0_combout\) # (!\GestPWM_inst|LessThan0~7_combout\)))) # (!\GestPWM_inst|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GestPWM_inst|LessThan1~0_combout\,
	datab => \GestPWM_inst|counter\(10),
	datac => \GestPWM_inst|LessThan0~7_combout\,
	datad => \GestPWM_inst|counter\(9),
	combout => \GestPWM_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X41_Y9_N16
\GestPWM_inst|PWM_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GestPWM_inst|PWM_n~0_combout\ = (\enable~input_o\ & (\GestPWM_inst|LessThan0~6_combout\ & \GestPWM_inst|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \GestPWM_inst|LessThan0~6_combout\,
	datad => \GestPWM_inst|LessThan1~1_combout\,
	combout => \GestPWM_inst|PWM_n~0_combout\);

-- Location: FF_X41_Y9_N17
\GestPWM_inst|PWM_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \GestPWM_inst|PWM_n~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GestPWM_inst|PWM_n~q\);

-- Location: LCCOMB_X45_Y14_N2
\controlbutee_inst|fin_course_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|fin_course_d~0_combout\ = (\registre_decalage_inst|data_out\(6)) # ((\registre_decalage_inst|data_out\(3) & ((\registre_decalage_inst|data_out\(2)) # (\registre_decalage_inst|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|data_out\(2),
	datab => \registre_decalage_inst|data_out\(3),
	datac => \registre_decalage_inst|data_out\(6),
	datad => \registre_decalage_inst|data_out\(1),
	combout => \controlbutee_inst|fin_course_d~0_combout\);

-- Location: LCCOMB_X45_Y14_N20
\controlbutee_inst|fin_course_d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|fin_course_d~1_combout\ = (\registre_decalage_inst|data_out\(5)) # (\registre_decalage_inst|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registre_decalage_inst|data_out\(5),
	datad => \registre_decalage_inst|data_out\(4),
	combout => \controlbutee_inst|fin_course_d~1_combout\);

-- Location: LCCOMB_X45_Y14_N10
\controlbutee_inst|fin_course_d~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|fin_course_d~2_combout\ = (\registre_decalage_inst|data_out\(8)) # ((\registre_decalage_inst|data_out\(7) & ((\controlbutee_inst|fin_course_d~0_combout\) # (\controlbutee_inst|fin_course_d~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registre_decalage_inst|data_out\(7),
	datab => \controlbutee_inst|fin_course_d~0_combout\,
	datac => \registre_decalage_inst|data_out\(8),
	datad => \controlbutee_inst|fin_course_d~1_combout\,
	combout => \controlbutee_inst|fin_course_d~2_combout\);

-- Location: LCCOMB_X45_Y14_N12
\controlbutee_inst|fin_course_d~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|fin_course_d~3_combout\ = (\registre_decalage_inst|data_out\(11) & ((\registre_decalage_inst|data_out\(10)) # ((\controlbutee_inst|fin_course_d~2_combout\ & \registre_decalage_inst|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlbutee_inst|fin_course_d~2_combout\,
	datab => \registre_decalage_inst|data_out\(9),
	datac => \registre_decalage_inst|data_out\(11),
	datad => \registre_decalage_inst|data_out\(10),
	combout => \controlbutee_inst|fin_course_d~3_combout\);

-- Location: LCCOMB_X41_Y9_N30
\controlbutee_inst|out_pwm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlbutee_inst|out_pwm~0_combout\ = (\controlbutee_inst|LessThan0~3_combout\ & (\GestPWM_inst|PWM_n~q\ & (!\controlbutee_inst|fin_course_d~3_combout\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlbutee_inst|LessThan0~3_combout\,
	datab => \GestPWM_inst|PWM_n~q\,
	datac => \controlbutee_inst|fin_course_d~3_combout\,
	datad => \enable~input_o\,
	combout => \controlbutee_inst|out_pwm~0_combout\);

-- Location: IOIBUF_X53_Y17_N8
\sens~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sens,
	o => \sens~input_o\);

ww_clk_1M <= \clk_1M~output_o\;

ww_cs <= \cs~output_o\;

ww_start_conv <= \start_conv~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_out_pwm <= \out_pwm~output_o\;

ww_out_sens <= \out_sens~output_o\;

ww_fin_course_g <= \fin_course_g~output_o\;

ww_fin_course_d <= \fin_course_d~output_o\;
END structure;


