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

-- DATE "04/15/2016 17:08:48"

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

ENTITY 	file_reg_de1soc_test IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END file_reg_de1soc_test;

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
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF file_reg_de1soc_test IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clock_divider|div_clks[0]~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \write_data[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file|write_data[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux1~0_combout\ : std_logic;
SIGNAL \data_bus[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \reg_file|write_data[1]~1_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux3~0_combout\ : std_logic;
SIGNAL \data_bus[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \reg_file|write_data[2]~2_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux5~0_combout\ : std_logic;
SIGNAL \data_bus[2]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \write_data[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file|write_data[3]~3_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux7~0_combout\ : std_logic;
SIGNAL \data_bus[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \reg_file|write_data[4]~4_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux9~0_combout\ : std_logic;
SIGNAL \data_bus[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \write_data[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file|write_data[5]~5_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux11~0_combout\ : std_logic;
SIGNAL \data_bus[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \reg_file|write_data[6]~6_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux13~0_combout\ : std_logic;
SIGNAL \data_bus[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \write_data[7]~feeder_combout\ : std_logic;
SIGNAL \reg_file|write_data[7]~7_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux15~0_combout\ : std_logic;
SIGNAL \data_bus[7]~7_combout\ : std_logic;
SIGNAL write_data : std_logic_vector(31 DOWNTO 0);
SIGNAL led_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_divider|div_clks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \reg_file|ALT_INV_write_data[7]~7_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_write_data[6]~6_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_write_data[5]~5_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_write_data[3]~3_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_write_data[2]~2_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_write_data[1]~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_div_clks\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \reg_file|ALT_INV_write_data[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\reg_file|ALT_INV_write_data[7]~7_combout\ <= NOT \reg_file|write_data[7]~7_combout\;
\reg_file|ALT_INV_write_data[6]~6_combout\ <= NOT \reg_file|write_data[6]~6_combout\;
\reg_file|ALT_INV_write_data[5]~5_combout\ <= NOT \reg_file|write_data[5]~5_combout\;
\reg_file|ALT_INV_write_data[3]~3_combout\ <= NOT \reg_file|write_data[3]~3_combout\;
\reg_file|ALT_INV_write_data[2]~2_combout\ <= NOT \reg_file|write_data[2]~2_combout\;
\reg_file|ALT_INV_write_data[1]~1_combout\ <= NOT \reg_file|write_data[1]~1_combout\;
\clock_divider|ALT_INV_div_clks\(0) <= NOT \clock_divider|div_clks\(0);
\reg_file|ALT_INV_write_data[0]~0_combout\ <= NOT \reg_file|write_data[0]~0_combout\;
ALT_INV_write_data(7) <= NOT write_data(7);
\reg_file|FILE_REG_HW|ALT_INV_Mux15~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux15~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~q\;
ALT_INV_write_data(6) <= NOT write_data(6);
\reg_file|FILE_REG_HW|ALT_INV_Mux13~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux13~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\;
ALT_INV_write_data(5) <= NOT write_data(5);
\reg_file|FILE_REG_HW|ALT_INV_Mux11~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux11~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\;
ALT_INV_write_data(4) <= NOT write_data(4);
\reg_file|FILE_REG_HW|ALT_INV_Mux9~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux9~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\;
ALT_INV_write_data(3) <= NOT write_data(3);
\reg_file|FILE_REG_HW|ALT_INV_Mux7~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux7~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\;
ALT_INV_write_data(2) <= NOT write_data(2);
\reg_file|FILE_REG_HW|ALT_INV_Mux5~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux5~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\;
ALT_INV_write_data(1) <= NOT write_data(1);
\reg_file|FILE_REG_HW|ALT_INV_Mux3~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux3~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\;
\clock_divider|ALT_INV_div_clks\(1) <= NOT \clock_divider|div_clks\(1);
ALT_INV_write_data(0) <= NOT write_data(0);
\reg_file|FILE_REG_HW|ALT_INV_Mux1~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux1~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => led_data(0),
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
	i => led_data(1),
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
	i => led_data(2),
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
	i => led_data(3),
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
	i => led_data(4),
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
	i => led_data(5),
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
	i => led_data(6),
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
	i => led_data(7),
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

-- Location: LABCELL_X31_Y1_N54
\clock_divider|div_clks[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|div_clks[0]~0_combout\ = ( !\clock_divider|div_clks\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_div_clks\(0),
	combout => \clock_divider|div_clks[0]~0_combout\);

-- Location: FF_X31_Y1_N35
\clock_divider|div_clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clock_divider|div_clks[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(0));

-- Location: LABCELL_X31_Y1_N33
\clock_divider|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~0_combout\ = ( !\clock_divider|div_clks\(0) & ( \clock_divider|div_clks\(1) ) ) # ( \clock_divider|div_clks\(0) & ( !\clock_divider|div_clks\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clock_divider|ALT_INV_div_clks\(0),
	dataf => \clock_divider|ALT_INV_div_clks\(1),
	combout => \clock_divider|Add0~0_combout\);

-- Location: FF_X31_Y1_N32
\clock_divider|div_clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clock_divider|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(1));

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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

-- Location: MLABCELL_X28_Y1_N27
\write_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data[0]~feeder_combout\ = ( \SW[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \write_data[0]~feeder_combout\);

-- Location: FF_X28_Y1_N29
\write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[0]~feeder_combout\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(0));

-- Location: LABCELL_X33_Y1_N9
\reg_file|write_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[0]~0_combout\ = ( write_data(0) ) # ( !write_data(0) & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => ALT_INV_write_data(0),
	combout => \reg_file|write_data[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X28_Y1_N57
\reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\ = ( \SW[8]~input_o\ & ( (!\KEY[1]~input_o\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\);

-- Location: FF_X33_Y1_N10
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X30_Y1_N3
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~feeder_combout\ = ( \reg_file|write_data[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[0]~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~feeder_combout\);

-- Location: MLABCELL_X28_Y1_N48
\reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\ = ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & !\KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\);

-- Location: FF_X30_Y1_N4
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X30_Y1_N39
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~feeder_combout\ = ( \reg_file|write_data[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[0]~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~feeder_combout\);

-- Location: MLABCELL_X28_Y1_N51
\reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\ = ( \SW[8]~input_o\ & ( (!\KEY[1]~input_o\ & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\);

-- Location: FF_X30_Y1_N40
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\);

-- Location: MLABCELL_X28_Y1_N54
\reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\ = ( !\SW[8]~input_o\ & ( (\SW[9]~input_o\ & !\KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\);

-- Location: FF_X33_Y1_N32
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X33_Y1_N30
\reg_file|FILE_REG_HW|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux1~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\))) # (\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\)) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\))) # (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\)) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\SW[9]~input_o\) # (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( !\SW[8]~input_o\ & ( 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\ & !\SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux1~0_combout\);

-- Location: MLABCELL_X28_Y1_N3
\data_bus[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[0]~0_combout\ = ( \reg_file|FILE_REG_HW|Mux1~0_combout\ & ( (write_data(0)) # (\KEY[1]~input_o\) ) ) # ( !\reg_file|FILE_REG_HW|Mux1~0_combout\ & ( (!\KEY[1]~input_o\ & write_data(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datad => ALT_INV_write_data(0),
	dataf => \reg_file|FILE_REG_HW|ALT_INV_Mux1~0_combout\,
	combout => \data_bus[0]~0_combout\);

-- Location: FF_X28_Y1_N4
\led_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[0]~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(0));

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

-- Location: FF_X28_Y1_N26
\write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(1));

-- Location: LABCELL_X29_Y1_N36
\reg_file|write_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[1]~1_combout\ = ( write_data(1) ) # ( !write_data(1) & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	dataf => ALT_INV_write_data(1),
	combout => \reg_file|write_data[1]~1_combout\);

-- Location: FF_X29_Y1_N38
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[1]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\);

-- Location: LABCELL_X30_Y1_N48
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~feeder_combout\ = ( \reg_file|write_data[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[1]~1_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N49
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\);

-- Location: FF_X29_Y1_N32
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[1]~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\);

-- Location: LABCELL_X30_Y1_N12
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\ = ( \reg_file|write_data[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[1]~1_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N14
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\);

-- Location: LABCELL_X29_Y1_N30
\reg_file|FILE_REG_HW|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux3~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\ & ( (!\SW[8]~input_o\) # ((!\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\))) # (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\ & ( (!\SW[8]~input_o\ & (!\SW[9]~input_o\)) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\))) # (\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\)))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\ & ( (!\SW[8]~input_o\ & 
-- (\SW[9]~input_o\)) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\))) # (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\)))) ) ) ) # ( 
-- !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\ & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\))) # 
-- (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	dataf => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	combout => \reg_file|FILE_REG_HW|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y1_N0
\data_bus[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[1]~1_combout\ = ( write_data(1) & ( (!\KEY[1]~input_o\) # (\reg_file|FILE_REG_HW|Mux3~0_combout\) ) ) # ( !write_data(1) & ( (\KEY[1]~input_o\ & \reg_file|FILE_REG_HW|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datad => \reg_file|FILE_REG_HW|ALT_INV_Mux3~0_combout\,
	dataf => ALT_INV_write_data(1),
	combout => \data_bus[1]~1_combout\);

-- Location: FF_X28_Y1_N1
\led_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[1]~1_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(1));

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

-- Location: FF_X28_Y1_N32
\write_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(2));

-- Location: LABCELL_X33_Y1_N51
\reg_file|write_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[2]~2_combout\ = ( write_data(2) ) # ( !write_data(2) & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => ALT_INV_write_data(2),
	combout => \reg_file|write_data[2]~2_combout\);

-- Location: LABCELL_X30_Y1_N15
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\ = ( \reg_file|write_data[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[2]~2_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N16
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\);

-- Location: LABCELL_X30_Y1_N51
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\ = ( \reg_file|write_data[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[2]~2_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N52
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\);

-- Location: FF_X33_Y1_N52
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[2]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\);

-- Location: FF_X33_Y1_N14
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[2]~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\);

-- Location: LABCELL_X33_Y1_N12
\reg_file|FILE_REG_HW|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux5~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\)) # (\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux5~0_combout\);

-- Location: MLABCELL_X28_Y1_N6
\data_bus[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[2]~2_combout\ = (!\KEY[1]~input_o\ & ((write_data(2)))) # (\KEY[1]~input_o\ & (\reg_file|FILE_REG_HW|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \reg_file|FILE_REG_HW|ALT_INV_Mux5~0_combout\,
	datad => ALT_INV_write_data(2),
	combout => \data_bus[2]~2_combout\);

-- Location: FF_X28_Y1_N7
\led_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[2]~2_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(2));

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

-- Location: MLABCELL_X28_Y1_N33
\write_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data[3]~feeder_combout\ = ( \SW[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \write_data[3]~feeder_combout\);

-- Location: FF_X28_Y1_N35
\write_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[3]~feeder_combout\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(3));

-- Location: LABCELL_X33_Y1_N6
\reg_file|write_data[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[3]~3_combout\ = ( write_data(3) ) # ( !write_data(3) & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => ALT_INV_write_data(3),
	combout => \reg_file|write_data[3]~3_combout\);

-- Location: LABCELL_X30_Y1_N36
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\ = ( \reg_file|write_data[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[3]~3_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N37
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\);

-- Location: LABCELL_X30_Y1_N0
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\ = ( \reg_file|write_data[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[3]~3_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N1
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\);

-- Location: FF_X33_Y1_N56
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[3]~3_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\);

-- Location: FF_X33_Y1_N7
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[3]~3_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\);

-- Location: LABCELL_X33_Y1_N54
\reg_file|FILE_REG_HW|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux7~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\ & ( ((!\SW[8]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\))) # (\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\))) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ 
-- & ( \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\ & ( (!\SW[8]~input_o\ & (((!\SW[9]~input_o\ & \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\)))) # (\SW[8]~input_o\ & (((\SW[9]~input_o\)) # 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\ & ( (!\SW[8]~input_o\ & 
-- (((\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\) # (\SW[9]~input_o\)))) # (\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\ & (!\SW[9]~input_o\))) ) ) ) # ( 
-- !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\))) # 
-- (\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	dataf => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	combout => \reg_file|FILE_REG_HW|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y1_N9
\data_bus[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[3]~3_combout\ = ( write_data(3) & ( (!\KEY[1]~input_o\) # (\reg_file|FILE_REG_HW|Mux7~0_combout\) ) ) # ( !write_data(3) & ( (\KEY[1]~input_o\ & \reg_file|FILE_REG_HW|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \reg_file|FILE_REG_HW|ALT_INV_Mux7~0_combout\,
	dataf => ALT_INV_write_data(3),
	combout => \data_bus[3]~3_combout\);

-- Location: FF_X28_Y1_N10
\led_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[3]~3_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(3));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X28_Y1_N38
\write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(4));

-- Location: LABCELL_X33_Y1_N36
\reg_file|write_data[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[4]~4_combout\ = ( write_data(4) ) # ( !write_data(4) & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => ALT_INV_write_data(4),
	combout => \reg_file|write_data[4]~4_combout\);

-- Location: FF_X30_Y1_N31
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[4]~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\);

-- Location: FF_X33_Y1_N37
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[4]~4_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\);

-- Location: FF_X30_Y1_N55
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[4]~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\);

-- Location: FF_X33_Y1_N2
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[4]~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\);

-- Location: LABCELL_X33_Y1_N0
\reg_file|FILE_REG_HW|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux9~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\)) # (\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux9~0_combout\);

