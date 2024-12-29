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

-- DATE "12/16/2024 22:12:17"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

ENTITY 	gestion_bouton IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	BP_Babord : IN std_logic;
	BP_Tribord : IN std_logic;
	BP_STBY : IN std_logic;
	ledSTBY : BUFFER std_logic;
	ledTribord : BUFFER std_logic;
	ledBabord : BUFFER std_logic;
	codeFonction : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END gestion_bouton;

-- Design Ports Information
-- ledSTBY	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledTribord	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledBabord	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeFonction[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeFonction[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeFonction[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeFonction[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BP_STBY	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BP_Tribord	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BP_Babord	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestion_bouton IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_BP_Babord : std_logic;
SIGNAL ww_BP_Tribord : std_logic;
SIGNAL ww_BP_STBY : std_logic;
SIGNAL ww_ledSTBY : std_logic;
SIGNAL ww_ledTribord : std_logic;
SIGNAL ww_ledBabord : std_logic;
SIGNAL ww_codeFonction : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledSTBY~output_o\ : std_logic;
SIGNAL \ledTribord~output_o\ : std_logic;
SIGNAL \ledBabord~output_o\ : std_logic;
SIGNAL \codeFonction[0]~output_o\ : std_logic;
SIGNAL \codeFonction[1]~output_o\ : std_logic;
SIGNAL \codeFonction[2]~output_o\ : std_logic;
SIGNAL \codeFonction[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp[0]~20_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \BP_STBY~input_o\ : std_logic;
SIGNAL \etat.IDLE~0_combout\ : std_logic;
SIGNAL \etat.IDLE~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \etat.ALLUMAGE~q\ : std_logic;
SIGNAL \BP_Babord~input_o\ : std_logic;
SIGNAL \BP_Tribord~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \etat.GO_TRIBORD~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \etat.GO_BABORD~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \etat.MODE_AUTO~q\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \etat.WAIT_BT~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \etat.WAIT_TRIBORD~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \temp[19]~54_combout\ : std_logic;
SIGNAL \temp[19]~55_combout\ : std_logic;
SIGNAL \temp[0]~21\ : std_logic;
SIGNAL \temp[1]~22_combout\ : std_logic;
SIGNAL \temp[1]~23\ : std_logic;
SIGNAL \temp[2]~24_combout\ : std_logic;
SIGNAL \temp[2]~25\ : std_logic;
SIGNAL \temp[3]~26_combout\ : std_logic;
SIGNAL \temp[3]~27\ : std_logic;
SIGNAL \temp[4]~28_combout\ : std_logic;
SIGNAL \temp[4]~29\ : std_logic;
SIGNAL \temp[5]~30_combout\ : std_logic;
SIGNAL \temp[5]~31\ : std_logic;
SIGNAL \temp[6]~32_combout\ : std_logic;
SIGNAL \temp[6]~33\ : std_logic;
SIGNAL \temp[7]~34_combout\ : std_logic;
SIGNAL \temp[7]~35\ : std_logic;
SIGNAL \temp[8]~36_combout\ : std_logic;
SIGNAL \temp[8]~37\ : std_logic;
SIGNAL \temp[9]~38_combout\ : std_logic;
SIGNAL \temp[9]~39\ : std_logic;
SIGNAL \temp[10]~40_combout\ : std_logic;
SIGNAL \temp[10]~41\ : std_logic;
SIGNAL \temp[11]~42_combout\ : std_logic;
SIGNAL \temp[11]~43\ : std_logic;
SIGNAL \temp[12]~44_combout\ : std_logic;
SIGNAL \temp[12]~45\ : std_logic;
SIGNAL \temp[13]~46_combout\ : std_logic;
SIGNAL \temp[13]~47\ : std_logic;
SIGNAL \temp[14]~48_combout\ : std_logic;
SIGNAL \temp[14]~49\ : std_logic;
SIGNAL \temp[15]~50_combout\ : std_logic;
SIGNAL \temp[15]~51\ : std_logic;
SIGNAL \temp[16]~52_combout\ : std_logic;
SIGNAL \temp[16]~53\ : std_logic;
SIGNAL \temp[17]~56_combout\ : std_logic;
SIGNAL \temp[17]~57\ : std_logic;
SIGNAL \temp[18]~58_combout\ : std_logic;
SIGNAL \temp[18]~59\ : std_logic;
SIGNAL \temp[19]~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \fin~0_combout\ : std_logic;
SIGNAL \fin~q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \etat.WAIT_BABORD~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \ledSTBY$latch~combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \ledTribord~0_combout\ : std_logic;
SIGNAL \ledTribord$latch~combout\ : std_logic;
SIGNAL \ledBabord~0_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \ledBabord$latch~combout\ : std_logic;
SIGNAL \WideOr8~0clkctrl_outclk\ : std_logic;
SIGNAL \codeFonction[0]$latch~combout\ : std_logic;
SIGNAL \codeFonction[1]$latch~combout\ : std_logic;
SIGNAL temp : std_logic_vector(19 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_BP_Babord <= BP_Babord;
ww_BP_Tribord <= BP_Tribord;
ww_BP_STBY <= BP_STBY;
ledSTBY <= ww_ledSTBY;
ledTribord <= ww_ledTribord;
ledBabord <= ww_ledBabord;
codeFonction <= ww_codeFonction;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\WideOr8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr8~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y0_N16
\ledSTBY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledSTBY$latch~combout\,
	devoe => ww_devoe,
	o => \ledSTBY~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ledTribord~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledTribord$latch~combout\,
	devoe => ww_devoe,
	o => \ledTribord~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ledBabord~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledBabord$latch~combout\,
	devoe => ww_devoe,
	o => \ledBabord~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\codeFonction[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \codeFonction[0]$latch~combout\,
	devoe => ww_devoe,
	o => \codeFonction[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\codeFonction[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \codeFonction[1]$latch~combout\,
	devoe => ww_devoe,
	o => \codeFonction[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\codeFonction[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeFonction[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\codeFonction[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeFonction[3]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y14_N12
\temp[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[0]~20_combout\ = temp(0) $ (VCC)
-- \temp[0]~21\ = CARRY(temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datad => VCC,
	combout => \temp[0]~20_combout\,
	cout => \temp[0]~21\);

-- Location: IOIBUF_X0_Y16_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y17_N8
\BP_STBY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BP_STBY,
	o => \BP_STBY~input_o\);

-- Location: LCCOMB_X29_Y13_N18
\etat.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat.IDLE~0_combout\ = (\etat.IDLE~q\) # (!\BP_STBY~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etat.IDLE~q\,
	datad => \BP_STBY~input_o\,
	combout => \etat.IDLE~0_combout\);

-- Location: FF_X29_Y13_N19
\etat.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat.IDLE~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.IDLE~q\);

-- Location: LCCOMB_X29_Y13_N30
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\BP_STBY~input_o\ & (!\fin~q\ & ((\etat.ALLUMAGE~q\)))) # (!\BP_STBY~input_o\ & (((!\fin~q\ & \etat.ALLUMAGE~q\)) # (!\etat.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP_STBY~input_o\,
	datab => \fin~q\,
	datac => \etat.IDLE~q\,
	datad => \etat.ALLUMAGE~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X29_Y13_N29
\etat.ALLUMAGE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.ALLUMAGE~q\);

-- Location: IOIBUF_X34_Y0_N1
\BP_Babord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BP_Babord,
	o => \BP_Babord~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\BP_Tribord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BP_Tribord,
	o => \BP_Tribord~input_o\);

-- Location: LCCOMB_X29_Y13_N8
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\fin~q\ & ((\etat.WAIT_TRIBORD~q\) # ((!\BP_Tribord~input_o\ & \etat.GO_TRIBORD~q\)))) # (!\fin~q\ & (!\BP_Tribord~input_o\ & (\etat.GO_TRIBORD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin~q\,
	datab => \BP_Tribord~input_o\,
	datac => \etat.GO_TRIBORD~q\,
	datad => \etat.WAIT_TRIBORD~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X29_Y13_N9
\etat.GO_TRIBORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector9~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.GO_TRIBORD~q\);

-- Location: LCCOMB_X30_Y13_N4
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\BP_Babord~input_o\ & (((\etat.WAIT_BABORD~q\ & \fin~q\)))) # (!\BP_Babord~input_o\ & ((\etat.GO_BABORD~q\) # ((\etat.WAIT_BABORD~q\ & \fin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP_Babord~input_o\,
	datab => \etat.GO_BABORD~q\,
	datac => \etat.WAIT_BABORD~q\,
	datad => \fin~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X29_Y13_N5
\etat.GO_BABORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector7~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.GO_BABORD~q\);

-- Location: LCCOMB_X30_Y13_N14
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\fin~q\ & ((\etat.ALLUMAGE~q\) # ((\etat.GO_BABORD~q\ & \BP_Babord~input_o\)))) # (!\fin~q\ & (\etat.GO_BABORD~q\ & (\BP_Babord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin~q\,
	datab => \etat.GO_BABORD~q\,
	datac => \BP_Babord~input_o\,
	datad => \etat.ALLUMAGE~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X30_Y13_N10
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\BP_Babord~input_o\ & (\BP_STBY~input_o\ & \etat.WAIT_BT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP_Babord~input_o\,
	datac => \BP_STBY~input_o\,
	datad => \etat.WAIT_BT~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X29_Y13_N6
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\BP_STBY~input_o\ & ((\etat.MODE_AUTO~q\) # ((\Selector6~0_combout\ & !\BP_Tribord~input_o\)))) # (!\BP_STBY~input_o\ & (\Selector6~0_combout\ & ((!\BP_Tribord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP_STBY~input_o\,
	datab => \Selector6~0_combout\,
	datac => \etat.MODE_AUTO~q\,
	datad => \BP_Tribord~input_o\,
	combout => \Selector10~0_combout\);

-- Location: FF_X29_Y13_N7
\etat.MODE_AUTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.MODE_AUTO~q\);

-- Location: LCCOMB_X30_Y13_N0
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~1_combout\) # ((!\BP_STBY~input_o\ & ((\etat.WAIT_BT~q\) # (\etat.MODE_AUTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \etat.WAIT_BT~q\,
	datac => \BP_STBY~input_o\,
	datad => \etat.MODE_AUTO~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X30_Y13_N28
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~2_combout\) # ((\BP_Tribord~input_o\ & ((\etat.GO_TRIBORD~q\) # (\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.GO_TRIBORD~q\,
	datab => \Selector5~2_combout\,
	datac => \Selector5~0_combout\,
	datad => \BP_Tribord~input_o\,
	combout => \Selector5~3_combout\);

-- Location: FF_X30_Y13_N29
\etat.WAIT_BT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.WAIT_BT~q\);

-- Location: LCCOMB_X30_Y13_N26
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\BP_Babord~input_o\ & \etat.WAIT_BT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP_Babord~input_o\,
	datad => \etat.WAIT_BT~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X29_Y13_N4
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\fin~q\ & \etat.WAIT_TRIBORD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fin~q\,
	datad => \etat.WAIT_TRIBORD~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X29_Y13_N12
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\BP_STBY~input_o\ & (\Selector5~0_combout\ & !\BP_Tribord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP_STBY~input_o\,
	datab => \Selector5~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \BP_Tribord~input_o\,
	combout => \Selector8~1_combout\);

-- Location: FF_X29_Y13_N13
\etat.WAIT_TRIBORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector8~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.WAIT_TRIBORD~q\);

-- Location: LCCOMB_X28_Y13_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (temp(8)) # ((temp(10)) # ((temp(11)) # (!temp(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(8),
	datab => temp(10),
	datac => temp(11),
	datad => temp(9),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y13_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (temp(13)) # ((temp(12)) # ((temp(15)) # (!temp(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(13),
	datab => temp(12),
	datac => temp(14),
	datad => temp(15),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X28_Y14_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (temp(7)) # ((temp(4)) # ((temp(5)) # (!temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(4),
	datac => temp(5),
	datad => temp(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y14_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (temp(0)) # ((temp(3)) # ((temp(1)) # (temp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(3),
	datac => temp(1),
	datad => temp(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y13_N26
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\) # ((\Equal0~4_combout\) # ((\Equal0~2_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X28_Y13_N20
\temp[19]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[19]~54_combout\ = (\Equal0~0_combout\) # (\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	combout => \temp[19]~54_combout\);

-- Location: LCCOMB_X28_Y13_N22
\temp[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[19]~55_combout\ = ((!\etat.ALLUMAGE~q\ & (!\etat.WAIT_TRIBORD~q\ & !\etat.WAIT_BABORD~q\))) # (!\temp[19]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.ALLUMAGE~q\,
	datab => \etat.WAIT_TRIBORD~q\,
	datac => \etat.WAIT_BABORD~q\,
	datad => \temp[19]~54_combout\,
	combout => \temp[19]~55_combout\);

-- Location: FF_X28_Y14_N13
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[0]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LCCOMB_X28_Y14_N14
\temp[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[1]~22_combout\ = (temp(1) & (!\temp[0]~21\)) # (!temp(1) & ((\temp[0]~21\) # (GND)))
-- \temp[1]~23\ = CARRY((!\temp[0]~21\) # (!temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(1),
	datad => VCC,
	cin => \temp[0]~21\,
	combout => \temp[1]~22_combout\,
	cout => \temp[1]~23\);

-- Location: FF_X28_Y14_N15
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[1]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X28_Y14_N16
\temp[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[2]~24_combout\ = (temp(2) & (\temp[1]~23\ $ (GND))) # (!temp(2) & (!\temp[1]~23\ & VCC))
-- \temp[2]~25\ = CARRY((temp(2) & !\temp[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(2),
	datad => VCC,
	cin => \temp[1]~23\,
	combout => \temp[2]~24_combout\,
	cout => \temp[2]~25\);

-- Location: FF_X28_Y14_N17
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[2]~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LCCOMB_X28_Y14_N18
\temp[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[3]~26_combout\ = (temp(3) & (!\temp[2]~25\)) # (!temp(3) & ((\temp[2]~25\) # (GND)))
-- \temp[3]~27\ = CARRY((!\temp[2]~25\) # (!temp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(3),
	datad => VCC,
	cin => \temp[2]~25\,
	combout => \temp[3]~26_combout\,
	cout => \temp[3]~27\);

-- Location: FF_X28_Y14_N19
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[3]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X28_Y14_N20
\temp[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[4]~28_combout\ = (temp(4) & (\temp[3]~27\ $ (GND))) # (!temp(4) & (!\temp[3]~27\ & VCC))
-- \temp[4]~29\ = CARRY((temp(4) & !\temp[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	cin => \temp[3]~27\,
	combout => \temp[4]~28_combout\,
	cout => \temp[4]~29\);

-- Location: FF_X28_Y14_N21
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[4]~28_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LCCOMB_X28_Y14_N22
\temp[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[5]~30_combout\ = (temp(5) & (!\temp[4]~29\)) # (!temp(5) & ((\temp[4]~29\) # (GND)))
-- \temp[5]~31\ = CARRY((!\temp[4]~29\) # (!temp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datad => VCC,
	cin => \temp[4]~29\,
	combout => \temp[5]~30_combout\,
	cout => \temp[5]~31\);

-- Location: FF_X28_Y14_N23
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[5]~30_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LCCOMB_X28_Y14_N24
\temp[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[6]~32_combout\ = (temp(6) & (\temp[5]~31\ $ (GND))) # (!temp(6) & (!\temp[5]~31\ & VCC))
-- \temp[6]~33\ = CARRY((temp(6) & !\temp[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => VCC,
	cin => \temp[5]~31\,
	combout => \temp[6]~32_combout\,
	cout => \temp[6]~33\);

-- Location: FF_X28_Y14_N25
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[6]~32_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LCCOMB_X28_Y14_N26
\temp[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[7]~34_combout\ = (temp(7) & (!\temp[6]~33\)) # (!temp(7) & ((\temp[6]~33\) # (GND)))
-- \temp[7]~35\ = CARRY((!\temp[6]~33\) # (!temp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datad => VCC,
	cin => \temp[6]~33\,
	combout => \temp[7]~34_combout\,
	cout => \temp[7]~35\);

-- Location: FF_X28_Y14_N27
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[7]~34_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LCCOMB_X28_Y14_N28
\temp[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[8]~36_combout\ = (temp(8) & (\temp[7]~35\ $ (GND))) # (!temp(8) & (!\temp[7]~35\ & VCC))
-- \temp[8]~37\ = CARRY((temp(8) & !\temp[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(8),
	datad => VCC,
	cin => \temp[7]~35\,
	combout => \temp[8]~36_combout\,
	cout => \temp[8]~37\);

-- Location: FF_X27_Y13_N9
\temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \temp[8]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(8));

-- Location: LCCOMB_X28_Y14_N30
\temp[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[9]~38_combout\ = (temp(9) & (!\temp[8]~37\)) # (!temp(9) & ((\temp[8]~37\) # (GND)))
-- \temp[9]~39\ = CARRY((!\temp[8]~37\) # (!temp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(9),
	datad => VCC,
	cin => \temp[8]~37\,
	combout => \temp[9]~38_combout\,
	cout => \temp[9]~39\);

-- Location: FF_X27_Y13_N15
\temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \temp[9]~38_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(9));

-- Location: LCCOMB_X28_Y13_N0
\temp[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[10]~40_combout\ = (temp(10) & (\temp[9]~39\ $ (GND))) # (!temp(10) & (!\temp[9]~39\ & VCC))
-- \temp[10]~41\ = CARRY((temp(10) & !\temp[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(10),
	datad => VCC,
	cin => \temp[9]~39\,
	combout => \temp[10]~40_combout\,
	cout => \temp[10]~41\);

-- Location: FF_X28_Y13_N1
\temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[10]~40_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(10));

-- Location: LCCOMB_X28_Y13_N2
\temp[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[11]~42_combout\ = (temp(11) & (!\temp[10]~41\)) # (!temp(11) & ((\temp[10]~41\) # (GND)))
-- \temp[11]~43\ = CARRY((!\temp[10]~41\) # (!temp(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(11),
	datad => VCC,
	cin => \temp[10]~41\,
	combout => \temp[11]~42_combout\,
	cout => \temp[11]~43\);

-- Location: FF_X28_Y13_N3
\temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[11]~42_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(11));

-- Location: LCCOMB_X28_Y13_N4
\temp[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[12]~44_combout\ = (temp(12) & (\temp[11]~43\ $ (GND))) # (!temp(12) & (!\temp[11]~43\ & VCC))
-- \temp[12]~45\ = CARRY((temp(12) & !\temp[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(12),
	datad => VCC,
	cin => \temp[11]~43\,
	combout => \temp[12]~44_combout\,
	cout => \temp[12]~45\);

-- Location: FF_X28_Y13_N5
\temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[12]~44_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(12));

-- Location: LCCOMB_X28_Y13_N6
\temp[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[13]~46_combout\ = (temp(13) & (!\temp[12]~45\)) # (!temp(13) & ((\temp[12]~45\) # (GND)))
-- \temp[13]~47\ = CARRY((!\temp[12]~45\) # (!temp(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(13),
	datad => VCC,
	cin => \temp[12]~45\,
	combout => \temp[13]~46_combout\,
	cout => \temp[13]~47\);

-- Location: FF_X28_Y13_N7
\temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[13]~46_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(13));

-- Location: LCCOMB_X28_Y13_N8
\temp[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[14]~48_combout\ = (temp(14) & (\temp[13]~47\ $ (GND))) # (!temp(14) & (!\temp[13]~47\ & VCC))
-- \temp[14]~49\ = CARRY((temp(14) & !\temp[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(14),
	datad => VCC,
	cin => \temp[13]~47\,
	combout => \temp[14]~48_combout\,
	cout => \temp[14]~49\);

-- Location: FF_X28_Y13_N9
\temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[14]~48_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(14));

-- Location: LCCOMB_X28_Y13_N10
\temp[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[15]~50_combout\ = (temp(15) & (!\temp[14]~49\)) # (!temp(15) & ((\temp[14]~49\) # (GND)))
-- \temp[15]~51\ = CARRY((!\temp[14]~49\) # (!temp(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(15),
	datad => VCC,
	cin => \temp[14]~49\,
	combout => \temp[15]~50_combout\,
	cout => \temp[15]~51\);

-- Location: FF_X28_Y13_N11
\temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[15]~50_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(15));

-- Location: LCCOMB_X28_Y13_N12
\temp[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[16]~52_combout\ = (temp(16) & (\temp[15]~51\ $ (GND))) # (!temp(16) & (!\temp[15]~51\ & VCC))
-- \temp[16]~53\ = CARRY((temp(16) & !\temp[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(16),
	datad => VCC,
	cin => \temp[15]~51\,
	combout => \temp[16]~52_combout\,
	cout => \temp[16]~53\);

-- Location: FF_X28_Y13_N13
\temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[16]~52_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(16));

-- Location: LCCOMB_X28_Y13_N14
\temp[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[17]~56_combout\ = (temp(17) & (!\temp[16]~53\)) # (!temp(17) & ((\temp[16]~53\) # (GND)))
-- \temp[17]~57\ = CARRY((!\temp[16]~53\) # (!temp(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(17),
	datad => VCC,
	cin => \temp[16]~53\,
	combout => \temp[17]~56_combout\,
	cout => \temp[17]~57\);

-- Location: FF_X28_Y13_N15
\temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[17]~56_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(17));

-- Location: LCCOMB_X28_Y13_N16
\temp[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[18]~58_combout\ = (temp(18) & (\temp[17]~57\ $ (GND))) # (!temp(18) & (!\temp[17]~57\ & VCC))
-- \temp[18]~59\ = CARRY((temp(18) & !\temp[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(18),
	datad => VCC,
	cin => \temp[17]~57\,
	combout => \temp[18]~58_combout\,
	cout => \temp[18]~59\);

-- Location: FF_X28_Y13_N17
\temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[18]~58_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(18));

-- Location: LCCOMB_X28_Y13_N18
\temp[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[19]~60_combout\ = temp(19) $ (\temp[18]~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(19),
	cin => \temp[18]~59\,
	combout => \temp[19]~60_combout\);

-- Location: FF_X28_Y13_N19
\temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[19]~60_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \temp[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(19));

-- Location: LCCOMB_X28_Y13_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!temp(18)) # (!temp(19))) # (!temp(17))) # (!temp(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(16),
	datab => temp(17),
	datac => temp(19),
	datad => temp(18),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y13_N26
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (!\etat.ALLUMAGE~q\ & (!\etat.WAIT_BABORD~q\ & !\etat.WAIT_TRIBORD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat.ALLUMAGE~q\,
	datac => \etat.WAIT_BABORD~q\,
	datad => \etat.WAIT_TRIBORD~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X29_Y13_N14
\fin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fin~0_combout\ = (!\Equal0~0_combout\ & (!\Equal0~5_combout\ & !\WideOr8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datad => \WideOr8~0_combout\,
	combout => \fin~0_combout\);

-- Location: FF_X29_Y13_N15
fin : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fin~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fin~q\);

-- Location: LCCOMB_X30_Y13_N12
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\fin~q\ & (((\Selector6~0_combout\ & \BP_Tribord~input_o\)))) # (!\fin~q\ & ((\etat.WAIT_BABORD~q\) # ((\Selector6~0_combout\ & \BP_Tribord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin~q\,
	datab => \etat.WAIT_BABORD~q\,
	datac => \Selector6~0_combout\,
	datad => \BP_Tribord~input_o\,
	combout => \Selector6~1_combout\);

-- Location: FF_X29_Y13_N27
\etat.WAIT_BABORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector6~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etat.WAIT_BABORD~q\);

-- Location: LCCOMB_X29_Y13_N16
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\etat.WAIT_BABORD~q\ & !\etat.WAIT_TRIBORD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.WAIT_BABORD~q\,
	datad => \etat.WAIT_TRIBORD~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y13_N10
\ledSTBY$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledSTBY$latch~combout\ = (\WideOr1~0_combout\ & (\etat.IDLE~q\)) # (!\WideOr1~0_combout\ & ((\ledSTBY$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datac => \etat.IDLE~q\,
	datad => \ledSTBY$latch~combout\,
	combout => \ledSTBY$latch~combout\);

-- Location: LCCOMB_X29_Y13_N20
WideOr9 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\etat.ALLUMAGE~q\) # ((\etat.WAIT_BABORD~q\) # ((\etat.GO_BABORD~q\) # (\etat.WAIT_TRIBORD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.ALLUMAGE~q\,
	datab => \etat.WAIT_BABORD~q\,
	datac => \etat.GO_BABORD~q\,
	datad => \etat.WAIT_TRIBORD~q\,
	combout => \WideOr9~combout\);

-- Location: LCCOMB_X29_Y13_N28
\ledTribord~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledTribord~0_combout\ = (\etat.GO_TRIBORD~q\) # (\etat.MODE_AUTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etat.GO_TRIBORD~q\,
	datad => \etat.MODE_AUTO~q\,
	combout => \ledTribord~0_combout\);

-- Location: LCCOMB_X29_Y13_N24
\ledTribord$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledTribord$latch~combout\ = (\WideOr9~combout\ & (\ledTribord$latch~combout\)) # (!\WideOr9~combout\ & ((\ledTribord~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledTribord$latch~combout\,
	datac => \WideOr9~combout\,
	datad => \ledTribord~0_combout\,
	combout => \ledTribord$latch~combout\);

-- Location: LCCOMB_X29_Y13_N2
\ledBabord~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledBabord~0_combout\ = (\etat.GO_BABORD~q\) # (\etat.MODE_AUTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etat.GO_BABORD~q\,
	datad => \etat.MODE_AUTO~q\,
	combout => \ledBabord~0_combout\);

-- Location: LCCOMB_X29_Y13_N0
WideOr8 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\etat.ALLUMAGE~q\) # ((\etat.WAIT_BABORD~q\) # ((\etat.GO_TRIBORD~q\) # (\etat.WAIT_TRIBORD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat.ALLUMAGE~q\,
	datab => \etat.WAIT_BABORD~q\,
	datac => \etat.GO_TRIBORD~q\,
	datad => \etat.WAIT_TRIBORD~q\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X29_Y13_N22
\ledBabord$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledBabord$latch~combout\ = (\WideOr8~combout\ & ((\ledBabord$latch~combout\))) # (!\WideOr8~combout\ & (\ledBabord~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledBabord~0_combout\,
	datac => \ledBabord$latch~combout\,
	datad => \WideOr8~combout\,
	combout => \ledBabord$latch~combout\);

-- Location: CLKCTRL_G15
\WideOr8~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr8~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y7_N28
\codeFonction[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \codeFonction[0]$latch~combout\ = (GLOBAL(\WideOr8~0clkctrl_outclk\) & (\ledBabord~0_combout\)) # (!GLOBAL(\WideOr8~0clkctrl_outclk\) & ((\codeFonction[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0clkctrl_outclk\,
	datac => \ledBabord~0_combout\,
	datad => \codeFonction[0]$latch~combout\,
	combout => \codeFonction[0]$latch~combout\);

-- Location: LCCOMB_X29_Y7_N2
\codeFonction[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \codeFonction[1]$latch~combout\ = (GLOBAL(\WideOr8~0clkctrl_outclk\) & (\ledTribord~0_combout\)) # (!GLOBAL(\WideOr8~0clkctrl_outclk\) & ((\codeFonction[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0clkctrl_outclk\,
	datac => \ledTribord~0_combout\,
	datad => \codeFonction[1]$latch~combout\,
	combout => \codeFonction[1]$latch~combout\);

ww_ledSTBY <= \ledSTBY~output_o\;

ww_ledTribord <= \ledTribord~output_o\;

ww_ledBabord <= \ledBabord~output_o\;

ww_codeFonction(0) <= \codeFonction[0]~output_o\;

ww_codeFonction(1) <= \codeFonction[1]~output_o\;

ww_codeFonction(2) <= \codeFonction[2]~output_o\;

ww_codeFonction(3) <= \codeFonction[3]~output_o\;
END structure;


