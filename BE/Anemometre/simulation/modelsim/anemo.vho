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

-- DATE "12/01/2024 17:46:41"

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
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	gestion_anemo IS
    PORT (
	raz_n : IN std_logic;
	clk_50M : IN std_logic;
	continu : IN std_logic;
	start_stop : IN std_logic;
	in_freq_anemo : IN std_logic;
	data_valid : BUFFER std_logic;
	S_1Hz : BUFFER std_logic;
	data_anemometre : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END gestion_anemo;

-- Design Ports Information
-- data_valid	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- S_1Hz	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[1]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[2]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_anemometre[7]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- continu	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start_stop	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- raz_n	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_freq_anemo	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gestion_anemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_raz_n : std_logic;
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_continu : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_in_freq_anemo : std_logic;
SIGNAL ww_data_valid : std_logic;
SIGNAL ww_S_1Hz : std_logic;
SIGNAL ww_data_anemometre : std_logic_vector(7 DOWNTO 0);
SIGNAL \divseur_1M_inst|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_valid~output_o\ : std_logic;
SIGNAL \S_1Hz~output_o\ : std_logic;
SIGNAL \data_anemometre[0]~output_o\ : std_logic;
SIGNAL \data_anemometre[1]~output_o\ : std_logic;
SIGNAL \data_anemometre[2]~output_o\ : std_logic;
SIGNAL \data_anemometre[3]~output_o\ : std_logic;
SIGNAL \data_anemometre[4]~output_o\ : std_logic;
SIGNAL \data_anemometre[5]~output_o\ : std_logic;
SIGNAL \data_anemometre[6]~output_o\ : std_logic;
SIGNAL \data_anemometre[7]~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~0_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~1\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~2_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~3\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~4_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~5\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~6_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~7\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~8_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~9\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~10_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~11\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~12_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~11_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~13\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~14_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~15\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~16_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~17\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~18_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~19\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~20_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~21\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~22_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~10_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~23\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~24_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~9_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~25\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~26_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~8_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~27\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~28_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~7_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~29\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~30_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~31\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~32_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~6_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~33\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~34_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~35\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~36_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~5_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~37\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~38_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~4_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~39\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~40_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~3_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~41\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~42_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~2_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~43\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~44_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~1_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~45\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~46_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~47\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~48_combout\ : std_logic;
SIGNAL \divseur_1M_inst|cnt~0_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~49\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~50_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~51\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~52_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~53\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~54_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~55\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~56_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~57\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~58_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~59\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~60_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~61\ : std_logic;
SIGNAL \divseur_1M_inst|Add0~62_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~0_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~1_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~3_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~2_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~4_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~5_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~6_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~7_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~8_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~9_combout\ : std_logic;
SIGNAL \divseur_1M_inst|Equal0~10_combout\ : std_logic;
SIGNAL \divseur_1M_inst|temp~0_combout\ : std_logic;
SIGNAL \divseur_1M_inst|temp~feeder_combout\ : std_logic;
SIGNAL \divseur_1M_inst|temp~q\ : std_logic;
SIGNAL \divseur_1M_inst|temp~clkctrl_outclk\ : std_logic;
SIGNAL \continu~input_o\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \mae_inst|data_valid~0_combout\ : std_logic;
SIGNAL \mae_inst|data_valid~feeder_combout\ : std_logic;
SIGNAL \raz_n~input_o\ : std_logic;
SIGNAL \mae_inst|data_valid~q\ : std_logic;
SIGNAL \in_freq_anemo~input_o\ : std_logic;
SIGNAL \compteur_inst|compteur2[0]~8_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[0]~9\ : std_logic;
SIGNAL \compteur_inst|compteur2[1]~10_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[1]~11\ : std_logic;
SIGNAL \compteur_inst|compteur2[2]~12_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[2]~13\ : std_logic;
SIGNAL \compteur_inst|compteur2[3]~14_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[3]~15\ : std_logic;
SIGNAL \compteur_inst|compteur2[4]~16_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[4]~17\ : std_logic;
SIGNAL \compteur_inst|compteur2[5]~18_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[5]~19\ : std_logic;
SIGNAL \compteur_inst|compteur2[6]~20_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2[6]~21\ : std_logic;
SIGNAL \compteur_inst|compteur2[7]~22_combout\ : std_logic;
SIGNAL \compteur_inst|Equal0~1_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[0]~32_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[23]~79\ : std_logic;
SIGNAL \compteur_inst|compteur1[24]~80_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[24]~81\ : std_logic;
SIGNAL \compteur_inst|compteur1[25]~82_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[25]~83\ : std_logic;
SIGNAL \compteur_inst|compteur1[26]~84_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[26]~85\ : std_logic;
SIGNAL \compteur_inst|compteur1[27]~88_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[27]~89\ : std_logic;
SIGNAL \compteur_inst|compteur1[28]~90_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[28]~91\ : std_logic;
SIGNAL \compteur_inst|compteur1[29]~92_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[29]~93\ : std_logic;
SIGNAL \compteur_inst|compteur1[30]~94_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[30]~95\ : std_logic;
SIGNAL \compteur_inst|compteur1[31]~96_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \compteur_inst|Equal0~0_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1~86_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1~87_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[0]~33\ : std_logic;
SIGNAL \compteur_inst|compteur1[1]~34_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[1]~35\ : std_logic;
SIGNAL \compteur_inst|compteur1[2]~36_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[2]~37\ : std_logic;
SIGNAL \compteur_inst|compteur1[3]~38_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[3]~39\ : std_logic;
SIGNAL \compteur_inst|compteur1[4]~40_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[4]~41\ : std_logic;
SIGNAL \compteur_inst|compteur1[5]~42_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[5]~43\ : std_logic;
SIGNAL \compteur_inst|compteur1[6]~44_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[6]~45\ : std_logic;
SIGNAL \compteur_inst|compteur1[7]~46_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[7]~47\ : std_logic;
SIGNAL \compteur_inst|compteur1[8]~48_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[8]~49\ : std_logic;
SIGNAL \compteur_inst|compteur1[9]~50_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[9]~51\ : std_logic;
SIGNAL \compteur_inst|compteur1[10]~52_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[10]~53\ : std_logic;
SIGNAL \compteur_inst|compteur1[11]~54_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[11]~55\ : std_logic;
SIGNAL \compteur_inst|compteur1[12]~56_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[12]~57\ : std_logic;
SIGNAL \compteur_inst|compteur1[13]~58_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[13]~59\ : std_logic;
SIGNAL \compteur_inst|compteur1[14]~60_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[14]~61\ : std_logic;
SIGNAL \compteur_inst|compteur1[15]~62_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[15]~63\ : std_logic;
SIGNAL \compteur_inst|compteur1[16]~64_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[16]~65\ : std_logic;
SIGNAL \compteur_inst|compteur1[17]~66_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[17]~67\ : std_logic;
SIGNAL \compteur_inst|compteur1[18]~68_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[18]~69\ : std_logic;
SIGNAL \compteur_inst|compteur1[19]~70_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[19]~71\ : std_logic;
SIGNAL \compteur_inst|compteur1[20]~72_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[20]~73\ : std_logic;
SIGNAL \compteur_inst|compteur1[21]~74_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[21]~75\ : std_logic;
SIGNAL \compteur_inst|compteur1[22]~76_combout\ : std_logic;
SIGNAL \compteur_inst|compteur1[22]~77\ : std_logic;
SIGNAL \compteur_inst|compteur1[23]~78_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \compteur_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \compteur_inst|stop~0_combout\ : std_logic;
SIGNAL \compteur_inst|stop~1_combout\ : std_logic;
SIGNAL \compteur_inst|stop~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|stop~q\ : std_logic;
SIGNAL \compteur_inst|frq[0]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[0]~0_combout\ : std_logic;
SIGNAL \compteur_inst|frq[1]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[1]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[2]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[2]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[3]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[3]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[4]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[4]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[5]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[5]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[6]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[6]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|frq[7]~feeder_combout\ : std_logic;
SIGNAL \mae_inst|data_anemometre[7]~feeder_combout\ : std_logic;
SIGNAL \compteur_inst|compteur2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \compteur_inst|compteur1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mae_inst|data_anemometre\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \compteur_inst|frq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \divseur_1M_inst|cnt\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_raz_n <= raz_n;
ww_clk_50M <= clk_50M;
ww_continu <= continu;
ww_start_stop <= start_stop;
ww_in_freq_anemo <= in_freq_anemo;
data_valid <= ww_data_valid;
S_1Hz <= ww_S_1Hz;
data_anemometre <= ww_data_anemometre;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divseur_1M_inst|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divseur_1M_inst|temp~q\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N2
\data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_valid~q\,
	devoe => ww_devoe,
	o => \data_valid~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\S_1Hz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divseur_1M_inst|temp~q\,
	devoe => ww_devoe,
	o => \S_1Hz~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_anemometre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(0),
	devoe => ww_devoe,
	o => \data_anemometre[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_anemometre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(1),
	devoe => ww_devoe,
	o => \data_anemometre[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_anemometre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(2),
	devoe => ww_devoe,
	o => \data_anemometre[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_anemometre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(3),
	devoe => ww_devoe,
	o => \data_anemometre[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_anemometre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(4),
	devoe => ww_devoe,
	o => \data_anemometre[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_anemometre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(5),
	devoe => ww_devoe,
	o => \data_anemometre[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_anemometre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(6),
	devoe => ww_devoe,
	o => \data_anemometre[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_anemometre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mae_inst|data_anemometre\(7),
	devoe => ww_devoe,
	o => \data_anemometre[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G18
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: FF_X19_Y19_N29
\divseur_1M_inst|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(30));

-- Location: LCCOMB_X19_Y20_N0
\divseur_1M_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~0_combout\ = \divseur_1M_inst|cnt\(0) $ (VCC)
-- \divseur_1M_inst|Add0~1\ = CARRY(\divseur_1M_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(0),
	datad => VCC,
	combout => \divseur_1M_inst|Add0~0_combout\,
	cout => \divseur_1M_inst|Add0~1\);

-- Location: FF_X19_Y20_N1
\divseur_1M_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(0));

-- Location: LCCOMB_X19_Y20_N2
\divseur_1M_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~2_combout\ = (\divseur_1M_inst|cnt\(1) & (!\divseur_1M_inst|Add0~1\)) # (!\divseur_1M_inst|cnt\(1) & ((\divseur_1M_inst|Add0~1\) # (GND)))
-- \divseur_1M_inst|Add0~3\ = CARRY((!\divseur_1M_inst|Add0~1\) # (!\divseur_1M_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(1),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~1\,
	combout => \divseur_1M_inst|Add0~2_combout\,
	cout => \divseur_1M_inst|Add0~3\);

-- Location: FF_X19_Y20_N3
\divseur_1M_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(1));

-- Location: LCCOMB_X19_Y20_N4
\divseur_1M_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~4_combout\ = (\divseur_1M_inst|cnt\(2) & (\divseur_1M_inst|Add0~3\ $ (GND))) # (!\divseur_1M_inst|cnt\(2) & (!\divseur_1M_inst|Add0~3\ & VCC))
-- \divseur_1M_inst|Add0~5\ = CARRY((\divseur_1M_inst|cnt\(2) & !\divseur_1M_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(2),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~3\,
	combout => \divseur_1M_inst|Add0~4_combout\,
	cout => \divseur_1M_inst|Add0~5\);

-- Location: FF_X19_Y20_N5
\divseur_1M_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(2));

-- Location: LCCOMB_X19_Y20_N6
\divseur_1M_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~6_combout\ = (\divseur_1M_inst|cnt\(3) & (!\divseur_1M_inst|Add0~5\)) # (!\divseur_1M_inst|cnt\(3) & ((\divseur_1M_inst|Add0~5\) # (GND)))
-- \divseur_1M_inst|Add0~7\ = CARRY((!\divseur_1M_inst|Add0~5\) # (!\divseur_1M_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(3),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~5\,
	combout => \divseur_1M_inst|Add0~6_combout\,
	cout => \divseur_1M_inst|Add0~7\);

-- Location: FF_X19_Y20_N7
\divseur_1M_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(3));

-- Location: LCCOMB_X19_Y20_N8
\divseur_1M_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~8_combout\ = (\divseur_1M_inst|cnt\(4) & (\divseur_1M_inst|Add0~7\ $ (GND))) # (!\divseur_1M_inst|cnt\(4) & (!\divseur_1M_inst|Add0~7\ & VCC))
-- \divseur_1M_inst|Add0~9\ = CARRY((\divseur_1M_inst|cnt\(4) & !\divseur_1M_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(4),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~7\,
	combout => \divseur_1M_inst|Add0~8_combout\,
	cout => \divseur_1M_inst|Add0~9\);

-- Location: FF_X19_Y20_N9
\divseur_1M_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(4));

-- Location: LCCOMB_X19_Y20_N10
\divseur_1M_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~10_combout\ = (\divseur_1M_inst|cnt\(5) & (!\divseur_1M_inst|Add0~9\)) # (!\divseur_1M_inst|cnt\(5) & ((\divseur_1M_inst|Add0~9\) # (GND)))
-- \divseur_1M_inst|Add0~11\ = CARRY((!\divseur_1M_inst|Add0~9\) # (!\divseur_1M_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(5),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~9\,
	combout => \divseur_1M_inst|Add0~10_combout\,
	cout => \divseur_1M_inst|Add0~11\);

-- Location: FF_X19_Y20_N11
\divseur_1M_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(5));

-- Location: LCCOMB_X19_Y20_N12
\divseur_1M_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~12_combout\ = (\divseur_1M_inst|cnt\(6) & (\divseur_1M_inst|Add0~11\ $ (GND))) # (!\divseur_1M_inst|cnt\(6) & (!\divseur_1M_inst|Add0~11\ & VCC))
-- \divseur_1M_inst|Add0~13\ = CARRY((\divseur_1M_inst|cnt\(6) & !\divseur_1M_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(6),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~11\,
	combout => \divseur_1M_inst|Add0~12_combout\,
	cout => \divseur_1M_inst|Add0~13\);

-- Location: LCCOMB_X20_Y20_N20
\divseur_1M_inst|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~11_combout\ = (!\divseur_1M_inst|Equal0~10_combout\ & \divseur_1M_inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Equal0~10_combout\,
	datad => \divseur_1M_inst|Add0~12_combout\,
	combout => \divseur_1M_inst|cnt~11_combout\);

-- Location: FF_X20_Y20_N21
\divseur_1M_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(6));

-- Location: LCCOMB_X19_Y20_N14
\divseur_1M_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~14_combout\ = (\divseur_1M_inst|cnt\(7) & (!\divseur_1M_inst|Add0~13\)) # (!\divseur_1M_inst|cnt\(7) & ((\divseur_1M_inst|Add0~13\) # (GND)))
-- \divseur_1M_inst|Add0~15\ = CARRY((!\divseur_1M_inst|Add0~13\) # (!\divseur_1M_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(7),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~13\,
	combout => \divseur_1M_inst|Add0~14_combout\,
	cout => \divseur_1M_inst|Add0~15\);

-- Location: FF_X19_Y20_N15
\divseur_1M_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(7));

-- Location: LCCOMB_X19_Y20_N16
\divseur_1M_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~16_combout\ = (\divseur_1M_inst|cnt\(8) & (\divseur_1M_inst|Add0~15\ $ (GND))) # (!\divseur_1M_inst|cnt\(8) & (!\divseur_1M_inst|Add0~15\ & VCC))
-- \divseur_1M_inst|Add0~17\ = CARRY((\divseur_1M_inst|cnt\(8) & !\divseur_1M_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(8),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~15\,
	combout => \divseur_1M_inst|Add0~16_combout\,
	cout => \divseur_1M_inst|Add0~17\);

-- Location: FF_X19_Y20_N17
\divseur_1M_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(8));

-- Location: LCCOMB_X19_Y20_N18
\divseur_1M_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~18_combout\ = (\divseur_1M_inst|cnt\(9) & (!\divseur_1M_inst|Add0~17\)) # (!\divseur_1M_inst|cnt\(9) & ((\divseur_1M_inst|Add0~17\) # (GND)))
-- \divseur_1M_inst|Add0~19\ = CARRY((!\divseur_1M_inst|Add0~17\) # (!\divseur_1M_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(9),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~17\,
	combout => \divseur_1M_inst|Add0~18_combout\,
	cout => \divseur_1M_inst|Add0~19\);

-- Location: FF_X19_Y20_N19
\divseur_1M_inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(9));

-- Location: LCCOMB_X19_Y20_N20
\divseur_1M_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~20_combout\ = (\divseur_1M_inst|cnt\(10) & (\divseur_1M_inst|Add0~19\ $ (GND))) # (!\divseur_1M_inst|cnt\(10) & (!\divseur_1M_inst|Add0~19\ & VCC))
-- \divseur_1M_inst|Add0~21\ = CARRY((\divseur_1M_inst|cnt\(10) & !\divseur_1M_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(10),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~19\,
	combout => \divseur_1M_inst|Add0~20_combout\,
	cout => \divseur_1M_inst|Add0~21\);

-- Location: FF_X19_Y20_N21
\divseur_1M_inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(10));

-- Location: LCCOMB_X19_Y20_N22
\divseur_1M_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~22_combout\ = (\divseur_1M_inst|cnt\(11) & (!\divseur_1M_inst|Add0~21\)) # (!\divseur_1M_inst|cnt\(11) & ((\divseur_1M_inst|Add0~21\) # (GND)))
-- \divseur_1M_inst|Add0~23\ = CARRY((!\divseur_1M_inst|Add0~21\) # (!\divseur_1M_inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(11),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~21\,
	combout => \divseur_1M_inst|Add0~22_combout\,
	cout => \divseur_1M_inst|Add0~23\);

-- Location: LCCOMB_X21_Y20_N8
\divseur_1M_inst|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~10_combout\ = (\divseur_1M_inst|Add0~22_combout\ & !\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Add0~22_combout\,
	datad => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|cnt~10_combout\);

-- Location: FF_X21_Y20_N9
\divseur_1M_inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(11));

-- Location: LCCOMB_X19_Y20_N24
\divseur_1M_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~24_combout\ = (\divseur_1M_inst|cnt\(12) & (\divseur_1M_inst|Add0~23\ $ (GND))) # (!\divseur_1M_inst|cnt\(12) & (!\divseur_1M_inst|Add0~23\ & VCC))
-- \divseur_1M_inst|Add0~25\ = CARRY((\divseur_1M_inst|cnt\(12) & !\divseur_1M_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(12),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~23\,
	combout => \divseur_1M_inst|Add0~24_combout\,
	cout => \divseur_1M_inst|Add0~25\);

-- Location: LCCOMB_X21_Y20_N4
\divseur_1M_inst|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~9_combout\ = (\divseur_1M_inst|Add0~24_combout\ & !\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|Add0~24_combout\,
	datad => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|cnt~9_combout\);

-- Location: FF_X21_Y20_N5
\divseur_1M_inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(12));

-- Location: LCCOMB_X19_Y20_N26
\divseur_1M_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~26_combout\ = (\divseur_1M_inst|cnt\(13) & (!\divseur_1M_inst|Add0~25\)) # (!\divseur_1M_inst|cnt\(13) & ((\divseur_1M_inst|Add0~25\) # (GND)))
-- \divseur_1M_inst|Add0~27\ = CARRY((!\divseur_1M_inst|Add0~25\) # (!\divseur_1M_inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(13),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~25\,
	combout => \divseur_1M_inst|Add0~26_combout\,
	cout => \divseur_1M_inst|Add0~27\);

-- Location: LCCOMB_X21_Y20_N12
\divseur_1M_inst|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~8_combout\ = (\divseur_1M_inst|Add0~26_combout\ & !\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|Add0~26_combout\,
	datad => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|cnt~8_combout\);

-- Location: FF_X21_Y20_N13
\divseur_1M_inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(13));

