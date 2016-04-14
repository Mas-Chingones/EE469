-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "04/14/2016 13:21:43"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tristate_test_de1soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END tristate_test_de1soc;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tristate_test_de1soc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \divider|div_clks[0]~0_combout\ : std_logic;
SIGNAL \divider|Add0~89_sumout\ : std_logic;
SIGNAL \divider|Add0~90\ : std_logic;
SIGNAL \divider|Add0~85_sumout\ : std_logic;
SIGNAL \divider|Add0~86\ : std_logic;
SIGNAL \divider|Add0~81_sumout\ : std_logic;
SIGNAL \divider|Add0~82\ : std_logic;
SIGNAL \divider|Add0~77_sumout\ : std_logic;
SIGNAL \divider|Add0~78\ : std_logic;
SIGNAL \divider|Add0~73_sumout\ : std_logic;
SIGNAL \divider|Add0~74\ : std_logic;
SIGNAL \divider|Add0~69_sumout\ : std_logic;
SIGNAL \divider|Add0~70\ : std_logic;
SIGNAL \divider|Add0~65_sumout\ : std_logic;
SIGNAL \divider|Add0~66\ : std_logic;
SIGNAL \divider|Add0~61_sumout\ : std_logic;
SIGNAL \divider|Add0~62\ : std_logic;
SIGNAL \divider|Add0~57_sumout\ : std_logic;
SIGNAL \divider|Add0~58\ : std_logic;
SIGNAL \divider|Add0~53_sumout\ : std_logic;
SIGNAL \divider|Add0~54\ : std_logic;
SIGNAL \divider|Add0~49_sumout\ : std_logic;
SIGNAL \divider|Add0~50\ : std_logic;
SIGNAL \divider|Add0~45_sumout\ : std_logic;
SIGNAL \divider|Add0~46\ : std_logic;
SIGNAL \divider|Add0~41_sumout\ : std_logic;
SIGNAL \divider|Add0~42\ : std_logic;
SIGNAL \divider|Add0~37_sumout\ : std_logic;
SIGNAL \divider|Add0~38\ : std_logic;
SIGNAL \divider|Add0~33_sumout\ : std_logic;
SIGNAL \divider|Add0~34\ : std_logic;
SIGNAL \divider|Add0~29_sumout\ : std_logic;
SIGNAL \divider|Add0~30\ : std_logic;
SIGNAL \divider|Add0~25_sumout\ : std_logic;
SIGNAL \divider|Add0~26\ : std_logic;
SIGNAL \divider|Add0~21_sumout\ : std_logic;
SIGNAL \divider|Add0~22\ : std_logic;
SIGNAL \divider|Add0~17_sumout\ : std_logic;
SIGNAL \divider|Add0~18\ : std_logic;
SIGNAL \divider|Add0~13_sumout\ : std_logic;
SIGNAL \divider|Add0~14\ : std_logic;
SIGNAL \divider|Add0~9_sumout\ : std_logic;
SIGNAL \divider|Add0~10\ : std_logic;
SIGNAL \divider|Add0~5_sumout\ : std_logic;
SIGNAL \divider|Add0~6\ : std_logic;
SIGNAL \divider|Add0~1_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \test|FF0|q~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \test|FF0|q~q\ : std_logic;
SIGNAL \test|FF1|q~0_combout\ : std_logic;
SIGNAL \test|FF1|q~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \divider|div_clks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \divider|ALT_INV_div_clks\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \test|FF0|ALT_INV_q~q\ : std_logic;
SIGNAL \test|FF1|ALT_INV_q~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\divider|ALT_INV_div_clks\(0) <= NOT \divider|div_clks\(0);
\divider|ALT_INV_div_clks\(1) <= NOT \divider|div_clks\(1);
\divider|ALT_INV_div_clks\(2) <= NOT \divider|div_clks\(2);
\divider|ALT_INV_div_clks\(3) <= NOT \divider|div_clks\(3);
\divider|ALT_INV_div_clks\(4) <= NOT \divider|div_clks\(4);
\divider|ALT_INV_div_clks\(5) <= NOT \divider|div_clks\(5);
\divider|ALT_INV_div_clks\(6) <= NOT \divider|div_clks\(6);
\divider|ALT_INV_div_clks\(7) <= NOT \divider|div_clks\(7);
\divider|ALT_INV_div_clks\(8) <= NOT \divider|div_clks\(8);
\divider|ALT_INV_div_clks\(9) <= NOT \divider|div_clks\(9);
\divider|ALT_INV_div_clks\(10) <= NOT \divider|div_clks\(10);
\divider|ALT_INV_div_clks\(11) <= NOT \divider|div_clks\(11);
\divider|ALT_INV_div_clks\(12) <= NOT \divider|div_clks\(12);
\divider|ALT_INV_div_clks\(13) <= NOT \divider|div_clks\(13);
\divider|ALT_INV_div_clks\(14) <= NOT \divider|div_clks\(14);
\divider|ALT_INV_div_clks\(15) <= NOT \divider|div_clks\(15);
\divider|ALT_INV_div_clks\(16) <= NOT \divider|div_clks\(16);
\divider|ALT_INV_div_clks\(17) <= NOT \divider|div_clks\(17);
\divider|ALT_INV_div_clks\(18) <= NOT \divider|div_clks\(18);
\divider|ALT_INV_div_clks\(19) <= NOT \divider|div_clks\(19);
\divider|ALT_INV_div_clks\(20) <= NOT \divider|div_clks\(20);
\divider|ALT_INV_div_clks\(21) <= NOT \divider|div_clks\(21);
\divider|ALT_INV_div_clks\(22) <= NOT \divider|div_clks\(22);
\divider|ALT_INV_div_clks\(23) <= NOT \divider|div_clks\(23);
\test|FF0|ALT_INV_q~q\ <= NOT \test|FF0|q~q\;
\test|FF1|ALT_INV_q~q\ <= NOT \test|FF1|q~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comb~1_combout\,
	oe => \ALT_INV_SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X30_Y1_N12