-- Location: MLABCELL_X28_Y1_N42
\data_bus[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[4]~4_combout\ = (!\KEY[1]~input_o\ & ((write_data(4)))) # (\KEY[1]~input_o\ & (\reg_file|FILE_REG_HW|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \reg_file|FILE_REG_HW|ALT_INV_Mux9~0_combout\,
	datad => ALT_INV_write_data(4),
	combout => \data_bus[4]~4_combout\);

-- Location: FF_X28_Y1_N43
\led_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[4]~4_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(4));

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X28_Y1_N39
\write_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data[5]~feeder_combout\ = ( \SW[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \write_data[5]~feeder_combout\);

-- Location: FF_X28_Y1_N41
\write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[5]~feeder_combout\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(5));

-- Location: LABCELL_X29_Y1_N39
\reg_file|write_data[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[5]~5_combout\ = (write_data(5)) # (\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => ALT_INV_write_data(5),
	combout => \reg_file|write_data[5]~5_combout\);

-- Location: LABCELL_X30_Y1_N57
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~feeder_combout\ = ( \reg_file|write_data[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[5]~5_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N58
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\);

-- Location: FF_X29_Y1_N41
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[5]~5_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\);

-- Location: FF_X33_Y1_N44
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[5]~5_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\);

-- Location: LABCELL_X30_Y1_N33
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\ = ( \reg_file|write_data[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[5]~5_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N34
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\);

-- Location: LABCELL_X33_Y1_N42
\reg_file|FILE_REG_HW|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux11~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\ & (((\SW[9]~input_o\)) # 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\))) # (\SW[8]~input_o\ & (((!\SW[9]~input_o\) # (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\)))) ) ) ) # ( 
-- !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ & (!\SW[9]~input_o\))) # 
-- (\SW[8]~input_o\ & (((!\SW[9]~input_o\) # (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\)))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( 
-- !\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\ & (((\SW[9]~input_o\)) # (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\))) # (\SW[8]~input_o\ & (((\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\)))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ & (!\SW[9]~input_o\))) # (\SW[8]~input_o\ & (((\SW[9]~input_o\ & \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	dataf => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	combout => \reg_file|FILE_REG_HW|Mux11~0_combout\);

-- Location: MLABCELL_X28_Y1_N45
\data_bus[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[5]~5_combout\ = ( \reg_file|FILE_REG_HW|Mux11~0_combout\ & ( (write_data(5)) # (\KEY[1]~input_o\) ) ) # ( !\reg_file|FILE_REG_HW|Mux11~0_combout\ & ( (!\KEY[1]~input_o\ & write_data(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => ALT_INV_write_data(5),
	dataf => \reg_file|FILE_REG_HW|ALT_INV_Mux11~0_combout\,
	combout => \data_bus[5]~5_combout\);

-- Location: FF_X28_Y1_N46
\led_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[5]~5_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(5));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X28_Y1_N14
\write_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(6));

-- Location: LABCELL_X33_Y1_N48
\reg_file|write_data[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[6]~6_combout\ = (write_data(6)) # (\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => ALT_INV_write_data(6),
	combout => \reg_file|write_data[6]~6_combout\);

-- Location: LABCELL_X30_Y1_N42
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~feeder_combout\ = ( \reg_file|write_data[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[6]~6_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N43
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\);

-- Location: LABCELL_X30_Y1_N6
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~feeder_combout\ = ( \reg_file|write_data[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[6]~6_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N7
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\);

-- Location: FF_X33_Y1_N20
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[6]~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\);

-- Location: FF_X33_Y1_N49
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[6]~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\);

-- Location: LABCELL_X33_Y1_N18
\reg_file|FILE_REG_HW|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux13~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\ & ( \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\ & ( ((!\SW[8]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\))) # (\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\))) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\ 
-- & ( \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\ & ( (!\SW[8]~input_o\ & (((\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\ & !\SW[9]~input_o\)))) # (\SW[8]~input_o\ & (((\SW[9]~input_o\)) # 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\ & ( (!\SW[8]~input_o\ & 
-- (((\SW[9]~input_o\) # (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\)))) # (\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\ & ((!\SW[9]~input_o\)))) ) ) ) # ( 
-- !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|q~q\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|q~q\))) # 
-- (\SW[8]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[6].FF|ALT_INV_q~q\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[6].FF|ALT_INV_q~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[6].FF|ALT_INV_q~q\,
	dataf => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[6].FF|ALT_INV_q~q\,
	combout => \reg_file|FILE_REG_HW|Mux13~0_combout\);

-- Location: MLABCELL_X28_Y1_N18
\data_bus[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[6]~6_combout\ = ( \reg_file|FILE_REG_HW|Mux13~0_combout\ & ( (write_data(6)) # (\KEY[1]~input_o\) ) ) # ( !\reg_file|FILE_REG_HW|Mux13~0_combout\ & ( (!\KEY[1]~input_o\ & write_data(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => ALT_INV_write_data(6),
	dataf => \reg_file|FILE_REG_HW|ALT_INV_Mux13~0_combout\,
	combout => \data_bus[6]~6_combout\);

-- Location: FF_X28_Y1_N19
\led_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[6]~6_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(6));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X28_Y1_N15
\write_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data[7]~feeder_combout\ = ( \SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \write_data[7]~feeder_combout\);

-- Location: FF_X28_Y1_N17
\write_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[7]~feeder_combout\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(7));

-- Location: LABCELL_X33_Y1_N39
\reg_file|write_data[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|write_data[7]~7_combout\ = (write_data(7)) # (\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => ALT_INV_write_data(7),
	combout => \reg_file|write_data[7]~7_combout\);

-- Location: FF_X33_Y1_N40
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|write_data[7]~7_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|q~q\);

-- Location: LABCELL_X30_Y1_N9
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~feeder_combout\ = ( \reg_file|write_data[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[7]~7_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N10
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~q\);

-- Location: LABCELL_X30_Y1_N45
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~feeder_combout\ = ( \reg_file|write_data[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_write_data[7]~7_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~feeder_combout\);

-- Location: FF_X30_Y1_N46
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~q\);

-- Location: FF_X33_Y1_N26
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|write_data[7]~7_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\);

-- Location: LABCELL_X33_Y1_N24
\reg_file|FILE_REG_HW|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux15~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~q\))) # (\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|q~q\)) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|q~q\))) # (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|q~q\)) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[7].FF|ALT_INV_q~q\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[7].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[7].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[7].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux15~0_combout\);

-- Location: MLABCELL_X28_Y1_N21
\data_bus[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[7]~7_combout\ = (!\KEY[1]~input_o\ & (write_data(7))) # (\KEY[1]~input_o\ & ((\reg_file|FILE_REG_HW|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => ALT_INV_write_data(7),
	datad => \reg_file|FILE_REG_HW|ALT_INV_Mux15~0_combout\,
	combout => \data_bus[7]~7_combout\);

-- Location: FF_X28_Y1_N23
\led_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[7]~7_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(7));

-- Location: LABCELL_X24_Y35_N0
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