-- Location: LCCOMB_X19_Y20_N28
\divseur_1M_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~28_combout\ = (\divseur_1M_inst|cnt\(14) & (\divseur_1M_inst|Add0~27\ $ (GND))) # (!\divseur_1M_inst|cnt\(14) & (!\divseur_1M_inst|Add0~27\ & VCC))
-- \divseur_1M_inst|Add0~29\ = CARRY((\divseur_1M_inst|cnt\(14) & !\divseur_1M_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(14),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~27\,
	combout => \divseur_1M_inst|Add0~28_combout\,
	cout => \divseur_1M_inst|Add0~29\);

-- Location: LCCOMB_X21_Y20_N10
\divseur_1M_inst|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~7_combout\ = (\divseur_1M_inst|Add0~28_combout\ & !\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Add0~28_combout\,
	datad => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|cnt~7_combout\);

-- Location: FF_X21_Y20_N11
\divseur_1M_inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(14));

-- Location: LCCOMB_X19_Y20_N30
\divseur_1M_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~30_combout\ = (\divseur_1M_inst|cnt\(15) & (!\divseur_1M_inst|Add0~29\)) # (!\divseur_1M_inst|cnt\(15) & ((\divseur_1M_inst|Add0~29\) # (GND)))
-- \divseur_1M_inst|Add0~31\ = CARRY((!\divseur_1M_inst|Add0~29\) # (!\divseur_1M_inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(15),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~29\,
	combout => \divseur_1M_inst|Add0~30_combout\,
	cout => \divseur_1M_inst|Add0~31\);

-- Location: FF_X19_Y20_N31
\divseur_1M_inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(15));