\divider|div_clks[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|div_clks[0]~0_combout\ = ( !\divider|div_clks\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \divider|ALT_INV_div_clks\(0),
	combout => \divider|div_clks[0]~0_combout\);

-- Location: FF_X30_Y1_N13
\divider|div_clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|div_clks[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(0));

-- Location: LABCELL_X31_Y2_N30
\divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~89_sumout\ = SUM(( \divider|div_clks\(1) ) + ( \divider|div_clks\(0) ) + ( !VCC ))
-- \divider|Add0~90\ = CARRY(( \divider|div_clks\(1) ) + ( \divider|div_clks\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_div_clks\(0),
	datad => \divider|ALT_INV_div_clks\(1),
	cin => GND,
	sumout => \divider|Add0~89_sumout\,
	cout => \divider|Add0~90\);

-- Location: FF_X31_Y2_N32
\divider|div_clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(1));

-- Location: LABCELL_X31_Y2_N33
\divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~85_sumout\ = SUM(( \divider|div_clks\(2) ) + ( GND ) + ( \divider|Add0~90\ ))
-- \divider|Add0~86\ = CARRY(( \divider|div_clks\(2) ) + ( GND ) + ( \divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(2),
	cin => \divider|Add0~90\,
	sumout => \divider|Add0~85_sumout\,
	cout => \divider|Add0~86\);

-- Location: FF_X31_Y2_N35
\divider|div_clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(2));

-- Location: LABCELL_X31_Y2_N36
\divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~81_sumout\ = SUM(( \divider|div_clks\(3) ) + ( GND ) + ( \divider|Add0~86\ ))
-- \divider|Add0~82\ = CARRY(( \divider|div_clks\(3) ) + ( GND ) + ( \divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(3),
	cin => \divider|Add0~86\,
	sumout => \divider|Add0~81_sumout\,
	cout => \divider|Add0~82\);

-- Location: FF_X31_Y2_N38
\divider|div_clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(3));

-- Location: LABCELL_X31_Y2_N39
\divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~77_sumout\ = SUM(( \divider|div_clks\(4) ) + ( GND ) + ( \divider|Add0~82\ ))
-- \divider|Add0~78\ = CARRY(( \divider|div_clks\(4) ) + ( GND ) + ( \divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(4),
	cin => \divider|Add0~82\,
	sumout => \divider|Add0~77_sumout\,
	cout => \divider|Add0~78\);

-- Location: FF_X31_Y2_N41
\divider|div_clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(4));

-- Location: LABCELL_X31_Y2_N42
\divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~73_sumout\ = SUM(( \divider|div_clks\(5) ) + ( GND ) + ( \divider|Add0~78\ ))
-- \divider|Add0~74\ = CARRY(( \divider|div_clks\(5) ) + ( GND ) + ( \divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(5),
	cin => \divider|Add0~78\,
	sumout => \divider|Add0~73_sumout\,
	cout => \divider|Add0~74\);

-- Location: FF_X31_Y2_N44
\divider|div_clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(5));

-- Location: LABCELL_X31_Y2_N45
\divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~69_sumout\ = SUM(( \divider|div_clks\(6) ) + ( GND ) + ( \divider|Add0~74\ ))
-- \divider|Add0~70\ = CARRY(( \divider|div_clks\(6) ) + ( GND ) + ( \divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(6),
	cin => \divider|Add0~74\,
	sumout => \divider|Add0~69_sumout\,
	cout => \divider|Add0~70\);

-- Location: FF_X31_Y2_N47
\divider|div_clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(6));

-- Location: LABCELL_X31_Y2_N48
\divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~65_sumout\ = SUM(( \divider|div_clks\(7) ) + ( GND ) + ( \divider|Add0~70\ ))
-- \divider|Add0~66\ = CARRY(( \divider|div_clks\(7) ) + ( GND ) + ( \divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(7),
	cin => \divider|Add0~70\,
	sumout => \divider|Add0~65_sumout\,
	cout => \divider|Add0~66\);

-- Location: FF_X31_Y2_N50
\divider|div_clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(7));

-- Location: LABCELL_X31_Y2_N51
\divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~61_sumout\ = SUM(( \divider|div_clks\(8) ) + ( GND ) + ( \divider|Add0~66\ ))
-- \divider|Add0~62\ = CARRY(( \divider|div_clks\(8) ) + ( GND ) + ( \divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(8),
	cin => \divider|Add0~66\,
	sumout => \divider|Add0~61_sumout\,
	cout => \divider|Add0~62\);

-- Location: FF_X31_Y2_N53
\divider|div_clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(8));

-- Location: LABCELL_X31_Y2_N54
\divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~57_sumout\ = SUM(( \divider|div_clks\(9) ) + ( GND ) + ( \divider|Add0~62\ ))
-- \divider|Add0~58\ = CARRY(( \divider|div_clks\(9) ) + ( GND ) + ( \divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(9),
	cin => \divider|Add0~62\,
	sumout => \divider|Add0~57_sumout\,
	cout => \divider|Add0~58\);

-- Location: FF_X31_Y2_N56
\divider|div_clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(9));

-- Location: LABCELL_X31_Y2_N57
\divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~53_sumout\ = SUM(( \divider|div_clks\(10) ) + ( GND ) + ( \divider|Add0~58\ ))
-- \divider|Add0~54\ = CARRY(( \divider|div_clks\(10) ) + ( GND ) + ( \divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(10),
	cin => \divider|Add0~58\,
	sumout => \divider|Add0~53_sumout\,
	cout => \divider|Add0~54\);

-- Location: FF_X31_Y2_N59
\divider|div_clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(10));

-- Location: LABCELL_X31_Y1_N0
\divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~49_sumout\ = SUM(( \divider|div_clks\(11) ) + ( GND ) + ( \divider|Add0~54\ ))
-- \divider|Add0~50\ = CARRY(( \divider|div_clks\(11) ) + ( GND ) + ( \divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(11),
	cin => \divider|Add0~54\,
	sumout => \divider|Add0~49_sumout\,
	cout => \divider|Add0~50\);

-- Location: FF_X31_Y1_N2
\divider|div_clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(11));

-- Location: LABCELL_X31_Y1_N3
\divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~45_sumout\ = SUM(( \divider|div_clks\(12) ) + ( GND ) + ( \divider|Add0~50\ ))
-- \divider|Add0~46\ = CARRY(( \divider|div_clks\(12) ) + ( GND ) + ( \divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(12),
	cin => \divider|Add0~50\,
	sumout => \divider|Add0~45_sumout\,
	cout => \divider|Add0~46\);

-- Location: FF_X31_Y1_N5
\divider|div_clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(12));

-- Location: LABCELL_X31_Y1_N6
\divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~41_sumout\ = SUM(( \divider|div_clks\(13) ) + ( GND ) + ( \divider|Add0~46\ ))
-- \divider|Add0~42\ = CARRY(( \divider|div_clks\(13) ) + ( GND ) + ( \divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(13),
	cin => \divider|Add0~46\,
	sumout => \divider|Add0~41_sumout\,
	cout => \divider|Add0~42\);

-- Location: FF_X31_Y1_N8
\divider|div_clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(13));

-- Location: LABCELL_X31_Y1_N9
\divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~37_sumout\ = SUM(( \divider|div_clks\(14) ) + ( GND ) + ( \divider|Add0~42\ ))
-- \divider|Add0~38\ = CARRY(( \divider|div_clks\(14) ) + ( GND ) + ( \divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(14),
	cin => \divider|Add0~42\,
	sumout => \divider|Add0~37_sumout\,
	cout => \divider|Add0~38\);

-- Location: FF_X31_Y1_N11
\divider|div_clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(14));

-- Location: LABCELL_X31_Y1_N12
\divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~33_sumout\ = SUM(( \divider|div_clks\(15) ) + ( GND ) + ( \divider|Add0~38\ ))
-- \divider|Add0~34\ = CARRY(( \divider|div_clks\(15) ) + ( GND ) + ( \divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(15),
	cin => \divider|Add0~38\,
	sumout => \divider|Add0~33_sumout\,
	cout => \divider|Add0~34\);

-- Location: FF_X31_Y1_N14
\divider|div_clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(15));

-- Location: LABCELL_X31_Y1_N15
\divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~29_sumout\ = SUM(( \divider|div_clks\(16) ) + ( GND ) + ( \divider|Add0~34\ ))
-- \divider|Add0~30\ = CARRY(( \divider|div_clks\(16) ) + ( GND ) + ( \divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(16),
	cin => \divider|Add0~34\,
	sumout => \divider|Add0~29_sumout\,
	cout => \divider|Add0~30\);

-- Location: FF_X31_Y1_N17
\divider|div_clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(16));

-- Location: LABCELL_X31_Y1_N18
\divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~25_sumout\ = SUM(( \divider|div_clks\(17) ) + ( GND ) + ( \divider|Add0~30\ ))
-- \divider|Add0~26\ = CARRY(( \divider|div_clks\(17) ) + ( GND ) + ( \divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(17),
	cin => \divider|Add0~30\,
	sumout => \divider|Add0~25_sumout\,
	cout => \divider|Add0~26\);

-- Location: FF_X31_Y1_N20
\divider|div_clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(17));

-- Location: LABCELL_X31_Y1_N21
\divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~21_sumout\ = SUM(( \divider|div_clks\(18) ) + ( GND ) + ( \divider|Add0~26\ ))
-- \divider|Add0~22\ = CARRY(( \divider|div_clks\(18) ) + ( GND ) + ( \divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(18),
	cin => \divider|Add0~26\,
	sumout => \divider|Add0~21_sumout\,
	cout => \divider|Add0~22\);

-- Location: FF_X31_Y1_N23
\divider|div_clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(18));

-- Location: LABCELL_X31_Y1_N24
\divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~17_sumout\ = SUM(( \divider|div_clks\(19) ) + ( GND ) + ( \divider|Add0~22\ ))
-- \divider|Add0~18\ = CARRY(( \divider|div_clks\(19) ) + ( GND ) + ( \divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(19),
	cin => \divider|Add0~22\,
	sumout => \divider|Add0~17_sumout\,
	cout => \divider|Add0~18\);

-- Location: FF_X31_Y1_N26
\divider|div_clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(19));

-- Location: LABCELL_X31_Y1_N27
\divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~13_sumout\ = SUM(( \divider|div_clks\(20) ) + ( GND ) + ( \divider|Add0~18\ ))
-- \divider|Add0~14\ = CARRY(( \divider|div_clks\(20) ) + ( GND ) + ( \divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(20),
	cin => \divider|Add0~18\,
	sumout => \divider|Add0~13_sumout\,
	cout => \divider|Add0~14\);

-- Location: FF_X31_Y1_N29
\divider|div_clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(20));

-- Location: LABCELL_X31_Y1_N30
\divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~9_sumout\ = SUM(( \divider|div_clks\(21) ) + ( GND ) + ( \divider|Add0~14\ ))
-- \divider|Add0~10\ = CARRY(( \divider|div_clks\(21) ) + ( GND ) + ( \divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(21),
	cin => \divider|Add0~14\,
	sumout => \divider|Add0~9_sumout\,
	cout => \divider|Add0~10\);

-- Location: FF_X31_Y1_N32
\divider|div_clks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(21));

-- Location: LABCELL_X31_Y1_N33
\divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~5_sumout\ = SUM(( \divider|div_clks\(22) ) + ( GND ) + ( \divider|Add0~10\ ))
-- \divider|Add0~6\ = CARRY(( \divider|div_clks\(22) ) + ( GND ) + ( \divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_div_clks\(22),
	cin => \divider|Add0~10\,
	sumout => \divider|Add0~5_sumout\,
	cout => \divider|Add0~6\);

-- Location: FF_X31_Y1_N35
\divider|div_clks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \divider|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(22));

-- Location: LABCELL_X31_Y1_N36
\divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~1_sumout\ = SUM(( \divider|div_clks\(23) ) + ( GND ) + ( \divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_div_clks\(23),
	cin => \divider|Add0~6\,
	sumout => \divider|Add0~1_sumout\);

-- Location: FF_X31_Y1_N56
\divider|div_clks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \divider|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|div_clks\(23));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X30_Y1_N33
\test|FF0|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test|FF0|q~0_combout\ = ( \test|FF0|q~q\ & ( (!\SW[2]~input_o\ & ((!\SW[1]~input_o\) # ((\test|FF1|q~q\)))) # (\SW[2]~input_o\ & (((\SW[3]~input_o\)) # (\SW[1]~input_o\))) ) ) # ( !\test|FF0|q~q\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & 
-- ((\test|FF1|q~q\)))) # (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010011101101111111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \test|FF1|ALT_INV_q~q\,
	dataf => \test|FF0|ALT_INV_q~q\,
	combout => \test|FF0|q~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X30_Y1_N32
\test|FF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|div_clks\(23),
	asdata => \test|FF0|q~0_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test|FF0|q~q\);

-- Location: LABCELL_X30_Y1_N30
\test|FF1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test|FF1|q~0_combout\ = ( \SW[3]~input_o\ & ( (!\SW[2]~input_o\ & ((!\SW[1]~input_o\ & ((\test|FF0|q~q\))) # (\SW[1]~input_o\ & (\test|FF1|q~q\)))) # (\SW[2]~input_o\ & (((\test|FF1|q~q\)) # (\SW[1]~input_o\))) ) ) # ( !\SW[3]~input_o\ & ( 
-- (!\SW[2]~input_o\ & ((!\SW[1]~input_o\ & ((\test|FF0|q~q\))) # (\SW[1]~input_o\ & (\test|FF1|q~q\)))) # (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\test|FF1|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111000010111100111110001011110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \test|FF1|ALT_INV_q~q\,
	datad => \test|FF0|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \test|FF1|q~0_combout\);

-- Location: FF_X30_Y1_N35
\test|FF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|div_clks\(23),
	asdata => \test|FF1|q~0_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test|FF1|q~q\);

-- Location: LABCELL_X30_Y1_N6
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \SW[2]~input_o\ & ( \test|FF0|q~q\ & ( \SW[3]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( \test|FF0|q~q\ & ( (!\SW[1]~input_o\) # (\test|FF1|q~q\) ) ) ) # ( \SW[2]~input_o\ & ( !\test|FF0|q~q\ & ( \SW[3]~input_o\ ) ) ) # ( 
-- !\SW[2]~input_o\ & ( !\test|FF0|q~q\ & ( (\test|FF1|q~q\ & \SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011001111111111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \test|FF1|ALT_INV_q~q\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \test|FF0|ALT_INV_q~q\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X48_Y7_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


