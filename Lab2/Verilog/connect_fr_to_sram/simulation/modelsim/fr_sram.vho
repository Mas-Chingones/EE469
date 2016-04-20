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

-- DATE "04/16/2016 16:04:28"

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

ENTITY 	fr_sram IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END fr_sram;

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
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fr_sram IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clock_divider|div_clks[0]~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \write_data[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \write_data~0_combout\ : std_logic;
SIGNAL \fr_state~1_combout\ : std_logic;
SIGNAL \fr_state~0_combout\ : std_logic;
SIGNAL \reg_file|read_cond~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \sram_state~1_combout\ : std_logic;
SIGNAL \sram_state~0_combout\ : std_logic;
SIGNAL \memory|data_bus~0_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[0]~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \memory|always0~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \memory|memory~32775_combout\ : std_logic;
SIGNAL \memory|memory~16_q\ : std_logic;
SIGNAL \memory|memory~32774_combout\ : std_logic;
SIGNAL \memory|memory~0_q\ : std_logic;
SIGNAL \memory|memory~32776_combout\ : std_logic;
SIGNAL \memory|memory~32_q\ : std_logic;
SIGNAL \memory|memory~32777_combout\ : std_logic;
SIGNAL \memory|memory~48_q\ : std_logic;
SIGNAL \memory|memory~32768_combout\ : std_logic;
SIGNAL \memory|always1~0_combout\ : std_logic;
SIGNAL \memory|mdr[0]~0_combout\ : std_logic;
SIGNAL \memory|mdr[1]~1_combout\ : std_logic;
SIGNAL \db_saved_state[3]~1_combout\ : std_logic;
SIGNAL \db_saved_state[0]~2_combout\ : std_logic;
SIGNAL \db_saved_state[1]~0_combout\ : std_logic;
SIGNAL \db_saved_state[2]~3_combout\ : std_logic;
SIGNAL \writing_db~0_combout\ : std_logic;
SIGNAL \reg_file|WRITE[0].write_tri~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux1~0_combout\ : std_logic;
SIGNAL \data_bus[0]~0_combout\ : std_logic;
SIGNAL \led_data~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \write_data[1]~feeder_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[1]~1_combout\ : std_logic;
SIGNAL \memory|memory~1_q\ : std_logic;
SIGNAL \memory|memory~17_q\ : std_logic;
SIGNAL \memory|memory~33_q\ : std_logic;
SIGNAL \memory|memory~49_q\ : std_logic;
SIGNAL \memory|memory~32769_combout\ : std_logic;
SIGNAL \memory|mdr[1]~2_combout\ : std_logic;
SIGNAL \reg_file|WRITE[1].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux3~0_combout\ : std_logic;
SIGNAL \data_bus[1]~1_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[2]~2_combout\ : std_logic;
SIGNAL \memory|memory~18_q\ : std_logic;
SIGNAL \memory|memory~2_q\ : std_logic;
SIGNAL \memory|memory~34_q\ : std_logic;
SIGNAL \memory|memory~50_q\ : std_logic;
SIGNAL \memory|memory~32770_combout\ : std_logic;
SIGNAL \memory|mdr[2]~3_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \write_data[2]~feeder_combout\ : std_logic;
SIGNAL \reg_file|WRITE[2].write_tri~0_combout\ : std_logic;
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
SIGNAL \memory|sram_data_bus[3]~3_combout\ : std_logic;
SIGNAL \memory|memory~3feeder_combout\ : std_logic;
SIGNAL \memory|memory~3_q\ : std_logic;
SIGNAL \memory|memory~51_q\ : std_logic;
SIGNAL \memory|memory~35_q\ : std_logic;
SIGNAL \memory|memory~19feeder_combout\ : std_logic;
SIGNAL \memory|memory~19_q\ : std_logic;
SIGNAL \memory|memory~32771_combout\ : std_logic;
SIGNAL \memory|mdr[3]~4_combout\ : std_logic;
SIGNAL \reg_file|WRITE[3].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux7~0_combout\ : std_logic;
SIGNAL \data_bus[3]~3_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[4]~4_combout\ : std_logic;
SIGNAL \memory|memory~4feeder_combout\ : std_logic;
SIGNAL \memory|memory~4_q\ : std_logic;
SIGNAL \memory|memory~52_q\ : std_logic;
SIGNAL \memory|memory~20feeder_combout\ : std_logic;
SIGNAL \memory|memory~20_q\ : std_logic;
SIGNAL \memory|memory~36_q\ : std_logic;
SIGNAL \memory|memory~32772_combout\ : std_logic;
SIGNAL \memory|mdr[4]~5_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \reg_file|WRITE[4].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux9~0_combout\ : std_logic;
SIGNAL \data_bus[4]~4_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[5]~5_combout\ : std_logic;
SIGNAL \memory|memory~5feeder_combout\ : std_logic;
SIGNAL \memory|memory~5_q\ : std_logic;
SIGNAL \memory|memory~21feeder_combout\ : std_logic;
SIGNAL \memory|memory~21_q\ : std_logic;
SIGNAL \memory|memory~37_q\ : std_logic;
SIGNAL \memory|memory~53_q\ : std_logic;
SIGNAL \memory|memory~32773_combout\ : std_logic;
SIGNAL \memory|mdr[5]~6_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \reg_file|WRITE[5].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|Mux11~0_combout\ : std_logic;
SIGNAL \data_bus[5]~5_combout\ : std_logic;
SIGNAL write_data : std_logic_vector(31 DOWNTO 0);
SIGNAL sram_state : std_logic_vector(2 DOWNTO 0);
SIGNAL led_data : std_logic_vector(7 DOWNTO 0);
SIGNAL fr_state : std_logic_vector(2 DOWNTO 0);
SIGNAL db_saved_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider|div_clks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \memory|mdr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory|mar\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \memory|ALT_INV_mdr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg_file|ALT_INV_WRITE[1].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_WRITE[2].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_WRITE[3].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_WRITE[4].write_tri~0_combout\ : std_logic;
SIGNAL \reg_file|ALT_INV_WRITE[5].write_tri~0_combout\ : std_logic;
SIGNAL \memory|ALT_INV_sram_data_bus[5]~5_combout\ : std_logic;
SIGNAL \memory|ALT_INV_sram_data_bus[4]~4_combout\ : std_logic;
SIGNAL \memory|ALT_INV_sram_data_bus[3]~3_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[5]~6_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32773_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~53_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~37_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~21_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~5_q\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[4]~5_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32772_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~52_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~36_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~20_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~4_q\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[3]~4_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32771_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~51_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~35_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~19_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~3_q\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[2]~3_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32770_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~50_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~34_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~18_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~2_q\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[1]~2_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32769_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~49_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~33_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~17_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~1_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_div_clks\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \memory|ALT_INV_mdr[1]~1_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[0]~0_combout\ : std_logic;
SIGNAL \memory|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32768_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mar\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \memory|ALT_INV_memory~48_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~16_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~0_q\ : std_logic;
SIGNAL \ALT_INV_data_bus[5]~5_combout\ : std_logic;
SIGNAL ALT_INV_write_data : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \ALT_INV_data_bus[4]~4_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \ALT_INV_data_bus[3]~3_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \ALT_INV_data_bus[2]~2_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \ALT_INV_data_bus[1]~1_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \ALT_INV_data_bus[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_writing_db~0_combout\ : std_logic;
SIGNAL ALT_INV_db_saved_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_file|FILE_REG_HW|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|ALT_INV_q~q\ : std_logic;
SIGNAL \memory|ALT_INV_data_bus~0_combout\ : std_logic;
SIGNAL ALT_INV_sram_state : std_logic_vector(2 DOWNTO 0);
SIGNAL \reg_file|ALT_INV_read_cond~combout\ : std_logic;
SIGNAL ALT_INV_fr_state : std_logic_vector(2 DOWNTO 1);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\memory|ALT_INV_mdr\(5) <= NOT \memory|mdr\(5);
\memory|ALT_INV_mdr\(4) <= NOT \memory|mdr\(4);
\memory|ALT_INV_mdr\(3) <= NOT \memory|mdr\(3);
\memory|ALT_INV_mdr\(2) <= NOT \memory|mdr\(2);
\memory|ALT_INV_mdr\(1) <= NOT \memory|mdr\(1);
\memory|ALT_INV_mdr\(0) <= NOT \memory|mdr\(0);
\reg_file|ALT_INV_WRITE[1].write_tri~0_combout\ <= NOT \reg_file|WRITE[1].write_tri~0_combout\;
\reg_file|ALT_INV_WRITE[2].write_tri~0_combout\ <= NOT \reg_file|WRITE[2].write_tri~0_combout\;
\reg_file|ALT_INV_WRITE[3].write_tri~0_combout\ <= NOT \reg_file|WRITE[3].write_tri~0_combout\;
\reg_file|ALT_INV_WRITE[4].write_tri~0_combout\ <= NOT \reg_file|WRITE[4].write_tri~0_combout\;
\reg_file|ALT_INV_WRITE[5].write_tri~0_combout\ <= NOT \reg_file|WRITE[5].write_tri~0_combout\;
\memory|ALT_INV_sram_data_bus[5]~5_combout\ <= NOT \memory|sram_data_bus[5]~5_combout\;
\memory|ALT_INV_sram_data_bus[4]~4_combout\ <= NOT \memory|sram_data_bus[4]~4_combout\;
\memory|ALT_INV_sram_data_bus[3]~3_combout\ <= NOT \memory|sram_data_bus[3]~3_combout\;
\memory|ALT_INV_mdr[5]~6_combout\ <= NOT \memory|mdr[5]~6_combout\;
\memory|ALT_INV_memory~32773_combout\ <= NOT \memory|memory~32773_combout\;
\memory|ALT_INV_memory~53_q\ <= NOT \memory|memory~53_q\;
\memory|ALT_INV_memory~37_q\ <= NOT \memory|memory~37_q\;
\memory|ALT_INV_memory~21_q\ <= NOT \memory|memory~21_q\;
\memory|ALT_INV_memory~5_q\ <= NOT \memory|memory~5_q\;
\memory|ALT_INV_mdr[4]~5_combout\ <= NOT \memory|mdr[4]~5_combout\;
\memory|ALT_INV_memory~32772_combout\ <= NOT \memory|memory~32772_combout\;
\memory|ALT_INV_memory~52_q\ <= NOT \memory|memory~52_q\;
\memory|ALT_INV_memory~36_q\ <= NOT \memory|memory~36_q\;
\memory|ALT_INV_memory~20_q\ <= NOT \memory|memory~20_q\;
\memory|ALT_INV_memory~4_q\ <= NOT \memory|memory~4_q\;
\memory|ALT_INV_mdr[3]~4_combout\ <= NOT \memory|mdr[3]~4_combout\;
\memory|ALT_INV_memory~32771_combout\ <= NOT \memory|memory~32771_combout\;
\memory|ALT_INV_memory~51_q\ <= NOT \memory|memory~51_q\;
\memory|ALT_INV_memory~35_q\ <= NOT \memory|memory~35_q\;
\memory|ALT_INV_memory~19_q\ <= NOT \memory|memory~19_q\;
\memory|ALT_INV_memory~3_q\ <= NOT \memory|memory~3_q\;
\memory|ALT_INV_mdr[2]~3_combout\ <= NOT \memory|mdr[2]~3_combout\;
\memory|ALT_INV_memory~32770_combout\ <= NOT \memory|memory~32770_combout\;
\memory|ALT_INV_memory~50_q\ <= NOT \memory|memory~50_q\;
\memory|ALT_INV_memory~34_q\ <= NOT \memory|memory~34_q\;
\memory|ALT_INV_memory~18_q\ <= NOT \memory|memory~18_q\;
\memory|ALT_INV_memory~2_q\ <= NOT \memory|memory~2_q\;
\memory|ALT_INV_mdr[1]~2_combout\ <= NOT \memory|mdr[1]~2_combout\;
\memory|ALT_INV_memory~32769_combout\ <= NOT \memory|memory~32769_combout\;
\memory|ALT_INV_memory~49_q\ <= NOT \memory|memory~49_q\;
\memory|ALT_INV_memory~33_q\ <= NOT \memory|memory~33_q\;
\memory|ALT_INV_memory~17_q\ <= NOT \memory|memory~17_q\;
\memory|ALT_INV_memory~1_q\ <= NOT \memory|memory~1_q\;
\clock_divider|ALT_INV_div_clks\(0) <= NOT \clock_divider|div_clks\(0);
\memory|ALT_INV_mdr[1]~1_combout\ <= NOT \memory|mdr[1]~1_combout\;
\memory|ALT_INV_mdr[0]~0_combout\ <= NOT \memory|mdr[0]~0_combout\;
\memory|ALT_INV_always1~0_combout\ <= NOT \memory|always1~0_combout\;
\memory|ALT_INV_memory~32768_combout\ <= NOT \memory|memory~32768_combout\;
\memory|ALT_INV_mar\(1) <= NOT \memory|mar\(1);
\memory|ALT_INV_mar\(0) <= NOT \memory|mar\(0);
\memory|ALT_INV_memory~48_q\ <= NOT \memory|memory~48_q\;
\memory|ALT_INV_memory~32_q\ <= NOT \memory|memory~32_q\;
\memory|ALT_INV_memory~16_q\ <= NOT \memory|memory~16_q\;
\memory|ALT_INV_memory~0_q\ <= NOT \memory|memory~0_q\;
\ALT_INV_data_bus[5]~5_combout\ <= NOT \data_bus[5]~5_combout\;
ALT_INV_write_data(5) <= NOT write_data(5);
\reg_file|FILE_REG_HW|ALT_INV_Mux11~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux11~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\;
\ALT_INV_data_bus[4]~4_combout\ <= NOT \data_bus[4]~4_combout\;
ALT_INV_write_data(4) <= NOT write_data(4);
\reg_file|FILE_REG_HW|ALT_INV_Mux9~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux9~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\;
\ALT_INV_data_bus[3]~3_combout\ <= NOT \data_bus[3]~3_combout\;
ALT_INV_write_data(3) <= NOT write_data(3);
\reg_file|FILE_REG_HW|ALT_INV_Mux7~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux7~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\;
\ALT_INV_data_bus[2]~2_combout\ <= NOT \data_bus[2]~2_combout\;
ALT_INV_write_data(2) <= NOT write_data(2);
\reg_file|FILE_REG_HW|ALT_INV_Mux5~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux5~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\;
\ALT_INV_data_bus[1]~1_combout\ <= NOT \data_bus[1]~1_combout\;
ALT_INV_write_data(1) <= NOT write_data(1);
\reg_file|FILE_REG_HW|ALT_INV_Mux3~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux3~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\;
\clock_divider|ALT_INV_div_clks\(1) <= NOT \clock_divider|div_clks\(1);
\ALT_INV_data_bus[0]~0_combout\ <= NOT \data_bus[0]~0_combout\;
\ALT_INV_writing_db~0_combout\ <= NOT \writing_db~0_combout\;
ALT_INV_db_saved_state(2) <= NOT db_saved_state(2);
ALT_INV_db_saved_state(0) <= NOT db_saved_state(0);
ALT_INV_db_saved_state(3) <= NOT db_saved_state(3);
ALT_INV_db_saved_state(1) <= NOT db_saved_state(1);
ALT_INV_write_data(0) <= NOT write_data(0);
\reg_file|FILE_REG_HW|ALT_INV_Mux1~0_combout\ <= NOT \reg_file|FILE_REG_HW|Mux1~0_combout\;
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\;
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|ALT_INV_q~q\ <= NOT \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\;
\memory|ALT_INV_data_bus~0_combout\ <= NOT \memory|data_bus~0_combout\;
ALT_INV_sram_state(1) <= NOT sram_state(1);
ALT_INV_sram_state(0) <= NOT sram_state(0);
ALT_INV_sram_state(2) <= NOT sram_state(2);
\reg_file|ALT_INV_read_cond~combout\ <= NOT \reg_file|read_cond~combout\;
ALT_INV_fr_state(2) <= NOT fr_state(2);
ALT_INV_fr_state(1) <= NOT fr_state(1);

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

-- Location: LABCELL_X23_Y14_N54
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

-- Location: FF_X23_Y14_N35
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

-- Location: LABCELL_X23_Y14_N33
\clock_divider|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~0_combout\ = !\clock_divider|div_clks\(1) $ (!\clock_divider|div_clks\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_div_clks\(1),
	datad => \clock_divider|ALT_INV_div_clks\(0),
	combout => \clock_divider|Add0~0_combout\);

-- Location: FF_X23_Y14_N32
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

-- Location: MLABCELL_X21_Y14_N39
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

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

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

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X21_Y14_N54
\write_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data~0_combout\ = ( \KEY[3]~input_o\ & ( (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ $ (!\KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \write_data~0_combout\);

-- Location: FF_X21_Y14_N41
\write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[0]~feeder_combout\,
	ena => \write_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(0));

-- Location: MLABCELL_X21_Y14_N6
\fr_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fr_state~1_combout\ = (\KEY[3]~input_o\ & (\KEY[0]~input_o\ & !\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	combout => \fr_state~1_combout\);

-- Location: FF_X21_Y14_N8
\fr_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \fr_state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fr_state(2));

-- Location: MLABCELL_X21_Y14_N27
\fr_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fr_state~0_combout\ = ( !\KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & \KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \fr_state~0_combout\);

-- Location: FF_X21_Y14_N29
\fr_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \fr_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fr_state(1));

-- Location: MLABCELL_X21_Y14_N12
\reg_file|read_cond\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|read_cond~combout\ = ( fr_state(1) & ( !fr_state(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fr_state(2),
	datae => ALT_INV_fr_state(1),
	combout => \reg_file|read_cond~combout\);

-- Location: MLABCELL_X21_Y14_N24
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \KEY[3]~input_o\ & ( (!\KEY[1]~input_o\ & ((\KEY[0]~input_o\))) # (\KEY[1]~input_o\ & (\KEY[2]~input_o\ & !\KEY[0]~input_o\)) ) ) # ( !\KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & (\KEY[1]~input_o\ & !\KEY[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001110011000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: FF_X21_Y14_N26
\sram_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sram_state(2));

-- Location: MLABCELL_X21_Y14_N9
\sram_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sram_state~1_combout\ = (\KEY[3]~input_o\ & (\KEY[0]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	combout => \sram_state~1_combout\);

-- Location: FF_X21_Y14_N11
\sram_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \sram_state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sram_state(1));

-- Location: MLABCELL_X21_Y14_N18
\sram_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sram_state~0_combout\ = ( !\KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & \KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \sram_state~0_combout\);

-- Location: FF_X21_Y14_N20
\sram_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \sram_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sram_state(0));

-- Location: LABCELL_X23_Y14_N30
\memory|data_bus~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|data_bus~0_combout\ = (sram_state(2) & (sram_state(1) & !sram_state(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sram_state(2),
	datab => ALT_INV_sram_state(1),
	datac => ALT_INV_sram_state(0),
	combout => \memory|data_bus~0_combout\);

-- Location: LABCELL_X24_Y14_N12
\memory|sram_data_bus[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[0]~0_combout\ = (!\memory|data_bus~0_combout\ & (\memory|mdr\(0))) # (\memory|data_bus~0_combout\ & ((\memory|memory~32768_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_data_bus~0_combout\,
	datac => \memory|ALT_INV_mdr\(0),
	datad => \memory|ALT_INV_memory~32768_combout\,
	combout => \memory|sram_data_bus[0]~0_combout\);

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

-- Location: LABCELL_X23_Y14_N9
\memory|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|always0~0_combout\ = ( sram_state(2) & ( !sram_state(0) $ (!sram_state(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sram_state(0),
	datac => ALT_INV_sram_state(1),
	dataf => ALT_INV_sram_state(2),
	combout => \memory|always0~0_combout\);

-- Location: FF_X23_Y14_N20
\memory|mar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|ALT_INV_div_clks\(1),
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \memory|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|mar\(1));

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

-- Location: FF_X23_Y14_N53
\memory|mar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|ALT_INV_div_clks\(1),
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \memory|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|mar\(0));

-- Location: LABCELL_X23_Y14_N36
\memory|memory~32775\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32775_combout\ = ( \memory|mar\(0) & ( (sram_state(2) & (!sram_state(1) & (sram_state(0) & !\memory|mar\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sram_state(2),
	datab => ALT_INV_sram_state(1),
	datac => ALT_INV_sram_state(0),
	datad => \memory|ALT_INV_mar\(1),
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32775_combout\);

-- Location: FF_X23_Y15_N38
\memory|memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[0]~0_combout\,
	sload => VCC,
	ena => \memory|memory~32775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~16_q\);

-- Location: LABCELL_X23_Y14_N57
\memory|memory~32774\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32774_combout\ = ( !\memory|mar\(0) & ( (sram_state(2) & (!sram_state(1) & (sram_state(0) & !\memory|mar\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sram_state(2),
	datab => ALT_INV_sram_state(1),
	datac => ALT_INV_sram_state(0),
	datad => \memory|ALT_INV_mar\(1),
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32774_combout\);

-- Location: FF_X23_Y15_N1
\memory|memory~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[0]~0_combout\,
	sload => VCC,
	ena => \memory|memory~32774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~0_q\);

-- Location: LABCELL_X23_Y14_N51
\memory|memory~32776\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32776_combout\ = ( sram_state(2) & ( (\memory|mar\(1) & (!sram_state(1) & (sram_state(0) & !\memory|mar\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mar\(1),
	datab => ALT_INV_sram_state(1),
	datac => ALT_INV_sram_state(0),
	datad => \memory|ALT_INV_mar\(0),
	dataf => ALT_INV_sram_state(2),
	combout => \memory|memory~32776_combout\);

-- Location: FF_X23_Y15_N14
\memory|memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[0]~0_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~32_q\);

-- Location: LABCELL_X23_Y14_N18
\memory|memory~32777\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32777_combout\ = ( \memory|mar\(0) & ( (sram_state(2) & (!sram_state(1) & (sram_state(0) & \memory|mar\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sram_state(2),
	datab => ALT_INV_sram_state(1),
	datac => ALT_INV_sram_state(0),
	datad => \memory|ALT_INV_mar\(1),
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32777_combout\);

-- Location: FF_X24_Y14_N13
\memory|memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|sram_data_bus[0]~0_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~48_q\);

-- Location: LABCELL_X23_Y15_N12
\memory|memory~32768\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32768_combout\ = ( \memory|memory~32_q\ & ( \memory|memory~48_q\ & ( ((!\memory|mar\(0) & ((\memory|memory~0_q\))) # (\memory|mar\(0) & (\memory|memory~16_q\))) # (\memory|mar\(1)) ) ) ) # ( !\memory|memory~32_q\ & ( \memory|memory~48_q\ & 
-- ( (!\memory|mar\(0) & (((!\memory|mar\(1) & \memory|memory~0_q\)))) # (\memory|mar\(0) & (((\memory|mar\(1))) # (\memory|memory~16_q\))) ) ) ) # ( \memory|memory~32_q\ & ( !\memory|memory~48_q\ & ( (!\memory|mar\(0) & (((\memory|memory~0_q\) # 
-- (\memory|mar\(1))))) # (\memory|mar\(0) & (\memory|memory~16_q\ & (!\memory|mar\(1)))) ) ) ) # ( !\memory|memory~32_q\ & ( !\memory|memory~48_q\ & ( (!\memory|mar\(1) & ((!\memory|mar\(0) & ((\memory|memory~0_q\))) # (\memory|mar\(0) & 
-- (\memory|memory~16_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~16_q\,
	datab => \memory|ALT_INV_mar\(0),
	datac => \memory|ALT_INV_mar\(1),
	datad => \memory|ALT_INV_memory~0_q\,
	datae => \memory|ALT_INV_memory~32_q\,
	dataf => \memory|ALT_INV_memory~48_q\,
	combout => \memory|memory~32768_combout\);

-- Location: LABCELL_X23_Y14_N3
\memory|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|always1~0_combout\ = (sram_state(0) & !sram_state(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sram_state(0),
	datab => ALT_INV_sram_state(1),
	combout => \memory|always1~0_combout\);

-- Location: LABCELL_X23_Y14_N42
\memory|mdr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[0]~0_combout\ = ( \memory|always1~0_combout\ & ( \clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(0)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32768_combout\)) ) ) ) # ( !\memory|always1~0_combout\ & ( 
-- \clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(0)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32768_combout\)) ) ) ) # ( \memory|always1~0_combout\ & ( !\clock_divider|div_clks\(1) & ( \data_bus[0]~0_combout\ ) ) ) 
-- # ( !\memory|always1~0_combout\ & ( !\clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(0)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32768_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010101010101010100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_bus[0]~0_combout\,
	datab => \memory|ALT_INV_data_bus~0_combout\,
	datac => \memory|ALT_INV_memory~32768_combout\,
	datad => \memory|ALT_INV_mdr\(0),
	datae => \memory|ALT_INV_always1~0_combout\,
	dataf => \clock_divider|ALT_INV_div_clks\(1),
	combout => \memory|mdr[0]~0_combout\);

-- Location: LABCELL_X23_Y14_N0
\memory|mdr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[1]~1_combout\ = ( \clock_divider|div_clks\(1) & ( (sram_state(1) & (sram_state(2) & !sram_state(0))) ) ) # ( !\clock_divider|div_clks\(1) & ( (!sram_state(1) & (sram_state(2) & sram_state(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sram_state(1),
	datac => ALT_INV_sram_state(2),
	datad => ALT_INV_sram_state(0),
	dataf => \clock_divider|ALT_INV_div_clks\(1),
	combout => \memory|mdr[1]~1_combout\);

-- Location: LABCELL_X23_Y14_N6
\memory|mdr[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(0) = ( \memory|mdr\(0) & ( (!\memory|mdr[1]~1_combout\) # (\memory|mdr[0]~0_combout\) ) ) # ( !\memory|mdr\(0) & ( (\memory|mdr[0]~0_combout\ & \memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_mdr[0]~0_combout\,
	datad => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(0),
	combout => \memory|mdr\(0));

-- Location: MLABCELL_X21_Y14_N21
\db_saved_state[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \db_saved_state[3]~1_combout\ = ( !\KEY[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \db_saved_state[3]~1_combout\);

-- Location: FF_X21_Y14_N23
\db_saved_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \db_saved_state[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_saved_state(3));

-- Location: MLABCELL_X21_Y14_N51
\db_saved_state[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \db_saved_state[0]~2_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \db_saved_state[0]~2_combout\);

-- Location: FF_X21_Y14_N52
\db_saved_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \db_saved_state[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_saved_state(0));

-- Location: MLABCELL_X21_Y14_N33
\db_saved_state[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \db_saved_state[1]~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \db_saved_state[1]~0_combout\);

-- Location: FF_X21_Y14_N35
\db_saved_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \db_saved_state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_saved_state(1));

-- Location: MLABCELL_X21_Y14_N30
\db_saved_state[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \db_saved_state[2]~3_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	combout => \db_saved_state[2]~3_combout\);

-- Location: FF_X21_Y14_N32
\db_saved_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \db_saved_state[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_saved_state(2));

-- Location: MLABCELL_X21_Y14_N48
\writing_db~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \writing_db~0_combout\ = ( db_saved_state(2) & ( (!db_saved_state(3) & (!db_saved_state(0) & !db_saved_state(1))) ) ) # ( !db_saved_state(2) & ( (!db_saved_state(3) & (db_saved_state(0) & !db_saved_state(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_db_saved_state(3),
	datab => ALT_INV_db_saved_state(0),
	datac => ALT_INV_db_saved_state(1),
	dataf => ALT_INV_db_saved_state(2),
	combout => \writing_db~0_combout\);

-- Location: LABCELL_X22_Y13_N42
\reg_file|WRITE[0].write_tri~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|WRITE[0].write_tri~0_combout\ = ( write_data(0) & ( \memory|mdr\(0) ) ) # ( !write_data(0) & ( \memory|mdr\(0) & ( ((!fr_state(2)) # (!\writing_db~0_combout\)) # (fr_state(1)) ) ) ) # ( write_data(0) & ( !\memory|mdr\(0) & ( ((!fr_state(2)) # 
-- (!\memory|data_bus~0_combout\)) # (fr_state(1)) ) ) ) # ( !write_data(0) & ( !\memory|mdr\(0) & ( ((!fr_state(2)) # ((!\memory|data_bus~0_combout\ & !\writing_db~0_combout\))) # (fr_state(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011101111111011111110111111111110111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fr_state(1),
	datab => ALT_INV_fr_state(2),
	datac => \memory|ALT_INV_data_bus~0_combout\,
	datad => \ALT_INV_writing_db~0_combout\,
	datae => ALT_INV_write_data(0),
	dataf => \memory|ALT_INV_mdr\(0),
	combout => \reg_file|WRITE[0].write_tri~0_combout\);

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

-- Location: LABCELL_X22_Y13_N57
\reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\ = ( \SW[9]~input_o\ & ( (\SW[8]~input_o\ & fr_state(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_fr_state(2),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\);

-- Location: FF_X22_Y13_N43
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|WRITE[0].write_tri~0_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X22_Y13_N48
\reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\ = ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & fr_state(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datad => ALT_INV_fr_state(2),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\);

-- Location: FF_X21_Y14_N16
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[0].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X22_Y13_N54
\reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\ = ( !\SW[9]~input_o\ & ( (\SW[8]~input_o\ & fr_state(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datad => ALT_INV_fr_state(2),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\);

-- Location: FF_X22_Y13_N32
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[0].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X22_Y13_N33
\reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\ = (!\SW[8]~input_o\ & (\SW[9]~input_o\ & fr_state(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => ALT_INV_fr_state(2),
	combout => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\);

-- Location: FF_X22_Y13_N8
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[0].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\);

-- Location: LABCELL_X22_Y13_N6
\reg_file|FILE_REG_HW|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux1~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\))) # (\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\)) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|q~q\))) # (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|q~q\)) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[0].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux1~0_combout\);

-- Location: LABCELL_X24_Y14_N0
\data_bus[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[0]~0_combout\ = ( \writing_db~0_combout\ & ( \memory|data_bus~0_combout\ & ( (write_data(0) & (\memory|mdr\(0) & ((!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux1~0_combout\)))) ) ) ) # ( !\writing_db~0_combout\ & ( 
-- \memory|data_bus~0_combout\ & ( (\memory|mdr\(0) & ((!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux1~0_combout\))) ) ) ) # ( \writing_db~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (write_data(0) & ((!\reg_file|read_cond~combout\) # 
-- (\reg_file|FILE_REG_HW|Mux1~0_combout\))) ) ) ) # ( !\writing_db~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111010001000101010100001100000011110000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_write_data(0),
	datab => \reg_file|ALT_INV_read_cond~combout\,
	datac => \memory|ALT_INV_mdr\(0),
	datad => \reg_file|FILE_REG_HW|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_writing_db~0_combout\,
	dataf => \memory|ALT_INV_data_bus~0_combout\,
	combout => \data_bus[0]~0_combout\);

-- Location: MLABCELL_X21_Y14_N57
\led_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_data~0_combout\ = ( \KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & (!\KEY[1]~input_o\ & \KEY[0]~input_o\)) ) ) # ( !\KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & (\KEY[1]~input_o\ & \KEY[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \led_data~0_combout\);

-- Location: FF_X24_Y14_N1
\led_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[0]~0_combout\,
	ena => \led_data~0_combout\,
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

-- Location: MLABCELL_X21_Y14_N36
\write_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data[1]~feeder_combout\ = ( \SW[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \write_data[1]~feeder_combout\);

-- Location: FF_X21_Y14_N38
\write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[1]~feeder_combout\,
	ena => \write_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(1));

-- Location: LABCELL_X24_Y14_N15
\memory|sram_data_bus[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[1]~1_combout\ = ( \memory|memory~32769_combout\ & ( (\memory|mdr\(1)) # (\memory|data_bus~0_combout\) ) ) # ( !\memory|memory~32769_combout\ & ( (!\memory|data_bus~0_combout\ & \memory|mdr\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_data_bus~0_combout\,
	datad => \memory|ALT_INV_mdr\(1),
	dataf => \memory|ALT_INV_memory~32769_combout\,
	combout => \memory|sram_data_bus[1]~1_combout\);

-- Location: FF_X23_Y15_N5
\memory|memory~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[1]~1_combout\,
	sload => VCC,
	ena => \memory|memory~32774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~1_q\);

-- Location: FF_X23_Y15_N41
\memory|memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[1]~1_combout\,
	sload => VCC,
	ena => \memory|memory~32775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~17_q\);

-- Location: FF_X23_Y15_N50
\memory|memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[1]~1_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~33_q\);

-- Location: FF_X24_Y14_N16
\memory|memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|sram_data_bus[1]~1_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~49_q\);

-- Location: LABCELL_X23_Y15_N48
\memory|memory~32769\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32769_combout\ = ( \memory|memory~33_q\ & ( \memory|memory~49_q\ & ( ((!\memory|mar\(0) & (\memory|memory~1_q\)) # (\memory|mar\(0) & ((\memory|memory~17_q\)))) # (\memory|mar\(1)) ) ) ) # ( !\memory|memory~33_q\ & ( \memory|memory~49_q\ & 
-- ( (!\memory|mar\(0) & (\memory|memory~1_q\ & (!\memory|mar\(1)))) # (\memory|mar\(0) & (((\memory|memory~17_q\) # (\memory|mar\(1))))) ) ) ) # ( \memory|memory~33_q\ & ( !\memory|memory~49_q\ & ( (!\memory|mar\(0) & (((\memory|mar\(1))) # 
-- (\memory|memory~1_q\))) # (\memory|mar\(0) & (((!\memory|mar\(1) & \memory|memory~17_q\)))) ) ) ) # ( !\memory|memory~33_q\ & ( !\memory|memory~49_q\ & ( (!\memory|mar\(1) & ((!\memory|mar\(0) & (\memory|memory~1_q\)) # (\memory|mar\(0) & 
-- ((\memory|memory~17_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~1_q\,
	datab => \memory|ALT_INV_mar\(0),
	datac => \memory|ALT_INV_mar\(1),
	datad => \memory|ALT_INV_memory~17_q\,
	datae => \memory|ALT_INV_memory~33_q\,
	dataf => \memory|ALT_INV_memory~49_q\,
	combout => \memory|memory~32769_combout\);

-- Location: LABCELL_X24_Y14_N48
\memory|mdr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[1]~2_combout\ = ( \data_bus[1]~1_combout\ & ( \memory|memory~32769_combout\ & ( (((!\clock_divider|div_clks\(1) & \memory|always1~0_combout\)) # (\memory|data_bus~0_combout\)) # (\memory|mdr\(1)) ) ) ) # ( !\data_bus[1]~1_combout\ & ( 
-- \memory|memory~32769_combout\ & ( (!\clock_divider|div_clks\(1) & (!\memory|always1~0_combout\ & ((\memory|data_bus~0_combout\) # (\memory|mdr\(1))))) # (\clock_divider|div_clks\(1) & (((\memory|data_bus~0_combout\) # (\memory|mdr\(1))))) ) ) ) # ( 
-- \data_bus[1]~1_combout\ & ( !\memory|memory~32769_combout\ & ( (!\clock_divider|div_clks\(1) & (((\memory|mdr\(1) & !\memory|data_bus~0_combout\)) # (\memory|always1~0_combout\))) # (\clock_divider|div_clks\(1) & (((\memory|mdr\(1) & 
-- !\memory|data_bus~0_combout\)))) ) ) ) # ( !\data_bus[1]~1_combout\ & ( !\memory|memory~32769_combout\ & ( (\memory|mdr\(1) & (!\memory|data_bus~0_combout\ & ((!\memory|always1~0_combout\) # (\clock_divider|div_clks\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000001011110010001000001101110111010010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_div_clks\(1),
	datab => \memory|ALT_INV_always1~0_combout\,
	datac => \memory|ALT_INV_mdr\(1),
	datad => \memory|ALT_INV_data_bus~0_combout\,
	datae => \ALT_INV_data_bus[1]~1_combout\,
	dataf => \memory|ALT_INV_memory~32769_combout\,
	combout => \memory|mdr[1]~2_combout\);

-- Location: LABCELL_X23_Y14_N21
\memory|mdr[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(1) = ( \memory|mdr\(1) & ( (!\memory|mdr[1]~1_combout\) # (\memory|mdr[1]~2_combout\) ) ) # ( !\memory|mdr\(1) & ( (\memory|mdr[1]~2_combout\ & \memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[1]~2_combout\,
	datad => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(1),
	combout => \memory|mdr\(1));

-- Location: LABCELL_X22_Y13_N45
\reg_file|WRITE[1].write_tri~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|WRITE[1].write_tri~0_combout\ = ( write_data(1) & ( \memory|mdr\(1) ) ) # ( !write_data(1) & ( \memory|mdr\(1) & ( ((!fr_state(2)) # (!\writing_db~0_combout\)) # (fr_state(1)) ) ) ) # ( write_data(1) & ( !\memory|mdr\(1) & ( ((!fr_state(2)) # 
-- (!\memory|data_bus~0_combout\)) # (fr_state(1)) ) ) ) # ( !write_data(1) & ( !\memory|mdr\(1) & ( ((!fr_state(2)) # ((!\writing_db~0_combout\ & !\memory|data_bus~0_combout\))) # (fr_state(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011101111111111101110111111101111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fr_state(1),
	datab => ALT_INV_fr_state(2),
	datac => \ALT_INV_writing_db~0_combout\,
	datad => \memory|ALT_INV_data_bus~0_combout\,
	datae => ALT_INV_write_data(1),
	dataf => \memory|ALT_INV_mdr\(1),
	combout => \reg_file|WRITE[1].write_tri~0_combout\);

-- Location: FF_X22_Y13_N53
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[1].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\);

-- Location: LABCELL_X23_Y13_N33
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\ = ( \reg_file|WRITE[1].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[1].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\);

-- Location: FF_X23_Y13_N35
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\);

-- Location: FF_X22_Y13_N47
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|WRITE[1].write_tri~0_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\);

-- Location: FF_X22_Y13_N26
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[1].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\);

-- Location: LABCELL_X22_Y13_N24
\reg_file|FILE_REG_HW|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux3~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\)) # (\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[1].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux3~0_combout\);

-- Location: LABCELL_X24_Y14_N36
\data_bus[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[1]~1_combout\ = ( \memory|mdr\(1) & ( \reg_file|read_cond~combout\ & ( (\reg_file|FILE_REG_HW|Mux3~0_combout\ & ((!\writing_db~0_combout\) # (write_data(1)))) ) ) ) # ( !\memory|mdr\(1) & ( \reg_file|read_cond~combout\ & ( 
-- (!\memory|data_bus~0_combout\ & (\reg_file|FILE_REG_HW|Mux3~0_combout\ & ((!\writing_db~0_combout\) # (write_data(1))))) ) ) ) # ( \memory|mdr\(1) & ( !\reg_file|read_cond~combout\ & ( (!\writing_db~0_combout\) # (write_data(1)) ) ) ) # ( !\memory|mdr\(1) 
-- & ( !\reg_file|read_cond~combout\ & ( (!\memory|data_bus~0_combout\ & ((!\writing_db~0_combout\) # (write_data(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010111111110000111100100010000000100011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_data_bus~0_combout\,
	datab => \reg_file|FILE_REG_HW|ALT_INV_Mux3~0_combout\,
	datac => ALT_INV_write_data(1),
	datad => \ALT_INV_writing_db~0_combout\,
	datae => \memory|ALT_INV_mdr\(1),
	dataf => \reg_file|ALT_INV_read_cond~combout\,
	combout => \data_bus[1]~1_combout\);

-- Location: FF_X24_Y14_N37
\led_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[1]~1_combout\,
	ena => \led_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(1));

-- Location: LABCELL_X24_Y14_N54
\memory|sram_data_bus[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[2]~2_combout\ = ( \memory|memory~32770_combout\ & ( (\memory|mdr\(2)) # (\memory|data_bus~0_combout\) ) ) # ( !\memory|memory~32770_combout\ & ( (!\memory|data_bus~0_combout\ & \memory|mdr\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_data_bus~0_combout\,
	datad => \memory|ALT_INV_mdr\(2),
	dataf => \memory|ALT_INV_memory~32770_combout\,
	combout => \memory|sram_data_bus[2]~2_combout\);

-- Location: FF_X23_Y15_N31
\memory|memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[2]~2_combout\,
	sload => VCC,
	ena => \memory|memory~32775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~18_q\);

-- Location: FF_X23_Y15_N55
\memory|memory~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[2]~2_combout\,
	sload => VCC,
	ena => \memory|memory~32774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~2_q\);

-- Location: FF_X23_Y15_N8
\memory|memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[2]~2_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~34_q\);

-- Location: FF_X24_Y14_N55
\memory|memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|sram_data_bus[2]~2_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~50_q\);

-- Location: LABCELL_X23_Y15_N6
\memory|memory~32770\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32770_combout\ = ( \memory|memory~34_q\ & ( \memory|memory~50_q\ & ( ((!\memory|mar\(0) & ((\memory|memory~2_q\))) # (\memory|mar\(0) & (\memory|memory~18_q\))) # (\memory|mar\(1)) ) ) ) # ( !\memory|memory~34_q\ & ( \memory|memory~50_q\ & 
-- ( (!\memory|mar\(0) & (((!\memory|mar\(1) & \memory|memory~2_q\)))) # (\memory|mar\(0) & (((\memory|mar\(1))) # (\memory|memory~18_q\))) ) ) ) # ( \memory|memory~34_q\ & ( !\memory|memory~50_q\ & ( (!\memory|mar\(0) & (((\memory|memory~2_q\) # 
-- (\memory|mar\(1))))) # (\memory|mar\(0) & (\memory|memory~18_q\ & (!\memory|mar\(1)))) ) ) ) # ( !\memory|memory~34_q\ & ( !\memory|memory~50_q\ & ( (!\memory|mar\(1) & ((!\memory|mar\(0) & ((\memory|memory~2_q\))) # (\memory|mar\(0) & 
-- (\memory|memory~18_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~18_q\,
	datab => \memory|ALT_INV_mar\(0),
	datac => \memory|ALT_INV_mar\(1),
	datad => \memory|ALT_INV_memory~2_q\,
	datae => \memory|ALT_INV_memory~34_q\,
	dataf => \memory|ALT_INV_memory~50_q\,
	combout => \memory|memory~32770_combout\);

-- Location: LABCELL_X23_Y14_N24
\memory|mdr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[2]~3_combout\ = ( \memory|always1~0_combout\ & ( \memory|memory~32770_combout\ & ( (!\clock_divider|div_clks\(1) & (\data_bus[2]~2_combout\)) # (\clock_divider|div_clks\(1) & (((\memory|data_bus~0_combout\) # (\memory|mdr\(2))))) ) ) ) # ( 
-- !\memory|always1~0_combout\ & ( \memory|memory~32770_combout\ & ( (\memory|data_bus~0_combout\) # (\memory|mdr\(2)) ) ) ) # ( \memory|always1~0_combout\ & ( !\memory|memory~32770_combout\ & ( (!\clock_divider|div_clks\(1) & (\data_bus[2]~2_combout\)) # 
-- (\clock_divider|div_clks\(1) & (((\memory|mdr\(2) & !\memory|data_bus~0_combout\)))) ) ) ) # ( !\memory|always1~0_combout\ & ( !\memory|memory~32770_combout\ & ( (\memory|mdr\(2) & !\memory|data_bus~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010001110100010000001111111111110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_bus[2]~2_combout\,
	datab => \clock_divider|ALT_INV_div_clks\(1),
	datac => \memory|ALT_INV_mdr\(2),
	datad => \memory|ALT_INV_data_bus~0_combout\,
	datae => \memory|ALT_INV_always1~0_combout\,
	dataf => \memory|ALT_INV_memory~32770_combout\,
	combout => \memory|mdr[2]~3_combout\);

-- Location: LABCELL_X23_Y14_N48
\memory|mdr[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(2) = ( \memory|mdr\(2) & ( (!\memory|mdr[1]~1_combout\) # (\memory|mdr[2]~3_combout\) ) ) # ( !\memory|mdr\(2) & ( (\memory|mdr[2]~3_combout\ & \memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[2]~3_combout\,
	datad => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(2),
	combout => \memory|mdr\(2));

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

-- Location: MLABCELL_X21_Y14_N0
\write_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_data[2]~feeder_combout\ = ( \SW[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \write_data[2]~feeder_combout\);

-- Location: FF_X21_Y14_N2
\write_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[2]~feeder_combout\,
	ena => \write_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(2));

-- Location: LABCELL_X22_Y14_N27
\reg_file|WRITE[2].write_tri~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|WRITE[2].write_tri~0_combout\ = ( write_data(2) & ( \memory|mdr\(2) ) ) # ( !write_data(2) & ( \memory|mdr\(2) & ( (!\writing_db~0_combout\) # ((!fr_state(2)) # (fr_state(1))) ) ) ) # ( write_data(2) & ( !\memory|mdr\(2) & ( 
-- (!\memory|data_bus~0_combout\) # ((!fr_state(2)) # (fr_state(1))) ) ) ) # ( !write_data(2) & ( !\memory|mdr\(2) & ( ((!fr_state(2)) # ((!\memory|data_bus~0_combout\ & !\writing_db~0_combout\))) # (fr_state(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001111111111111010111111111111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_data_bus~0_combout\,
	datab => \ALT_INV_writing_db~0_combout\,
	datac => ALT_INV_fr_state(1),
	datad => ALT_INV_fr_state(2),
	datae => ALT_INV_write_data(2),
	dataf => \memory|ALT_INV_mdr\(2),
	combout => \reg_file|WRITE[2].write_tri~0_combout\);

-- Location: LABCELL_X23_Y13_N30
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\ = ( \reg_file|WRITE[2].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[2].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\);

-- Location: FF_X23_Y13_N31
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\);

-- Location: LABCELL_X22_Y13_N0
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\ = ( \reg_file|WRITE[2].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[2].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\);

-- Location: FF_X22_Y13_N2
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\);

-- Location: FF_X22_Y14_N29
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|WRITE[2].write_tri~0_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\);

-- Location: FF_X22_Y13_N38
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[2].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\);

-- Location: LABCELL_X22_Y13_N36
\reg_file|FILE_REG_HW|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux5~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\)) # (\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\SW[9]~input_o\) # (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|q~q\ & ( !\SW[8]~input_o\ & ( 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|q~q\ & !\SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[2].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux5~0_combout\);

-- Location: LABCELL_X22_Y14_N30
\data_bus[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[2]~2_combout\ = ( \writing_db~0_combout\ & ( \memory|data_bus~0_combout\ & ( (\memory|mdr\(2) & (write_data(2) & ((!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux5~0_combout\)))) ) ) ) # ( !\writing_db~0_combout\ & ( 
-- \memory|data_bus~0_combout\ & ( (\memory|mdr\(2) & ((!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux5~0_combout\))) ) ) ) # ( \writing_db~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (write_data(2) & ((!\reg_file|read_cond~combout\) # 
-- (\reg_file|FILE_REG_HW|Mux5~0_combout\))) ) ) ) # ( !\writing_db~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111000010100000111100100010001100110000001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|ALT_INV_read_cond~combout\,
	datab => \memory|ALT_INV_mdr\(2),
	datac => ALT_INV_write_data(2),
	datad => \reg_file|FILE_REG_HW|ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_writing_db~0_combout\,
	dataf => \memory|ALT_INV_data_bus~0_combout\,
	combout => \data_bus[2]~2_combout\);

-- Location: FF_X22_Y14_N32
\led_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[2]~2_combout\,
	ena => \led_data~0_combout\,
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

-- Location: MLABCELL_X21_Y14_N3
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

-- Location: FF_X21_Y14_N5
\write_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \write_data[3]~feeder_combout\,
	ena => \write_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(3));

-- Location: LABCELL_X22_Y14_N36
\memory|sram_data_bus[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[3]~3_combout\ = ( \memory|memory~32771_combout\ & ( (\memory|data_bus~0_combout\) # (\memory|mdr\(3)) ) ) # ( !\memory|memory~32771_combout\ & ( (\memory|mdr\(3) & !\memory|data_bus~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_mdr\(3),
	datac => \memory|ALT_INV_data_bus~0_combout\,
	dataf => \memory|ALT_INV_memory~32771_combout\,
	combout => \memory|sram_data_bus[3]~3_combout\);

-- Location: LABCELL_X23_Y15_N57
\memory|memory~3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~3feeder_combout\ = ( \memory|sram_data_bus[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[3]~3_combout\,
	combout => \memory|memory~3feeder_combout\);

-- Location: FF_X23_Y15_N59
\memory|memory~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|memory~3feeder_combout\,
	ena => \memory|memory~32774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~3_q\);

-- Location: FF_X22_Y14_N37
\memory|memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|sram_data_bus[3]~3_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~51_q\);

-- Location: FF_X23_Y15_N44
\memory|memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[3]~3_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~35_q\);

-- Location: LABCELL_X23_Y15_N33
\memory|memory~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~19feeder_combout\ = ( \memory|sram_data_bus[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[3]~3_combout\,
	combout => \memory|memory~19feeder_combout\);

-- Location: FF_X23_Y15_N35
\memory|memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|memory~19feeder_combout\,
	ena => \memory|memory~32775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~19_q\);

-- Location: LABCELL_X23_Y15_N42
\memory|memory~32771\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32771_combout\ = ( \memory|memory~35_q\ & ( \memory|memory~19_q\ & ( (!\memory|mar\(1) & (((\memory|mar\(0))) # (\memory|memory~3_q\))) # (\memory|mar\(1) & (((!\memory|mar\(0)) # (\memory|memory~51_q\)))) ) ) ) # ( !\memory|memory~35_q\ & 
-- ( \memory|memory~19_q\ & ( (!\memory|mar\(1) & (((\memory|mar\(0))) # (\memory|memory~3_q\))) # (\memory|mar\(1) & (((\memory|memory~51_q\ & \memory|mar\(0))))) ) ) ) # ( \memory|memory~35_q\ & ( !\memory|memory~19_q\ & ( (!\memory|mar\(1) & 
-- (\memory|memory~3_q\ & ((!\memory|mar\(0))))) # (\memory|mar\(1) & (((!\memory|mar\(0)) # (\memory|memory~51_q\)))) ) ) ) # ( !\memory|memory~35_q\ & ( !\memory|memory~19_q\ & ( (!\memory|mar\(1) & (\memory|memory~3_q\ & ((!\memory|mar\(0))))) # 
-- (\memory|mar\(1) & (((\memory|memory~51_q\ & \memory|mar\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~3_q\,
	datab => \memory|ALT_INV_memory~51_q\,
	datac => \memory|ALT_INV_mar\(1),
	datad => \memory|ALT_INV_mar\(0),
	datae => \memory|ALT_INV_memory~35_q\,
	dataf => \memory|ALT_INV_memory~19_q\,
	combout => \memory|memory~32771_combout\);

-- Location: LABCELL_X22_Y14_N12
\memory|mdr[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[3]~4_combout\ = ( \memory|always1~0_combout\ & ( \memory|memory~32771_combout\ & ( (!\clock_divider|div_clks\(1) & (((\data_bus[3]~3_combout\)))) # (\clock_divider|div_clks\(1) & (((\memory|data_bus~0_combout\)) # (\memory|mdr\(3)))) ) ) ) # ( 
-- !\memory|always1~0_combout\ & ( \memory|memory~32771_combout\ & ( (\memory|data_bus~0_combout\) # (\memory|mdr\(3)) ) ) ) # ( \memory|always1~0_combout\ & ( !\memory|memory~32771_combout\ & ( (!\clock_divider|div_clks\(1) & (((\data_bus[3]~3_combout\)))) 
-- # (\clock_divider|div_clks\(1) & (\memory|mdr\(3) & (!\memory|data_bus~0_combout\))) ) ) ) # ( !\memory|always1~0_combout\ & ( !\memory|memory~32771_combout\ & ( (\memory|mdr\(3) & !\memory|data_bus~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000100001011101000111111001111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_div_clks\(1),
	datab => \memory|ALT_INV_mdr\(3),
	datac => \memory|ALT_INV_data_bus~0_combout\,
	datad => \ALT_INV_data_bus[3]~3_combout\,
	datae => \memory|ALT_INV_always1~0_combout\,
	dataf => \memory|ALT_INV_memory~32771_combout\,
	combout => \memory|mdr[3]~4_combout\);

-- Location: LABCELL_X23_Y14_N39
\memory|mdr[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(3) = ( \memory|mdr\(3) & ( (!\memory|mdr[1]~1_combout\) # (\memory|mdr[3]~4_combout\) ) ) # ( !\memory|mdr\(3) & ( (\memory|mdr[3]~4_combout\ & \memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[3]~4_combout\,
	datad => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(3),
	combout => \memory|mdr\(3));

-- Location: LABCELL_X22_Y14_N0
\reg_file|WRITE[3].write_tri~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|WRITE[3].write_tri~0_combout\ = ( write_data(3) & ( \memory|mdr\(3) ) ) # ( !write_data(3) & ( \memory|mdr\(3) & ( (!fr_state(2)) # ((!\writing_db~0_combout\) # (fr_state(1))) ) ) ) # ( write_data(3) & ( !\memory|mdr\(3) & ( (!fr_state(2)) # 
-- ((!\memory|data_bus~0_combout\) # (fr_state(1))) ) ) ) # ( !write_data(3) & ( !\memory|mdr\(3) & ( (!fr_state(2)) # (((!\memory|data_bus~0_combout\ & !\writing_db~0_combout\)) # (fr_state(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111011111110111111101111111111101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fr_state(2),
	datab => ALT_INV_fr_state(1),
	datac => \memory|ALT_INV_data_bus~0_combout\,
	datad => \ALT_INV_writing_db~0_combout\,
	datae => ALT_INV_write_data(3),
	dataf => \memory|ALT_INV_mdr\(3),
	combout => \reg_file|WRITE[3].write_tri~0_combout\);

-- Location: LABCELL_X23_Y13_N36
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\ = ( \reg_file|WRITE[3].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[3].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\);

-- Location: FF_X23_Y13_N38
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\);

-- Location: LABCELL_X22_Y13_N3
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\ = ( \reg_file|WRITE[3].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[3].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\);

-- Location: FF_X22_Y13_N5
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\);

-- Location: FF_X22_Y14_N2
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|WRITE[3].write_tri~0_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\);

-- Location: FF_X22_Y13_N14
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[3].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\);

-- Location: LABCELL_X22_Y13_N12
\reg_file|FILE_REG_HW|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux7~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\)) # (\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|q~q\))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[3].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux7~0_combout\);

-- Location: LABCELL_X22_Y14_N6
\data_bus[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[3]~3_combout\ = ( \memory|mdr\(3) & ( \memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\ & ((!\writing_db~0_combout\) # ((write_data(3))))) # (\reg_file|read_cond~combout\ & (\reg_file|FILE_REG_HW|Mux7~0_combout\ & 
-- ((!\writing_db~0_combout\) # (write_data(3))))) ) ) ) # ( \memory|mdr\(3) & ( !\memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\ & ((!\writing_db~0_combout\) # ((write_data(3))))) # (\reg_file|read_cond~combout\ & 
-- (\reg_file|FILE_REG_HW|Mux7~0_combout\ & ((!\writing_db~0_combout\) # (write_data(3))))) ) ) ) # ( !\memory|mdr\(3) & ( !\memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\ & ((!\writing_db~0_combout\) # ((write_data(3))))) # 
-- (\reg_file|read_cond~combout\ & (\reg_file|FILE_REG_HW|Mux7~0_combout\ & ((!\writing_db~0_combout\) # (write_data(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111100000000000000001000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|ALT_INV_read_cond~combout\,
	datab => \ALT_INV_writing_db~0_combout\,
	datac => ALT_INV_write_data(3),
	datad => \reg_file|FILE_REG_HW|ALT_INV_Mux7~0_combout\,
	datae => \memory|ALT_INV_mdr\(3),
	dataf => \memory|ALT_INV_data_bus~0_combout\,
	combout => \data_bus[3]~3_combout\);

-- Location: FF_X22_Y14_N7
\led_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[3]~3_combout\,
	ena => \led_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(3));

-- Location: LABCELL_X24_Y14_N57
\memory|sram_data_bus[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[4]~4_combout\ = ( \memory|memory~32772_combout\ & ( (\memory|mdr\(4)) # (\memory|data_bus~0_combout\) ) ) # ( !\memory|memory~32772_combout\ & ( (!\memory|data_bus~0_combout\ & \memory|mdr\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_data_bus~0_combout\,
	datac => \memory|ALT_INV_mdr\(4),
	dataf => \memory|ALT_INV_memory~32772_combout\,
	combout => \memory|sram_data_bus[4]~4_combout\);

-- Location: LABCELL_X23_Y15_N18
\memory|memory~4feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~4feeder_combout\ = ( \memory|sram_data_bus[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[4]~4_combout\,
	combout => \memory|memory~4feeder_combout\);

-- Location: FF_X23_Y15_N19
\memory|memory~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|memory~4feeder_combout\,
	ena => \memory|memory~32774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~4_q\);

-- Location: FF_X24_Y14_N58
\memory|memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|sram_data_bus[4]~4_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~52_q\);

-- Location: LABCELL_X23_Y15_N24
\memory|memory~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~20feeder_combout\ = ( \memory|sram_data_bus[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[4]~4_combout\,
	combout => \memory|memory~20feeder_combout\);

-- Location: FF_X23_Y15_N25
\memory|memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|memory~20feeder_combout\,
	ena => \memory|memory~32775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~20_q\);

-- Location: FF_X24_Y14_N32
\memory|memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[4]~4_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~36_q\);

-- Location: LABCELL_X24_Y14_N30
\memory|memory~32772\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32772_combout\ = ( \memory|memory~36_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & ((\memory|memory~20_q\))) # (\memory|mar\(1) & (\memory|memory~52_q\)) ) ) ) # ( !\memory|memory~36_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- ((\memory|memory~20_q\))) # (\memory|mar\(1) & (\memory|memory~52_q\)) ) ) ) # ( \memory|memory~36_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~4_q\) ) ) ) # ( !\memory|memory~36_q\ & ( !\memory|mar\(0) & ( (\memory|memory~4_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~4_q\,
	datab => \memory|ALT_INV_mar\(1),
	datac => \memory|ALT_INV_memory~52_q\,
	datad => \memory|ALT_INV_memory~20_q\,
	datae => \memory|ALT_INV_memory~36_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32772_combout\);

-- Location: LABCELL_X22_Y14_N18
\memory|mdr[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[4]~5_combout\ = ( \memory|always1~0_combout\ & ( \clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(4)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32772_combout\)) ) ) ) # ( !\memory|always1~0_combout\ & ( 
-- \clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(4)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32772_combout\)) ) ) ) # ( \memory|always1~0_combout\ & ( !\clock_divider|div_clks\(1) & ( \data_bus[4]~4_combout\ ) ) ) 
-- # ( !\memory|always1~0_combout\ & ( !\clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(4)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32772_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~32772_combout\,
	datab => \memory|ALT_INV_mdr\(4),
	datac => \memory|ALT_INV_data_bus~0_combout\,
	datad => \ALT_INV_data_bus[4]~4_combout\,
	datae => \memory|ALT_INV_always1~0_combout\,
	dataf => \clock_divider|ALT_INV_div_clks\(1),
	combout => \memory|mdr[4]~5_combout\);

-- Location: LABCELL_X24_Y14_N45
\memory|mdr[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(4) = (!\memory|mdr[1]~1_combout\ & ((\memory|mdr\(4)))) # (\memory|mdr[1]~1_combout\ & (\memory|mdr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mdr[4]~5_combout\,
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	datad => \memory|ALT_INV_mdr\(4),
	combout => \memory|mdr\(4));

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

-- Location: FF_X21_Y14_N44
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
	ena => \write_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(4));

-- Location: LABCELL_X22_Y14_N24
\reg_file|WRITE[4].write_tri~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|WRITE[4].write_tri~0_combout\ = ( write_data(4) & ( \memory|mdr\(4) ) ) # ( !write_data(4) & ( \memory|mdr\(4) & ( (!\writing_db~0_combout\) # ((!fr_state(2)) # (fr_state(1))) ) ) ) # ( write_data(4) & ( !\memory|mdr\(4) & ( 
-- (!\memory|data_bus~0_combout\) # ((!fr_state(2)) # (fr_state(1))) ) ) ) # ( !write_data(4) & ( !\memory|mdr\(4) & ( (!fr_state(2)) # (((!\memory|data_bus~0_combout\ & !\writing_db~0_combout\)) # (fr_state(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111111111110101111111111111100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_data_bus~0_combout\,
	datab => \ALT_INV_writing_db~0_combout\,
	datac => ALT_INV_fr_state(2),
	datad => ALT_INV_fr_state(1),
	datae => ALT_INV_write_data(4),
	dataf => \memory|ALT_INV_mdr\(4),
	combout => \reg_file|WRITE[4].write_tri~0_combout\);

-- Location: FF_X22_Y14_N26
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|WRITE[4].write_tri~0_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\);

-- Location: LABCELL_X22_Y13_N30
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~feeder_combout\ = ( \reg_file|WRITE[4].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[4].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~feeder_combout\);

-- Location: FF_X22_Y13_N31
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\);

-- Location: LABCELL_X23_Y13_N39
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~feeder_combout\ = ( \reg_file|WRITE[4].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[4].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~feeder_combout\);

-- Location: FF_X23_Y13_N40
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\);

-- Location: FF_X22_Y13_N20
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[4].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\);

-- Location: LABCELL_X22_Y13_N18
\reg_file|FILE_REG_HW|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux9~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\))) # (\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\)) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|q~q\))) # (\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|q~q\)) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( !\SW[8]~input_o\ 
-- & ( (\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\) # (\SW[9]~input_o\) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|q~q\ & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[4].FF|ALT_INV_q~q\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \reg_file|FILE_REG_HW|Mux9~0_combout\);

-- Location: LABCELL_X22_Y14_N42
\data_bus[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[4]~4_combout\ = ( \reg_file|FILE_REG_HW|Mux9~0_combout\ & ( \memory|data_bus~0_combout\ & ( (\memory|mdr\(4) & ((!\writing_db~0_combout\) # (write_data(4)))) ) ) ) # ( !\reg_file|FILE_REG_HW|Mux9~0_combout\ & ( \memory|data_bus~0_combout\ & ( 
-- (!\reg_file|read_cond~combout\ & (\memory|mdr\(4) & ((!\writing_db~0_combout\) # (write_data(4))))) ) ) ) # ( \reg_file|FILE_REG_HW|Mux9~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (!\writing_db~0_combout\) # (write_data(4)) ) ) ) # ( 
-- !\reg_file|FILE_REG_HW|Mux9~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\ & ((!\writing_db~0_combout\) # (write_data(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010111111110000111100100010000000100011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|ALT_INV_read_cond~combout\,
	datab => \memory|ALT_INV_mdr\(4),
	datac => ALT_INV_write_data(4),
	datad => \ALT_INV_writing_db~0_combout\,
	datae => \reg_file|FILE_REG_HW|ALT_INV_Mux9~0_combout\,
	dataf => \memory|ALT_INV_data_bus~0_combout\,
	combout => \data_bus[4]~4_combout\);

-- Location: FF_X22_Y14_N43
\led_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[4]~4_combout\,
	ena => \led_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(4));

-- Location: LABCELL_X24_Y14_N42
\memory|sram_data_bus[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[5]~5_combout\ = (!\memory|data_bus~0_combout\ & ((\memory|mdr\(5)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32773_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_memory~32773_combout\,
	datac => \memory|ALT_INV_mdr\(5),
	datad => \memory|ALT_INV_data_bus~0_combout\,
	combout => \memory|sram_data_bus[5]~5_combout\);

-- Location: LABCELL_X23_Y15_N21
\memory|memory~5feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~5feeder_combout\ = ( \memory|sram_data_bus[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[5]~5_combout\,
	combout => \memory|memory~5feeder_combout\);

-- Location: FF_X23_Y15_N23
\memory|memory~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|memory~5feeder_combout\,
	ena => \memory|memory~32774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~5_q\);

-- Location: LABCELL_X23_Y15_N27
\memory|memory~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~21feeder_combout\ = ( \memory|sram_data_bus[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[5]~5_combout\,
	combout => \memory|memory~21feeder_combout\);

-- Location: FF_X23_Y15_N28
\memory|memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|memory~21feeder_combout\,
	ena => \memory|memory~32775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~21_q\);

-- Location: FF_X24_Y14_N8
\memory|memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \memory|sram_data_bus[5]~5_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~37_q\);

-- Location: FF_X24_Y14_N43
\memory|memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \memory|sram_data_bus[5]~5_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~53_q\);

-- Location: LABCELL_X24_Y14_N6
\memory|memory~32773\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32773_combout\ = ( \memory|memory~37_q\ & ( \memory|memory~53_q\ & ( ((!\memory|mar\(0) & (\memory|memory~5_q\)) # (\memory|mar\(0) & ((\memory|memory~21_q\)))) # (\memory|mar\(1)) ) ) ) # ( !\memory|memory~37_q\ & ( \memory|memory~53_q\ & 
-- ( (!\memory|mar\(1) & ((!\memory|mar\(0) & (\memory|memory~5_q\)) # (\memory|mar\(0) & ((\memory|memory~21_q\))))) # (\memory|mar\(1) & (((\memory|mar\(0))))) ) ) ) # ( \memory|memory~37_q\ & ( !\memory|memory~53_q\ & ( (!\memory|mar\(1) & 
-- ((!\memory|mar\(0) & (\memory|memory~5_q\)) # (\memory|mar\(0) & ((\memory|memory~21_q\))))) # (\memory|mar\(1) & (((!\memory|mar\(0))))) ) ) ) # ( !\memory|memory~37_q\ & ( !\memory|memory~53_q\ & ( (!\memory|mar\(1) & ((!\memory|mar\(0) & 
-- (\memory|memory~5_q\)) # (\memory|mar\(0) & ((\memory|memory~21_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~5_q\,
	datab => \memory|ALT_INV_mar\(1),
	datac => \memory|ALT_INV_mar\(0),
	datad => \memory|ALT_INV_memory~21_q\,
	datae => \memory|ALT_INV_memory~37_q\,
	dataf => \memory|ALT_INV_memory~53_q\,
	combout => \memory|memory~32773_combout\);

-- Location: LABCELL_X22_Y14_N54
\memory|mdr[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[5]~6_combout\ = ( \memory|always1~0_combout\ & ( \clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(5)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32773_combout\)) ) ) ) # ( !\memory|always1~0_combout\ & ( 
-- \clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(5)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32773_combout\)) ) ) ) # ( \memory|always1~0_combout\ & ( !\clock_divider|div_clks\(1) & ( \data_bus[5]~5_combout\ ) ) ) 
-- # ( !\memory|always1~0_combout\ & ( !\clock_divider|div_clks\(1) & ( (!\memory|data_bus~0_combout\ & ((\memory|mdr\(5)))) # (\memory|data_bus~0_combout\ & (\memory|memory~32773_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000011110000111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_data_bus~0_combout\,
	datab => \memory|ALT_INV_memory~32773_combout\,
	datac => \ALT_INV_data_bus[5]~5_combout\,
	datad => \memory|ALT_INV_mdr\(5),
	datae => \memory|ALT_INV_always1~0_combout\,
	dataf => \clock_divider|ALT_INV_div_clks\(1),
	combout => \memory|mdr[5]~6_combout\);

-- Location: LABCELL_X22_Y14_N39
\memory|mdr[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(5) = ( \memory|mdr\(5) & ( (!\memory|mdr[1]~1_combout\) # (\memory|mdr[5]~6_combout\) ) ) # ( !\memory|mdr\(5) & ( (\memory|mdr[5]~6_combout\ & \memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mdr[5]~6_combout\,
	datad => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(5),
	combout => \memory|mdr\(5));

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

-- Location: FF_X21_Y14_N47
\write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \write_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(5));

-- Location: LABCELL_X22_Y14_N3
\reg_file|WRITE[5].write_tri~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|WRITE[5].write_tri~0_combout\ = ( write_data(5) & ( \memory|mdr\(5) ) ) # ( !write_data(5) & ( \memory|mdr\(5) & ( (!fr_state(2)) # ((!\writing_db~0_combout\) # (fr_state(1))) ) ) ) # ( write_data(5) & ( !\memory|mdr\(5) & ( (!fr_state(2)) # 
-- ((!\memory|data_bus~0_combout\) # (fr_state(1))) ) ) ) # ( !write_data(5) & ( !\memory|mdr\(5) & ( (!fr_state(2)) # (((!\writing_db~0_combout\ & !\memory|data_bus~0_combout\)) # (fr_state(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111011111111111011101111111011111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fr_state(2),
	datab => ALT_INV_fr_state(1),
	datac => \ALT_INV_writing_db~0_combout\,
	datad => \memory|ALT_INV_data_bus~0_combout\,
	datae => ALT_INV_write_data(5),
	dataf => \memory|ALT_INV_mdr\(5),
	combout => \reg_file|WRITE[5].write_tri~0_combout\);

-- Location: LABCELL_X22_Y13_N51
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\ = ( \reg_file|WRITE[5].write_tri~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_file|ALT_INV_WRITE[5].write_tri~0_combout\,
	combout => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\);

-- Location: FF_X22_Y13_N52
\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~feeder_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\);

-- Location: FF_X22_Y14_N4
\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \reg_file|WRITE[5].write_tri~0_combout\,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\);

-- Location: FF_X23_Y13_N50
\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[5].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|write_decoder|BARREL[2].BARREL1|and_sel1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\);

-- Location: FF_X23_Y13_N44
\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	asdata => \reg_file|WRITE[5].write_tri~0_combout\,
	sload => VCC,
	ena => \reg_file|FILE_REG_HW|WRITE[0].mux|and_sel1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\);

-- Location: LABCELL_X23_Y13_N48
\reg_file|FILE_REG_HW|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|FILE_REG_HW|Mux11~0_combout\ = ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\) # ((!\SW[9]~input_o\ & 
-- (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\)))) ) ) ) # ( !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( 
-- \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\ & (((!\SW[9]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\)) # (\SW[9]~input_o\ & 
-- ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\))))) ) ) ) # ( \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ & ( (!\SW[8]~input_o\ & 
-- (((\SW[9]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\)) # (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\))))) ) ) ) # ( 
-- !\reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|q~q\ & ( !\reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|q~q\ & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|q~q\)) # 
-- (\SW[9]~input_o\ & ((\reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|q~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|FILE_REG_HW|FILE_REGISTER[1].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \reg_file|FILE_REG_HW|FILE_REGISTER[3].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	datae => \reg_file|FILE_REG_HW|FILE_REGISTER[2].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	dataf => \reg_file|FILE_REG_HW|FILE_REGISTER[0].F_REG|REGISTER[5].FF|ALT_INV_q~q\,
	combout => \reg_file|FILE_REG_HW|Mux11~0_combout\);

-- Location: LABCELL_X22_Y14_N48
\data_bus[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_bus[5]~5_combout\ = ( \writing_db~0_combout\ & ( \memory|data_bus~0_combout\ & ( (\memory|mdr\(5) & (write_data(5) & ((!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux11~0_combout\)))) ) ) ) # ( !\writing_db~0_combout\ & ( 
-- \memory|data_bus~0_combout\ & ( (\memory|mdr\(5) & ((!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux11~0_combout\))) ) ) ) # ( \writing_db~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (write_data(5) & ((!\reg_file|read_cond~combout\) # 
-- (\reg_file|FILE_REG_HW|Mux11~0_combout\))) ) ) ) # ( !\writing_db~0_combout\ & ( !\memory|data_bus~0_combout\ & ( (!\reg_file|read_cond~combout\) # (\reg_file|FILE_REG_HW|Mux11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111000010100000111100100010001100110000001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|ALT_INV_read_cond~combout\,
	datab => \memory|ALT_INV_mdr\(5),
	datac => ALT_INV_write_data(5),
	datad => \reg_file|FILE_REG_HW|ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_writing_db~0_combout\,
	dataf => \memory|ALT_INV_data_bus~0_combout\,
	combout => \data_bus[5]~5_combout\);

-- Location: FF_X22_Y14_N49
\led_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(1),
	d => \data_bus[5]~5_combout\,
	ena => \led_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(5));

-- Location: LABCELL_X35_Y50_N0
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