-- Location: LCCOMB_X19_Y19_N0
\divseur_1M_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~32_combout\ = (\divseur_1M_inst|cnt\(16) & (\divseur_1M_inst|Add0~31\ $ (GND))) # (!\divseur_1M_inst|cnt\(16) & (!\divseur_1M_inst|Add0~31\ & VCC))
-- \divseur_1M_inst|Add0~33\ = CARRY((\divseur_1M_inst|cnt\(16) & !\divseur_1M_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(16),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~31\,
	combout => \divseur_1M_inst|Add0~32_combout\,
	cout => \divseur_1M_inst|Add0~33\);

-- Location: LCCOMB_X20_Y20_N18
\divseur_1M_inst|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~6_combout\ = (!\divseur_1M_inst|Equal0~10_combout\ & \divseur_1M_inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Equal0~10_combout\,
	datad => \divseur_1M_inst|Add0~32_combout\,
	combout => \divseur_1M_inst|cnt~6_combout\);

-- Location: FF_X20_Y20_N19
\divseur_1M_inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(16));

-- Location: LCCOMB_X19_Y19_N2
\divseur_1M_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~34_combout\ = (\divseur_1M_inst|cnt\(17) & (!\divseur_1M_inst|Add0~33\)) # (!\divseur_1M_inst|cnt\(17) & ((\divseur_1M_inst|Add0~33\) # (GND)))
-- \divseur_1M_inst|Add0~35\ = CARRY((!\divseur_1M_inst|Add0~33\) # (!\divseur_1M_inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(17),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~33\,
	combout => \divseur_1M_inst|Add0~34_combout\,
	cout => \divseur_1M_inst|Add0~35\);

-- Location: FF_X19_Y19_N3
\divseur_1M_inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(17));

-- Location: LCCOMB_X19_Y19_N4
\divseur_1M_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~36_combout\ = (\divseur_1M_inst|cnt\(18) & (\divseur_1M_inst|Add0~35\ $ (GND))) # (!\divseur_1M_inst|cnt\(18) & (!\divseur_1M_inst|Add0~35\ & VCC))
-- \divseur_1M_inst|Add0~37\ = CARRY((\divseur_1M_inst|cnt\(18) & !\divseur_1M_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(18),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~35\,
	combout => \divseur_1M_inst|Add0~36_combout\,
	cout => \divseur_1M_inst|Add0~37\);

-- Location: LCCOMB_X20_Y20_N28
\divseur_1M_inst|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~5_combout\ = (!\divseur_1M_inst|Equal0~10_combout\ & \divseur_1M_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Equal0~10_combout\,
	datad => \divseur_1M_inst|Add0~36_combout\,
	combout => \divseur_1M_inst|cnt~5_combout\);

-- Location: FF_X20_Y20_N29
\divseur_1M_inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(18));

-- Location: LCCOMB_X19_Y19_N6
\divseur_1M_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~38_combout\ = (\divseur_1M_inst|cnt\(19) & (!\divseur_1M_inst|Add0~37\)) # (!\divseur_1M_inst|cnt\(19) & ((\divseur_1M_inst|Add0~37\) # (GND)))
-- \divseur_1M_inst|Add0~39\ = CARRY((!\divseur_1M_inst|Add0~37\) # (!\divseur_1M_inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(19),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~37\,
	combout => \divseur_1M_inst|Add0~38_combout\,
	cout => \divseur_1M_inst|Add0~39\);

-- Location: LCCOMB_X20_Y20_N22
\divseur_1M_inst|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~4_combout\ = (\divseur_1M_inst|Add0~38_combout\ & !\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|Add0~38_combout\,
	datac => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|cnt~4_combout\);

-- Location: FF_X20_Y20_N23
\divseur_1M_inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(19));

-- Location: LCCOMB_X19_Y19_N8
\divseur_1M_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~40_combout\ = (\divseur_1M_inst|cnt\(20) & (\divseur_1M_inst|Add0~39\ $ (GND))) # (!\divseur_1M_inst|cnt\(20) & (!\divseur_1M_inst|Add0~39\ & VCC))
-- \divseur_1M_inst|Add0~41\ = CARRY((\divseur_1M_inst|cnt\(20) & !\divseur_1M_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(20),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~39\,
	combout => \divseur_1M_inst|Add0~40_combout\,
	cout => \divseur_1M_inst|Add0~41\);

-- Location: LCCOMB_X20_Y20_N8
\divseur_1M_inst|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~3_combout\ = (!\divseur_1M_inst|Equal0~10_combout\ & \divseur_1M_inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Equal0~10_combout\,
	datad => \divseur_1M_inst|Add0~40_combout\,
	combout => \divseur_1M_inst|cnt~3_combout\);

-- Location: FF_X20_Y20_N9
\divseur_1M_inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(20));

-- Location: LCCOMB_X19_Y19_N10
\divseur_1M_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~42_combout\ = (\divseur_1M_inst|cnt\(21) & (!\divseur_1M_inst|Add0~41\)) # (!\divseur_1M_inst|cnt\(21) & ((\divseur_1M_inst|Add0~41\) # (GND)))
-- \divseur_1M_inst|Add0~43\ = CARRY((!\divseur_1M_inst|Add0~41\) # (!\divseur_1M_inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(21),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~41\,
	combout => \divseur_1M_inst|Add0~42_combout\,
	cout => \divseur_1M_inst|Add0~43\);

-- Location: LCCOMB_X20_Y20_N30
\divseur_1M_inst|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~2_combout\ = (!\divseur_1M_inst|Equal0~10_combout\ & \divseur_1M_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Equal0~10_combout\,
	datad => \divseur_1M_inst|Add0~42_combout\,
	combout => \divseur_1M_inst|cnt~2_combout\);

-- Location: FF_X20_Y20_N31
\divseur_1M_inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(21));

-- Location: LCCOMB_X19_Y19_N12
\divseur_1M_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~44_combout\ = (\divseur_1M_inst|cnt\(22) & (\divseur_1M_inst|Add0~43\ $ (GND))) # (!\divseur_1M_inst|cnt\(22) & (!\divseur_1M_inst|Add0~43\ & VCC))
-- \divseur_1M_inst|Add0~45\ = CARRY((\divseur_1M_inst|cnt\(22) & !\divseur_1M_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(22),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~43\,
	combout => \divseur_1M_inst|Add0~44_combout\,
	cout => \divseur_1M_inst|Add0~45\);

-- Location: LCCOMB_X20_Y20_N0
\divseur_1M_inst|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~1_combout\ = (!\divseur_1M_inst|Equal0~10_combout\ & \divseur_1M_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Equal0~10_combout\,
	datad => \divseur_1M_inst|Add0~44_combout\,
	combout => \divseur_1M_inst|cnt~1_combout\);

-- Location: FF_X20_Y20_N1
\divseur_1M_inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(22));

-- Location: LCCOMB_X19_Y19_N14
\divseur_1M_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~46_combout\ = (\divseur_1M_inst|cnt\(23) & (!\divseur_1M_inst|Add0~45\)) # (!\divseur_1M_inst|cnt\(23) & ((\divseur_1M_inst|Add0~45\) # (GND)))
-- \divseur_1M_inst|Add0~47\ = CARRY((!\divseur_1M_inst|Add0~45\) # (!\divseur_1M_inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(23),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~45\,
	combout => \divseur_1M_inst|Add0~46_combout\,
	cout => \divseur_1M_inst|Add0~47\);

-- Location: FF_X19_Y19_N15
\divseur_1M_inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(23));

-- Location: LCCOMB_X19_Y19_N16
\divseur_1M_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~48_combout\ = (\divseur_1M_inst|cnt\(24) & (\divseur_1M_inst|Add0~47\ $ (GND))) # (!\divseur_1M_inst|cnt\(24) & (!\divseur_1M_inst|Add0~47\ & VCC))
-- \divseur_1M_inst|Add0~49\ = CARRY((\divseur_1M_inst|cnt\(24) & !\divseur_1M_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(24),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~47\,
	combout => \divseur_1M_inst|Add0~48_combout\,
	cout => \divseur_1M_inst|Add0~49\);

-- Location: LCCOMB_X21_Y20_N30
\divseur_1M_inst|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|cnt~0_combout\ = (\divseur_1M_inst|Add0~48_combout\ & !\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Add0~48_combout\,
	datad => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|cnt~0_combout\);

-- Location: FF_X21_Y20_N31
\divseur_1M_inst|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(24));

-- Location: LCCOMB_X19_Y19_N18
\divseur_1M_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~50_combout\ = (\divseur_1M_inst|cnt\(25) & (!\divseur_1M_inst|Add0~49\)) # (!\divseur_1M_inst|cnt\(25) & ((\divseur_1M_inst|Add0~49\) # (GND)))
-- \divseur_1M_inst|Add0~51\ = CARRY((!\divseur_1M_inst|Add0~49\) # (!\divseur_1M_inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(25),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~49\,
	combout => \divseur_1M_inst|Add0~50_combout\,
	cout => \divseur_1M_inst|Add0~51\);

-- Location: FF_X19_Y19_N19
\divseur_1M_inst|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(25));

-- Location: LCCOMB_X19_Y19_N20
\divseur_1M_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~52_combout\ = (\divseur_1M_inst|cnt\(26) & (\divseur_1M_inst|Add0~51\ $ (GND))) # (!\divseur_1M_inst|cnt\(26) & (!\divseur_1M_inst|Add0~51\ & VCC))
-- \divseur_1M_inst|Add0~53\ = CARRY((\divseur_1M_inst|cnt\(26) & !\divseur_1M_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(26),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~51\,
	combout => \divseur_1M_inst|Add0~52_combout\,
	cout => \divseur_1M_inst|Add0~53\);

-- Location: FF_X19_Y19_N21
\divseur_1M_inst|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(26));

-- Location: LCCOMB_X19_Y19_N22
\divseur_1M_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~54_combout\ = (\divseur_1M_inst|cnt\(27) & (!\divseur_1M_inst|Add0~53\)) # (!\divseur_1M_inst|cnt\(27) & ((\divseur_1M_inst|Add0~53\) # (GND)))
-- \divseur_1M_inst|Add0~55\ = CARRY((!\divseur_1M_inst|Add0~53\) # (!\divseur_1M_inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(27),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~53\,
	combout => \divseur_1M_inst|Add0~54_combout\,
	cout => \divseur_1M_inst|Add0~55\);

-- Location: FF_X19_Y19_N23
\divseur_1M_inst|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(27));

-- Location: LCCOMB_X19_Y19_N24
\divseur_1M_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~56_combout\ = (\divseur_1M_inst|cnt\(28) & (\divseur_1M_inst|Add0~55\ $ (GND))) # (!\divseur_1M_inst|cnt\(28) & (!\divseur_1M_inst|Add0~55\ & VCC))
-- \divseur_1M_inst|Add0~57\ = CARRY((\divseur_1M_inst|cnt\(28) & !\divseur_1M_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(28),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~55\,
	combout => \divseur_1M_inst|Add0~56_combout\,
	cout => \divseur_1M_inst|Add0~57\);

-- Location: FF_X19_Y19_N25
\divseur_1M_inst|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(28));

-- Location: LCCOMB_X19_Y19_N26
\divseur_1M_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~58_combout\ = (\divseur_1M_inst|cnt\(29) & (!\divseur_1M_inst|Add0~57\)) # (!\divseur_1M_inst|cnt\(29) & ((\divseur_1M_inst|Add0~57\) # (GND)))
-- \divseur_1M_inst|Add0~59\ = CARRY((!\divseur_1M_inst|Add0~57\) # (!\divseur_1M_inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(29),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~57\,
	combout => \divseur_1M_inst|Add0~58_combout\,
	cout => \divseur_1M_inst|Add0~59\);

-- Location: FF_X19_Y19_N27
\divseur_1M_inst|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(29));

-- Location: LCCOMB_X19_Y19_N28
\divseur_1M_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~60_combout\ = (\divseur_1M_inst|cnt\(30) & (\divseur_1M_inst|Add0~59\ $ (GND))) # (!\divseur_1M_inst|cnt\(30) & (!\divseur_1M_inst|Add0~59\ & VCC))
-- \divseur_1M_inst|Add0~61\ = CARRY((\divseur_1M_inst|cnt\(30) & !\divseur_1M_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divseur_1M_inst|cnt\(30),
	datad => VCC,
	cin => \divseur_1M_inst|Add0~59\,
	combout => \divseur_1M_inst|Add0~60_combout\,
	cout => \divseur_1M_inst|Add0~61\);

-- Location: FF_X19_Y19_N31
\divseur_1M_inst|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|cnt\(31));

-- Location: LCCOMB_X19_Y19_N30
\divseur_1M_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Add0~62_combout\ = \divseur_1M_inst|cnt\(31) $ (\divseur_1M_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|cnt\(31),
	cin => \divseur_1M_inst|Add0~61\,
	combout => \divseur_1M_inst|Add0~62_combout\);

-- Location: LCCOMB_X20_Y20_N26
\divseur_1M_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~0_combout\ = (!\divseur_1M_inst|Add0~46_combout\ & (\divseur_1M_inst|Add0~42_combout\ & (\divseur_1M_inst|Add0~40_combout\ & \divseur_1M_inst|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~46_combout\,
	datab => \divseur_1M_inst|Add0~42_combout\,
	datac => \divseur_1M_inst|Add0~40_combout\,
	datad => \divseur_1M_inst|Add0~44_combout\,
	combout => \divseur_1M_inst|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y20_N20
\divseur_1M_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~1_combout\ = (!\divseur_1M_inst|Add0~2_combout\ & (!\divseur_1M_inst|Add0~0_combout\ & (!\divseur_1M_inst|Add0~4_combout\ & !\divseur_1M_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~2_combout\,
	datab => \divseur_1M_inst|Add0~0_combout\,
	datac => \divseur_1M_inst|Add0~4_combout\,
	datad => \divseur_1M_inst|Add0~6_combout\,
	combout => \divseur_1M_inst|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y20_N4
\divseur_1M_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~3_combout\ = (!\divseur_1M_inst|Add0~16_combout\ & (!\divseur_1M_inst|Add0~20_combout\ & (!\divseur_1M_inst|Add0~18_combout\ & \divseur_1M_inst|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~16_combout\,
	datab => \divseur_1M_inst|Add0~20_combout\,
	datac => \divseur_1M_inst|Add0~18_combout\,
	datad => \divseur_1M_inst|Add0~22_combout\,
	combout => \divseur_1M_inst|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y20_N2
\divseur_1M_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~2_combout\ = (!\divseur_1M_inst|Add0~8_combout\ & (!\divseur_1M_inst|Add0~10_combout\ & (!\divseur_1M_inst|Add0~14_combout\ & \divseur_1M_inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~8_combout\,
	datab => \divseur_1M_inst|Add0~10_combout\,
	datac => \divseur_1M_inst|Add0~14_combout\,
	datad => \divseur_1M_inst|Add0~12_combout\,
	combout => \divseur_1M_inst|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y20_N10
\divseur_1M_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~4_combout\ = (\divseur_1M_inst|Add0~26_combout\ & (\divseur_1M_inst|Add0~24_combout\ & (\divseur_1M_inst|Add0~28_combout\ & !\divseur_1M_inst|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~26_combout\,
	datab => \divseur_1M_inst|Add0~24_combout\,
	datac => \divseur_1M_inst|Add0~28_combout\,
	datad => \divseur_1M_inst|Add0~30_combout\,
	combout => \divseur_1M_inst|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y20_N12
\divseur_1M_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~5_combout\ = (\divseur_1M_inst|Equal0~1_combout\ & (\divseur_1M_inst|Equal0~3_combout\ & (\divseur_1M_inst|Equal0~2_combout\ & \divseur_1M_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Equal0~1_combout\,
	datab => \divseur_1M_inst|Equal0~3_combout\,
	datac => \divseur_1M_inst|Equal0~2_combout\,
	datad => \divseur_1M_inst|Equal0~4_combout\,
	combout => \divseur_1M_inst|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y20_N6
\divseur_1M_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~6_combout\ = (!\divseur_1M_inst|Add0~34_combout\ & (\divseur_1M_inst|Add0~32_combout\ & (\divseur_1M_inst|Add0~38_combout\ & \divseur_1M_inst|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~34_combout\,
	datab => \divseur_1M_inst|Add0~32_combout\,
	datac => \divseur_1M_inst|Add0~38_combout\,
	datad => \divseur_1M_inst|Add0~36_combout\,
	combout => \divseur_1M_inst|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y20_N16
\divseur_1M_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~7_combout\ = (\divseur_1M_inst|Equal0~5_combout\ & (\divseur_1M_inst|Add0~48_combout\ & (!\divseur_1M_inst|Add0~50_combout\ & \divseur_1M_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Equal0~5_combout\,
	datab => \divseur_1M_inst|Add0~48_combout\,
	datac => \divseur_1M_inst|Add0~50_combout\,
	datad => \divseur_1M_inst|Equal0~6_combout\,
	combout => \divseur_1M_inst|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y20_N2
\divseur_1M_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~8_combout\ = (!\divseur_1M_inst|Add0~54_combout\ & (!\divseur_1M_inst|Add0~52_combout\ & (\divseur_1M_inst|Equal0~0_combout\ & \divseur_1M_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~54_combout\,
	datab => \divseur_1M_inst|Add0~52_combout\,
	datac => \divseur_1M_inst|Equal0~0_combout\,
	datad => \divseur_1M_inst|Equal0~7_combout\,
	combout => \divseur_1M_inst|Equal0~8_combout\);

-- Location: LCCOMB_X20_Y20_N24
\divseur_1M_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~9_combout\ = (!\divseur_1M_inst|Add0~56_combout\ & \divseur_1M_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|Add0~56_combout\,
	datad => \divseur_1M_inst|Equal0~8_combout\,
	combout => \divseur_1M_inst|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y20_N14
\divseur_1M_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|Equal0~10_combout\ = (!\divseur_1M_inst|Add0~60_combout\ & (!\divseur_1M_inst|Add0~58_combout\ & (!\divseur_1M_inst|Add0~62_combout\ & \divseur_1M_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|Add0~60_combout\,
	datab => \divseur_1M_inst|Add0~58_combout\,
	datac => \divseur_1M_inst|Add0~62_combout\,
	datad => \divseur_1M_inst|Equal0~9_combout\,
	combout => \divseur_1M_inst|Equal0~10_combout\);

-- Location: LCCOMB_X21_Y20_N18
\divseur_1M_inst|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|temp~0_combout\ = \divseur_1M_inst|temp~q\ $ (\divseur_1M_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divseur_1M_inst|temp~q\,
	datad => \divseur_1M_inst|Equal0~10_combout\,
	combout => \divseur_1M_inst|temp~0_combout\);

-- Location: LCCOMB_X21_Y20_N16
\divseur_1M_inst|temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divseur_1M_inst|temp~feeder_combout\ = \divseur_1M_inst|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divseur_1M_inst|temp~0_combout\,
	combout => \divseur_1M_inst|temp~feeder_combout\);

-- Location: FF_X21_Y20_N17
\divseur_1M_inst|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \divseur_1M_inst|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divseur_1M_inst|temp~q\);

-- Location: CLKCTRL_G11
\divseur_1M_inst|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divseur_1M_inst|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divseur_1M_inst|temp~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N22
\continu~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_continu,
	o => \continu~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: LCCOMB_X26_Y16_N8
\mae_inst|data_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_valid~0_combout\ = (\continu~input_o\) # (\start_stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \continu~input_o\,
	datad => \start_stop~input_o\,
	combout => \mae_inst|data_valid~0_combout\);

-- Location: LCCOMB_X35_Y19_N28
\mae_inst|data_valid~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_valid~feeder_combout\ = \mae_inst|data_valid~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mae_inst|data_valid~0_combout\,
	combout => \mae_inst|data_valid~feeder_combout\);

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

-- Location: FF_X35_Y19_N29
\mae_inst|data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_valid~feeder_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_valid~q\);

-- Location: IOIBUF_X1_Y34_N8
\in_freq_anemo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_freq_anemo,
	o => \in_freq_anemo~input_o\);

-- Location: LCCOMB_X36_Y22_N16
\compteur_inst|compteur2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[0]~8_combout\ = \compteur_inst|compteur2\(0) $ (VCC)
-- \compteur_inst|compteur2[0]~9\ = CARRY(\compteur_inst|compteur2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur2\(0),
	datad => VCC,
	combout => \compteur_inst|compteur2[0]~8_combout\,
	cout => \compteur_inst|compteur2[0]~9\);

-- Location: LCCOMB_X36_Y22_N18
\compteur_inst|compteur2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[1]~10_combout\ = (\compteur_inst|compteur2\(1) & (!\compteur_inst|compteur2[0]~9\)) # (!\compteur_inst|compteur2\(1) & ((\compteur_inst|compteur2[0]~9\) # (GND)))
-- \compteur_inst|compteur2[1]~11\ = CARRY((!\compteur_inst|compteur2[0]~9\) # (!\compteur_inst|compteur2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur2\(1),
	datad => VCC,
	cin => \compteur_inst|compteur2[0]~9\,
	combout => \compteur_inst|compteur2[1]~10_combout\,
	cout => \compteur_inst|compteur2[1]~11\);

-- Location: FF_X36_Y22_N19
\compteur_inst|compteur2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[1]~10_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(1));

-- Location: LCCOMB_X36_Y22_N20
\compteur_inst|compteur2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[2]~12_combout\ = (\compteur_inst|compteur2\(2) & (\compteur_inst|compteur2[1]~11\ $ (GND))) # (!\compteur_inst|compteur2\(2) & (!\compteur_inst|compteur2[1]~11\ & VCC))
-- \compteur_inst|compteur2[2]~13\ = CARRY((\compteur_inst|compteur2\(2) & !\compteur_inst|compteur2[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur2\(2),
	datad => VCC,
	cin => \compteur_inst|compteur2[1]~11\,
	combout => \compteur_inst|compteur2[2]~12_combout\,
	cout => \compteur_inst|compteur2[2]~13\);

-- Location: FF_X36_Y22_N21
\compteur_inst|compteur2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[2]~12_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(2));

-- Location: LCCOMB_X36_Y22_N22
\compteur_inst|compteur2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[3]~14_combout\ = (\compteur_inst|compteur2\(3) & (!\compteur_inst|compteur2[2]~13\)) # (!\compteur_inst|compteur2\(3) & ((\compteur_inst|compteur2[2]~13\) # (GND)))
-- \compteur_inst|compteur2[3]~15\ = CARRY((!\compteur_inst|compteur2[2]~13\) # (!\compteur_inst|compteur2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur2\(3),
	datad => VCC,
	cin => \compteur_inst|compteur2[2]~13\,
	combout => \compteur_inst|compteur2[3]~14_combout\,
	cout => \compteur_inst|compteur2[3]~15\);

-- Location: FF_X36_Y22_N23
\compteur_inst|compteur2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[3]~14_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(3));

-- Location: LCCOMB_X36_Y22_N24
\compteur_inst|compteur2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[4]~16_combout\ = (\compteur_inst|compteur2\(4) & (\compteur_inst|compteur2[3]~15\ $ (GND))) # (!\compteur_inst|compteur2\(4) & (!\compteur_inst|compteur2[3]~15\ & VCC))
-- \compteur_inst|compteur2[4]~17\ = CARRY((\compteur_inst|compteur2\(4) & !\compteur_inst|compteur2[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur2\(4),
	datad => VCC,
	cin => \compteur_inst|compteur2[3]~15\,
	combout => \compteur_inst|compteur2[4]~16_combout\,
	cout => \compteur_inst|compteur2[4]~17\);

-- Location: FF_X36_Y22_N25
\compteur_inst|compteur2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[4]~16_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(4));

-- Location: LCCOMB_X36_Y22_N26
\compteur_inst|compteur2[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[5]~18_combout\ = (\compteur_inst|compteur2\(5) & (!\compteur_inst|compteur2[4]~17\)) # (!\compteur_inst|compteur2\(5) & ((\compteur_inst|compteur2[4]~17\) # (GND)))
-- \compteur_inst|compteur2[5]~19\ = CARRY((!\compteur_inst|compteur2[4]~17\) # (!\compteur_inst|compteur2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur2\(5),
	datad => VCC,
	cin => \compteur_inst|compteur2[4]~17\,
	combout => \compteur_inst|compteur2[5]~18_combout\,
	cout => \compteur_inst|compteur2[5]~19\);

-- Location: FF_X36_Y22_N27
\compteur_inst|compteur2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[5]~18_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(5));

-- Location: LCCOMB_X36_Y22_N28
\compteur_inst|compteur2[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[6]~20_combout\ = (\compteur_inst|compteur2\(6) & (\compteur_inst|compteur2[5]~19\ $ (GND))) # (!\compteur_inst|compteur2\(6) & (!\compteur_inst|compteur2[5]~19\ & VCC))
-- \compteur_inst|compteur2[6]~21\ = CARRY((\compteur_inst|compteur2\(6) & !\compteur_inst|compteur2[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur2\(6),
	datad => VCC,
	cin => \compteur_inst|compteur2[5]~19\,
	combout => \compteur_inst|compteur2[6]~20_combout\,
	cout => \compteur_inst|compteur2[6]~21\);

-- Location: FF_X36_Y22_N29
\compteur_inst|compteur2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[6]~20_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(6));

-- Location: LCCOMB_X36_Y22_N30
\compteur_inst|compteur2[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur2[7]~22_combout\ = \compteur_inst|compteur2[6]~21\ $ (\compteur_inst|compteur2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(7),
	cin => \compteur_inst|compteur2[6]~21\,
	combout => \compteur_inst|compteur2[7]~22_combout\);

-- Location: FF_X36_Y22_N31
\compteur_inst|compteur2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[7]~22_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(7));

-- Location: LCCOMB_X36_Y22_N10
\compteur_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|Equal0~1_combout\ = (!\compteur_inst|compteur2\(5) & (!\compteur_inst|compteur2\(6) & (!\compteur_inst|compteur2\(7) & !\compteur_inst|compteur2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur2\(5),
	datab => \compteur_inst|compteur2\(6),
	datac => \compteur_inst|compteur2\(7),
	datad => \compteur_inst|compteur2\(4),
	combout => \compteur_inst|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y22_N0
\compteur_inst|compteur1[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[0]~32_combout\ = \compteur_inst|compteur1\(0) $ (VCC)
-- \compteur_inst|compteur1[0]~33\ = CARRY(\compteur_inst|compteur1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(0),
	datad => VCC,
	combout => \compteur_inst|compteur1[0]~32_combout\,
	cout => \compteur_inst|compteur1[0]~33\);

-- Location: LCCOMB_X37_Y21_N14
\compteur_inst|compteur1[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[23]~78_combout\ = (\compteur_inst|compteur1\(23) & (!\compteur_inst|compteur1[22]~77\)) # (!\compteur_inst|compteur1\(23) & ((\compteur_inst|compteur1[22]~77\) # (GND)))
-- \compteur_inst|compteur1[23]~79\ = CARRY((!\compteur_inst|compteur1[22]~77\) # (!\compteur_inst|compteur1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(23),
	datad => VCC,
	cin => \compteur_inst|compteur1[22]~77\,
	combout => \compteur_inst|compteur1[23]~78_combout\,
	cout => \compteur_inst|compteur1[23]~79\);

-- Location: LCCOMB_X37_Y21_N16
\compteur_inst|compteur1[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[24]~80_combout\ = (\compteur_inst|compteur1\(24) & (\compteur_inst|compteur1[23]~79\ $ (GND))) # (!\compteur_inst|compteur1\(24) & (!\compteur_inst|compteur1[23]~79\ & VCC))
-- \compteur_inst|compteur1[24]~81\ = CARRY((\compteur_inst|compteur1\(24) & !\compteur_inst|compteur1[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(24),
	datad => VCC,
	cin => \compteur_inst|compteur1[23]~79\,
	combout => \compteur_inst|compteur1[24]~80_combout\,
	cout => \compteur_inst|compteur1[24]~81\);

-- Location: FF_X37_Y21_N17
\compteur_inst|compteur1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[24]~80_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(24));

-- Location: LCCOMB_X37_Y21_N18
\compteur_inst|compteur1[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[25]~82_combout\ = (\compteur_inst|compteur1\(25) & (!\compteur_inst|compteur1[24]~81\)) # (!\compteur_inst|compteur1\(25) & ((\compteur_inst|compteur1[24]~81\) # (GND)))
-- \compteur_inst|compteur1[25]~83\ = CARRY((!\compteur_inst|compteur1[24]~81\) # (!\compteur_inst|compteur1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(25),
	datad => VCC,
	cin => \compteur_inst|compteur1[24]~81\,
	combout => \compteur_inst|compteur1[25]~82_combout\,
	cout => \compteur_inst|compteur1[25]~83\);

-- Location: FF_X37_Y21_N19
\compteur_inst|compteur1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[25]~82_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(25));

-- Location: LCCOMB_X37_Y21_N20
\compteur_inst|compteur1[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[26]~84_combout\ = (\compteur_inst|compteur1\(26) & (\compteur_inst|compteur1[25]~83\ $ (GND))) # (!\compteur_inst|compteur1\(26) & (!\compteur_inst|compteur1[25]~83\ & VCC))
-- \compteur_inst|compteur1[26]~85\ = CARRY((\compteur_inst|compteur1\(26) & !\compteur_inst|compteur1[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(26),
	datad => VCC,
	cin => \compteur_inst|compteur1[25]~83\,
	combout => \compteur_inst|compteur1[26]~84_combout\,
	cout => \compteur_inst|compteur1[26]~85\);

-- Location: FF_X37_Y21_N21
\compteur_inst|compteur1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[26]~84_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(26));

-- Location: LCCOMB_X37_Y21_N22
\compteur_inst|compteur1[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[27]~88_combout\ = (\compteur_inst|compteur1\(27) & (!\compteur_inst|compteur1[26]~85\)) # (!\compteur_inst|compteur1\(27) & ((\compteur_inst|compteur1[26]~85\) # (GND)))
-- \compteur_inst|compteur1[27]~89\ = CARRY((!\compteur_inst|compteur1[26]~85\) # (!\compteur_inst|compteur1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(27),
	datad => VCC,
	cin => \compteur_inst|compteur1[26]~85\,
	combout => \compteur_inst|compteur1[27]~88_combout\,
	cout => \compteur_inst|compteur1[27]~89\);

-- Location: FF_X37_Y21_N23
\compteur_inst|compteur1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[27]~88_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(27));

-- Location: LCCOMB_X37_Y21_N24
\compteur_inst|compteur1[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[28]~90_combout\ = (\compteur_inst|compteur1\(28) & (\compteur_inst|compteur1[27]~89\ $ (GND))) # (!\compteur_inst|compteur1\(28) & (!\compteur_inst|compteur1[27]~89\ & VCC))
-- \compteur_inst|compteur1[28]~91\ = CARRY((\compteur_inst|compteur1\(28) & !\compteur_inst|compteur1[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(28),
	datad => VCC,
	cin => \compteur_inst|compteur1[27]~89\,
	combout => \compteur_inst|compteur1[28]~90_combout\,
	cout => \compteur_inst|compteur1[28]~91\);

-- Location: FF_X37_Y21_N25
\compteur_inst|compteur1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[28]~90_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(28));

-- Location: LCCOMB_X37_Y21_N26
\compteur_inst|compteur1[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[29]~92_combout\ = (\compteur_inst|compteur1\(29) & (!\compteur_inst|compteur1[28]~91\)) # (!\compteur_inst|compteur1\(29) & ((\compteur_inst|compteur1[28]~91\) # (GND)))
-- \compteur_inst|compteur1[29]~93\ = CARRY((!\compteur_inst|compteur1[28]~91\) # (!\compteur_inst|compteur1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(29),
	datad => VCC,
	cin => \compteur_inst|compteur1[28]~91\,
	combout => \compteur_inst|compteur1[29]~92_combout\,
	cout => \compteur_inst|compteur1[29]~93\);

-- Location: FF_X37_Y21_N27
\compteur_inst|compteur1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[29]~92_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(29));

-- Location: LCCOMB_X37_Y21_N28
\compteur_inst|compteur1[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[30]~94_combout\ = (\compteur_inst|compteur1\(30) & (\compteur_inst|compteur1[29]~93\ $ (GND))) # (!\compteur_inst|compteur1\(30) & (!\compteur_inst|compteur1[29]~93\ & VCC))
-- \compteur_inst|compteur1[30]~95\ = CARRY((\compteur_inst|compteur1\(30) & !\compteur_inst|compteur1[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(30),
	datad => VCC,
	cin => \compteur_inst|compteur1[29]~93\,
	combout => \compteur_inst|compteur1[30]~94_combout\,
	cout => \compteur_inst|compteur1[30]~95\);

-- Location: FF_X37_Y21_N29
\compteur_inst|compteur1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[30]~94_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(30));

-- Location: LCCOMB_X37_Y21_N30
\compteur_inst|compteur1[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[31]~96_combout\ = \compteur_inst|compteur1\(31) $ (\compteur_inst|compteur1[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(31),
	cin => \compteur_inst|compteur1[30]~95\,
	combout => \compteur_inst|compteur1[31]~96_combout\);

-- Location: FF_X37_Y21_N31
\compteur_inst|compteur1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[31]~96_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(31));

-- Location: LCCOMB_X36_Y21_N30
\compteur_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~1_combout\ = (!\compteur_inst|compteur1\(31) & ((\compteur_inst|compteur1\(29)) # ((\compteur_inst|compteur1\(28)) # (\compteur_inst|compteur1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(31),
	datab => \compteur_inst|compteur1\(29),
	datac => \compteur_inst|compteur1\(28),
	datad => \compteur_inst|compteur1\(27),
	combout => \compteur_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y21_N12
\compteur_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~0_combout\ = (!\compteur_inst|compteur1\(31) & ((\compteur_inst|compteur1\(26)) # ((\compteur_inst|compteur1\(25) & \compteur_inst|compteur1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(31),
	datab => \compteur_inst|compteur1\(25),
	datac => \compteur_inst|compteur1\(26),
	datad => \compteur_inst|compteur1\(24),
	combout => \compteur_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y21_N16
\compteur_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~2_combout\ = (\compteur_inst|LessThan0~1_combout\) # ((\compteur_inst|LessThan0~0_combout\) # ((\compteur_inst|compteur1\(30) & !\compteur_inst|compteur1\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|LessThan0~1_combout\,
	datab => \compteur_inst|compteur1\(30),
	datac => \compteur_inst|compteur1\(31),
	datad => \compteur_inst|LessThan0~0_combout\,
	combout => \compteur_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y22_N8
\compteur_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|Equal0~0_combout\ = (!\compteur_inst|compteur2\(1) & (!\compteur_inst|compteur2\(0) & (!\compteur_inst|compteur2\(3) & !\compteur_inst|compteur2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur2\(1),
	datab => \compteur_inst|compteur2\(0),
	datac => \compteur_inst|compteur2\(3),
	datad => \compteur_inst|compteur2\(2),
	combout => \compteur_inst|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y22_N28
\compteur_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~4_combout\ = (\compteur_inst|compteur1\(15) & (\compteur_inst|compteur1\(13) & (\compteur_inst|compteur1\(12) & \compteur_inst|compteur1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(15),
	datab => \compteur_inst|compteur1\(13),
	datac => \compteur_inst|compteur1\(12),
	datad => \compteur_inst|compteur1\(14),
	combout => \compteur_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y22_N0
\compteur_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~5_combout\ = (\compteur_inst|compteur1\(1)) # ((\compteur_inst|compteur1\(0)) # ((\compteur_inst|compteur1\(3)) # (\compteur_inst|compteur1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(1),
	datab => \compteur_inst|compteur1\(0),
	datac => \compteur_inst|compteur1\(3),
	datad => \compteur_inst|compteur1\(2),
	combout => \compteur_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X36_Y22_N14
\compteur_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~6_combout\ = (\compteur_inst|compteur1\(5)) # ((\compteur_inst|compteur1\(6)) # ((\compteur_inst|compteur1\(4)) # (\compteur_inst|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(5),
	datab => \compteur_inst|compteur1\(6),
	datac => \compteur_inst|compteur1\(4),
	datad => \compteur_inst|LessThan0~5_combout\,
	combout => \compteur_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X35_Y22_N14
\compteur_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~3_combout\ = (\compteur_inst|compteur1\(11)) # ((\compteur_inst|compteur1\(8)) # ((\compteur_inst|compteur1\(9)) # (\compteur_inst|compteur1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(11),
	datab => \compteur_inst|compteur1\(8),
	datac => \compteur_inst|compteur1\(9),
	datad => \compteur_inst|compteur1\(10),
	combout => \compteur_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y22_N12
\compteur_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~7_combout\ = (\compteur_inst|LessThan0~4_combout\ & ((\compteur_inst|LessThan0~3_combout\) # ((\compteur_inst|compteur1\(7) & \compteur_inst|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|LessThan0~4_combout\,
	datab => \compteur_inst|compteur1\(7),
	datac => \compteur_inst|LessThan0~6_combout\,
	datad => \compteur_inst|LessThan0~3_combout\,
	combout => \compteur_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X36_Y22_N2
\compteur_inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~8_combout\ = (\compteur_inst|compteur1\(18)) # ((\compteur_inst|compteur1\(17) & ((\compteur_inst|compteur1\(16)) # (\compteur_inst|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(16),
	datab => \compteur_inst|compteur1\(18),
	datac => \compteur_inst|compteur1\(17),
	datad => \compteur_inst|LessThan0~7_combout\,
	combout => \compteur_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X36_Y22_N4
\compteur_inst|compteur1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1~86_combout\ = (\compteur_inst|LessThan0~10_combout\ & \compteur_inst|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|LessThan0~10_combout\,
	datad => \compteur_inst|LessThan0~8_combout\,
	combout => \compteur_inst|compteur1~86_combout\);

-- Location: LCCOMB_X36_Y22_N6
\compteur_inst|compteur1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1~87_combout\ = (\compteur_inst|Equal0~0_combout\ & (\compteur_inst|Equal0~1_combout\ & ((\compteur_inst|LessThan0~2_combout\) # (\compteur_inst|compteur1~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|LessThan0~2_combout\,
	datab => \compteur_inst|Equal0~0_combout\,
	datac => \compteur_inst|compteur1~86_combout\,
	datad => \compteur_inst|Equal0~1_combout\,
	combout => \compteur_inst|compteur1~87_combout\);

-- Location: FF_X37_Y22_N1
\compteur_inst|compteur1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[0]~32_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(0));

-- Location: LCCOMB_X37_Y22_N2
\compteur_inst|compteur1[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[1]~34_combout\ = (\compteur_inst|compteur1\(1) & (!\compteur_inst|compteur1[0]~33\)) # (!\compteur_inst|compteur1\(1) & ((\compteur_inst|compteur1[0]~33\) # (GND)))
-- \compteur_inst|compteur1[1]~35\ = CARRY((!\compteur_inst|compteur1[0]~33\) # (!\compteur_inst|compteur1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(1),
	datad => VCC,
	cin => \compteur_inst|compteur1[0]~33\,
	combout => \compteur_inst|compteur1[1]~34_combout\,
	cout => \compteur_inst|compteur1[1]~35\);

-- Location: FF_X37_Y22_N3
\compteur_inst|compteur1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[1]~34_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(1));

-- Location: LCCOMB_X37_Y22_N4
\compteur_inst|compteur1[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[2]~36_combout\ = (\compteur_inst|compteur1\(2) & (\compteur_inst|compteur1[1]~35\ $ (GND))) # (!\compteur_inst|compteur1\(2) & (!\compteur_inst|compteur1[1]~35\ & VCC))
-- \compteur_inst|compteur1[2]~37\ = CARRY((\compteur_inst|compteur1\(2) & !\compteur_inst|compteur1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(2),
	datad => VCC,
	cin => \compteur_inst|compteur1[1]~35\,
	combout => \compteur_inst|compteur1[2]~36_combout\,
	cout => \compteur_inst|compteur1[2]~37\);

-- Location: FF_X37_Y22_N5
\compteur_inst|compteur1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[2]~36_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(2));

-- Location: LCCOMB_X37_Y22_N6
\compteur_inst|compteur1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[3]~38_combout\ = (\compteur_inst|compteur1\(3) & (!\compteur_inst|compteur1[2]~37\)) # (!\compteur_inst|compteur1\(3) & ((\compteur_inst|compteur1[2]~37\) # (GND)))
-- \compteur_inst|compteur1[3]~39\ = CARRY((!\compteur_inst|compteur1[2]~37\) # (!\compteur_inst|compteur1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(3),
	datad => VCC,
	cin => \compteur_inst|compteur1[2]~37\,
	combout => \compteur_inst|compteur1[3]~38_combout\,
	cout => \compteur_inst|compteur1[3]~39\);

-- Location: FF_X37_Y22_N7
\compteur_inst|compteur1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[3]~38_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(3));

-- Location: LCCOMB_X37_Y22_N8
\compteur_inst|compteur1[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[4]~40_combout\ = (\compteur_inst|compteur1\(4) & (\compteur_inst|compteur1[3]~39\ $ (GND))) # (!\compteur_inst|compteur1\(4) & (!\compteur_inst|compteur1[3]~39\ & VCC))
-- \compteur_inst|compteur1[4]~41\ = CARRY((\compteur_inst|compteur1\(4) & !\compteur_inst|compteur1[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(4),
	datad => VCC,
	cin => \compteur_inst|compteur1[3]~39\,
	combout => \compteur_inst|compteur1[4]~40_combout\,
	cout => \compteur_inst|compteur1[4]~41\);

-- Location: FF_X37_Y22_N9
\compteur_inst|compteur1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[4]~40_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(4));

-- Location: LCCOMB_X37_Y22_N10
\compteur_inst|compteur1[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[5]~42_combout\ = (\compteur_inst|compteur1\(5) & (!\compteur_inst|compteur1[4]~41\)) # (!\compteur_inst|compteur1\(5) & ((\compteur_inst|compteur1[4]~41\) # (GND)))
-- \compteur_inst|compteur1[5]~43\ = CARRY((!\compteur_inst|compteur1[4]~41\) # (!\compteur_inst|compteur1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(5),
	datad => VCC,
	cin => \compteur_inst|compteur1[4]~41\,
	combout => \compteur_inst|compteur1[5]~42_combout\,
	cout => \compteur_inst|compteur1[5]~43\);

-- Location: FF_X37_Y22_N11
\compteur_inst|compteur1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[5]~42_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(5));

-- Location: LCCOMB_X37_Y22_N12
\compteur_inst|compteur1[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[6]~44_combout\ = (\compteur_inst|compteur1\(6) & (\compteur_inst|compteur1[5]~43\ $ (GND))) # (!\compteur_inst|compteur1\(6) & (!\compteur_inst|compteur1[5]~43\ & VCC))
-- \compteur_inst|compteur1[6]~45\ = CARRY((\compteur_inst|compteur1\(6) & !\compteur_inst|compteur1[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(6),
	datad => VCC,
	cin => \compteur_inst|compteur1[5]~43\,
	combout => \compteur_inst|compteur1[6]~44_combout\,
	cout => \compteur_inst|compteur1[6]~45\);

-- Location: FF_X37_Y22_N13
\compteur_inst|compteur1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[6]~44_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(6));

-- Location: LCCOMB_X37_Y22_N14
\compteur_inst|compteur1[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[7]~46_combout\ = (\compteur_inst|compteur1\(7) & (!\compteur_inst|compteur1[6]~45\)) # (!\compteur_inst|compteur1\(7) & ((\compteur_inst|compteur1[6]~45\) # (GND)))
-- \compteur_inst|compteur1[7]~47\ = CARRY((!\compteur_inst|compteur1[6]~45\) # (!\compteur_inst|compteur1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(7),
	datad => VCC,
	cin => \compteur_inst|compteur1[6]~45\,
	combout => \compteur_inst|compteur1[7]~46_combout\,
	cout => \compteur_inst|compteur1[7]~47\);

-- Location: FF_X37_Y22_N15
\compteur_inst|compteur1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[7]~46_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(7));

-- Location: LCCOMB_X37_Y22_N16
\compteur_inst|compteur1[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[8]~48_combout\ = (\compteur_inst|compteur1\(8) & (\compteur_inst|compteur1[7]~47\ $ (GND))) # (!\compteur_inst|compteur1\(8) & (!\compteur_inst|compteur1[7]~47\ & VCC))
-- \compteur_inst|compteur1[8]~49\ = CARRY((\compteur_inst|compteur1\(8) & !\compteur_inst|compteur1[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(8),
	datad => VCC,
	cin => \compteur_inst|compteur1[7]~47\,
	combout => \compteur_inst|compteur1[8]~48_combout\,
	cout => \compteur_inst|compteur1[8]~49\);

-- Location: FF_X35_Y22_N25
\compteur_inst|compteur1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[8]~48_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(8));

-- Location: LCCOMB_X37_Y22_N18
\compteur_inst|compteur1[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[9]~50_combout\ = (\compteur_inst|compteur1\(9) & (!\compteur_inst|compteur1[8]~49\)) # (!\compteur_inst|compteur1\(9) & ((\compteur_inst|compteur1[8]~49\) # (GND)))
-- \compteur_inst|compteur1[9]~51\ = CARRY((!\compteur_inst|compteur1[8]~49\) # (!\compteur_inst|compteur1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(9),
	datad => VCC,
	cin => \compteur_inst|compteur1[8]~49\,
	combout => \compteur_inst|compteur1[9]~50_combout\,
	cout => \compteur_inst|compteur1[9]~51\);

-- Location: FF_X35_Y22_N23
\compteur_inst|compteur1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[9]~50_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(9));

-- Location: LCCOMB_X37_Y22_N20
\compteur_inst|compteur1[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[10]~52_combout\ = (\compteur_inst|compteur1\(10) & (\compteur_inst|compteur1[9]~51\ $ (GND))) # (!\compteur_inst|compteur1\(10) & (!\compteur_inst|compteur1[9]~51\ & VCC))
-- \compteur_inst|compteur1[10]~53\ = CARRY((\compteur_inst|compteur1\(10) & !\compteur_inst|compteur1[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(10),
	datad => VCC,
	cin => \compteur_inst|compteur1[9]~51\,
	combout => \compteur_inst|compteur1[10]~52_combout\,
	cout => \compteur_inst|compteur1[10]~53\);

-- Location: FF_X37_Y22_N21
\compteur_inst|compteur1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[10]~52_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(10));

-- Location: LCCOMB_X37_Y22_N22
\compteur_inst|compteur1[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[11]~54_combout\ = (\compteur_inst|compteur1\(11) & (!\compteur_inst|compteur1[10]~53\)) # (!\compteur_inst|compteur1\(11) & ((\compteur_inst|compteur1[10]~53\) # (GND)))
-- \compteur_inst|compteur1[11]~55\ = CARRY((!\compteur_inst|compteur1[10]~53\) # (!\compteur_inst|compteur1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(11),
	datad => VCC,
	cin => \compteur_inst|compteur1[10]~53\,
	combout => \compteur_inst|compteur1[11]~54_combout\,
	cout => \compteur_inst|compteur1[11]~55\);

-- Location: FF_X35_Y22_N13
\compteur_inst|compteur1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[11]~54_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(11));

-- Location: LCCOMB_X37_Y22_N24
\compteur_inst|compteur1[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[12]~56_combout\ = (\compteur_inst|compteur1\(12) & (\compteur_inst|compteur1[11]~55\ $ (GND))) # (!\compteur_inst|compteur1\(12) & (!\compteur_inst|compteur1[11]~55\ & VCC))
-- \compteur_inst|compteur1[12]~57\ = CARRY((\compteur_inst|compteur1\(12) & !\compteur_inst|compteur1[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(12),
	datad => VCC,
	cin => \compteur_inst|compteur1[11]~55\,
	combout => \compteur_inst|compteur1[12]~56_combout\,
	cout => \compteur_inst|compteur1[12]~57\);

-- Location: FF_X38_Y22_N5
\compteur_inst|compteur1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[12]~56_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(12));

-- Location: LCCOMB_X37_Y22_N26
\compteur_inst|compteur1[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[13]~58_combout\ = (\compteur_inst|compteur1\(13) & (!\compteur_inst|compteur1[12]~57\)) # (!\compteur_inst|compteur1\(13) & ((\compteur_inst|compteur1[12]~57\) # (GND)))
-- \compteur_inst|compteur1[13]~59\ = CARRY((!\compteur_inst|compteur1[12]~57\) # (!\compteur_inst|compteur1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(13),
	datad => VCC,
	cin => \compteur_inst|compteur1[12]~57\,
	combout => \compteur_inst|compteur1[13]~58_combout\,
	cout => \compteur_inst|compteur1[13]~59\);

-- Location: FF_X38_Y22_N19
\compteur_inst|compteur1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[13]~58_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(13));

-- Location: LCCOMB_X37_Y22_N28
\compteur_inst|compteur1[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[14]~60_combout\ = (\compteur_inst|compteur1\(14) & (\compteur_inst|compteur1[13]~59\ $ (GND))) # (!\compteur_inst|compteur1\(14) & (!\compteur_inst|compteur1[13]~59\ & VCC))
-- \compteur_inst|compteur1[14]~61\ = CARRY((\compteur_inst|compteur1\(14) & !\compteur_inst|compteur1[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(14),
	datad => VCC,
	cin => \compteur_inst|compteur1[13]~59\,
	combout => \compteur_inst|compteur1[14]~60_combout\,
	cout => \compteur_inst|compteur1[14]~61\);

-- Location: FF_X38_Y22_N21
\compteur_inst|compteur1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[14]~60_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(14));

-- Location: LCCOMB_X37_Y22_N30
\compteur_inst|compteur1[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[15]~62_combout\ = (\compteur_inst|compteur1\(15) & (!\compteur_inst|compteur1[14]~61\)) # (!\compteur_inst|compteur1\(15) & ((\compteur_inst|compteur1[14]~61\) # (GND)))
-- \compteur_inst|compteur1[15]~63\ = CARRY((!\compteur_inst|compteur1[14]~61\) # (!\compteur_inst|compteur1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(15),
	datad => VCC,
	cin => \compteur_inst|compteur1[14]~61\,
	combout => \compteur_inst|compteur1[15]~62_combout\,
	cout => \compteur_inst|compteur1[15]~63\);

-- Location: FF_X38_Y22_N23
\compteur_inst|compteur1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \compteur_inst|compteur1[15]~62_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(15));

-- Location: LCCOMB_X37_Y21_N0
\compteur_inst|compteur1[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[16]~64_combout\ = (\compteur_inst|compteur1\(16) & (\compteur_inst|compteur1[15]~63\ $ (GND))) # (!\compteur_inst|compteur1\(16) & (!\compteur_inst|compteur1[15]~63\ & VCC))
-- \compteur_inst|compteur1[16]~65\ = CARRY((\compteur_inst|compteur1\(16) & !\compteur_inst|compteur1[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(16),
	datad => VCC,
	cin => \compteur_inst|compteur1[15]~63\,
	combout => \compteur_inst|compteur1[16]~64_combout\,
	cout => \compteur_inst|compteur1[16]~65\);

-- Location: FF_X37_Y21_N1
\compteur_inst|compteur1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[16]~64_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(16));

-- Location: LCCOMB_X37_Y21_N2
\compteur_inst|compteur1[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[17]~66_combout\ = (\compteur_inst|compteur1\(17) & (!\compteur_inst|compteur1[16]~65\)) # (!\compteur_inst|compteur1\(17) & ((\compteur_inst|compteur1[16]~65\) # (GND)))
-- \compteur_inst|compteur1[17]~67\ = CARRY((!\compteur_inst|compteur1[16]~65\) # (!\compteur_inst|compteur1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(17),
	datad => VCC,
	cin => \compteur_inst|compteur1[16]~65\,
	combout => \compteur_inst|compteur1[17]~66_combout\,
	cout => \compteur_inst|compteur1[17]~67\);

-- Location: FF_X37_Y21_N3
\compteur_inst|compteur1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[17]~66_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(17));

-- Location: LCCOMB_X37_Y21_N4
\compteur_inst|compteur1[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[18]~68_combout\ = (\compteur_inst|compteur1\(18) & (\compteur_inst|compteur1[17]~67\ $ (GND))) # (!\compteur_inst|compteur1\(18) & (!\compteur_inst|compteur1[17]~67\ & VCC))
-- \compteur_inst|compteur1[18]~69\ = CARRY((\compteur_inst|compteur1\(18) & !\compteur_inst|compteur1[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(18),
	datad => VCC,
	cin => \compteur_inst|compteur1[17]~67\,
	combout => \compteur_inst|compteur1[18]~68_combout\,
	cout => \compteur_inst|compteur1[18]~69\);

-- Location: FF_X37_Y21_N5
\compteur_inst|compteur1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[18]~68_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(18));

-- Location: LCCOMB_X37_Y21_N6
\compteur_inst|compteur1[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[19]~70_combout\ = (\compteur_inst|compteur1\(19) & (!\compteur_inst|compteur1[18]~69\)) # (!\compteur_inst|compteur1\(19) & ((\compteur_inst|compteur1[18]~69\) # (GND)))
-- \compteur_inst|compteur1[19]~71\ = CARRY((!\compteur_inst|compteur1[18]~69\) # (!\compteur_inst|compteur1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(19),
	datad => VCC,
	cin => \compteur_inst|compteur1[18]~69\,
	combout => \compteur_inst|compteur1[19]~70_combout\,
	cout => \compteur_inst|compteur1[19]~71\);

-- Location: FF_X37_Y21_N7
\compteur_inst|compteur1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[19]~70_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(19));

-- Location: LCCOMB_X37_Y21_N8
\compteur_inst|compteur1[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[20]~72_combout\ = (\compteur_inst|compteur1\(20) & (\compteur_inst|compteur1[19]~71\ $ (GND))) # (!\compteur_inst|compteur1\(20) & (!\compteur_inst|compteur1[19]~71\ & VCC))
-- \compteur_inst|compteur1[20]~73\ = CARRY((\compteur_inst|compteur1\(20) & !\compteur_inst|compteur1[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|compteur1\(20),
	datad => VCC,
	cin => \compteur_inst|compteur1[19]~71\,
	combout => \compteur_inst|compteur1[20]~72_combout\,
	cout => \compteur_inst|compteur1[20]~73\);

-- Location: FF_X37_Y21_N9
\compteur_inst|compteur1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[20]~72_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(20));

-- Location: LCCOMB_X37_Y21_N10
\compteur_inst|compteur1[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[21]~74_combout\ = (\compteur_inst|compteur1\(21) & (!\compteur_inst|compteur1[20]~73\)) # (!\compteur_inst|compteur1\(21) & ((\compteur_inst|compteur1[20]~73\) # (GND)))
-- \compteur_inst|compteur1[21]~75\ = CARRY((!\compteur_inst|compteur1[20]~73\) # (!\compteur_inst|compteur1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(21),
	datad => VCC,
	cin => \compteur_inst|compteur1[20]~73\,
	combout => \compteur_inst|compteur1[21]~74_combout\,
	cout => \compteur_inst|compteur1[21]~75\);

-- Location: FF_X37_Y21_N11
\compteur_inst|compteur1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[21]~74_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(21));

-- Location: LCCOMB_X37_Y21_N12
\compteur_inst|compteur1[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|compteur1[22]~76_combout\ = (\compteur_inst|compteur1\(22) & (\compteur_inst|compteur1[21]~75\ $ (GND))) # (!\compteur_inst|compteur1\(22) & (!\compteur_inst|compteur1[21]~75\ & VCC))
-- \compteur_inst|compteur1[22]~77\ = CARRY((\compteur_inst|compteur1\(22) & !\compteur_inst|compteur1[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(22),
	datad => VCC,
	cin => \compteur_inst|compteur1[21]~75\,
	combout => \compteur_inst|compteur1[22]~76_combout\,
	cout => \compteur_inst|compteur1[22]~77\);

-- Location: FF_X37_Y21_N13
\compteur_inst|compteur1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[22]~76_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(22));

-- Location: FF_X37_Y21_N15
\compteur_inst|compteur1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|compteur1[23]~78_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|compteur1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur1\(23));

-- Location: LCCOMB_X36_Y21_N18
\compteur_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~9_combout\ = (!\compteur_inst|compteur1\(31) & (\compteur_inst|compteur1\(25) & (\compteur_inst|compteur1\(20) & \compteur_inst|compteur1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(31),
	datab => \compteur_inst|compteur1\(25),
	datac => \compteur_inst|compteur1\(20),
	datad => \compteur_inst|compteur1\(19),
	combout => \compteur_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X36_Y21_N0
\compteur_inst|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|LessThan0~10_combout\ = (\compteur_inst|compteur1\(23) & (\compteur_inst|compteur1\(22) & (\compteur_inst|compteur1\(21) & \compteur_inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|compteur1\(23),
	datab => \compteur_inst|compteur1\(22),
	datac => \compteur_inst|compteur1\(21),
	datad => \compteur_inst|LessThan0~9_combout\,
	combout => \compteur_inst|LessThan0~10_combout\);

-- Location: LCCOMB_X36_Y21_N22
\compteur_inst|stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|stop~0_combout\ = (\raz_n~input_o\ & ((\compteur_inst|LessThan0~2_combout\) # ((\compteur_inst|LessThan0~10_combout\ & \compteur_inst|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \raz_n~input_o\,
	datab => \compteur_inst|LessThan0~10_combout\,
	datac => \compteur_inst|LessThan0~2_combout\,
	datad => \compteur_inst|LessThan0~8_combout\,
	combout => \compteur_inst|stop~0_combout\);

-- Location: LCCOMB_X36_Y21_N28
\compteur_inst|stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|stop~1_combout\ = (\compteur_inst|stop~0_combout\ & (((!\compteur_inst|Equal0~0_combout\) # (!\compteur_inst|Equal0~1_combout\)))) # (!\compteur_inst|stop~0_combout\ & (\compteur_inst|stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|stop~q\,
	datab => \compteur_inst|Equal0~1_combout\,
	datac => \compteur_inst|stop~0_combout\,
	datad => \compteur_inst|Equal0~0_combout\,
	combout => \compteur_inst|stop~1_combout\);

-- Location: LCCOMB_X35_Y19_N14
\compteur_inst|stop~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|stop~feeder_combout\ = \compteur_inst|stop~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|stop~1_combout\,
	combout => \compteur_inst|stop~feeder_combout\);

-- Location: FF_X35_Y19_N15
\compteur_inst|stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \compteur_inst|stop~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|stop~q\);

-- Location: FF_X36_Y22_N17
\compteur_inst|compteur2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|compteur2[0]~8_combout\,
	clrn => \raz_n~input_o\,
	sclr => \compteur_inst|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|compteur2\(0));

-- Location: LCCOMB_X36_Y19_N22
\compteur_inst|frq[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[0]~feeder_combout\ = \compteur_inst|compteur2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(0),
	combout => \compteur_inst|frq[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y19_N18
\compteur_inst|frq[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[0]~0_combout\ = (\raz_n~input_o\ & \compteur_inst|stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raz_n~input_o\,
	datad => \compteur_inst|stop~q\,
	combout => \compteur_inst|frq[0]~0_combout\);

-- Location: FF_X36_Y19_N23
\compteur_inst|frq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[0]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(0));

-- Location: FF_X36_Y19_N19
\mae_inst|data_anemometre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	asdata => \compteur_inst|frq\(0),
	clrn => \raz_n~input_o\,
	sload => VCC,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(0));

-- Location: LCCOMB_X36_Y19_N30
\compteur_inst|frq[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[1]~feeder_combout\ = \compteur_inst|compteur2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compteur_inst|compteur2\(1),
	combout => \compteur_inst|frq[1]~feeder_combout\);

-- Location: FF_X36_Y19_N31
\compteur_inst|frq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[1]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(1));

-- Location: LCCOMB_X36_Y19_N0
\mae_inst|data_anemometre[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[1]~feeder_combout\ = \compteur_inst|frq\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|frq\(1),
	combout => \mae_inst|data_anemometre[1]~feeder_combout\);

-- Location: FF_X36_Y19_N1
\mae_inst|data_anemometre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[1]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(1));

-- Location: LCCOMB_X36_Y19_N6
\compteur_inst|frq[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[2]~feeder_combout\ = \compteur_inst|compteur2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(2),
	combout => \compteur_inst|frq[2]~feeder_combout\);

-- Location: FF_X36_Y19_N7
\compteur_inst|frq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[2]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(2));

-- Location: LCCOMB_X36_Y19_N20
\mae_inst|data_anemometre[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[2]~feeder_combout\ = \compteur_inst|frq\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|frq\(2),
	combout => \mae_inst|data_anemometre[2]~feeder_combout\);

-- Location: FF_X36_Y19_N21
\mae_inst|data_anemometre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[2]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(2));

-- Location: LCCOMB_X36_Y19_N24
\compteur_inst|frq[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[3]~feeder_combout\ = \compteur_inst|compteur2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(3),
	combout => \compteur_inst|frq[3]~feeder_combout\);

-- Location: FF_X36_Y19_N25
\compteur_inst|frq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[3]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(3));

-- Location: LCCOMB_X36_Y19_N14
\mae_inst|data_anemometre[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[3]~feeder_combout\ = \compteur_inst|frq\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|frq\(3),
	combout => \mae_inst|data_anemometre[3]~feeder_combout\);

-- Location: FF_X36_Y19_N15
\mae_inst|data_anemometre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[3]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(3));

-- Location: LCCOMB_X36_Y19_N2
\compteur_inst|frq[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[4]~feeder_combout\ = \compteur_inst|compteur2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(4),
	combout => \compteur_inst|frq[4]~feeder_combout\);

-- Location: FF_X36_Y19_N3
\compteur_inst|frq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[4]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(4));

-- Location: LCCOMB_X36_Y19_N4
\mae_inst|data_anemometre[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[4]~feeder_combout\ = \compteur_inst|frq\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|frq\(4),
	combout => \mae_inst|data_anemometre[4]~feeder_combout\);

-- Location: FF_X36_Y19_N5
\mae_inst|data_anemometre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[4]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(4));

-- Location: LCCOMB_X36_Y19_N12
\compteur_inst|frq[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[5]~feeder_combout\ = \compteur_inst|compteur2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(5),
	combout => \compteur_inst|frq[5]~feeder_combout\);

-- Location: FF_X36_Y19_N13
\compteur_inst|frq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[5]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(5));

-- Location: LCCOMB_X36_Y19_N28
\mae_inst|data_anemometre[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[5]~feeder_combout\ = \compteur_inst|frq\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|frq\(5),
	combout => \mae_inst|data_anemometre[5]~feeder_combout\);

-- Location: FF_X36_Y19_N29
\mae_inst|data_anemometre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[5]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(5));

-- Location: LCCOMB_X36_Y19_N16
\compteur_inst|frq[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[6]~feeder_combout\ = \compteur_inst|compteur2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compteur_inst|compteur2\(6),
	combout => \compteur_inst|frq[6]~feeder_combout\);

-- Location: FF_X36_Y19_N17
\compteur_inst|frq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[6]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(6));

-- Location: LCCOMB_X36_Y19_N26
\mae_inst|data_anemometre[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[6]~feeder_combout\ = \compteur_inst|frq\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compteur_inst|frq\(6),
	combout => \mae_inst|data_anemometre[6]~feeder_combout\);

-- Location: FF_X36_Y19_N27
\mae_inst|data_anemometre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[6]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(6));

-- Location: LCCOMB_X36_Y19_N10
\compteur_inst|frq[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compteur_inst|frq[7]~feeder_combout\ = \compteur_inst|compteur2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compteur_inst|compteur2\(7),
	combout => \compteur_inst|frq[7]~feeder_combout\);

-- Location: FF_X36_Y19_N11
\compteur_inst|frq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemo~input_o\,
	d => \compteur_inst|frq[7]~feeder_combout\,
	ena => \compteur_inst|frq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compteur_inst|frq\(7));

-- Location: LCCOMB_X36_Y19_N8
\mae_inst|data_anemometre[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mae_inst|data_anemometre[7]~feeder_combout\ = \compteur_inst|frq\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compteur_inst|frq\(7),
	combout => \mae_inst|data_anemometre[7]~feeder_combout\);

-- Location: FF_X36_Y19_N9
\mae_inst|data_anemometre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divseur_1M_inst|temp~clkctrl_outclk\,
	d => \mae_inst|data_anemometre[7]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \mae_inst|data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mae_inst|data_anemometre\(7));

ww_data_valid <= \data_valid~output_o\;

ww_S_1Hz <= \S_1Hz~output_o\;

ww_data_anemometre(0) <= \data_anemometre[0]~output_o\;

ww_data_anemometre(1) <= \data_anemometre[1]~output_o\;

ww_data_anemometre(2) <= \data_anemometre[2]~output_o\;

ww_data_anemometre(3) <= \data_anemometre[3]~output_o\;

ww_data_anemometre(4) <= \data_anemometre[4]~output_o\;

ww_data_anemometre(5) <= \data_anemometre[5]~output_o\;

ww_data_anemometre(6) <= \data_anemometre[6]~output_o\;

ww_data_anemometre(7) <= \data_anemometre[7]~output_o\;
END structure;


