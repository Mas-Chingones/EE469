-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Standard Edition"

-- DATE "04/30/2016 19:30:29"

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

ENTITY 	alu_dataflow_de1soc_test IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END alu_dataflow_de1soc_test;

-- Design Ports Information
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_dataflow_de1soc_test IS
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
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \enter~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \backspace~q\ : std_logic;
SIGNAL \digitA[2]~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \digitA[2]~3_combout\ : std_logic;
SIGNAL \digitA[1]~5_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \digitA[2]~6_combout\ : std_logic;
SIGNAL \digitA~1_combout\ : std_logic;
SIGNAL \digitA~0_combout\ : std_logic;
SIGNAL \digitA~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \operand0[12]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \digitB[2]~4_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \digitB[2]~3_combout\ : std_logic;
SIGNAL \digitB[1]~6_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \digitB[2]~5_combout\ : std_logic;
SIGNAL \digitB~0_combout\ : std_logic;
SIGNAL \digitB~1_combout\ : std_logic;
SIGNAL \hex_value~0_combout\ : std_logic;
SIGNAL \digitB~2_combout\ : std_logic;
SIGNAL \operand1[12]~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \operand0[8]~1_combout\ : std_logic;
SIGNAL \operand1[8]~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \operand1[4]~2_combout\ : std_logic;
SIGNAL \operand1[0]~3_combout\ : std_logic;
SIGNAL \operand0[0]~3_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ : std_logic;
SIGNAL \operand0[4]~2_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ : std_logic;
SIGNAL \alu|N~0_combout\ : std_logic;
SIGNAL \alu|N~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ : std_logic;
SIGNAL \Np~0_combout\ : std_logic;
SIGNAL \Zp~0_combout\ : std_logic;
SIGNAL \Np~q\ : std_logic;
SIGNAL \alu|C~0_combout\ : std_logic;
SIGNAL \Cp~q\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[5].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[10].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[10].carry_or~1_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ : std_logic;
SIGNAL \alu|Equal3~1_combout\ : std_logic;
SIGNAL \alu|result[13]~11_combout\ : std_logic;
SIGNAL \alu|result~10_combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result[13]~12_combout\ : std_logic;
SIGNAL \alu|Equal3~0_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|result[13]~13_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[11].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result~19_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|result~18_combout\ : std_logic;
SIGNAL \alu|result[11]~20_combout\ : std_logic;
SIGNAL \alu|result~17_combout\ : std_logic;
SIGNAL \alu|result[11]~21_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|result[9]~65_combout\ : std_logic;
SIGNAL \alu|result[9]~66_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|result[8]~63_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result[8]~64_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[9].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result~62_combout\ : std_logic;
SIGNAL \alu|result~61_combout\ : std_logic;
SIGNAL \alu|Equal7~16_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ : std_logic;
SIGNAL \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\ : std_logic;
SIGNAL \alu|result[0]~57_combout\ : std_logic;
SIGNAL \alu|result[0]~58_combout\ : std_logic;
SIGNAL \alu|result~25_combout\ : std_logic;
SIGNAL \alu|result[0]~59_combout\ : std_logic;
SIGNAL \alu|result[0]~60_combout\ : std_logic;
SIGNAL \alu|result~46_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|result~51_combout\ : std_logic;
SIGNAL \alu|result~50_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\ : std_logic;
SIGNAL \alu|result[6]~52_combout\ : std_logic;
SIGNAL \alu|result[6]~53_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[22].BARREL4|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result[7]~54_combout\ : std_logic;
SIGNAL \alu|result[7]~55_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ : std_logic;
SIGNAL \alu|result[7]~56_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[21].BARREL4|or_sel~0_combout\ : std_logic;
SIGNAL \alu|Equal7~15_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[10].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result~14_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result[10]~15_combout\ : std_logic;
SIGNAL \alu|result[10]~16_combout\ : std_logic;
SIGNAL \alu|result~27_combout\ : std_logic;
SIGNAL \alu|result[3]~28_combout\ : std_logic;
SIGNAL \alu|result~26_combout\ : std_logic;
SIGNAL \alu|result[3]~29_combout\ : std_logic;
SIGNAL \alu|result~32_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[12].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[14].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|Equal7~12_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[20].BARREL4|or_sel~2_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0_combout\ : std_logic;
SIGNAL \alu|result~47_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[4].carry_or~0_combout\ : std_logic;
SIGNAL \alu|result[5]~48_combout\ : std_logic;
SIGNAL \alu|result[5]~49_combout\ : std_logic;
SIGNAL \alu|Equal7~13_combout\ : std_logic;
SIGNAL \alu|result~30_combout\ : std_logic;
SIGNAL \alu|result~43_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ : std_logic;
SIGNAL \alu|Equal7~10_combout\ : std_logic;
SIGNAL \alu|result~45_combout\ : std_logic;
SIGNAL \alu|Equal7~9_combout\ : std_logic;
SIGNAL \alu|result~44_combout\ : std_logic;
SIGNAL \alu|Equal7~8_combout\ : std_logic;
SIGNAL \alu|Equal7~7_combout\ : std_logic;
SIGNAL \alu|result~42_combout\ : std_logic;
SIGNAL \alu|Equal7~11_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result~22_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[3].carry_or~0_combout\ : std_logic;
SIGNAL \alu|result[4]~23_combout\ : std_logic;
SIGNAL \alu|result[4]~24_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result~33_combout\ : std_logic;
SIGNAL \alu|Equal7~0_combout\ : std_logic;
SIGNAL \alu|Equal7~1_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[15].BARREL3|or_sel~0_combout\ : std_logic;
SIGNAL \alu|result~31_combout\ : std_logic;
SIGNAL \alu|Equal7~2_combout\ : std_logic;
SIGNAL \alu|Equal7~3_combout\ : std_logic;
SIGNAL \alu|Equal7~4_combout\ : std_logic;
SIGNAL \alu|result~34_combout\ : std_logic;
SIGNAL \alu|adder_module|CARRY_CALC[1].carry_or~0_combout\ : std_logic;
SIGNAL \alu|result[2]~39_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\ : std_logic;
SIGNAL \alu|result~38_combout\ : std_logic;
SIGNAL \alu|result[2]~40_combout\ : std_logic;
SIGNAL \alu|result~41_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\ : std_logic;
SIGNAL \alu|Equal7~5_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|bit0_summation|and0~0_combout\ : std_logic;
SIGNAL \alu|result[1]~36_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result~35_combout\ : std_logic;
SIGNAL \alu|result[1]~37_combout\ : std_logic;
SIGNAL \alu|Equal7~6_combout\ : std_logic;
SIGNAL \alu|Equal7~14_combout\ : std_logic;
SIGNAL \alu|Equal7~17_combout\ : std_logic;
SIGNAL \alu|result~67_combout\ : std_logic;
SIGNAL \alu|result~68_combout\ : std_logic;
SIGNAL \alu|result[14]~69_combout\ : std_logic;
SIGNAL \alu|result[14]~70_combout\ : std_logic;
SIGNAL \alu|Equal7~18_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result[15]~6_combout\ : std_logic;
SIGNAL \alu|result~5_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result[15]~7_combout\ : std_logic;
SIGNAL \alu|result~0_combout\ : std_logic;
SIGNAL \alu|result~1_combout\ : std_logic;
SIGNAL \alu|result~8_combout\ : std_logic;
SIGNAL \alu|result~9_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result[12]~3_combout\ : std_logic;
SIGNAL \alu|result~2_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result[12]~4_combout\ : std_logic;
SIGNAL \alu|Equal7~19_combout\ : std_logic;
SIGNAL \Zp~q\ : std_logic;
SIGNAL \hex_value[5][0]~q\ : std_logic;
SIGNAL \hex_value[5][1]~36_combout\ : std_logic;
SIGNAL \hex_value[5][1]~q\ : std_logic;
SIGNAL \hex5|Decoder0~0_combout\ : std_logic;
SIGNAL \hex5|WideOr3~0_combout\ : std_logic;
SIGNAL \hex5|Decoder0~1_combout\ : std_logic;
SIGNAL \hex_value~30_combout\ : std_logic;
SIGNAL \hex_value~31_combout\ : std_logic;
SIGNAL \hex_value~5_combout\ : std_logic;
SIGNAL \hex_value[3][3]~q\ : std_logic;
SIGNAL \alu|result~74_combout\ : std_logic;
SIGNAL \alu|result~72_combout\ : std_logic;
SIGNAL \hex_value~1_combout\ : std_logic;
SIGNAL \alu|result~73_combout\ : std_logic;
SIGNAL \hex_value~2_combout\ : std_logic;
SIGNAL \hex_value[3][1]~q\ : std_logic;
SIGNAL \alu|result[12]~71_combout\ : std_logic;
SIGNAL \hex_value~32_combout\ : std_logic;
SIGNAL \hex_value[3][0]~q\ : std_logic;
SIGNAL \hex_value~3_combout\ : std_logic;
SIGNAL \hex_value~4_combout\ : std_logic;
SIGNAL \hex_value[3][2]~q\ : std_logic;
SIGNAL \hex3|WideOr6~0_combout\ : std_logic;
SIGNAL \hex3|WideOr5~0_combout\ : std_logic;
SIGNAL \hex3|WideOr4~0_combout\ : std_logic;
SIGNAL \hex3|WideOr3~0_combout\ : std_logic;
SIGNAL \hex3|WideOr2~0_combout\ : std_logic;
SIGNAL \hex3|WideOr1~0_combout\ : std_logic;
SIGNAL \hex3|WideOr0~0_combout\ : std_logic;
SIGNAL \hexOff~3_combout\ : std_logic;
SIGNAL \hex_value~12_combout\ : std_logic;
SIGNAL \hex_value~13_combout\ : std_logic;
SIGNAL \hex_value[2][3]~q\ : std_logic;
SIGNAL \alu|result~77_combout\ : std_logic;
SIGNAL \hex_value~8_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[9].summation|xor0~combout\ : std_logic;
SIGNAL \alu|result~76_combout\ : std_logic;
SIGNAL \hex_value~9_combout\ : std_logic;
SIGNAL \hex_value[2][1]~q\ : std_logic;
SIGNAL \alu|result~78_combout\ : std_logic;
SIGNAL \alu|result~79_combout\ : std_logic;
SIGNAL \hex_value~10_combout\ : std_logic;
SIGNAL \hex_value~11_combout\ : std_logic;
SIGNAL \hex_value[2][2]~q\ : std_logic;
SIGNAL \hex_value~6_combout\ : std_logic;
SIGNAL \alu|result[8]~75_combout\ : std_logic;
SIGNAL \hex_value~7_combout\ : std_logic;
SIGNAL \hex_value[2][0]~q\ : std_logic;
SIGNAL \hex2|WideOr6~0_combout\ : std_logic;
SIGNAL \hex2|WideOr5~0_combout\ : std_logic;
SIGNAL \hex2|WideOr4~0_combout\ : std_logic;
SIGNAL \hex2|WideOr3~0_combout\ : std_logic;
SIGNAL \hex2|WideOr2~0_combout\ : std_logic;
SIGNAL \hex2|WideOr1~0_combout\ : std_logic;
SIGNAL \hex2|WideOr0~0_combout\ : std_logic;
SIGNAL \hex_value~16_combout\ : std_logic;
SIGNAL \hex_value~17_combout\ : std_logic;
SIGNAL \hex_value[1][1]~q\ : std_logic;
SIGNAL \hexOff~0_combout\ : std_logic;
SIGNAL \hex_value~14_combout\ : std_logic;
SIGNAL \hex_value~15_combout\ : std_logic;
SIGNAL \hex_value[1][0]~q\ : std_logic;
SIGNAL \alu|result~80_combout\ : std_logic;
SIGNAL \hex_value~18_combout\ : std_logic;
SIGNAL \hex_value~19_combout\ : std_logic;
SIGNAL \hex_value[1][2]~q\ : std_logic;
SIGNAL \alu|result[7]~81_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[7].BARREL3|and_sel0~0_combout\ : std_logic;
SIGNAL \hex_value~20_combout\ : std_logic;
SIGNAL \hex_value~21_combout\ : std_logic;
SIGNAL \hex_value[1][3]~q\ : std_logic;
SIGNAL \hex1|WideOr6~0_combout\ : std_logic;
SIGNAL \hex1|WideOr5~0_combout\ : std_logic;
SIGNAL \hex1|WideOr4~0_combout\ : std_logic;
SIGNAL \hex1|WideOr3~0_combout\ : std_logic;
SIGNAL \hex1|WideOr2~0_combout\ : std_logic;
SIGNAL \hex1|WideOr1~0_combout\ : std_logic;
SIGNAL \hex1|WideOr0~0_combout\ : std_logic;
SIGNAL \hexOff~1_combout\ : std_logic;
SIGNAL \hexOff~2_combout\ : std_logic;
SIGNAL \hex_value~28_combout\ : std_logic;
SIGNAL \hex_value~29_combout\ : std_logic;
SIGNAL \hex_value[0][3]~q\ : std_logic;
SIGNAL \alu|result[0]~82_combout\ : std_logic;
SIGNAL \hex_value~22_combout\ : std_logic;
SIGNAL \hex_value~23_combout\ : std_logic;
SIGNAL \hex_value[0][0]~q\ : std_logic;
SIGNAL \hex_value~26_combout\ : std_logic;
SIGNAL \hex_value~27_combout\ : std_logic;
SIGNAL \hex_value[0][2]~q\ : std_logic;
SIGNAL \hex_value~24_combout\ : std_logic;
SIGNAL \hex_value~25_combout\ : std_logic;
SIGNAL \hex_value[0][1]~q\ : std_logic;
SIGNAL \hex0|WideOr6~0_combout\ : std_logic;
SIGNAL \hex0|WideOr5~0_combout\ : std_logic;
SIGNAL \hex0|WideOr4~0_combout\ : std_logic;
SIGNAL \hex0|WideOr3~0_combout\ : std_logic;
SIGNAL \hex0|WideOr2~0_combout\ : std_logic;
SIGNAL \hex0|WideOr1~0_combout\ : std_logic;
SIGNAL \hex0|WideOr0~0_combout\ : std_logic;
SIGNAL hexOff : std_logic_vector(3 DOWNTO 0);
SIGNAL digitA : std_logic_vector(2 DOWNTO 0);
SIGNAL operand1 : std_logic_vector(31 DOWNTO 0);
SIGNAL operand0 : std_logic_vector(31 DOWNTO 0);
SIGNAL digitB : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_hexOff : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_hex_value[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[2][0]~q\ : std_logic;
SIGNAL \hex3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[5][0]~q\ : std_logic;
SIGNAL ALT_INV_digitA : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~q\ : std_logic;
SIGNAL \ALT_INV_enter~q\ : std_logic;
SIGNAL \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~2_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[22].BARREL4|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_hex_value~31_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~30_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \ALT_INV_digitB[2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_digitB[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digitB~1_combout\ : std_logic;
SIGNAL \ALT_INV_digitB~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~28_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~26_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~24_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~22_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[0]~82_combout\ : std_logic;
SIGNAL \ALT_INV_hexOff~1_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~20_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[7]~81_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[7].BARREL3|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~18_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~80_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~16_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~14_combout\ : std_logic;
SIGNAL ALT_INV_digitB : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_hex_value~12_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~10_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~79_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~78_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~8_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~77_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~76_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~6_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[8]~75_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~3_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~74_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~73_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~72_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[12]~71_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~18_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[14]~70_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[14]~69_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~68_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~67_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~17_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~16_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[9]~66_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[9]~65_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[8]~64_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[8]~63_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~62_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~61_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[8].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~15_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[0]~60_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[0]~59_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[0]~58_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[0]~57_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ : std_logic;
SIGNAL \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[7]~56_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[7]~55_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[7]~54_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[7].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[6].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[6].carry_or~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[6]~53_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[6]~52_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~51_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~50_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[6].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[6].BARREL3|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[21].BARREL4|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~14_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~13_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~12_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[14].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[5]~49_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[5]~48_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[4].carry_or~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~47_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[4].carry_or~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[5].BARREL3|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~46_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~1_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~11_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~10_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~9_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~45_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~8_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~44_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[21].BARREL2|ALT_INV_and_sel1~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~7_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[22].BARREL2|ALT_INV_and_sel1~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~43_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~42_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~6_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~5_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~41_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[9].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[8].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[16].BARREL4|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[16].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[2]~40_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[2]~39_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[1].carry_or~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~38_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[1].carry_or~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[1]~37_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[1]~36_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|bit0_summation|ALT_INV_and0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~35_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~34_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~33_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[14].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~32_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~31_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[17].BARREL4|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~30_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[3]~29_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[3]~28_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~27_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~26_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~25_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[4]~24_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[4]~23_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[3].carry_or~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~22_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[4].BARREL3|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[11]~21_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[11]~20_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~19_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[11].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~18_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~17_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[11].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[10]~16_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[10]~15_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~14_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[10].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[10].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[6].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[13]~13_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[13]~12_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[13]~11_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[13].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[5].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[9].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[13].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~10_combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[13].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~9_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~8_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[15]~7_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[15]~6_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~5_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[15].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[15].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[12]~4_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result[12]~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~2_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[12].BARREL3|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[4].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[8].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|BARREL[12].BARREL1|ALT_INV_or_sel~0_combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\ : std_logic;
SIGNAL \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\ : std_logic;
SIGNAL \alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~1_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~1_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~0_combout\ : std_logic;
SIGNAL \alu|adder_module|ALT_INV_CARRY_CALC[2].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_N~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_N~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[7].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~1_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\ : std_logic;
SIGNAL ALT_INV_operand0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_operand1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~0_combout\ : std_logic;
SIGNAL \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[15].or_pairs~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_digitA[2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_digitA[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digitA~1_combout\ : std_logic;
SIGNAL \ALT_INV_digitA~0_combout\ : std_logic;
SIGNAL \ALT_INV_backspace~q\ : std_logic;
SIGNAL \ALT_INV_always2~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex_value[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_hex_value[0][0]~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_hexOff(0) <= NOT hexOff(0);
\ALT_INV_hex_value[1][3]~q\ <= NOT \hex_value[1][3]~q\;
\ALT_INV_hex_value[1][2]~q\ <= NOT \hex_value[1][2]~q\;
\ALT_INV_hex_value[1][1]~q\ <= NOT \hex_value[1][1]~q\;
\ALT_INV_hex_value[1][0]~q\ <= NOT \hex_value[1][0]~q\;
ALT_INV_hexOff(1) <= NOT hexOff(1);
\ALT_INV_hex_value[2][3]~q\ <= NOT \hex_value[2][3]~q\;
\ALT_INV_hex_value[2][2]~q\ <= NOT \hex_value[2][2]~q\;
\ALT_INV_hex_value[2][1]~q\ <= NOT \hex_value[2][1]~q\;
\ALT_INV_hex_value[2][0]~q\ <= NOT \hex_value[2][0]~q\;
\hex3|ALT_INV_WideOr0~0_combout\ <= NOT \hex3|WideOr0~0_combout\;
\ALT_INV_hex_value[3][3]~q\ <= NOT \hex_value[3][3]~q\;
\ALT_INV_hex_value[3][2]~q\ <= NOT \hex_value[3][2]~q\;
\ALT_INV_hex_value[3][1]~q\ <= NOT \hex_value[3][1]~q\;
\ALT_INV_hex_value[3][0]~q\ <= NOT \hex_value[3][0]~q\;
\ALT_INV_hex_value[5][1]~q\ <= NOT \hex_value[5][1]~q\;
\ALT_INV_hex_value[5][0]~q\ <= NOT \hex_value[5][0]~q\;
ALT_INV_digitA(1) <= NOT digitA(1);
ALT_INV_digitA(0) <= NOT digitA(0);
\ALT_INV_rst~q\ <= NOT \rst~q\;
\ALT_INV_enter~q\ <= NOT \enter~q\;
\alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~2_combout\ <= NOT \alu|sll_module|BARREL[20].BARREL4|or_sel~2_combout\;
\alu|sll_module|BARREL[22].BARREL4|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[22].BARREL4|or_sel~0_combout\;
ALT_INV_hexOff(2) <= NOT hexOff(2);
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_hex_value~31_combout\ <= NOT \hex_value~31_combout\;
\ALT_INV_hex_value~30_combout\ <= NOT \hex_value~30_combout\;
\ALT_INV_Add3~1_combout\ <= NOT \Add3~1_combout\;
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;
\ALT_INV_digitB[2]~4_combout\ <= NOT \digitB[2]~4_combout\;
\ALT_INV_digitB[2]~3_combout\ <= NOT \digitB[2]~3_combout\;
\ALT_INV_digitB~1_combout\ <= NOT \digitB~1_combout\;
\ALT_INV_digitB~0_combout\ <= NOT \digitB~0_combout\;
\ALT_INV_Add2~1_combout\ <= NOT \Add2~1_combout\;
\ALT_INV_hex_value~28_combout\ <= NOT \hex_value~28_combout\;
\ALT_INV_hex_value~26_combout\ <= NOT \hex_value~26_combout\;
\ALT_INV_hex_value~24_combout\ <= NOT \hex_value~24_combout\;
\ALT_INV_hex_value~22_combout\ <= NOT \hex_value~22_combout\;
\alu|ALT_INV_result[0]~82_combout\ <= NOT \alu|result[0]~82_combout\;
\ALT_INV_hexOff~1_combout\ <= NOT \hexOff~1_combout\;
\ALT_INV_hex_value~20_combout\ <= NOT \hex_value~20_combout\;
\alu|ALT_INV_result[7]~81_combout\ <= NOT \alu|result[7]~81_combout\;
\alu|sll_module|BARREL[7].BARREL3|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|BARREL[7].BARREL3|and_sel0~0_combout\;
\ALT_INV_hex_value~18_combout\ <= NOT \hex_value~18_combout\;
\alu|ALT_INV_result~80_combout\ <= NOT \alu|result~80_combout\;
\ALT_INV_hex_value~16_combout\ <= NOT \hex_value~16_combout\;
\ALT_INV_hex_value~14_combout\ <= NOT \hex_value~14_combout\;
ALT_INV_digitB(1) <= NOT digitB(1);
ALT_INV_digitB(2) <= NOT digitB(2);
ALT_INV_digitB(0) <= NOT digitB(0);
\ALT_INV_hex_value~12_combout\ <= NOT \hex_value~12_combout\;
\ALT_INV_hex_value~10_combout\ <= NOT \hex_value~10_combout\;
\alu|ALT_INV_result~79_combout\ <= NOT \alu|result~79_combout\;
\alu|ALT_INV_result~78_combout\ <= NOT \alu|result~78_combout\;
\ALT_INV_hex_value~8_combout\ <= NOT \hex_value~8_combout\;
\alu|ALT_INV_result~77_combout\ <= NOT \alu|result~77_combout\;
\alu|ALT_INV_result~76_combout\ <= NOT \alu|result~76_combout\;
\alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\ <= NOT \alu|adder_module|HALF_ADDERS[9].summation|xor0~combout\;
\ALT_INV_hex_value~6_combout\ <= NOT \hex_value~6_combout\;
\alu|ALT_INV_result[8]~75_combout\ <= NOT \alu|result[8]~75_combout\;
\ALT_INV_hex_value~3_combout\ <= NOT \hex_value~3_combout\;
\ALT_INV_hex_value~1_combout\ <= NOT \hex_value~1_combout\;
\alu|ALT_INV_result~74_combout\ <= NOT \alu|result~74_combout\;
\alu|ALT_INV_result~73_combout\ <= NOT \alu|result~73_combout\;
\alu|ALT_INV_result~72_combout\ <= NOT \alu|result~72_combout\;
\alu|ALT_INV_result[12]~71_combout\ <= NOT \alu|result[12]~71_combout\;
\ALT_INV_hex_value~0_combout\ <= NOT \hex_value~0_combout\;
\alu|ALT_INV_Equal7~18_combout\ <= NOT \alu|Equal7~18_combout\;
\alu|ALT_INV_result[14]~70_combout\ <= NOT \alu|result[14]~70_combout\;
\alu|ALT_INV_result[14]~69_combout\ <= NOT \alu|result[14]~69_combout\;
\alu|ALT_INV_result~68_combout\ <= NOT \alu|result~68_combout\;
\alu|ALT_INV_result~67_combout\ <= NOT \alu|result~67_combout\;
\alu|ALT_INV_Equal7~17_combout\ <= NOT \alu|Equal7~17_combout\;
\alu|ALT_INV_Equal7~16_combout\ <= NOT \alu|Equal7~16_combout\;
\alu|ALT_INV_result[9]~66_combout\ <= NOT \alu|result[9]~66_combout\;
\alu|ALT_INV_result[9]~65_combout\ <= NOT \alu|result[9]~65_combout\;
\alu|ALT_INV_result[8]~64_combout\ <= NOT \alu|result[8]~64_combout\;
\alu|ALT_INV_result[8]~63_combout\ <= NOT \alu|result[8]~63_combout\;
\alu|ALT_INV_result~62_combout\ <= NOT \alu|result~62_combout\;
\alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\ <= NOT \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\;
\alu|ALT_INV_result~61_combout\ <= NOT \alu|result~61_combout\;
\alu|adder_module|HALF_ADDERS[8].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\;
\alu|ALT_INV_Equal7~15_combout\ <= NOT \alu|Equal7~15_combout\;
\alu|ALT_INV_result[0]~60_combout\ <= NOT \alu|result[0]~60_combout\;
\alu|ALT_INV_result[0]~59_combout\ <= NOT \alu|result[0]~59_combout\;
\alu|ALT_INV_result[0]~58_combout\ <= NOT \alu|result[0]~58_combout\;
\alu|ALT_INV_result[0]~57_combout\ <= NOT \alu|result[0]~57_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\;
\alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\ <= NOT \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\;
\alu|ALT_INV_result[7]~56_combout\ <= NOT \alu|result[7]~56_combout\;
\alu|ALT_INV_result[7]~55_combout\ <= NOT \alu|result[7]~55_combout\;
\alu|ALT_INV_result[7]~54_combout\ <= NOT \alu|result[7]~54_combout\;
\alu|adder_module|HALF_ADDERS[7].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[6].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[6].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\;
\alu|ALT_INV_result[6]~53_combout\ <= NOT \alu|result[6]~53_combout\;
\alu|ALT_INV_result[6]~52_combout\ <= NOT \alu|result[6]~52_combout\;
\alu|ALT_INV_result~51_combout\ <= NOT \alu|result~51_combout\;
\alu|ALT_INV_result~50_combout\ <= NOT \alu|result~50_combout\;
\alu|adder_module|HALF_ADDERS[6].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\;
\alu|sll_module|BARREL[6].BARREL3|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\;
\alu|sll_module|BARREL[21].BARREL4|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[21].BARREL4|or_sel~0_combout\;
\alu|ALT_INV_Equal7~14_combout\ <= NOT \alu|Equal7~14_combout\;
\alu|ALT_INV_Equal7~13_combout\ <= NOT \alu|Equal7~13_combout\;
\alu|ALT_INV_Equal7~12_combout\ <= NOT \alu|Equal7~12_combout\;
\alu|sll_module|BARREL[14].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[14].BARREL3|or_sel~0_combout\;
\alu|ALT_INV_result[5]~49_combout\ <= NOT \alu|result[5]~49_combout\;
\alu|ALT_INV_result[5]~48_combout\ <= NOT \alu|result[5]~48_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[4].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[4].carry_or~0_combout\;
\alu|ALT_INV_result~47_combout\ <= NOT \alu|result~47_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[4].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0_combout\;
\alu|sll_module|BARREL[5].BARREL3|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\;
\alu|ALT_INV_result~46_combout\ <= NOT \alu|result~46_combout\;
\alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~1_combout\ <= NOT \alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\;
\alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\;
\alu|ALT_INV_Equal7~11_combout\ <= NOT \alu|Equal7~11_combout\;
\alu|ALT_INV_Equal7~10_combout\ <= NOT \alu|Equal7~10_combout\;
\alu|ALT_INV_Equal7~9_combout\ <= NOT \alu|Equal7~9_combout\;
\alu|ALT_INV_result~45_combout\ <= NOT \alu|result~45_combout\;
\alu|ALT_INV_Equal7~8_combout\ <= NOT \alu|Equal7~8_combout\;
\alu|ALT_INV_result~44_combout\ <= NOT \alu|result~44_combout\;
\alu|sll_module|BARREL[21].BARREL2|ALT_INV_and_sel1~0_combout\ <= NOT \alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\;
\alu|ALT_INV_Equal7~7_combout\ <= NOT \alu|Equal7~7_combout\;
\alu|sll_module|BARREL[22].BARREL2|ALT_INV_and_sel1~0_combout\ <= NOT \alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\;
\alu|ALT_INV_result~43_combout\ <= NOT \alu|result~43_combout\;
\alu|ALT_INV_result~42_combout\ <= NOT \alu|result~42_combout\;
\alu|ALT_INV_Equal7~6_combout\ <= NOT \alu|Equal7~6_combout\;
\alu|ALT_INV_Equal7~5_combout\ <= NOT \alu|Equal7~5_combout\;
\alu|ALT_INV_result~41_combout\ <= NOT \alu|result~41_combout\;
\alu|sll_module|BARREL[9].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[9].BARREL3|or_sel~0_combout\;
\alu|sll_module|BARREL[8].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\;
\alu|sll_module|BARREL[16].BARREL4|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\;
\alu|sll_module|BARREL[16].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\;
\alu|ALT_INV_Equal7~4_combout\ <= NOT \alu|Equal7~4_combout\;
\alu|ALT_INV_result[2]~40_combout\ <= NOT \alu|result[2]~40_combout\;
\alu|ALT_INV_result[2]~39_combout\ <= NOT \alu|result[2]~39_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[1].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[1].carry_or~0_combout\;
\alu|ALT_INV_result~38_combout\ <= NOT \alu|result~38_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[1].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\;
\alu|ALT_INV_result[1]~37_combout\ <= NOT \alu|result[1]~37_combout\;
\alu|ALT_INV_result[1]~36_combout\ <= NOT \alu|result[1]~36_combout\;
\alu|subtract_module|adding_negative|bit0_summation|ALT_INV_and0~0_combout\ <= NOT \alu|subtract_module|adding_negative|bit0_summation|and0~0_combout\;
\alu|ALT_INV_result~35_combout\ <= NOT \alu|result~35_combout\;
\alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|ALT_INV_xor0~combout\ <= NOT \alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|xor0~combout\;
\alu|ALT_INV_result~34_combout\ <= NOT \alu|result~34_combout\;
\alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\ <= NOT \alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\;
\alu|ALT_INV_Equal7~3_combout\ <= NOT \alu|Equal7~3_combout\;
\alu|ALT_INV_Equal7~2_combout\ <= NOT \alu|Equal7~2_combout\;
\alu|ALT_INV_Equal7~1_combout\ <= NOT \alu|Equal7~1_combout\;
\alu|ALT_INV_Equal7~0_combout\ <= NOT \alu|Equal7~0_combout\;
\alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\;
\alu|ALT_INV_result~33_combout\ <= NOT \alu|result~33_combout\;
\alu|sll_module|BARREL[14].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\;
\alu|ALT_INV_result~32_combout\ <= NOT \alu|result~32_combout\;
\alu|ALT_INV_result~31_combout\ <= NOT \alu|result~31_combout\;
\alu|sll_module|BARREL[17].BARREL4|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\;
\alu|ALT_INV_result~30_combout\ <= NOT \alu|result~30_combout\;
\alu|ALT_INV_result[3]~29_combout\ <= NOT \alu|result[3]~29_combout\;
\alu|ALT_INV_result[3]~28_combout\ <= NOT \alu|result[3]~28_combout\;
\alu|ALT_INV_result~27_combout\ <= NOT \alu|result~27_combout\;
\alu|ALT_INV_result~26_combout\ <= NOT \alu|result~26_combout\;
\alu|ALT_INV_result~25_combout\ <= NOT \alu|result~25_combout\;
\alu|ALT_INV_result[4]~24_combout\ <= NOT \alu|result[4]~24_combout\;
\alu|ALT_INV_result[4]~23_combout\ <= NOT \alu|result[4]~23_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[3].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[3].carry_or~0_combout\;
\alu|ALT_INV_result~22_combout\ <= NOT \alu|result~22_combout\;
\alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|ALT_INV_xor0~combout\ <= NOT \alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|xor0~combout\;
\alu|sll_module|BARREL[4].BARREL3|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\;
\alu|ALT_INV_result[11]~21_combout\ <= NOT \alu|result[11]~21_combout\;
\alu|ALT_INV_result[11]~20_combout\ <= NOT \alu|result[11]~20_combout\;
\alu|ALT_INV_result~19_combout\ <= NOT \alu|result~19_combout\;
\alu|sll_module|BARREL[11].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[11].BARREL3|or_sel~0_combout\;
\alu|ALT_INV_result~18_combout\ <= NOT \alu|result~18_combout\;
\alu|ALT_INV_result~17_combout\ <= NOT \alu|result~17_combout\;
\alu|adder_module|HALF_ADDERS[11].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\;
\alu|ALT_INV_result[10]~16_combout\ <= NOT \alu|result[10]~16_combout\;
\alu|ALT_INV_result[10]~15_combout\ <= NOT \alu|result[10]~15_combout\;
\alu|ALT_INV_result~14_combout\ <= NOT \alu|result~14_combout\;
\alu|sll_module|BARREL[10].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[10].BARREL3|or_sel~0_combout\;
\alu|sll_module|BARREL[10].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[6].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\;
\alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\ <= NOT \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\ <= NOT \alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\;
\alu|ALT_INV_result[13]~13_combout\ <= NOT \alu|result[13]~13_combout\;
\alu|ALT_INV_result[13]~12_combout\ <= NOT \alu|result[13]~12_combout\;
\alu|ALT_INV_result[13]~11_combout\ <= NOT \alu|result[13]~11_combout\;
\alu|sll_module|BARREL[13].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\;
\alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\;
\alu|sll_module|BARREL[5].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[9].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[13].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\;
\alu|ALT_INV_result~10_combout\ <= NOT \alu|result~10_combout\;
\alu|adder_module|HALF_ADDERS[13].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\;
\alu|ALT_INV_result~9_combout\ <= NOT \alu|result~9_combout\;
\alu|ALT_INV_result~8_combout\ <= NOT \alu|result~8_combout\;
\alu|ALT_INV_result[15]~7_combout\ <= NOT \alu|result[15]~7_combout\;
\alu|ALT_INV_result[15]~6_combout\ <= NOT \alu|result[15]~6_combout\;
\alu|ALT_INV_result~5_combout\ <= NOT \alu|result~5_combout\;
\alu|sll_module|BARREL[15].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[15].BARREL3|or_sel~0_combout\;
\alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[15].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\;
\alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\ <= NOT \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\ <= NOT \alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\;
\alu|ALT_INV_result[12]~4_combout\ <= NOT \alu|result[12]~4_combout\;
\alu|ALT_INV_result[12]~3_combout\ <= NOT \alu|result[12]~3_combout\;
\alu|ALT_INV_result~2_combout\ <= NOT \alu|result~2_combout\;
\alu|sll_module|BARREL[12].BARREL3|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[12].BARREL3|or_sel~0_combout\;
\alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\;
\alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\ <= NOT \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\;
\alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\ <= NOT \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\;
\alu|sll_module|BARREL[4].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[8].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\;
\alu|sll_module|BARREL[12].BARREL1|ALT_INV_or_sel~0_combout\ <= NOT \alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\;
\alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\ <= NOT \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\;
\alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\ <= NOT \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\;
\alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\ <= NOT \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\ <= NOT \alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\;
\alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~0_combout\ <= NOT \alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\;
\alu|ALT_INV_Equal3~1_combout\ <= NOT \alu|Equal3~1_combout\;
\alu|ALT_INV_result~1_combout\ <= NOT \alu|result~1_combout\;
\alu|ALT_INV_result~0_combout\ <= NOT \alu|result~0_combout\;
\alu|ALT_INV_Equal3~0_combout\ <= NOT \alu|Equal3~0_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~1_combout\ <= NOT \alu|adder_module|CARRY_CALC[10].carry_or~1_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[10].carry_or~0_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~1_combout\ <= NOT \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[5].carry_or~0_combout\;
\alu|adder_module|ALT_INV_CARRY_CALC[2].carry_or~0_combout\ <= NOT \alu|adder_module|CARRY_CALC[2].carry_or~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~1_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~1_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\;
\alu|ALT_INV_N~1_combout\ <= NOT \alu|N~1_combout\;
\alu|ALT_INV_N~0_combout\ <= NOT \alu|N~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~1_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[7].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~1_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0_combout\;
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\;
ALT_INV_operand0(0) <= NOT operand0(0);
ALT_INV_operand1(0) <= NOT operand1(0);
ALT_INV_operand0(1) <= NOT operand0(1);
ALT_INV_operand1(1) <= NOT operand1(1);
ALT_INV_operand0(2) <= NOT operand0(2);
ALT_INV_operand1(2) <= NOT operand1(2);
ALT_INV_operand0(3) <= NOT operand0(3);
ALT_INV_operand1(3) <= NOT operand1(3);
ALT_INV_operand0(4) <= NOT operand0(4);
ALT_INV_operand1(4) <= NOT operand1(4);
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\;
ALT_INV_operand0(5) <= NOT operand0(5);
ALT_INV_operand1(5) <= NOT operand1(5);
ALT_INV_operand0(6) <= NOT operand0(6);
ALT_INV_operand1(6) <= NOT operand1(6);
ALT_INV_operand0(7) <= NOT operand0(7);
ALT_INV_operand1(7) <= NOT operand1(7);
ALT_INV_operand0(8) <= NOT operand0(8);
ALT_INV_operand1(8) <= NOT operand1(8);
ALT_INV_operand0(9) <= NOT operand0(9);
ALT_INV_operand1(9) <= NOT operand1(9);
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\;
ALT_INV_operand0(10) <= NOT operand0(10);
ALT_INV_operand1(10) <= NOT operand1(10);
ALT_INV_operand0(11) <= NOT operand0(11);
ALT_INV_operand1(11) <= NOT operand1(11);
ALT_INV_operand0(12) <= NOT operand0(12);
ALT_INV_operand1(12) <= NOT operand1(12);
ALT_INV_operand0(13) <= NOT operand0(13);
ALT_INV_operand1(13) <= NOT operand1(13);
ALT_INV_operand0(14) <= NOT operand0(14);
ALT_INV_operand1(14) <= NOT operand1(14);
\alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[15].or_pairs~0_combout\ <= NOT \alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\;
ALT_INV_operand0(15) <= NOT operand0(15);
ALT_INV_operand1(15) <= NOT operand1(15);
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_digitA[2]~4_combout\ <= NOT \digitA[2]~4_combout\;
\ALT_INV_digitA[2]~3_combout\ <= NOT \digitA[2]~3_combout\;
\ALT_INV_digitA~1_combout\ <= NOT \digitA~1_combout\;
\ALT_INV_digitA~0_combout\ <= NOT \digitA~0_combout\;
\ALT_INV_backspace~q\ <= NOT \backspace~q\;
ALT_INV_digitA(2) <= NOT digitA(2);
\ALT_INV_always2~0_combout\ <= NOT \always2~0_combout\;
\ALT_INV_hex_value[0][3]~q\ <= NOT \hex_value[0][3]~q\;
\ALT_INV_hex_value[0][2]~q\ <= NOT \hex_value[0][2]~q\;
\ALT_INV_hex_value[0][1]~q\ <= NOT \hex_value[0][1]~q\;
\ALT_INV_hex_value[0][0]~q\ <= NOT \hex_value[0][0]~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \enter~q\,
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
	i => \KEY[1]~input_o\,
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
	i => \rst~q\,
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
	i => digitA(0),
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
	i => digitA(1),
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
	i => \Np~q\,
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
	i => \Cp~q\,
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
	i => \Zp~q\,
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

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex_value[5][0]~q\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hex_value[5][1]~q\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

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

-- Location: FF_X68_Y4_N2
enter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter~q\);

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

-- Location: FF_X57_Y4_N35
rst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst~q\);

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

-- Location: LABCELL_X57_Y4_N33
\always2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = ( !\KEY[3]~input_o\ & ( \rst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_rst~q\,
	combout => \always2~0_combout\);

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

-- Location: FF_X68_Y4_N41
backspace : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \backspace~q\);

-- Location: LABCELL_X68_Y4_N42
\digitA[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA[2]~4_combout\ = ( !\SW[9]~input_o\ & ( (!\SW[8]~input_o\ & ((!digitA(2)) # ((\backspace~q\ & !\KEY[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010000000000111101000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => ALT_INV_digitA(2),
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \digitA[2]~4_combout\);

-- Location: LABCELL_X68_Y4_N45
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = !digitA(1) $ (!digitA(0) $ (((!\backspace~q\) # (\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010001001011101101000100101110110100010010111011010001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => ALT_INV_digitA(1),
	datad => ALT_INV_digitA(0),
	combout => \Add2~0_combout\);

-- Location: LABCELL_X68_Y4_N6
\digitA[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA[2]~3_combout\ = ( \enter~q\ & ( \KEY[0]~input_o\ & ( (\backspace~q\ & (!\KEY[2]~input_o\ & ((digitA(0)) # (digitA(1))))) ) ) ) # ( !\enter~q\ & ( \KEY[0]~input_o\ & ( (\backspace~q\ & (!\KEY[2]~input_o\ & ((digitA(0)) # (digitA(1))))) ) ) ) # ( 
-- \enter~q\ & ( !\KEY[0]~input_o\ & ( (!\backspace~q\) # (((\KEY[2]~input_o\) # (digitA(0))) # (digitA(1))) ) ) ) # ( !\enter~q\ & ( !\KEY[0]~input_o\ & ( (\backspace~q\ & (!\KEY[2]~input_o\ & ((digitA(0)) # (digitA(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000101111111111111100010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => ALT_INV_digitA(1),
	datac => ALT_INV_digitA(0),
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_enter~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \digitA[2]~3_combout\);

-- Location: LABCELL_X68_Y4_N12
\digitA[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA[1]~5_combout\ = ( digitA(1) & ( \digitA[2]~3_combout\ & ( (!\always2~0_combout\ & ((!\digitA[2]~4_combout\) # (!\Add2~0_combout\))) ) ) ) # ( !digitA(1) & ( \digitA[2]~3_combout\ & ( (!\always2~0_combout\ & (\digitA[2]~4_combout\ & 
-- !\Add2~0_combout\)) ) ) ) # ( digitA(1) & ( !\digitA[2]~3_combout\ & ( (!\always2~0_combout\ & ((!\digitA[2]~4_combout\) # ((!digitA(2)) # (!\Add2~0_combout\)))) ) ) ) # ( !digitA(1) & ( !\digitA[2]~3_combout\ & ( (!\always2~0_combout\ & 
-- (\digitA[2]~4_combout\ & (digitA(2) & !\Add2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000101010101010100000100010000000001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always2~0_combout\,
	datab => \ALT_INV_digitA[2]~4_combout\,
	datac => ALT_INV_digitA(2),
	datad => \ALT_INV_Add2~0_combout\,
	datae => ALT_INV_digitA(1),
	dataf => \ALT_INV_digitA[2]~3_combout\,
	combout => \digitA[1]~5_combout\);

-- Location: FF_X68_Y4_N14
\digitA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \digitA[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitA(1));

-- Location: LABCELL_X68_Y4_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( digitA(2) & ( (!digitA(1) & (\backspace~q\ & (!\KEY[2]~input_o\ & !digitA(0)))) # (digitA(1) & (digitA(0) & ((!\backspace~q\) # (\KEY[2]~input_o\)))) ) ) # ( !digitA(2) & ( (!digitA(1) & ((!\backspace~q\) # ((digitA(0)) # 
-- (\KEY[2]~input_o\)))) # (digitA(1) & ((!digitA(0)) # ((\backspace~q\ & !\KEY[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110100101111111111010001000000000010110100000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => ALT_INV_digitA(1),
	datad => ALT_INV_digitA(0),
	dataf => ALT_INV_digitA(2),
	combout => \Add2~1_combout\);

-- Location: LABCELL_X68_Y4_N18
\digitA[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA[2]~6_combout\ = ( digitA(2) & ( \digitA[2]~3_combout\ & ( (!\always2~0_combout\ & ((!\Add2~1_combout\) # (!\digitA[2]~4_combout\))) ) ) ) # ( !digitA(2) & ( \digitA[2]~3_combout\ & ( (!\always2~0_combout\ & (!\Add2~1_combout\ & 
-- \digitA[2]~4_combout\)) ) ) ) # ( digitA(2) & ( !\digitA[2]~3_combout\ & ( (!\always2~0_combout\ & ((!\Add2~1_combout\) # (!\digitA[2]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100000000000000110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_always2~0_combout\,
	datac => \ALT_INV_Add2~1_combout\,
	datad => \ALT_INV_digitA[2]~4_combout\,
	datae => ALT_INV_digitA(2),
	dataf => \ALT_INV_digitA[2]~3_combout\,
	combout => \digitA[2]~6_combout\);

-- Location: FF_X68_Y4_N20
\digitA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \digitA[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitA(2));

-- Location: LABCELL_X68_Y4_N30
\digitA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA~1_combout\ = ( digitA(1) & ( (\backspace~q\ & !\KEY[2]~input_o\) ) ) # ( !digitA(1) & ( (\backspace~q\ & (!\KEY[2]~input_o\ & ((digitA(2)) # (digitA(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => ALT_INV_digitA(0),
	datad => ALT_INV_digitA(2),
	dataf => ALT_INV_digitA(1),
	combout => \digitA~1_combout\);

-- Location: LABCELL_X68_Y4_N24
\digitA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA~0_combout\ = ( \KEY[2]~input_o\ & ( (!\KEY[0]~input_o\ & (!digitA(2) & \enter~q\)) ) ) # ( !\KEY[2]~input_o\ & ( (!\KEY[0]~input_o\ & (!\backspace~q\ & (!digitA(2) & \enter~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_backspace~q\,
	datac => ALT_INV_digitA(2),
	datad => \ALT_INV_enter~q\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \digitA~0_combout\);

-- Location: LABCELL_X68_Y4_N36
\digitA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitA~2_combout\ = ( digitA(0) & ( \digitA~0_combout\ & ( (!\always2~0_combout\ & ((\SW[9]~input_o\) # (\SW[8]~input_o\))) ) ) ) # ( !digitA(0) & ( \digitA~0_combout\ & ( (!\SW[8]~input_o\ & (!\always2~0_combout\ & !\SW[9]~input_o\)) ) ) ) # ( digitA(0) 
-- & ( !\digitA~0_combout\ & ( (!\always2~0_combout\ & (((!\digitA~1_combout\) # (\SW[9]~input_o\)) # (\SW[8]~input_o\))) ) ) ) # ( !digitA(0) & ( !\digitA~0_combout\ & ( (!\SW[8]~input_o\ & (!\always2~0_combout\ & (!\SW[9]~input_o\ & \digitA~1_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000110011000100110010000000100000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_always2~0_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_digitA~1_combout\,
	datae => ALT_INV_digitA(0),
	dataf => \ALT_INV_digitA~0_combout\,
	combout => \digitA~2_combout\);

-- Location: FF_X68_Y4_N38
\digitA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \digitA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitA(0));

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

-- Location: LABCELL_X67_Y4_N15
\operand0[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand0[12]~0_combout\ = ( !digitA(1) & ( (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!digitA(2) & !digitA(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_digitA(2),
	datad => ALT_INV_digitA(0),
	dataf => ALT_INV_digitA(1),
	combout => \operand0[12]~0_combout\);

-- Location: FF_X61_Y3_N53
\operand0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand0[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(13));

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

-- Location: LABCELL_X71_Y4_N27
\digitB[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB[2]~4_combout\ = ( digitB(2) & ( (\backspace~q\ & (!\KEY[2]~input_o\ & (\SW[8]~input_o\ & !\SW[9]~input_o\))) ) ) # ( !digitB(2) & ( (\SW[8]~input_o\ & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => ALT_INV_digitB(2),
	combout => \digitB[2]~4_combout\);

-- Location: LABCELL_X71_Y4_N24
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = ( digitB(1) & ( !digitB(0) $ (((!\backspace~q\) # (\KEY[2]~input_o\))) ) ) # ( !digitB(1) & ( !digitB(0) $ (((\backspace~q\ & !\KEY[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010010110100101101001011010001001011010010110100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_backspace~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => ALT_INV_digitB(0),
	dataf => ALT_INV_digitB(1),
	combout => \Add3~1_combout\);

-- Location: LABCELL_X68_Y4_N3
\digitB[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB[2]~3_combout\ = ( !\KEY[2]~input_o\ & ( \KEY[0]~input_o\ & ( (\backspace~q\ & ((digitB(1)) # (digitB(0)))) ) ) ) # ( \KEY[2]~input_o\ & ( !\KEY[0]~input_o\ & ( \enter~q\ ) ) ) # ( !\KEY[2]~input_o\ & ( !\KEY[0]~input_o\ & ( (!\backspace~q\ & 
-- (\enter~q\)) # (\backspace~q\ & (((digitB(1)) # (digitB(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100111111010101010101010100000000001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enter~q\,
	datab => ALT_INV_digitB(0),
	datac => ALT_INV_digitB(1),
	datad => \ALT_INV_backspace~q\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \digitB[2]~3_combout\);

-- Location: LABCELL_X71_Y4_N12
\digitB[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB[1]~6_combout\ = ( digitB(1) & ( !\always2~0_combout\ & ( (!\Add3~1_combout\) # ((!\digitB[2]~4_combout\) # ((!\digitB[2]~3_combout\ & !digitB(2)))) ) ) ) # ( !digitB(1) & ( !\always2~0_combout\ & ( (!\Add3~1_combout\ & (\digitB[2]~4_combout\ & 
-- ((digitB(2)) # (\digitB[2]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010111111101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_combout\,
	datab => \ALT_INV_digitB[2]~3_combout\,
	datac => \ALT_INV_digitB[2]~4_combout\,
	datad => ALT_INV_digitB(2),
	datae => ALT_INV_digitB(1),
	dataf => \ALT_INV_always2~0_combout\,
	combout => \digitB[1]~6_combout\);

-- Location: FF_X71_Y4_N14
\digitB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \digitB[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitB(1));

-- Location: LABCELL_X67_Y4_N57
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( \backspace~q\ & ( !digitB(2) $ (((!digitB(0) & (!digitB(1) & !\KEY[2]~input_o\)) # (digitB(0) & (digitB(1) & \KEY[2]~input_o\)))) ) ) # ( !\backspace~q\ & ( !digitB(2) $ (((digitB(0) & digitB(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000010001111011100001000101111110100000010111111010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(0),
	datab => ALT_INV_digitB(1),
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => ALT_INV_digitB(2),
	dataf => \ALT_INV_backspace~q\,
	combout => \Add3~0_combout\);

-- Location: LABCELL_X71_Y4_N6
\digitB[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB[2]~5_combout\ = ( digitB(2) & ( (!\always2~0_combout\ & ((!\digitB[2]~4_combout\) # (!\Add3~0_combout\))) ) ) # ( !digitB(2) & ( (\digitB[2]~4_combout\ & (!\Add3~0_combout\ & (!\always2~0_combout\ & \digitB[2]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111000001110000000000000010000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digitB[2]~4_combout\,
	datab => \ALT_INV_Add3~0_combout\,
	datac => \ALT_INV_always2~0_combout\,
	datad => \ALT_INV_digitB[2]~3_combout\,
	datae => ALT_INV_digitB(2),
	combout => \digitB[2]~5_combout\);

-- Location: FF_X71_Y4_N8
\digitB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \digitB[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitB(2));

-- Location: LABCELL_X68_Y4_N27
\digitB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB~0_combout\ = ( !digitB(2) & ( (!\KEY[0]~input_o\ & (\enter~q\ & ((!\backspace~q\) # (\KEY[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010000000001000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_backspace~q\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_enter~q\,
	dataf => ALT_INV_digitB(2),
	combout => \digitB~0_combout\);

-- Location: LABCELL_X67_Y4_N54
\digitB~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB~1_combout\ = ( !\KEY[2]~input_o\ & ( (\backspace~q\ & (((digitB(2)) # (digitB(1))) # (digitB(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(0),
	datab => ALT_INV_digitB(1),
	datac => \ALT_INV_backspace~q\,
	datad => ALT_INV_digitB(2),
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \digitB~1_combout\);

-- Location: LABCELL_X71_Y4_N33
\hex_value~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~0_combout\ = (\SW[8]~input_o\ & !\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \hex_value~0_combout\);

-- Location: LABCELL_X71_Y4_N30
\digitB~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digitB~2_combout\ = ( \hex_value~0_combout\ & ( (!\always2~0_combout\ & (!digitB(0) $ (((!\digitB~0_combout\ & !\digitB~1_combout\))))) ) ) # ( !\hex_value~0_combout\ & ( (!\always2~0_combout\ & digitB(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000101010100000000010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always2~0_combout\,
	datab => \ALT_INV_digitB~0_combout\,
	datac => \ALT_INV_digitB~1_combout\,
	datad => ALT_INV_digitB(0),
	dataf => \ALT_INV_hex_value~0_combout\,
	combout => \digitB~2_combout\);

-- Location: FF_X71_Y4_N32
\digitB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \digitB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitB(0));

-- Location: LABCELL_X67_Y4_N39
\operand1[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand1[12]~0_combout\ = ( !digitB(1) & ( (!digitB(0) & (\SW[8]~input_o\ & (!\SW[9]~input_o\ & !digitB(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(0),
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => ALT_INV_digitB(2),
	dataf => ALT_INV_digitB(1),
	combout => \operand1[12]~0_combout\);

-- Location: FF_X63_Y4_N2
\operand1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand1[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(12));

-- Location: FF_X61_Y3_N59
\operand0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand0[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(12));

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

-- Location: LABCELL_X68_Y4_N54
\operand0[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand0[8]~1_combout\ = ( !digitA(2) & ( (digitA(0) & (!digitA(1) & (!\SW[9]~input_o\ & !\SW[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitA(0),
	datab => ALT_INV_digitA(1),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_digitA(2),
	combout => \operand0[8]~1_combout\);

-- Location: FF_X63_Y4_N53
\operand0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(10));

-- Location: LABCELL_X67_Y4_N48
\operand1[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand1[8]~1_combout\ = ( !digitB(1) & ( (digitB(0) & (\SW[8]~input_o\ & (!digitB(2) & !\SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(0),
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_digitB(2),
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => ALT_INV_digitB(1),
	combout => \operand1[8]~1_combout\);

-- Location: FF_X61_Y4_N32
\operand1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand1[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(10));

-- Location: LABCELL_X61_Y4_N48
\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\ = ( operand1(10) & ( !operand0(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(10),
	dataf => ALT_INV_operand1(10),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\);

-- Location: FF_X61_Y4_N41
\operand1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand1[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(9));

-- Location: FF_X61_Y4_N17
\operand1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand1[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(8));

-- Location: FF_X63_Y4_N29
\operand0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(9));

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

-- Location: LABCELL_X67_Y4_N51
\operand1[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand1[4]~2_combout\ = ( digitB(1) & ( (!digitB(0) & (\SW[8]~input_o\ & (!\SW[9]~input_o\ & !digitB(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(0),
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => ALT_INV_digitB(2),
	dataf => ALT_INV_digitB(1),
	combout => \operand1[4]~2_combout\);

-- Location: FF_X64_Y2_N2
\operand1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(7));

-- Location: FF_X64_Y2_N41
\operand1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(6));

-- Location: LABCELL_X67_Y4_N12
\operand1[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand1[0]~3_combout\ = ( digitB(1) & ( (!\SW[9]~input_o\ & (\SW[8]~input_o\ & (digitB(0) & !digitB(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_digitB(0),
	datad => ALT_INV_digitB(2),
	dataf => ALT_INV_digitB(1),
	combout => \operand1[0]~3_combout\);

-- Location: FF_X66_Y2_N53
\operand1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(1));

-- Location: LABCELL_X68_Y4_N57
\operand0[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand0[0]~3_combout\ = ( !digitA(2) & ( (digitA(0) & (digitA(1) & (!\SW[8]~input_o\ & !\SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitA(0),
	datab => ALT_INV_digitA(1),
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => ALT_INV_digitA(2),
	combout => \operand0[0]~3_combout\);

-- Location: FF_X66_Y2_N47
\operand0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand0[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(2));

-- Location: FF_X66_Y2_N26
\operand0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand0[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(1));

-- Location: FF_X66_Y2_N11
\operand1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(2));

-- Location: FF_X66_Y2_N41
\operand0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand0[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(0));

-- Location: FF_X66_Y2_N35
\operand1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(0));

-- Location: LABCELL_X66_Y2_N42
\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ = ( operand0(0) & ( operand1(0) & ( (!operand0(2) & (((operand1(1) & !operand0(1))) # (operand1(2)))) # (operand0(2) & (operand1(1) & (!operand0(1) & operand1(2)))) ) ) ) # ( 
-- !operand0(0) & ( operand1(0) & ( (!operand0(2) & (((!operand0(1)) # (operand1(2))) # (operand1(1)))) # (operand0(2) & (operand1(2) & ((!operand0(1)) # (operand1(1))))) ) ) ) # ( operand0(0) & ( !operand1(0) & ( (!operand0(2) & (((operand1(1) & 
-- !operand0(1))) # (operand1(2)))) # (operand0(2) & (operand1(1) & (!operand0(1) & operand1(2)))) ) ) ) # ( !operand0(0) & ( !operand1(0) & ( (!operand0(2) & (((operand1(1) & !operand0(1))) # (operand1(2)))) # (operand0(2) & (operand1(1) & (!operand0(1) & 
-- operand1(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011011100010000001101110011000100111111010100000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(1),
	datab => ALT_INV_operand0(2),
	datac => ALT_INV_operand0(1),
	datad => ALT_INV_operand1(2),
	datae => ALT_INV_operand0(0),
	dataf => ALT_INV_operand1(0),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\);

-- Location: FF_X66_Y2_N2
\operand0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand0[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(3));

-- Location: FF_X64_Y2_N35
\operand1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(4));

-- Location: FF_X64_Y2_N8
\operand1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(3));

-- Location: LABCELL_X68_Y4_N48
\operand0[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand0[4]~2_combout\ = ( !digitA(2) & ( (!\SW[9]~input_o\ & (digitA(1) & (!digitA(0) & !\SW[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => ALT_INV_digitA(1),
	datac => ALT_INV_digitA(0),
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_digitA(2),
	combout => \operand0[4]~2_combout\);

-- Location: FF_X64_Y2_N14
\operand0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand0[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(4));

-- Location: FF_X64_Y2_N53
\operand1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(5));

-- Location: FF_X64_Y2_N59
\operand0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand0[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(5));

-- Location: LABCELL_X64_Y2_N57
\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0_combout\ = (operand1(5) & !operand0(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datad => ALT_INV_operand0(5),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0_combout\);

-- Location: LABCELL_X64_Y2_N12
\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ = ( operand0(4) & ( !\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0_combout\ & ( (!operand1(4)) # 
-- ((!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & ((!operand1(3)) # (operand0(3)))) # (\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & (operand0(3) & !operand1(3)))) ) ) ) # ( !operand0(4) & ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~0_combout\ & ( (!operand1(4) & ((!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & ((!operand1(3)) # (operand0(3)))) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & (operand0(3) & !operand1(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000100000111110111111001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	datab => ALT_INV_operand0(3),
	datac => ALT_INV_operand1(4),
	datad => ALT_INV_operand1(3),
	datae => ALT_INV_operand0(4),
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~0_combout\,
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\);

-- Location: MLABCELL_X65_Y4_N45
\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\ = ( operand0(5) & ( !operand1(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_operand1(5),
	dataf => ALT_INV_operand0(5),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\);

-- Location: FF_X64_Y2_N17
\operand0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand0[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(6));

-- Location: FF_X65_Y4_N8
\operand0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand0[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(7));

-- Location: LABCELL_X64_Y2_N3
\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ = ( operand0(6) & ( operand0(7) & ( (operand1(7) & (operand1(6) & (!\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\))) ) ) ) # ( !operand0(6) & ( operand0(7) & ( (operand1(7) & (((!\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\)) # (operand1(6)))) ) ) ) # ( operand0(6) & ( !operand0(7) & ( ((operand1(6) & (!\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\))) # (operand1(7)) ) ) ) # ( !operand0(6) & ( !operand0(7) & ( (((!\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\)) # (operand1(6))) # (operand1(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101110111011101010101010101010001000100010001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(7),
	datab => ALT_INV_operand1(6),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~1_combout\,
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~0_combout\,
	datae => ALT_INV_operand0(6),
	dataf => ALT_INV_operand0(7),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\);

-- Location: FF_X63_Y4_N35
\operand0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \operand0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(8));

-- Location: LABCELL_X61_Y4_N33
\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( operand0(8) & ( (!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\ & 
-- ((!operand1(9) & ((!operand1(8)) # (operand0(9)))) # (operand1(9) & (!operand1(8) & operand0(9))))) ) ) ) # ( !\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( operand0(8) & ( 
-- (!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\ & ((!operand1(9)) # (operand0(9)))) ) ) ) # ( \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( !operand0(8) & ( 
-- (!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\ & (!operand1(9) & operand0(9))) ) ) ) # ( !\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( !operand0(8) & ( 
-- (!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~0_combout\ & ((!operand1(9) & ((!operand1(8)) # (operand0(9)))) # (operand1(9) & (!operand1(8) & operand0(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010101000000000001000100010001000101010101000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~0_combout\,
	datab => ALT_INV_operand1(9),
	datac => ALT_INV_operand1(8),
	datad => ALT_INV_operand0(9),
	datae => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	dataf => ALT_INV_operand0(8),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\);

-- Location: FF_X63_Y4_N41
\operand1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand1[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(11));

-- Location: FF_X63_Y4_N44
\operand0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(11));

-- Location: LABCELL_X67_Y4_N24
\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ = ( operand0(10) & ( !operand1(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(10),
	dataf => ALT_INV_operand0(10),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\);

-- Location: LABCELL_X61_Y3_N54
\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ = ( operand0(11) & ( \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & ( (operand1(12) & !operand0(12)) ) ) ) # ( !operand0(11) & ( 
-- \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & ( (!operand1(12) & (!operand0(12) & operand1(11))) # (operand1(12) & ((!operand0(12)) # (operand1(11)))) ) ) ) # ( operand0(11) & ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & ( (!operand1(12) & (!operand0(12) & (!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\ & operand1(11)))) # (operand1(12) & ((!operand0(12)) # 
-- ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\ & operand1(11))))) ) ) ) # ( !operand0(11) & ( !\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & ( (!operand1(12) & (!operand0(12) & 
-- ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\) # (operand1(11))))) # (operand1(12) & ((!operand0(12)) # ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\) # (operand1(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011011101010001001101010001000100110111010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(12),
	datab => ALT_INV_operand0(12),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~1_combout\,
	datad => ALT_INV_operand1(11),
	datae => ALT_INV_operand0(11),
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~0_combout\,
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\);

-- Location: FF_X63_Y3_N35
\operand1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand1[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(15));

-- Location: FF_X64_Y4_N8
\operand0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \operand0[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(15));

-- Location: LABCELL_X60_Y3_N30
\alu|N~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|N~0_combout\ = ( operand1(15) & ( !operand0(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_operand1(15),
	dataf => ALT_INV_operand0(15),
	combout => \alu|N~0_combout\);

-- Location: FF_X61_Y3_N17
\operand0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand0[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand0(14));

-- Location: FF_X61_Y3_N38
\operand1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \operand1[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(14));

-- Location: FF_X64_Y3_N23
\operand1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \operand1[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operand1(13));

-- Location: LABCELL_X61_Y3_N30
\alu|N~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|N~1_combout\ = ( operand1(14) & ( operand1(13) & ( (operand0(13) & (!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ & (!\alu|N~0_combout\ & operand0(14)))) ) ) ) # ( !operand1(14) & ( operand1(13) & ( (!\alu|N~0_combout\ & 
-- (((operand0(13) & !\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\)) # (operand0(14)))) ) ) ) # ( operand1(14) & ( !operand1(13) & ( (!\alu|N~0_combout\ & (operand0(14) & 
-- ((!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\) # (operand0(13))))) ) ) ) # ( !operand1(14) & ( !operand1(13) & ( (!\alu|N~0_combout\ & (((!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\) # 
-- (operand0(14))) # (operand0(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011110000000000001101000001000000111100000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(13),
	datab => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datac => \alu|ALT_INV_N~0_combout\,
	datad => ALT_INV_operand0(14),
	datae => ALT_INV_operand1(14),
	dataf => ALT_INV_operand1(13),
	combout => \alu|N~1_combout\);

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

-- Location: LABCELL_X63_Y3_N9
\alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ = ( operand0(15) & ( !operand1(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_operand0(15),
	dataf => ALT_INV_operand1(15),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\);

-- Location: LABCELL_X64_Y3_N36
\Np~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Np~0_combout\ = ( !\SW[4]~input_o\ & ( !\alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ & ( (\SW[9]~input_o\ & (\SW[5]~input_o\ & (!\alu|N~1_combout\ & !\SW[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \alu|ALT_INV_N~1_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[15].or_pairs~0_combout\,
	combout => \Np~0_combout\);

-- Location: LABCELL_X60_Y2_N30
\Zp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Zp~0_combout\ = ( !\SW[9]~input_o\ & ( \KEY[1]~input_o\ ) ) # ( \SW[9]~input_o\ & ( !\KEY[1]~input_o\ ) ) # ( !\SW[9]~input_o\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \Zp~0_combout\);

-- Location: FF_X64_Y3_N37
Np : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Np~0_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Np~q\);

-- Location: LABCELL_X64_Y3_N3
\alu|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|C~0_combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ & ( (!\SW[6]~input_o\ & (\SW[5]~input_o\ & !\SW[4]~input_o\)) ) ) # ( !\alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ & ( 
-- (\alu|N~1_combout\ & (!\SW[6]~input_o\ & (\SW[5]~input_o\ & !\SW[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_N~1_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[15].or_pairs~0_combout\,
	combout => \alu|C~0_combout\);

-- Location: FF_X64_Y3_N4
Cp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \alu|C~0_combout\,
	sclr => \ALT_INV_SW[9]~input_o\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cp~q\);

-- Location: LABCELL_X67_Y4_N27
\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ = ( operand0(10) & ( operand1(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(10),
	dataf => ALT_INV_operand0(10),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\);

-- Location: LABCELL_X63_Y2_N30
\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\ = ( operand0(5) & ( operand1(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_operand1(5),
	datae => ALT_INV_operand0(5),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\);

-- Location: LABCELL_X66_Y2_N3
\alu|adder_module|CARRY_CALC[2].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ = ( operand0(0) & ( operand1(0) & ( (!operand1(2) & (operand0(2) & ((operand1(1)) # (operand0(1))))) # (operand1(2) & (((operand1(1)) # (operand0(2))) # (operand0(1)))) ) ) ) # ( !operand0(0) & ( 
-- operand1(0) & ( (!operand1(2) & (operand0(1) & (operand0(2) & operand1(1)))) # (operand1(2) & (((operand0(1) & operand1(1))) # (operand0(2)))) ) ) ) # ( operand0(0) & ( !operand1(0) & ( (!operand1(2) & (operand0(1) & (operand0(2) & operand1(1)))) # 
-- (operand1(2) & (((operand0(1) & operand1(1))) # (operand0(2)))) ) ) ) # ( !operand0(0) & ( !operand1(0) & ( (!operand1(2) & (operand0(1) & (operand0(2) & operand1(1)))) # (operand1(2) & (((operand0(1) & operand1(1))) # (operand0(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100000011000101110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(1),
	datab => ALT_INV_operand1(2),
	datac => ALT_INV_operand0(2),
	datad => ALT_INV_operand1(1),
	datae => ALT_INV_operand0(0),
	dataf => ALT_INV_operand1(0),
	combout => \alu|adder_module|CARRY_CALC[2].carry_or~0_combout\);

-- Location: LABCELL_X64_Y2_N54
\alu|adder_module|CARRY_CALC[5].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[5].carry_or~0_combout\ = (!operand1(5) & !operand0(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datad => ALT_INV_operand0(5),
	combout => \alu|adder_module|CARRY_CALC[5].carry_or~0_combout\);

-- Location: LABCELL_X64_Y2_N36
\alu|adder_module|CARRY_CALC[5].carry_or~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ = ( !\alu|adder_module|CARRY_CALC[5].carry_or~0_combout\ & ( operand0(3) & ( (!operand1(4) & (operand0(4) & ((operand1(3)) # (\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\)))) # (operand1(4) & 
-- (((operand0(4)) # (operand1(3))) # (\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[5].carry_or~0_combout\ & ( !operand0(3) & ( (!operand1(4) & (\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & 
-- (operand1(3) & operand0(4)))) # (operand1(4) & (((\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & operand1(3))) # (operand0(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000000000000000000111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	datab => ALT_INV_operand1(3),
	datac => ALT_INV_operand1(4),
	datad => ALT_INV_operand0(4),
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~0_combout\,
	dataf => ALT_INV_operand0(3),
	combout => \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\);

-- Location: LABCELL_X64_Y2_N30
\alu|adder_module|CARRY_CALC[7].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ = ( \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( operand0(7) & ( (!operand1(7) & (!operand1(6) & !operand0(6))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( operand0(7) & 
-- ( (!operand1(7) & ((!operand1(6) & ((!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\) # (!operand0(6)))) # (operand1(6) & (!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\ & !operand0(6))))) ) ) ) # ( 
-- \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( !operand0(7) & ( (!operand1(7)) # ((!operand1(6) & !operand0(6))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( !operand0(7) & ( (!operand1(7)) # ((!operand1(6) & 
-- ((!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\) # (!operand0(6)))) # (operand1(6) & (!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\ & !operand0(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010111011101010101010101000100000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(7),
	datab => ALT_INV_operand1(6),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~1_combout\,
	datad => ALT_INV_operand0(6),
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~1_combout\,
	dataf => ALT_INV_operand0(7),
	combout => \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\);

-- Location: LABCELL_X61_Y4_N51
\alu|adder_module|CARRY_CALC[10].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[10].carry_or~0_combout\ = ( !operand1(10) & ( !operand0(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(10),
	dataf => ALT_INV_operand1(10),
	combout => \alu|adder_module|CARRY_CALC[10].carry_or~0_combout\);

-- Location: LABCELL_X61_Y4_N24
\alu|adder_module|CARRY_CALC[10].carry_or~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[10].carry_or~1_combout\ = ( \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ & ( !\alu|adder_module|CARRY_CALC[10].carry_or~0_combout\ & ( (!operand0(9) & (operand0(8) & (operand1(8) & operand1(9)))) # (operand0(9) & 
-- (((operand0(8) & operand1(8))) # (operand1(9)))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ & ( !\alu|adder_module|CARRY_CALC[10].carry_or~0_combout\ & ( (!operand0(9) & (operand1(9) & ((operand1(8)) # (operand0(8))))) # (operand0(9) & 
-- (((operand1(9)) # (operand1(8))) # (operand0(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datab => ALT_INV_operand1(8),
	datac => ALT_INV_operand0(9),
	datad => ALT_INV_operand1(9),
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	dataf => \alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~0_combout\,
	combout => \alu|adder_module|CARRY_CALC[10].carry_or~1_combout\);

-- Location: LABCELL_X61_Y3_N6
\alu|adder_module|CARRY_CALC[12].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ = ( operand0(12) & ( operand1(11) & ( (!\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ & (!\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\ & (!operand1(12) & 
-- !operand0(11)))) ) ) ) # ( !operand0(12) & ( operand1(11) & ( (!operand1(12)) # ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ & (!\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\ & !operand0(11)))) ) ) ) # ( operand0(12) & 
-- ( !operand1(11) & ( (!operand1(12) & ((!operand0(11)) # ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ & !\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\)))) ) ) ) # ( !operand0(12) & ( !operand1(11) & ( (!operand1(12)) # 
-- ((!operand0(11)) # ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ & !\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000111100001000000011111000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~1_combout\,
	datab => \alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~1_combout\,
	datac => ALT_INV_operand1(12),
	datad => ALT_INV_operand0(11),
	datae => ALT_INV_operand0(12),
	dataf => ALT_INV_operand1(11),
	combout => \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\);

-- Location: LABCELL_X62_Y4_N12
\alu|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal3~1_combout\ = (!\SW[4]~input_o\ & (!\SW[6]~input_o\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \alu|Equal3~1_combout\);

-- Location: LABCELL_X64_Y3_N33
\alu|result[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[13]~11_combout\ = ( operand0(13) & ( (!\SW[5]~input_o\ & (\SW[6]~input_o\ & ((!\SW[4]~input_o\) # (!operand1(13))))) # (\SW[5]~input_o\ & (\SW[4]~input_o\ & (!\SW[6]~input_o\ & operand1(13)))) ) ) # ( !operand0(13) & ( (!\SW[5]~input_o\ & 
-- (\SW[6]~input_o\ & operand1(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100000110000000110000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => ALT_INV_operand1(13),
	dataf => ALT_INV_operand0(13),
	combout => \alu|result[13]~11_combout\);

-- Location: MLABCELL_X65_Y2_N42
\alu|result~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~10_combout\ = ( !operand1(5) & ( (\SW[5]~input_o\ & (\SW[4]~input_o\ & (\SW[6]~input_o\ & !operand1(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => ALT_INV_operand1(4),
	dataf => ALT_INV_operand1(5),
	combout => \alu|result~10_combout\);

-- Location: LABCELL_X66_Y2_N15
\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ = ( operand1(1) & ( !operand1(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(1),
	combout => \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\);

-- Location: LABCELL_X66_Y2_N12
\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ = ( operand1(0) & ( !operand1(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(0),
	combout => \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\);

-- Location: LABCELL_X63_Y4_N24
\alu|sll_module|BARREL[9].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ = ( operand0(9) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(8)))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(6))) ) ) ) # ( !operand0(9) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(8)))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(6))) ) ) ) # ( operand0(9) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) # (operand0(7)) ) ) 
-- ) # ( !operand0(9) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (operand0(7) & \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(7),
	datab => ALT_INV_operand0(6),
	datac => ALT_INV_operand0(8),
	datad => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	datae => ALT_INV_operand0(9),
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X63_Y4_N45
\alu|sll_module|BARREL[13].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(10) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(12) ) ) ) # ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(11) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(10),
	datab => ALT_INV_operand0(11),
	datac => ALT_INV_operand0(12),
	datad => ALT_INV_operand0(13),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X66_Y2_N21
\alu|sll_module|BARREL[1].BARREL1|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ = ( operand1(1) & ( (operand0(1) & operand1(5)) ) ) # ( !operand1(1) & ( (!operand1(5) & ((!operand1(0) & (operand0(1))) # (operand1(0) & ((operand0(0)))))) # (operand1(5) & (operand0(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110101010101010011010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(1),
	datab => ALT_INV_operand0(0),
	datac => ALT_INV_operand1(5),
	datad => ALT_INV_operand1(0),
	dataf => ALT_INV_operand1(1),
	combout => \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\);

-- Location: MLABCELL_X65_Y3_N9
\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ = (!operand1(5) & operand1(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datad => ALT_INV_operand1(2),
	combout => \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\);

-- Location: LABCELL_X66_Y2_N30
\alu|sll_module|BARREL[5].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(2) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(4) ) ) ) # ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(3) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(5),
	datab => ALT_INV_operand0(4),
	datac => ALT_INV_operand0(3),
	datad => ALT_INV_operand0(2),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X66_Y4_N42
\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ = (!operand1(5) & operand1(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => ALT_INV_operand1(3),
	combout => \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\);

-- Location: LABCELL_X66_Y4_N54
\alu|sll_module|BARREL[13].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) # 
-- (\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\) ) ) ) # ( !\alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & 
-- \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) ) ) ) # ( \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( 
-- (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\)) ) ) ) # ( 
-- !\alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\))) # 
-- (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[9].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|BARREL[13].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datae => \alu|sll_module|BARREL[5].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	combout => \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X64_Y3_N6
\alu|result[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[13]~12_combout\ = ( \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ & ( (!\alu|result[13]~11_combout\ & !\alu|result~10_combout\) ) ) # ( !\alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ & ( !\alu|result[13]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_result[13]~11_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	dataf => \alu|sll_module|BARREL[13].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result[13]~12_combout\);

-- Location: LABCELL_X62_Y2_N39
\alu|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal3~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[6]~input_o\ & !\SW[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \alu|Equal3~0_combout\);

-- Location: LABCELL_X64_Y3_N27
\alu|adder_module|HALF_ADDERS[13].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ = ( operand0(13) & ( !operand1(13) ) ) # ( !operand0(13) & ( operand1(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(13),
	dataf => ALT_INV_operand0(13),
	combout => \alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y3_N48
\alu|result[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[13]~13_combout\ = ( \alu|Equal3~0_combout\ & ( \alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ & ( (!\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & (\alu|result[13]~12_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\)))) ) ) ) # ( !\alu|Equal3~0_combout\ & ( \alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ & ( (\alu|result[13]~12_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\))) ) ) ) # ( \alu|Equal3~0_combout\ & ( !\alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ & ( (\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & 
-- (\alu|result[13]~12_combout\ & ((!\alu|Equal3~1_combout\) # (!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\)))) ) ) ) # ( !\alu|Equal3~0_combout\ & ( !\alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ & ( 
-- (\alu|result[13]~12_combout\ & ((!\alu|Equal3~1_combout\) # (!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000000101010000000000110011110000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datab => \alu|ALT_INV_Equal3~1_combout\,
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datad => \alu|ALT_INV_result[13]~12_combout\,
	datae => \alu|ALT_INV_Equal3~0_combout\,
	dataf => \alu|adder_module|HALF_ADDERS[13].summation|ALT_INV_xor0~0_combout\,
	combout => \alu|result[13]~13_combout\);

-- Location: LABCELL_X66_Y2_N6
\alu|sll_module|BARREL[3].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(0) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(2) ) ) ) # ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(1) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(3),
	datab => ALT_INV_operand0(2),
	datac => ALT_INV_operand0(1),
	datad => ALT_INV_operand0(0),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X63_Y4_N12
\alu|sll_module|BARREL[11].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\ = ( operand0(9) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(10)))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(8))) ) ) ) # ( !operand0(9) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(10)))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(8))) ) ) ) # ( operand0(9) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) # (operand0(11)) ) ) 
-- ) # ( !operand0(9) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (operand0(11) & !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datab => ALT_INV_operand0(11),
	datac => ALT_INV_operand0(10),
	datad => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	datae => ALT_INV_operand0(9),
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X63_Y4_N18
\alu|sll_module|BARREL[7].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ = ( operand0(6) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) # (operand0(4)) ) ) ) # ( !operand0(6) & ( 
-- \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (operand0(4) & \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) ) ) ) # ( operand0(6) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( 
-- (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(7))) # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(5)))) ) ) ) # ( !operand0(6) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( 
-- (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(7))) # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(7),
	datab => ALT_INV_operand0(5),
	datac => ALT_INV_operand0(4),
	datad => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	datae => ALT_INV_operand0(6),
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X66_Y4_N33
\alu|sll_module|BARREL[11].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[11].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & 
-- ((\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\)))) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & 
-- (((!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\)))) ) ) # ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & 
-- ((!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ((\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110100111101000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[11].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X62_Y4_N36
\alu|result~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~19_combout\ = ( \SW[6]~input_o\ & ( \alu|sll_module|BARREL[11].BARREL3|or_sel~0_combout\ & ( (!operand1(5) & (\SW[5]~input_o\ & (!operand1(4) & \SW[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => ALT_INV_operand1(4),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \alu|sll_module|BARREL[11].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result~19_combout\);

-- Location: LABCELL_X62_Y4_N15
\alu|adder_module|HALF_ADDERS[11].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\ = ( operand1(11) & ( !operand0(11) ) ) # ( !operand1(11) & ( operand0(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(11),
	dataf => ALT_INV_operand1(11),
	combout => \alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y4_N0
\alu|result~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~18_combout\ = ( !\SW[4]~input_o\ & ( \alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\ & ( (\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\)))) ) ) ) # ( !\SW[4]~input_o\ & ( !\alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\ & ( (!\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & 
-- (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000010000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~0_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~1_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|adder_module|HALF_ADDERS[11].summation|ALT_INV_xor0~0_combout\,
	combout => \alu|result~18_combout\);

-- Location: LABCELL_X62_Y4_N42
\alu|result[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[11]~20_combout\ = ( operand1(11) & ( (!\SW[5]~input_o\ & (\SW[6]~input_o\ & ((!operand0(11)) # (!\SW[4]~input_o\)))) # (\SW[5]~input_o\ & (operand0(11) & (!\SW[6]~input_o\ & \SW[4]~input_o\))) ) ) # ( !operand1(11) & ( (operand0(11) & 
-- (!\SW[5]~input_o\ & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001100000110000000110000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(11),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => ALT_INV_operand1(11),
	combout => \alu|result[11]~20_combout\);

-- Location: LABCELL_X62_Y4_N24
\alu|result~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~17_combout\ = ( \SW[4]~input_o\ & ( \alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\ & ( (!\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\ & (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & 
-- !\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\))) ) ) ) # ( \SW[4]~input_o\ & ( !\alu|adder_module|HALF_ADDERS[11].summation|xor0~0_combout\ & ( (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000001100000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~1_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~1_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|adder_module|HALF_ADDERS[11].summation|ALT_INV_xor0~0_combout\,
	combout => \alu|result~17_combout\);

-- Location: LABCELL_X61_Y4_N42
\alu|result[11]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[11]~21_combout\ = ( !\alu|result~17_combout\ & ( (!\alu|result~19_combout\ & (!\alu|result~18_combout\ & !\alu|result[11]~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_result~19_combout\,
	datac => \alu|ALT_INV_result~18_combout\,
	datad => \alu|ALT_INV_result[11]~20_combout\,
	dataf => \alu|ALT_INV_result~17_combout\,
	combout => \alu|result[11]~21_combout\);

-- Location: LABCELL_X61_Y4_N21
\alu|adder_module|HALF_ADDERS[9].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ = ( operand0(9) & ( !operand1(9) ) ) # ( !operand0(9) & ( operand1(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_operand1(9),
	dataf => ALT_INV_operand0(9),
	combout => \alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y4_N48
\alu|result[9]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[9]~65_combout\ = ( operand0(9) & ( (!\SW[5]~input_o\ & (\SW[6]~input_o\ & ((!operand1(9)) # (!\SW[4]~input_o\)))) # (\SW[5]~input_o\ & (operand1(9) & (!\SW[6]~input_o\ & \SW[4]~input_o\))) ) ) # ( !operand0(9) & ( (operand1(9) & 
-- (!\SW[5]~input_o\ & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001100000110000000110000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(9),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => ALT_INV_operand0(9),
	combout => \alu|result[9]~65_combout\);

-- Location: LABCELL_X61_Y4_N54
\alu|result[9]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[9]~66_combout\ = ( !\alu|result[9]~65_combout\ & ( \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ & ( (!\alu|Equal3~0_combout\) # (!\alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ $ (((operand1(8) & operand0(8))))) ) ) ) # ( 
-- !\alu|result[9]~65_combout\ & ( !\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ & ( (!\alu|Equal3~0_combout\) # (!\alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ $ (((operand0(8)) # (operand1(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010111111000000000000000011111110101010110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_operand1(8),
	datac => ALT_INV_operand0(8),
	datad => \alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~0_combout\,
	datae => \alu|ALT_INV_result[9]~65_combout\,
	dataf => \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	combout => \alu|result[9]~66_combout\);

-- Location: LABCELL_X61_Y4_N45
\alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0~combout\ = ( operand1(8) & ( !\alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ $ (((!operand0(8)) # (\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\))) ) ) 
-- # ( !operand1(8) & ( !\alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ $ (((!operand0(8) & \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001011010111100000101101001011010000011110101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datac => \alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~0_combout\,
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	dataf => ALT_INV_operand1(8),
	combout => \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0~combout\);

-- Location: LABCELL_X60_Y4_N3
\alu|adder_module|HALF_ADDERS[8].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\ = ( operand0(8) & ( !operand1(8) ) ) # ( !operand0(8) & ( operand1(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(8),
	dataf => ALT_INV_operand0(8),
	combout => \alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\);

-- Location: LABCELL_X60_Y4_N0
\alu|result[8]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[8]~63_combout\ = ( operand0(8) & ( (!\SW[5]~input_o\ & (\SW[6]~input_o\ & ((!operand1(8)) # (!\SW[4]~input_o\)))) # (\SW[5]~input_o\ & (operand1(8) & (!\SW[6]~input_o\ & \SW[4]~input_o\))) ) ) # ( !operand0(8) & ( (operand1(8) & 
-- (!\SW[5]~input_o\ & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001100000110000000110000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(8),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => ALT_INV_operand0(8),
	combout => \alu|result[8]~63_combout\);

-- Location: LABCELL_X66_Y2_N36
\alu|sll_module|BARREL[4].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(1) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(3) ) ) ) # ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(2) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(3),
	datab => ALT_INV_operand0(4),
	datac => ALT_INV_operand0(1),
	datad => ALT_INV_operand0(2),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X64_Y4_N42
\alu|sll_module|BARREL[0].BARREL1|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\ = ( operand1(5) & ( operand1(0) & ( operand0(0) ) ) ) # ( operand1(5) & ( !operand1(0) & ( operand0(0) ) ) ) # ( !operand1(5) & ( !operand1(0) & ( (!operand1(1) & operand0(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_operand1(1),
	datad => ALT_INV_operand0(0),
	datae => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(0),
	combout => \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\);

-- Location: MLABCELL_X65_Y4_N9
\alu|sll_module|BARREL[8].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(5) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(7) ) ) ) # ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(6) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(5),
	datab => ALT_INV_operand0(8),
	datac => ALT_INV_operand0(7),
	datad => ALT_INV_operand0(6),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\);

-- Location: MLABCELL_X65_Y4_N12
\alu|sll_module|BARREL[8].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\)) # 
-- (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\)))) ) ) # 
-- ( !\alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ & (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\))) # 
-- (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000000100101001010100010111100101010001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datab => \alu|sll_module|BARREL[4].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datad => \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|sll_module|BARREL[8].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X60_Y4_N12
\alu|result[8]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[8]~64_combout\ = ( !\alu|result[8]~63_combout\ & ( \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( (!\alu|result~10_combout\ & ((!\alu|Equal3~0_combout\) # (!\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ $ 
-- (!\alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\)))) ) ) ) # ( !\alu|result[8]~63_combout\ & ( !\alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( (!\alu|Equal3~0_combout\) # (!\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\ $ 
-- (!\alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111010111110000000000000000010111110000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal3~0_combout\,
	datab => \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	datac => \alu|adder_module|HALF_ADDERS[8].summation|ALT_INV_xor0~0_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	datae => \alu|ALT_INV_result[8]~63_combout\,
	dataf => \alu|sll_module|BARREL[8].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result[8]~64_combout\);

-- Location: LABCELL_X67_Y4_N33
\alu|sll_module|BARREL[9].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[9].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( (\alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & 
-- ((\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[5].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|BARREL[9].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[9].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X62_Y4_N39
\alu|result~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~62_combout\ = ( \SW[6]~input_o\ & ( \alu|sll_module|BARREL[9].BARREL3|or_sel~0_combout\ & ( (!operand1(5) & (\SW[5]~input_o\ & (\SW[4]~input_o\ & !operand1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => ALT_INV_operand1(4),
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \alu|sll_module|BARREL[9].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result~62_combout\);

-- Location: LABCELL_X60_Y4_N6
\alu|result~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~61_combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\ & \SW[5]~input_o\))) ) ) # ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (\alu|adder_module|HALF_ADDERS[8].summation|xor0~0_combout\ & \SW[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \alu|adder_module|HALF_ADDERS[8].summation|ALT_INV_xor0~0_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	combout => \alu|result~61_combout\);

-- Location: MLABCELL_X59_Y4_N3
\alu|Equal7~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~16_combout\ = ( !\alu|result~61_combout\ & ( \alu|Equal3~1_combout\ & ( (\alu|result[9]~66_combout\ & (\alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0~combout\ & (\alu|result[8]~64_combout\ & !\alu|result~62_combout\))) ) ) 
-- ) # ( !\alu|result~61_combout\ & ( !\alu|Equal3~1_combout\ & ( (\alu|result[9]~66_combout\ & (\alu|result[8]~64_combout\ & !\alu|result~62_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[9]~66_combout\,
	datab => \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\,
	datac => \alu|ALT_INV_result[8]~64_combout\,
	datad => \alu|ALT_INV_result~62_combout\,
	datae => \alu|ALT_INV_result~61_combout\,
	dataf => \alu|ALT_INV_Equal3~1_combout\,
	combout => \alu|Equal7~16_combout\);

-- Location: LABCELL_X61_Y3_N42
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\ = (!operand1(13) & (((operand0(14) & !operand1(14))) # (operand0(13)))) # (operand1(13) & (operand0(14) & ((!operand1(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001010001110110000101000111011000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(13),
	datab => ALT_INV_operand0(14),
	datac => ALT_INV_operand0(13),
	datad => ALT_INV_operand1(14),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\);

-- Location: LABCELL_X63_Y4_N6
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\ = ( operand1(11) & ( (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\ & ((!operand0(12)) # (operand1(12)))) ) ) # ( !operand1(11) & ( 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\ & (!operand0(11) & ((!operand0(12)) # (operand1(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(12),
	datab => ALT_INV_operand0(12),
	datac => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\,
	datad => ALT_INV_operand0(11),
	dataf => ALT_INV_operand1(11),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\);

-- Location: LABCELL_X61_Y4_N12
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\ = ( operand0(10) & ( operand0(8) & ( (operand1(8) & (operand1(10) & ((!operand0(9)) # (operand1(9))))) ) ) ) # ( !operand0(10) & ( operand0(8) & ( (operand1(8) & ((!operand0(9)) # 
-- (operand1(9)))) ) ) ) # ( operand0(10) & ( !operand0(8) & ( (operand1(10) & ((!operand0(9)) # (operand1(9)))) ) ) ) # ( !operand0(10) & ( !operand0(8) & ( (!operand0(9)) # (operand1(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111000010100000111100100010001100110000001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(9),
	datab => ALT_INV_operand1(8),
	datac => ALT_INV_operand1(10),
	datad => ALT_INV_operand1(9),
	datae => ALT_INV_operand0(10),
	dataf => ALT_INV_operand0(8),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\);

-- Location: LABCELL_X64_Y2_N27
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\ = ( operand0(7) & ( (operand1(7) & (operand1(6) & !operand0(6))) ) ) # ( !operand0(7) & ( ((operand1(6) & !operand0(6))) # (operand1(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(7),
	datab => ALT_INV_operand1(6),
	datac => ALT_INV_operand0(6),
	dataf => ALT_INV_operand0(7),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\);

-- Location: LABCELL_X61_Y3_N12
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ = ( operand1(14) & ( operand1(13) & ( (!operand0(13)) # ((!operand0(14)) # ((operand1(12) & !operand0(12)))) ) ) ) # ( !operand1(14) & ( operand1(13) & ( (!operand0(14) & 
-- ((!operand0(13)) # ((operand1(12) & !operand0(12))))) ) ) ) # ( operand1(14) & ( !operand1(13) & ( (!operand0(14)) # ((operand1(12) & (!operand0(12) & !operand0(13)))) ) ) ) # ( !operand1(14) & ( !operand1(13) & ( (operand1(12) & (!operand0(12) & 
-- (!operand0(13) & !operand0(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111111110100000011110100000000001111111111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(12),
	datab => ALT_INV_operand0(12),
	datac => ALT_INV_operand0(13),
	datad => ALT_INV_operand0(14),
	datae => ALT_INV_operand1(14),
	dataf => ALT_INV_operand1(13),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\);

-- Location: LABCELL_X63_Y4_N3
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\ = ( operand0(12) & ( operand1(11) & ( (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ & (((!operand1(12)) # (operand0(11))) # 
-- (\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\))) ) ) ) # ( !operand0(12) & ( operand1(11) & ( (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ & ((operand0(11)) # 
-- (\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\))) ) ) ) # ( operand0(12) & ( !operand1(11) & ( !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ ) ) ) # ( !operand0(12) & ( !operand1(11) & ( 
-- !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001110000011100001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~7_combout\,
	datab => ALT_INV_operand0(11),
	datac => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~9_combout\,
	datad => ALT_INV_operand1(12),
	datae => ALT_INV_operand0(12),
	dataf => ALT_INV_operand1(11),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\);

-- Location: LABCELL_X61_Y4_N36
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ = ( operand0(10) & ( operand0(8) & ( (!operand0(9) & (operand1(10) & operand1(9))) ) ) ) # ( !operand0(10) & ( operand0(8) & ( ((!operand0(9) & operand1(9))) # (operand1(10)) ) ) ) # ( 
-- operand0(10) & ( !operand0(8) & ( (operand1(10) & ((!operand0(9) & ((operand1(9)) # (operand1(8)))) # (operand0(9) & (operand1(8) & operand1(9))))) ) ) ) # ( !operand0(10) & ( !operand0(8) & ( ((!operand0(9) & ((operand1(9)) # (operand1(8)))) # 
-- (operand0(9) & (operand1(8) & operand1(9)))) # (operand1(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110111111000000100000101100001111101011110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(9),
	datab => ALT_INV_operand1(8),
	datac => ALT_INV_operand1(10),
	datad => ALT_INV_operand1(9),
	datae => ALT_INV_operand0(10),
	dataf => ALT_INV_operand0(8),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\);

-- Location: LABCELL_X64_Y2_N24
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ = ( operand0(7) & ( (!operand1(7)) # ((!operand1(6) & operand0(6))) ) ) # ( !operand0(7) & ( (!operand1(6) & operand0(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110010101010111011101010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(7),
	datab => ALT_INV_operand1(6),
	datad => ALT_INV_operand0(6),
	dataf => ALT_INV_operand0(7),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\);

-- Location: LABCELL_X64_Y2_N21
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\ = ( operand1(5) & ( (!operand1(4) & operand0(4)) ) ) # ( !operand1(5) & ( ((!operand1(4) & operand0(4))) # (operand0(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(4),
	datab => ALT_INV_operand0(4),
	datac => ALT_INV_operand0(5),
	dataf => ALT_INV_operand1(5),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\);

-- Location: LABCELL_X64_Y2_N18
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ = ( operand1(5) & ( (!operand0(5)) # ((!operand0(4) & operand1(4))) ) ) # ( !operand1(5) & ( (!operand0(4) & (operand1(4) & !operand0(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_operand0(4),
	datac => ALT_INV_operand1(4),
	datad => ALT_INV_operand0(5),
	dataf => ALT_INV_operand1(5),
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\);

-- Location: LABCELL_X64_Y2_N48
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & ( \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ & ( 
-- !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ ) ) ) # ( !\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & ( \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ & ( 
-- !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ ) ) ) # ( \alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & ( !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ & ( 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ & (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\ & ((!operand0(3)) # (operand1(3))))) ) ) ) # ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & ( !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\ & ( (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\ & (operand1(3) & 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\ & !operand0(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101000000010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~2_combout\,
	datab => ALT_INV_operand1(3),
	datac => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~0_combout\,
	datad => ALT_INV_operand0(3),
	datae => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	dataf => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~1_combout\,
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\);

-- Location: LABCELL_X60_Y4_N54
\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\ = ( \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ & ( \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ & ( 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\ & \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\) ) ) ) # ( !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ & ( 
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ & ( (\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\ & ((!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\) # 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\))) ) ) ) # ( \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ & ( !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ & ( 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\ & \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\) ) ) ) # ( !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\ & ( 
-- !\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\ & ( (\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\ & ((!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\) # 
-- ((!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\) # (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001010101000000000111011100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~8_combout\,
	datab => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~5_combout\,
	datac => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~4_combout\,
	datad => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~10_combout\,
	datae => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~6_combout\,
	dataf => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~3_combout\,
	combout => \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\);

-- Location: LABCELL_X63_Y3_N3
\alu|result[0]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[0]~57_combout\ = ( \SW[5]~input_o\ & ( (\SW[6]~input_o\ & !\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[0]~57_combout\);

-- Location: MLABCELL_X65_Y2_N45
\alu|result[0]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[0]~58_combout\ = ( operand0(0) & ( (!\SW[5]~input_o\ & ((!\SW[4]~input_o\ & (\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((!operand1(0)))))) # (\SW[5]~input_o\ & (!\SW[6]~input_o\ & (!\SW[4]~input_o\ $ (operand1(0))))) ) ) # ( !operand0(0) & ( 
-- (operand1(0) & (!\SW[5]~input_o\ $ (((!\SW[4]~input_o\ & !\SW[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101010000000000110101001101010000110000110101000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => ALT_INV_operand1(0),
	dataf => ALT_INV_operand0(0),
	combout => \alu|result[0]~58_combout\);

-- Location: LABCELL_X66_Y4_N45
\alu|result~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~25_combout\ = (!operand1(5) & ((operand1(2)) # (operand1(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => ALT_INV_operand1(3),
	datad => ALT_INV_operand1(2),
	combout => \alu|result~25_combout\);

-- Location: LABCELL_X63_Y3_N42
\alu|result[0]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[0]~59_combout\ = ( \alu|result~25_combout\ & ( !\alu|result[0]~58_combout\ ) ) # ( !\alu|result~25_combout\ & ( (!\alu|result[0]~58_combout\ & ((!\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\) # (!\alu|result~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_result[0]~58_combout\,
	datac => \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	dataf => \alu|ALT_INV_result~25_combout\,
	combout => \alu|result[0]~59_combout\);

-- Location: LABCELL_X63_Y3_N54
\alu|result[0]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[0]~60_combout\ = ( \alu|result[0]~59_combout\ & ( (!\alu|result[0]~57_combout\) # ((!operand1(15) & ((\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\) # (operand0(15)))) # (operand1(15) & (operand0(15) & 
-- \alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001010111111111100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(15),
	datab => ALT_INV_operand0(15),
	datac => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\,
	datad => \alu|ALT_INV_result[0]~57_combout\,
	dataf => \alu|ALT_INV_result[0]~59_combout\,
	combout => \alu|result[0]~60_combout\);

-- Location: LABCELL_X63_Y3_N39
\alu|result~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~46_combout\ = ( !operand1(5) & ( (\SW[6]~input_o\ & (\SW[4]~input_o\ & \SW[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	dataf => ALT_INV_operand1(5),
	combout => \alu|result~46_combout\);

-- Location: LABCELL_X62_Y2_N21
\alu|adder_module|HALF_ADDERS[6].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\ = ( operand0(6) & ( !operand1(6) ) ) # ( !operand0(6) & ( operand1(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_operand1(6),
	dataf => ALT_INV_operand0(6),
	combout => \alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y2_N30
\alu|result~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~51_combout\ = ( \SW[5]~input_o\ & ( \alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\ & ( (!\SW[6]~input_o\ & (\alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\ & !\SW[4]~input_o\)) ) ) ) # ( \SW[5]~input_o\ & ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ $ (\alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000100000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~1_combout\,
	datac => \alu|adder_module|HALF_ADDERS[6].summation|ALT_INV_xor0~0_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~0_combout\,
	combout => \alu|result~51_combout\);

-- Location: LABCELL_X62_Y2_N24
\alu|result~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~50_combout\ = ( !\SW[5]~input_o\ & ( \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( (!\SW[6]~input_o\ & (!\alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\ & \SW[4]~input_o\)) ) ) ) # ( !\SW[5]~input_o\ & ( 
-- !\alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\ $ (!\alu|adder_module|HALF_ADDERS[6].summation|xor0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~1_combout\,
	datac => \alu|adder_module|HALF_ADDERS[6].summation|ALT_INV_xor0~0_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~1_combout\,
	combout => \alu|result~50_combout\);

-- Location: LABCELL_X64_Y4_N48
\alu|sll_module|BARREL[6].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\ = ( operand0(4) & ( operand0(3) & ( ((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & (operand0(6))) # (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ((operand0(5))))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) ) ) ) # ( !operand0(4) & ( operand0(3) & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & (operand0(6))) # 
-- (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ((operand0(5)))))) # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (((\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)))) ) ) ) # ( operand0(4) & ( !operand0(3) 
-- & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & (operand0(6))) # (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ((operand0(5)))))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)))) ) ) ) # ( !operand0(4) & ( !operand0(3) & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & 
-- ((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & (operand0(6))) # (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ((operand0(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	datab => ALT_INV_operand0(6),
	datac => ALT_INV_operand0(5),
	datad => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	datae => ALT_INV_operand0(4),
	dataf => ALT_INV_operand0(3),
	combout => \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X66_Y2_N48
\alu|sll_module|BARREL[2].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ = ( operand0(2) & ( operand1(1) & ( ((!operand1(0) & operand0(0))) # (operand1(5)) ) ) ) # ( !operand0(2) & ( operand1(1) & ( (!operand1(5) & (!operand1(0) & operand0(0))) ) ) ) # ( operand0(2) & ( 
-- !operand1(1) & ( ((!operand1(0)) # (operand1(5))) # (operand0(1)) ) ) ) # ( !operand0(2) & ( !operand1(1) & ( (operand0(1) & (!operand1(5) & operand1(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100111101111111011100000000110000000011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(1),
	datab => ALT_INV_operand1(5),
	datac => ALT_INV_operand1(0),
	datad => ALT_INV_operand0(0),
	datae => ALT_INV_operand0(2),
	dataf => ALT_INV_operand1(1),
	combout => \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X64_Y4_N54
\alu|sll_module|BARREL[6].BARREL3|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\ = ( !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\)) # 
-- (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[6].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	combout => \alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\);

-- Location: LABCELL_X62_Y2_N6
\alu|result[6]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[6]~52_combout\ = ( \SW[4]~input_o\ & ( (!\SW[6]~input_o\ & (operand0(6) & (operand1(6) & \SW[5]~input_o\))) # (\SW[6]~input_o\ & (!\SW[5]~input_o\ & (!operand0(6) $ (!operand1(6))))) ) ) # ( !\SW[4]~input_o\ & ( (\SW[6]~input_o\ & 
-- (!\SW[5]~input_o\ & ((operand1(6)) # (operand0(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000110000100000000011000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(6),
	datab => ALT_INV_operand1(6),
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \alu|result[6]~52_combout\);

-- Location: LABCELL_X62_Y2_N18
\alu|result[6]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[6]~53_combout\ = ( !\alu|result[6]~52_combout\ & ( (!\alu|result~51_combout\ & (!\alu|result~50_combout\ & ((!\alu|result~10_combout\) # (!\alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~10_combout\,
	datab => \alu|ALT_INV_result~51_combout\,
	datac => \alu|ALT_INV_result~50_combout\,
	datad => \alu|sll_module|BARREL[6].BARREL3|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|ALT_INV_result[6]~52_combout\,
	combout => \alu|result[6]~53_combout\);

-- Location: LABCELL_X64_Y4_N36
\alu|sll_module|BARREL[22].BARREL2|and_sel1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\ = ( operand0(15) & ( (operand1(0) & operand1(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(0),
	datab => ALT_INV_operand1(1),
	dataf => ALT_INV_operand0(15),
	combout => \alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\);

-- Location: LABCELL_X63_Y4_N48
\alu|sll_module|BARREL[10].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\ = ( operand0(7) & ( operand0(10) & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\) # (operand0(9))))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (((\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)) # (operand0(8)))) ) ) ) # ( !operand0(7) & ( operand0(10) & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ 
-- & (((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\) # (operand0(9))))) # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(8) & ((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)))) ) ) ) # ( 
-- operand0(7) & ( !operand0(10) & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (((operand0(9) & \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)))) # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & 
-- (((\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)) # (operand0(8)))) ) ) ) # ( !operand0(7) & ( !operand0(10) & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (((operand0(9) & 
-- \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)))) # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(8) & ((!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datab => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	datac => ALT_INV_operand0(9),
	datad => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	datae => ALT_INV_operand0(7),
	dataf => ALT_INV_operand0(10),
	combout => \alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X64_Y4_N21
\alu|sll_module|BARREL[20].BARREL4|or_sel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ = ( operand1(4) ) # ( !operand1(4) & ( (!operand1(3)) # (operand1(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_operand1(3),
	datad => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(4),
	combout => \alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\);

-- Location: LABCELL_X64_Y4_N18
\alu|sll_module|BARREL[20].BARREL4|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ = ((!operand1(4) & ((!operand1(3)) # (operand1(2))))) # (operand1(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111110101110101011111010111010101111101011101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => ALT_INV_operand1(3),
	datac => ALT_INV_operand1(4),
	datad => ALT_INV_operand1(2),
	combout => \alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\);

-- Location: LABCELL_X63_Y4_N36
\alu|sll_module|BARREL[14].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\ = ( operand0(12) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(13)))) # 
-- (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(11))) ) ) ) # ( !operand0(12) & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ((operand0(13)))) 
-- # (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & (operand0(11))) ) ) ) # ( operand0(12) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) # (operand0(14)) 
-- ) ) ) # ( !operand0(12) & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( (operand0(14) & !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(14),
	datab => ALT_INV_operand0(11),
	datac => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	datad => ALT_INV_operand0(13),
	datae => ALT_INV_operand0(12),
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X64_Y4_N0
\alu|sll_module|BARREL[22].BARREL4|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[22].BARREL4|or_sel~0_combout\ = ( !\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & ( (((!\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & ((\alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\))) # 
-- (\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & (\alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\)))) ) ) # ( \alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & ( ((!\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & 
-- (((\alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\)))) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & (\alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\ & (operand1(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000001111111100110011001100110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[22].BARREL2|ALT_INV_and_sel1~0_combout\,
	datab => \alu|sll_module|BARREL[10].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => ALT_INV_operand1(2),
	datad => \alu|sll_module|BARREL[6].BARREL3|ALT_INV_and_sel0~0_combout\,
	datae => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~1_combout\,
	dataf => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~0_combout\,
	datag => \alu|sll_module|BARREL[14].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[22].BARREL4|or_sel~0_combout\);

-- Location: LABCELL_X67_Y2_N54
\alu|result[7]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[7]~54_combout\ = ( \SW[5]~input_o\ & ( (operand0(7) & (operand1(7) & (!\SW[6]~input_o\ & \SW[4]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & ((!operand0(7) & (operand1(7))) # (operand0(7) & ((!operand1(7)) # 
-- (!\SW[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000110000001110000011000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(7),
	datab => ALT_INV_operand1(7),
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[7]~54_combout\);

-- Location: LABCELL_X66_Y4_N24
\alu|result[7]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[7]~55_combout\ = ( \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( !\alu|result[7]~54_combout\ & ( (!\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\) # ((!\alu|result~10_combout\) # 
-- (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\)) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( !\alu|result[7]~54_combout\ & ( (!\alu|result~10_combout\) # 
-- ((!\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111111011101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|ALT_INV_result~10_combout\,
	datac => \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datae => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|ALT_INV_result[7]~54_combout\,
	combout => \alu|result[7]~55_combout\);

-- Location: LABCELL_X62_Y2_N12
\alu|adder_module|HALF_ADDERS[7].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\ = ( operand0(7) & ( !operand1(7) ) ) # ( !operand0(7) & ( operand1(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_operand1(7),
	dataf => ALT_INV_operand0(7),
	combout => \alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y2_N45
\alu|adder_module|CARRY_CALC[6].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ = ( \alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( (!operand0(6) & !operand1(6)) ) ) # ( !\alu|adder_module|CARRY_CALC[5].carry_or~1_combout\ & ( (!operand0(6) & ((!operand1(6)) # 
-- (!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\))) # (operand0(6) & (!operand1(6) & !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(6),
	datab => ALT_INV_operand1(6),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~1_combout\,
	dataf => \alu|adder_module|ALT_INV_CARRY_CALC[5].carry_or~1_combout\,
	combout => \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\);

-- Location: LABCELL_X62_Y2_N42
\alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ & ( (!operand0(6) & operand1(6)) ) ) # ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].carry_or~1_combout\ & ( (!operand0(6) & ((!\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\) # (operand1(6)))) # (operand0(6) & (operand1(6) & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[5].or_pairs~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010101100101011001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(6),
	datab => ALT_INV_operand1(6),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].or_pairs~0_combout\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[5].carry_or~1_combout\,
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\);

-- Location: LABCELL_X62_Y2_N48
\alu|result[7]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[7]~56_combout\ = ( \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( \alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ & ( (\alu|result[7]~55_combout\ & ((!\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\ & 
-- ((!\alu|Equal3~1_combout\))) # (\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\ & (!\alu|Equal3~0_combout\)))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( 
-- \alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ & ( (\alu|result[7]~55_combout\ & (((!\alu|Equal3~0_combout\ & !\alu|Equal3~1_combout\)) # (\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\))) ) ) ) # ( 
-- \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( !\alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ & ( (\alu|result[7]~55_combout\ & ((!\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\) # ((!\alu|Equal3~0_combout\ & 
-- !\alu|Equal3~1_combout\)))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( !\alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ & ( (\alu|result[7]~55_combout\ & 
-- ((!\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\ & (!\alu|Equal3~0_combout\)) # (\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\ & ((!\alu|Equal3~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010000010101010100000001000000010101010101000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[7]~55_combout\,
	datab => \alu|ALT_INV_Equal3~0_combout\,
	datac => \alu|ALT_INV_Equal3~1_combout\,
	datad => \alu|adder_module|HALF_ADDERS[7].summation|ALT_INV_xor0~0_combout\,
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[6].carry_or~0_combout\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[6].carry_or~0_combout\,
	combout => \alu|result[7]~56_combout\);

-- Location: MLABCELL_X65_Y4_N54
\alu|sll_module|BARREL[5].BARREL3|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ = ( \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ((\alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\) # 
-- (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\))) ) ) # ( !\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & 
-- (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|BARREL[5].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\,
	combout => \alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\);

-- Location: LABCELL_X63_Y4_N54
\alu|sll_module|BARREL[21].BARREL2|and_sel1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ = ( operand1(1) & ( operand1(5) & ( (operand0(15) & operand1(2)) ) ) ) # ( operand1(1) & ( !operand1(5) & ( (operand1(2) & ((!operand1(0) & (operand0(15))) # (operand1(0) & ((operand0(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001001100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(15),
	datab => ALT_INV_operand1(2),
	datac => ALT_INV_operand1(0),
	datad => ALT_INV_operand0(14),
	datae => ALT_INV_operand1(1),
	dataf => ALT_INV_operand1(5),
	combout => \alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\);

-- Location: MLABCELL_X65_Y4_N24
\alu|sll_module|BARREL[21].BARREL4|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[21].BARREL4|or_sel~0_combout\ = ( \alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ & ( \alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ & ( ((!\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & 
-- (\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & ((\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\)))) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\) ) ) ) # ( 
-- !\alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ & ( \alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & (((\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\)) # 
-- (\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & (((\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ & !\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\)))) ) ) ) # ( 
-- \alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ & ( !\alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & (\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\ & 
-- ((!\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\)))) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & (((\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\) # (\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\)))) ) ) ) # ( 
-- !\alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ & ( !\alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & ((!\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & 
-- (\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & ((\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~1_combout\,
	datab => \alu|sll_module|BARREL[13].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|BARREL[5].BARREL3|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~0_combout\,
	datae => \alu|sll_module|BARREL[21].BARREL2|ALT_INV_and_sel1~0_combout\,
	dataf => \alu|sll_module|BARREL[9].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[21].BARREL4|or_sel~0_combout\);

-- Location: LABCELL_X63_Y3_N12
\alu|Equal7~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~15_combout\ = ( \alu|result[7]~56_combout\ & ( \alu|sll_module|BARREL[21].BARREL4|or_sel~0_combout\ & ( (\alu|result[0]~60_combout\ & (!\alu|result~46_combout\ & \alu|result[6]~53_combout\)) ) ) ) # ( \alu|result[7]~56_combout\ & ( 
-- !\alu|sll_module|BARREL[21].BARREL4|or_sel~0_combout\ & ( (\alu|result[0]~60_combout\ & (\alu|result[6]~53_combout\ & ((!\alu|result~46_combout\) # (!\alu|sll_module|BARREL[22].BARREL4|or_sel~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[0]~60_combout\,
	datab => \alu|ALT_INV_result~46_combout\,
	datac => \alu|ALT_INV_result[6]~53_combout\,
	datad => \alu|sll_module|BARREL[22].BARREL4|ALT_INV_or_sel~0_combout\,
	datae => \alu|ALT_INV_result[7]~56_combout\,
	dataf => \alu|sll_module|BARREL[21].BARREL4|ALT_INV_or_sel~0_combout\,
	combout => \alu|Equal7~15_combout\);

-- Location: LABCELL_X64_Y4_N57
\alu|sll_module|BARREL[10].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[10].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ & !\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ 
-- & (\alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[6].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|BARREL[10].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	combout => \alu|sll_module|BARREL[10].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X60_Y4_N45
\alu|result~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~14_combout\ = ( \SW[6]~input_o\ & ( \alu|sll_module|BARREL[10].BARREL3|or_sel~0_combout\ & ( (!operand1(4) & (\SW[5]~input_o\ & (\SW[4]~input_o\ & !operand1(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(4),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => ALT_INV_operand1(5),
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \alu|sll_module|BARREL[10].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result~14_combout\);

-- Location: MLABCELL_X65_Y4_N57
\alu|adder_module|HALF_ADDERS[10].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ = ( operand0(10) & ( !operand1(10) ) ) # ( !operand0(10) & ( operand1(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(10),
	dataf => ALT_INV_operand0(10),
	combout => \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\);

-- Location: LABCELL_X61_Y4_N6
\alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( (!operand0(9) & ((!operand0(8)) # 
-- ((operand1(9)) # (operand1(8))))) # (operand0(9) & (operand1(9) & ((!operand0(8)) # (operand1(8))))) ) ) ) # ( !\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( 
-- (!operand0(9) & (((!operand0(8) & operand1(8))) # (operand1(9)))) # (operand0(9) & (!operand0(8) & (operand1(8) & operand1(9)))) ) ) ) # ( \alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( 
-- !\alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( (!operand0(9) & (operand0(8) & (!operand1(8) & !operand1(9)))) # (operand0(9) & ((!operand1(9)) # ((operand0(8) & !operand1(8))))) ) ) ) # ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[7].carry_or~0_combout\ & ( !\alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( (!operand0(9) & (!operand1(9) & ((!operand1(8)) # (operand0(8))))) # (operand0(9) & (((!operand1(8)) # 
-- (!operand1(9))) # (operand0(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001101010011110000010000100000111100101011000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datab => ALT_INV_operand1(8),
	datac => ALT_INV_operand0(9),
	datad => ALT_INV_operand1(9),
	datae => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	dataf => \alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~0_combout\,
	combout => \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\);

-- Location: LABCELL_X61_Y4_N0
\alu|adder_module|HALF_ADDERS[10].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\ = ( operand0(9) & ( \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( (!operand1(9) & ((!operand0(8) & ((!operand1(8)) # (\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\))) # 
-- (operand0(8) & (!operand1(8) & \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\)))) ) ) ) # ( !operand0(9) & ( \alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( (!operand1(9)) # ((!operand0(8) & ((!operand1(8)) # 
-- (\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\))) # (operand0(8) & (!operand1(8) & \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\))) ) ) ) # ( operand0(9) & ( !\alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( ((!operand0(8) & 
-- (operand1(8) & !\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\)) # (operand0(8) & ((!\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\) # (operand1(8))))) # (operand1(9)) ) ) ) # ( !operand0(9) & ( 
-- !\alu|adder_module|HALF_ADDERS[10].summation|xor0~0_combout\ & ( (operand1(9) & ((!operand0(8) & (operand1(8) & !\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\)) # (operand0(8) & ((!\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\) # 
-- (operand1(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111111111111100011101000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datab => ALT_INV_operand1(8),
	datac => \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	datad => ALT_INV_operand1(9),
	datae => ALT_INV_operand0(9),
	dataf => \alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~0_combout\,
	combout => \alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\);

-- Location: MLABCELL_X65_Y4_N42
\alu|result[10]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[10]~15_combout\ = ( operand0(10) & ( (!\SW[5]~input_o\ & (\SW[6]~input_o\ & ((!\SW[4]~input_o\) # (!operand1(10))))) # (\SW[5]~input_o\ & (\SW[4]~input_o\ & (operand1(10) & !\SW[6]~input_o\))) ) ) # ( !operand0(10) & ( (!\SW[5]~input_o\ & 
-- (operand1(10) & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000001101010000000000110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => ALT_INV_operand1(10),
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => ALT_INV_operand0(10),
	combout => \alu|result[10]~15_combout\);

-- Location: LABCELL_X60_Y4_N18
\alu|result[10]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[10]~16_combout\ = ( \alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\ & ( !\alu|result[10]~15_combout\ & ( (!\alu|Equal3~0_combout\ & (!\alu|result~14_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\)))) ) ) ) # ( !\alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\ & ( !\alu|result[10]~15_combout\ & ( (!\alu|result~14_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100100010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal3~0_combout\,
	datab => \alu|ALT_INV_result~14_combout\,
	datac => \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\,
	datad => \alu|ALT_INV_Equal3~1_combout\,
	datae => \alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\,
	dataf => \alu|ALT_INV_result[10]~15_combout\,
	combout => \alu|result[10]~16_combout\);

-- Location: MLABCELL_X65_Y2_N24
\alu|result~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~27_combout\ = ( operand1(3) & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ $ (operand0(3))))) ) ) ) # ( !operand1(3) & ( \SW[5]~input_o\ & ( 
-- (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ $ (!operand0(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	datac => ALT_INV_operand0(3),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => ALT_INV_operand1(3),
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result~27_combout\);

-- Location: MLABCELL_X65_Y2_N30
\alu|result[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[3]~28_combout\ = ( operand1(3) & ( \alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (operand0(3)))) # (\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\SW[4]~input_o\) # (!operand0(3))))) ) ) ) # ( 
-- !operand1(3) & ( \alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ( (!\SW[5]~input_o\ & ((!\SW[6]~input_o\ & (\SW[4]~input_o\ & !operand0(3))) # (\SW[6]~input_o\ & ((operand0(3)))))) ) ) ) # ( operand1(3) & ( 
-- !\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (!operand0(3) $ (\SW[5]~input_o\)))) # (\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\SW[4]~input_o\) # (!operand0(3))))) ) ) ) # ( !operand1(3) & ( 
-- !\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ( (operand0(3) & (!\SW[5]~input_o\ & ((\SW[4]~input_o\) # (\SW[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000011101000000001000100101000000000101011000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => ALT_INV_operand0(3),
	datad => \ALT_INV_SW[5]~input_o\,
	datae => ALT_INV_operand1(3),
	dataf => \alu|adder_module|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	combout => \alu|result[3]~28_combout\);

-- Location: MLABCELL_X65_Y2_N48
\alu|result~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~26_combout\ = ( !operand1(4) & ( !\alu|result~25_combout\ & ( (\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ & !operand1(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => ALT_INV_operand1(5),
	datae => ALT_INV_operand1(4),
	dataf => \alu|ALT_INV_result~25_combout\,
	combout => \alu|result~26_combout\);

-- Location: LABCELL_X66_Y4_N36
\alu|result[3]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[3]~29_combout\ = ( \alu|result~26_combout\ & ( (!\alu|result~27_combout\ & (!\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & !\alu|result[3]~28_combout\)) ) ) # ( !\alu|result~26_combout\ & ( (!\alu|result~27_combout\ & 
-- !\alu|result[3]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~27_combout\,
	datac => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|ALT_INV_result[3]~28_combout\,
	dataf => \alu|ALT_INV_result~26_combout\,
	combout => \alu|result[3]~29_combout\);

-- Location: LABCELL_X64_Y3_N15
\alu|result~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~32_combout\ = ( \SW[6]~input_o\ & ( (\SW[4]~input_o\ & (\SW[5]~input_o\ & (operand1(4) & !operand1(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => ALT_INV_operand1(4),
	datad => ALT_INV_operand1(5),
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result~32_combout\);

-- Location: LABCELL_X63_Y4_N30
\alu|sll_module|BARREL[12].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(9) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(11) ) ) ) # ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(10) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ( operand0(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(9),
	datab => ALT_INV_operand0(12),
	datac => ALT_INV_operand0(10),
	datad => ALT_INV_operand0(11),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\);

-- Location: MLABCELL_X65_Y4_N48
\alu|sll_module|BARREL[12].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[12].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\ & ( \alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & 
-- (((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) # (\alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\)))) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & 
-- (((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\)) # (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\))) ) ) ) # ( !\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\ & ( \alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\ & ( 
-- (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) # (\alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\)))) # 
-- (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ & (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\))) ) ) ) # ( \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\ & ( 
-- !\alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\)))) # 
-- (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\)) # (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\))) ) ) ) # ( !\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\ 
-- & ( !\alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\)))) # 
-- (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ & (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datab => \alu|sll_module|BARREL[4].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datad => \alu|sll_module|BARREL[8].BARREL1|ALT_INV_or_sel~0_combout\,
	datae => \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|sll_module|BARREL[12].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[12].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X64_Y4_N24
\alu|sll_module|BARREL[14].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[14].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( \alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\ ) ) ) # ( \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ 
-- & ( !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( \alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\ ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( 
-- !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( \alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[6].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|BARREL[10].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|BARREL[14].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\,
	datae => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	combout => \alu|sll_module|BARREL[14].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X64_Y3_N24
\alu|Equal7~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~12_combout\ = ( \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ & ( \alu|result~32_combout\ ) ) # ( !\alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ & ( (\alu|result~32_combout\ & 
-- ((\alu|sll_module|BARREL[14].BARREL3|or_sel~0_combout\) # (\alu|sll_module|BARREL[12].BARREL3|or_sel~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_result~32_combout\,
	datac => \alu|sll_module|BARREL[12].BARREL3|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|BARREL[14].BARREL3|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[13].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|Equal7~12_combout\);

-- Location: MLABCELL_X65_Y4_N0
\alu|sll_module|BARREL[4].BARREL3|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ = ( \alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) # 
-- (\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\))) ) ) # ( !\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\ & ( (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & 
-- \alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|sll_module|BARREL[4].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\);

-- Location: LABCELL_X64_Y4_N9
\alu|sll_module|BARREL[16].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\ = ( !operand1(5) & ( operand1(1) & ( (!operand1(0) & ((operand0(14)))) # (operand1(0) & (operand0(13))) ) ) ) # ( !operand1(5) & ( !operand1(1) & ( (operand0(15) & operand1(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(13),
	datab => ALT_INV_operand0(15),
	datac => ALT_INV_operand0(14),
	datad => ALT_INV_operand1(0),
	datae => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(1),
	combout => \alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\);

-- Location: MLABCELL_X65_Y4_N30
\alu|sll_module|BARREL[20].BARREL4|or_sel~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[20].BARREL4|or_sel~2_combout\ = ( !\alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & ( ((!\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & (\alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\)) # 
-- (\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & (((\alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\))))) ) ) # ( \alu|sll_module|BARREL[20].BARREL4|or_sel~1_combout\ & ( (!\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & 
-- (\alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\)) # (\alu|sll_module|BARREL[20].BARREL4|or_sel~0_combout\ & (((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100011100111111001111110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[4].BARREL3|ALT_INV_and_sel0~0_combout\,
	datab => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datad => \alu|sll_module|BARREL[16].BARREL1|ALT_INV_or_sel~0_combout\,
	datae => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~1_combout\,
	dataf => \alu|sll_module|BARREL[8].BARREL1|ALT_INV_or_sel~0_combout\,
	datag => \alu|sll_module|BARREL[12].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[20].BARREL4|or_sel~2_combout\);

-- Location: LABCELL_X64_Y2_N42
\alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0_combout\ = ( operand0(3) & ( (!operand1(4) & (((!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\) # (!operand1(3))) # (operand0(4)))) # (operand1(4) & (operand0(4) & 
-- ((!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\) # (!operand1(3))))) ) ) # ( !operand0(3) & ( (!operand1(4) & (((!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & !operand1(3))) # (operand0(4)))) # 
-- (operand1(4) & (operand0(4) & (!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\ & !operand1(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000100010101100100010001010111011101100101011101110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(4),
	datab => ALT_INV_operand0(4),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	datad => ALT_INV_operand1(3),
	dataf => ALT_INV_operand0(3),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0_combout\);

-- Location: MLABCELL_X65_Y2_N12
\alu|result~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~47_combout\ = ( operand0(5) & ( !\SW[4]~input_o\ & ( (\SW[5]~input_o\ & (!\SW[6]~input_o\ & (!operand1(5) $ (!\alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0_combout\)))) ) ) ) # ( !operand0(5) & ( !\SW[4]~input_o\ & ( 
-- (\SW[5]~input_o\ & (!\SW[6]~input_o\ & (!operand1(5) $ (\alu|subtract_module|adding_negative|CARRY_CALC[4].carry_or~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000000100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => ALT_INV_operand1(5),
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[4].carry_or~0_combout\,
	datae => ALT_INV_operand0(5),
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \alu|result~47_combout\);

-- Location: LABCELL_X64_Y2_N6
\alu|adder_module|CARRY_CALC[4].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[4].carry_or~0_combout\ = ( operand0(4) & ( ((!\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & (operand0(3) & operand1(3))) # (\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ((operand1(3)) # (operand0(3))))) # 
-- (operand1(4)) ) ) # ( !operand0(4) & ( (operand1(4) & ((!\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & (operand0(3) & operand1(3))) # (\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ((operand1(3)) # (operand0(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	datab => ALT_INV_operand0(3),
	datac => ALT_INV_operand1(4),
	datad => ALT_INV_operand1(3),
	dataf => ALT_INV_operand0(4),
	combout => \alu|adder_module|CARRY_CALC[4].carry_or~0_combout\);

-- Location: MLABCELL_X65_Y2_N18
\alu|result[5]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[5]~48_combout\ = ( \alu|adder_module|CARRY_CALC[4].carry_or~0_combout\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (operand1(5) & (operand0(5) & \SW[4]~input_o\))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[4].carry_or~0_combout\ & ( 
-- \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (operand1(5) & (operand0(5) & \SW[4]~input_o\))) ) ) ) # ( \alu|adder_module|CARRY_CALC[4].carry_or~0_combout\ & ( !\SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\ & ((operand0(5)) # (operand1(5))))) # 
-- (\SW[4]~input_o\ & (!\SW[6]~input_o\ $ (!operand1(5) $ (!operand0(5))))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[4].carry_or~0_combout\ & ( !\SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\ & ((operand0(5)) # (operand1(5))))) # (\SW[4]~input_o\ & 
-- ((!operand1(5) $ (!operand0(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100111100000101011001011000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => ALT_INV_operand1(5),
	datac => ALT_INV_operand0(5),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[4].carry_or~0_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[5]~48_combout\);

-- Location: MLABCELL_X65_Y2_N54
\alu|result[5]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[5]~49_combout\ = ( \alu|result~10_combout\ & ( (!\alu|result~47_combout\ & (!\alu|result[5]~48_combout\ & !\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\)) ) ) # ( !\alu|result~10_combout\ & ( (!\alu|result~47_combout\ & 
-- !\alu|result[5]~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_result~47_combout\,
	datac => \alu|ALT_INV_result[5]~48_combout\,
	datad => \alu|sll_module|BARREL[5].BARREL3|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|ALT_INV_result~10_combout\,
	combout => \alu|result[5]~49_combout\);

-- Location: MLABCELL_X65_Y3_N42
\alu|Equal7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~13_combout\ = ( \alu|result~46_combout\ & ( (!\alu|Equal7~12_combout\ & (!\alu|sll_module|BARREL[20].BARREL4|or_sel~2_combout\ & \alu|result[5]~49_combout\)) ) ) # ( !\alu|result~46_combout\ & ( (!\alu|Equal7~12_combout\ & 
-- \alu|result[5]~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_Equal7~12_combout\,
	datac => \alu|sll_module|BARREL[20].BARREL4|ALT_INV_or_sel~2_combout\,
	datad => \alu|ALT_INV_result[5]~49_combout\,
	dataf => \alu|ALT_INV_result~46_combout\,
	combout => \alu|Equal7~13_combout\);

-- Location: MLABCELL_X65_Y2_N36
\alu|result~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~30_combout\ = ( operand1(3) & ( \SW[6]~input_o\ & ( (\SW[5]~input_o\ & (!operand1(5) & (!operand1(4) & \SW[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => ALT_INV_operand1(5),
	datac => ALT_INV_operand1(4),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => ALT_INV_operand1(3),
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result~30_combout\);

-- Location: MLABCELL_X65_Y3_N33
\alu|result~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~43_combout\ = ( \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( (\alu|result~30_combout\ & \alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_result~30_combout\,
	datad => \alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|result~43_combout\);

-- Location: MLABCELL_X65_Y3_N48
\alu|sll_module|BARREL[18].BARREL4|or_sel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ = ( operand1(3) & ( (!operand1(2) & !operand1(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(2),
	datac => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(3),
	combout => \alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\);

-- Location: MLABCELL_X65_Y3_N12
\alu|Equal7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~10_combout\ = ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( (\alu|result~30_combout\ & ((!\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\) # 
-- (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\))) ) ) ) # ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & 
-- \alu|result~30_combout\) ) ) ) # ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( (\alu|result~30_combout\ & (((!\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & 
-- \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\))) ) ) ) # ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|BARREL[5].BARREL1|or_sel~0_combout\ & ( 
-- (!\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & (\alu|result~30_combout\ & \alu|sll_module|BARREL[6].BARREL1|or_sel~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100011001100100010001000100010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\,
	datab => \alu|ALT_INV_result~30_combout\,
	datac => \alu|sll_module|BARREL[6].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datae => \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[5].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|Equal7~10_combout\);

-- Location: LABCELL_X64_Y3_N48
\alu|result~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~45_combout\ = ( !operand1(5) & ( \SW[5]~input_o\ & ( (operand1(4) & (\SW[4]~input_o\ & (!\alu|result~25_combout\ & \SW[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(4),
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \alu|ALT_INV_result~25_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => ALT_INV_operand1(5),
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result~45_combout\);

-- Location: MLABCELL_X65_Y3_N36
\alu|Equal7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~9_combout\ = ( \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( \alu|result~45_combout\ ) ) # ( !\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( \alu|result~45_combout\ & ( 
-- ((\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & (\alu|result~10_combout\ & \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\) ) ) ) # ( 
-- \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( !\alu|result~45_combout\ & ( (\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & (\alu|result~10_combout\ & \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\)) ) ) ) # ( 
-- !\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( !\alu|result~45_combout\ & ( (\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & (\alu|result~10_combout\ & \alu|sll_module|BARREL[8].BARREL1|or_sel~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001111000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\,
	datab => \alu|ALT_INV_result~10_combout\,
	datac => \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\,
	datad => \alu|sll_module|BARREL[8].BARREL1|ALT_INV_or_sel~0_combout\,
	datae => \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|ALT_INV_result~45_combout\,
	combout => \alu|Equal7~9_combout\);

-- Location: LABCELL_X63_Y3_N0
\alu|result~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~44_combout\ = ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (operand1(15) & operand0(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => ALT_INV_operand1(15),
	datad => ALT_INV_operand0(15),
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result~44_combout\);

-- Location: LABCELL_X66_Y3_N30
\alu|Equal7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~8_combout\ = ( \alu|result~30_combout\ & ( \alu|result~25_combout\ & ( (!\alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ & !\alu|result~44_combout\) ) ) ) # ( !\alu|result~30_combout\ & ( \alu|result~25_combout\ & ( 
-- !\alu|result~44_combout\ ) ) ) # ( \alu|result~30_combout\ & ( !\alu|result~25_combout\ & ( (!\alu|sll_module|BARREL[21].BARREL2|and_sel1~0_combout\ & (!\alu|result~44_combout\ & ((!\alu|result~32_combout\) # 
-- (!\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\)))) ) ) ) # ( !\alu|result~30_combout\ & ( !\alu|result~25_combout\ & ( (!\alu|result~44_combout\ & ((!\alu|result~32_combout\) # (!\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000100010001000000011001100110011001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[21].BARREL2|ALT_INV_and_sel1~0_combout\,
	datab => \alu|ALT_INV_result~44_combout\,
	datac => \alu|ALT_INV_result~32_combout\,
	datad => \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\,
	datae => \alu|ALT_INV_result~30_combout\,
	dataf => \alu|ALT_INV_result~25_combout\,
	combout => \alu|Equal7~8_combout\);

-- Location: LABCELL_X64_Y4_N12
\alu|Equal7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~7_combout\ = ( operand1(5) & ( \alu|result~10_combout\ & ( (operand1(2) & (operand1(3) & ((\alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\) # (\alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\)))) ) ) ) # ( !operand1(5) & ( 
-- \alu|result~10_combout\ & ( (operand1(3) & (((\alu|sll_module|BARREL[22].BARREL2|and_sel1~0_combout\ & operand1(2))) # (\alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001101110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[22].BARREL2|ALT_INV_and_sel1~0_combout\,
	datab => \alu|sll_module|BARREL[16].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => ALT_INV_operand1(2),
	datad => ALT_INV_operand1(3),
	datae => ALT_INV_operand1(5),
	dataf => \alu|ALT_INV_result~10_combout\,
	combout => \alu|Equal7~7_combout\);

-- Location: MLABCELL_X65_Y3_N51
\alu|result~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~42_combout\ = ( \alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & ( (\alu|sll_module|BARREL[9].BARREL1|or_sel~0_combout\ & \alu|result~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|sll_module|BARREL[9].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	dataf => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\,
	combout => \alu|result~42_combout\);

-- Location: MLABCELL_X65_Y3_N18
\alu|Equal7~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~11_combout\ = ( !\alu|Equal7~7_combout\ & ( !\alu|result~42_combout\ & ( (!\alu|result~43_combout\ & (!\alu|Equal7~10_combout\ & (!\alu|Equal7~9_combout\ & \alu|Equal7~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~43_combout\,
	datab => \alu|ALT_INV_Equal7~10_combout\,
	datac => \alu|ALT_INV_Equal7~9_combout\,
	datad => \alu|ALT_INV_Equal7~8_combout\,
	datae => \alu|ALT_INV_Equal7~7_combout\,
	dataf => \alu|ALT_INV_result~42_combout\,
	combout => \alu|Equal7~11_combout\);

-- Location: LABCELL_X64_Y2_N45
\alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|xor0~combout\ = ( operand0(3) & ( !operand1(4) $ (!operand0(4) $ (((!operand1(3)) # (!\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\)))) ) ) # ( !operand0(3) & ( 
-- !operand1(4) $ (!operand0(4) $ (((!operand1(3) & !\alu|subtract_module|adding_negative|CARRY_CALC[2].carry_or~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001100110100101100110011010011001100101101001100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(4),
	datab => ALT_INV_operand0(4),
	datac => ALT_INV_operand1(3),
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	dataf => ALT_INV_operand0(3),
	combout => \alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|xor0~combout\);

-- Location: LABCELL_X62_Y2_N36
\alu|result~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~22_combout\ = ( !\SW[4]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[5]~input_o\ & !\alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|xor0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \alu|subtract_module|adding_negative|HALF_ADDERS[4].summation|ALT_INV_xor0~combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \alu|result~22_combout\);

-- Location: LABCELL_X64_Y2_N9
\alu|adder_module|CARRY_CALC[3].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[3].carry_or~0_combout\ = (!\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & (operand0(3) & operand1(3))) # (\alu|adder_module|CARRY_CALC[2].carry_or~0_combout\ & ((operand1(3)) # (operand0(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|ALT_INV_CARRY_CALC[2].carry_or~0_combout\,
	datab => ALT_INV_operand0(3),
	datac => ALT_INV_operand1(3),
	combout => \alu|adder_module|CARRY_CALC[3].carry_or~0_combout\);

-- Location: LABCELL_X64_Y3_N18
\alu|result[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[4]~23_combout\ = ( \SW[4]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (operand0(4) & operand1(4))) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( !operand0(4) $ (!operand1(4) $ 
-- (((\alu|adder_module|CARRY_CALC[3].carry_or~0_combout\ & !\SW[6]~input_o\)))) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & ((operand1(4)) # (operand0(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011010010111011010000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|ALT_INV_CARRY_CALC[3].carry_or~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => ALT_INV_operand0(4),
	datad => ALT_INV_operand1(4),
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[4]~23_combout\);

-- Location: MLABCELL_X65_Y3_N45
\alu|result[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[4]~24_combout\ = ( \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ & ( (!\alu|result~22_combout\ & (!\alu|result[4]~23_combout\ & !\alu|result~10_combout\)) ) ) # ( !\alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ & ( 
-- (!\alu|result~22_combout\ & !\alu|result[4]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~22_combout\,
	datac => \alu|ALT_INV_result[4]~23_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	dataf => \alu|sll_module|BARREL[4].BARREL3|ALT_INV_and_sel0~0_combout\,
	combout => \alu|result[4]~24_combout\);

-- Location: LABCELL_X64_Y4_N39
\alu|sll_module|BARREL[18].BARREL4|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\ = ( operand0(15) & ( (operand1(0) & (operand1(1) & (!operand1(2) & !operand1(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(0),
	datab => ALT_INV_operand1(1),
	datac => ALT_INV_operand1(2),
	datad => ALT_INV_operand1(5),
	dataf => ALT_INV_operand0(15),
	combout => \alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\);

-- Location: LABCELL_X64_Y4_N30
\alu|sll_module|BARREL[17].BARREL4|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\ = ( !operand1(5) & ( operand1(1) & ( (!operand1(2) & ((!operand1(0) & ((operand0(15)))) # (operand1(0) & (operand0(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000101100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(0),
	datab => ALT_INV_operand0(14),
	datac => ALT_INV_operand1(2),
	datad => ALT_INV_operand0(15),
	datae => ALT_INV_operand1(5),
	dataf => ALT_INV_operand1(1),
	combout => \alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\);

-- Location: MLABCELL_X65_Y2_N51
\alu|result~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~33_combout\ = ( !operand1(4) & ( !operand1(3) & ( (\SW[6]~input_o\ & (\SW[4]~input_o\ & (!operand1(5) & \SW[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => ALT_INV_operand1(5),
	datad => \ALT_INV_SW[5]~input_o\,
	datae => ALT_INV_operand1(4),
	dataf => ALT_INV_operand1(3),
	combout => \alu|result~33_combout\);

-- Location: MLABCELL_X65_Y4_N36
\alu|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~0_combout\ = ( \alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\ & ( \alu|result~33_combout\ & ( ((\alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\)) # 
-- (\alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\) ) ) ) # ( !\alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\ & ( \alu|result~33_combout\ & ( (((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & 
-- \alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\)) # (\alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|BARREL[17].BARREL4|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|BARREL[13].BARREL1|ALT_INV_or_sel~0_combout\,
	datae => \alu|sll_module|BARREL[14].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|ALT_INV_result~33_combout\,
	combout => \alu|Equal7~0_combout\);

-- Location: LABCELL_X66_Y4_N12
\alu|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~1_combout\ = ( \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (\alu|result~32_combout\ & ((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) # 
-- (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\))) ) ) ) # ( !\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (\alu|result~32_combout\ & 
-- !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\) ) ) ) # ( \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (\alu|result~32_combout\ & 
-- ((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\) # (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\))) ) ) ) # ( !\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ 
-- & ( (\alu|result~32_combout\ & (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\ & !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000010101010100010001010101000000000101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~32_combout\,
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datae => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|Equal7~1_combout\);

-- Location: LABCELL_X61_Y3_N48
\alu|sll_module|BARREL[15].BARREL1|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( operand0(13) & ( (!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\) # (operand0(12)) ) ) ) # ( 
-- !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( operand0(13) & ( (!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & (operand0(15))) # (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ((operand0(14)))) ) ) ) # 
-- ( \alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !operand0(13) & ( (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & operand0(12)) ) ) ) # ( !\alu|sll_module|FILTER_SHIFT[1].filter_mux|and_sel0~combout\ & ( !operand0(13) & 
-- ( (!\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & (operand0(15))) # (\alu|sll_module|FILTER_SHIFT[0].filter_mux|and_sel0~combout\ & ((operand0(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(15),
	datab => ALT_INV_operand0(14),
	datac => \alu|sll_module|FILTER_SHIFT[0].filter_mux|ALT_INV_and_sel0~combout\,
	datad => ALT_INV_operand0(12),
	datae => \alu|sll_module|FILTER_SHIFT[1].filter_mux|ALT_INV_and_sel0~combout\,
	dataf => ALT_INV_operand0(13),
	combout => \alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\);

-- Location: LABCELL_X66_Y4_N18
\alu|sll_module|BARREL[15].BARREL3|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[15].BARREL3|or_sel~0_combout\ = ( \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( ((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & 
-- (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\)))) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\) ) ) ) # 
-- ( !\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( \alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (((\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\)) # 
-- (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (((\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\ & !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\)))) ) ) ) 
-- # ( \alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\ & 
-- ((!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\)))) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (((\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\) # 
-- (\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\)))) ) ) ) # ( !\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & ( !\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & 
-- ((!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\)) # (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[15].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datae => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \alu|sll_module|BARREL[15].BARREL3|or_sel~0_combout\);

-- Location: LABCELL_X66_Y4_N39
\alu|result~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~31_combout\ = ( \alu|result~30_combout\ & ( ((\alu|sll_module|BARREL[13].BARREL1|or_sel~0_combout\ & \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\)) # (\alu|sll_module|BARREL[17].BARREL4|or_sel~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|sll_module|BARREL[13].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datad => \alu|sll_module|BARREL[17].BARREL4|ALT_INV_or_sel~0_combout\,
	dataf => \alu|ALT_INV_result~30_combout\,
	combout => \alu|result~31_combout\);

-- Location: MLABCELL_X65_Y4_N3
\alu|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~2_combout\ = ( \alu|result~30_combout\ & ( ((\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[14].BARREL1|or_sel~0_combout\) # (\alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\)))) # 
-- (\alu|sll_module|BARREL[18].BARREL4|or_sel~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011111111110001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[12].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|BARREL[14].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~0_combout\,
	dataf => \alu|ALT_INV_result~30_combout\,
	combout => \alu|Equal7~2_combout\);

-- Location: LABCELL_X66_Y4_N48
\alu|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~3_combout\ = ( \alu|result~32_combout\ & ( !\alu|Equal7~2_combout\ & ( (!\alu|Equal7~0_combout\ & (!\alu|Equal7~1_combout\ & (!\alu|sll_module|BARREL[15].BARREL3|or_sel~0_combout\ & !\alu|result~31_combout\))) ) ) ) # ( 
-- !\alu|result~32_combout\ & ( !\alu|Equal7~2_combout\ & ( (!\alu|Equal7~0_combout\ & (!\alu|Equal7~1_combout\ & !\alu|result~31_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal7~0_combout\,
	datab => \alu|ALT_INV_Equal7~1_combout\,
	datac => \alu|sll_module|BARREL[15].BARREL3|ALT_INV_or_sel~0_combout\,
	datad => \alu|ALT_INV_result~31_combout\,
	datae => \alu|ALT_INV_result~32_combout\,
	dataf => \alu|ALT_INV_Equal7~2_combout\,
	combout => \alu|Equal7~3_combout\);

-- Location: MLABCELL_X65_Y3_N54
\alu|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~4_combout\ = ( operand1(2) & ( operand1(3) & ( (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\ & \alu|result~10_combout\) ) ) ) # ( !operand1(2) & ( operand1(3) & ( (!operand1(5) & (\alu|result~10_combout\ & 
-- ((\alu|sll_module|BARREL[11].BARREL1|or_sel~0_combout\) # (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\)))) ) ) ) # ( operand1(2) & ( !operand1(3) & ( (!operand1(5) & (\alu|sll_module|BARREL[15].BARREL1|or_sel~0_combout\ & 
-- \alu|result~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000001010100000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => \alu|sll_module|BARREL[15].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|BARREL[11].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	datae => ALT_INV_operand1(2),
	dataf => ALT_INV_operand1(3),
	combout => \alu|Equal7~4_combout\);

-- Location: MLABCELL_X65_Y3_N6
\alu|result~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~34_combout\ = ( \alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & ( (\alu|result~10_combout\ & \alu|sll_module|BARREL[10].BARREL1|or_sel~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_result~10_combout\,
	datac => \alu|sll_module|BARREL[10].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\,
	combout => \alu|result~34_combout\);

-- Location: LABCELL_X66_Y2_N27
\alu|adder_module|CARRY_CALC[1].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|CARRY_CALC[1].carry_or~0_combout\ = ( operand0(1) & ( ((operand0(0) & operand1(0))) # (operand1(1)) ) ) # ( !operand0(1) & ( (operand1(1) & (operand0(0) & operand1(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(1),
	datab => ALT_INV_operand0(0),
	datac => ALT_INV_operand1(0),
	dataf => ALT_INV_operand0(1),
	combout => \alu|adder_module|CARRY_CALC[1].carry_or~0_combout\);

-- Location: LABCELL_X67_Y2_N42
\alu|result[2]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[2]~39_combout\ = ( operand0(2) & ( operand1(2) & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & ((\alu|adder_module|CARRY_CALC[1].carry_or~0_combout\) # (\SW[5]~input_o\)))) # (\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\SW[4]~input_o\)))) ) ) ) # ( 
-- !operand0(2) & ( operand1(2) & ( (!\SW[5]~input_o\ & (((!\alu|adder_module|CARRY_CALC[1].carry_or~0_combout\ & \SW[4]~input_o\)) # (\SW[6]~input_o\))) ) ) ) # ( operand0(2) & ( !operand1(2) & ( (!\SW[5]~input_o\ & 
-- (((!\alu|adder_module|CARRY_CALC[1].carry_or~0_combout\ & \SW[4]~input_o\)) # (\SW[6]~input_o\))) ) ) ) # ( !operand0(2) & ( !operand1(2) & ( (!\SW[5]~input_o\ & (\alu|adder_module|CARRY_CALC[1].carry_or~0_combout\ & (!\SW[6]~input_o\ & \SW[4]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000010101000101000001010100010100000101001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \alu|adder_module|ALT_INV_CARRY_CALC[1].carry_or~0_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => ALT_INV_operand0(2),
	dataf => ALT_INV_operand1(2),
	combout => \alu|result[2]~39_combout\);

-- Location: LABCELL_X66_Y2_N24
\alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\ = ( operand1(0) & ( (!operand1(1) & (!operand0(0) & !operand0(1))) # (operand1(1) & ((!operand0(0)) # (!operand0(1)))) ) ) # ( !operand1(0) & ( (operand1(1) & !operand0(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011011101010001001101110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(1),
	datab => ALT_INV_operand0(0),
	datad => ALT_INV_operand0(1),
	dataf => ALT_INV_operand1(0),
	combout => \alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\);

-- Location: LABCELL_X67_Y2_N6
\alu|result~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~38_combout\ = ( operand0(2) & ( operand1(2) & ( (!\SW[6]~input_o\ & (\alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\ & (\SW[5]~input_o\ & !\SW[4]~input_o\))) ) ) ) # ( !operand0(2) & ( operand1(2) & ( (!\SW[6]~input_o\ & 
-- (!\alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\ & (\SW[5]~input_o\ & !\SW[4]~input_o\))) ) ) ) # ( operand0(2) & ( !operand1(2) & ( (!\SW[6]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\ & 
-- (\SW[5]~input_o\ & !\SW[4]~input_o\))) ) ) ) # ( !operand0(2) & ( !operand1(2) & ( (!\SW[6]~input_o\ & (\alu|subtract_module|adding_negative|CARRY_CALC[1].carry_or~0_combout\ & (\SW[5]~input_o\ & !\SW[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000010000000000000001000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[1].carry_or~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => ALT_INV_operand0(2),
	dataf => ALT_INV_operand1(2),
	combout => \alu|result~38_combout\);

-- Location: LABCELL_X67_Y2_N21
\alu|result[2]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[2]~40_combout\ = ( !\alu|result~38_combout\ & ( (!\alu|result[2]~39_combout\ & ((!\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\) # (!\alu|result~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|ALT_INV_result[2]~39_combout\,
	datad => \alu|ALT_INV_result~26_combout\,
	dataf => \alu|ALT_INV_result~38_combout\,
	combout => \alu|result[2]~40_combout\);

-- Location: MLABCELL_X65_Y2_N6
\alu|result~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~41_combout\ = ( !\alu|sll_module|BARREL[18].BARREL4|or_sel~1_combout\ & ( \SW[4]~input_o\ & ( (\SW[5]~input_o\ & (!operand1(5) & (\SW[6]~input_o\ & !operand1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => ALT_INV_operand1(5),
	datac => \ALT_INV_SW[6]~input_o\,
	datad => ALT_INV_operand1(4),
	datae => \alu|sll_module|BARREL[18].BARREL4|ALT_INV_or_sel~1_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \alu|result~41_combout\);

-- Location: MLABCELL_X65_Y4_N15
\alu|sll_module|BARREL[16].BARREL4|or_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\ = ( \alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ((\alu|sll_module|BARREL[12].BARREL1|or_sel~0_combout\))) # 
-- (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\)) ) ) # ( !\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ( 
-- (!\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ((\alu|sll_module|BARREL[16].BARREL1|or_sel~0_combout\))) # (\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & (\alu|sll_module|BARREL[4].BARREL1|or_sel~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	datab => \alu|sll_module|BARREL[4].BARREL1|ALT_INV_or_sel~0_combout\,
	datac => \alu|sll_module|BARREL[16].BARREL1|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|BARREL[12].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	combout => \alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\);

-- Location: MLABCELL_X65_Y4_N18
\alu|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~5_combout\ = ( !\alu|result~32_combout\ & ( \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( (!\alu|result~41_combout\) # (!\alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\) ) ) ) # ( \alu|result~32_combout\ & ( 
-- !\alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( (!\alu|sll_module|BARREL[9].BARREL3|or_sel~0_combout\ & (!\alu|sll_module|BARREL[10].BARREL3|or_sel~0_combout\ & ((!\alu|result~41_combout\) # 
-- (!\alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\)))) ) ) ) # ( !\alu|result~32_combout\ & ( !\alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( (!\alu|result~41_combout\) # (!\alu|sll_module|BARREL[16].BARREL4|or_sel~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101000001000000011111111110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[9].BARREL3|ALT_INV_or_sel~0_combout\,
	datab => \alu|ALT_INV_result~41_combout\,
	datac => \alu|sll_module|BARREL[10].BARREL3|ALT_INV_or_sel~0_combout\,
	datad => \alu|sll_module|BARREL[16].BARREL4|ALT_INV_or_sel~0_combout\,
	datae => \alu|ALT_INV_result~32_combout\,
	dataf => \alu|sll_module|BARREL[8].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|Equal7~5_combout\);

-- Location: LABCELL_X67_Y2_N27
\alu|subtract_module|adding_negative|bit0_summation|and0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|bit0_summation|and0~0_combout\ = ( operand1(0) & ( operand0(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(0),
	dataf => ALT_INV_operand1(0),
	combout => \alu|subtract_module|adding_negative|bit0_summation|and0~0_combout\);

-- Location: LABCELL_X67_Y2_N30
\alu|result[1]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[1]~36_combout\ = ( operand0(1) & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (operand1(1) & \SW[4]~input_o\)) ) ) ) # ( operand0(1) & ( !\SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\)) # (\SW[4]~input_o\ & (!operand1(1) $ 
-- (((!\SW[6]~input_o\ & \alu|subtract_module|adding_negative|bit0_summation|and0~0_combout\))))) ) ) ) # ( !operand0(1) & ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (!operand1(1) $ 
-- (!\alu|subtract_module|adding_negative|bit0_summation|and0~0_combout\)))) # (\SW[6]~input_o\ & (operand1(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100111001010101011100011000000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => ALT_INV_operand1(1),
	datac => \alu|subtract_module|adding_negative|bit0_summation|ALT_INV_and0~0_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => ALT_INV_operand0(1),
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[1]~36_combout\);

-- Location: LABCELL_X66_Y2_N54
\alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|xor0~combout\ = ( operand0(1) & ( !operand1(1) $ (((!operand1(0)) # (operand0(0)))) ) ) # ( !operand0(1) & ( !operand1(1) $ (((!operand0(0) & operand1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010100110101001101010011001011001010110010101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(1),
	datab => ALT_INV_operand0(0),
	datac => ALT_INV_operand1(0),
	dataf => ALT_INV_operand0(1),
	combout => \alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|xor0~combout\);

-- Location: LABCELL_X67_Y2_N48
\alu|result~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~35_combout\ = ( !\alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|xor0~combout\ & ( (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|subtract_module|adding_negative|HALF_ADDERS[1].summation|ALT_INV_xor0~combout\,
	combout => \alu|result~35_combout\);

-- Location: LABCELL_X67_Y2_N24
\alu|result[1]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[1]~37_combout\ = ( !\alu|result~35_combout\ & ( (!\alu|result[1]~36_combout\ & ((!\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\) # (!\alu|result~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_result[1]~36_combout\,
	datac => \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\,
	datad => \alu|ALT_INV_result~26_combout\,
	dataf => \alu|ALT_INV_result~35_combout\,
	combout => \alu|result[1]~37_combout\);

-- Location: MLABCELL_X65_Y3_N30
\alu|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~6_combout\ = ( \alu|result[1]~37_combout\ & ( (!\alu|Equal7~4_combout\ & (!\alu|result~34_combout\ & (\alu|result[2]~40_combout\ & \alu|Equal7~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal7~4_combout\,
	datab => \alu|ALT_INV_result~34_combout\,
	datac => \alu|ALT_INV_result[2]~40_combout\,
	datad => \alu|ALT_INV_Equal7~5_combout\,
	dataf => \alu|ALT_INV_result[1]~37_combout\,
	combout => \alu|Equal7~6_combout\);

-- Location: MLABCELL_X65_Y3_N24
\alu|Equal7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~14_combout\ = ( \alu|Equal7~3_combout\ & ( \alu|Equal7~6_combout\ & ( (\alu|result[3]~29_combout\ & (\alu|Equal7~13_combout\ & (\alu|Equal7~11_combout\ & \alu|result[4]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[3]~29_combout\,
	datab => \alu|ALT_INV_Equal7~13_combout\,
	datac => \alu|ALT_INV_Equal7~11_combout\,
	datad => \alu|ALT_INV_result[4]~24_combout\,
	datae => \alu|ALT_INV_Equal7~3_combout\,
	dataf => \alu|ALT_INV_Equal7~6_combout\,
	combout => \alu|Equal7~14_combout\);

-- Location: LABCELL_X62_Y3_N54
\alu|Equal7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~17_combout\ = ( \alu|result[10]~16_combout\ & ( \alu|Equal7~14_combout\ & ( (\alu|result[13]~13_combout\ & (\alu|result[11]~21_combout\ & (\alu|Equal7~16_combout\ & \alu|Equal7~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[13]~13_combout\,
	datab => \alu|ALT_INV_result[11]~21_combout\,
	datac => \alu|ALT_INV_Equal7~16_combout\,
	datad => \alu|ALT_INV_Equal7~15_combout\,
	datae => \alu|ALT_INV_result[10]~16_combout\,
	dataf => \alu|ALT_INV_Equal7~14_combout\,
	combout => \alu|Equal7~17_combout\);

-- Location: LABCELL_X61_Y3_N18
\alu|result~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~67_combout\ = ( operand1(14) & ( operand0(13) & ( (\alu|Equal3~0_combout\ & (!operand0(14) $ (((!\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\) # (operand1(13)))))) ) ) ) # ( !operand1(14) & ( operand0(13) & ( (\alu|Equal3~0_combout\ & 
-- (!operand0(14) $ (((!operand1(13) & \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\))))) ) ) ) # ( operand1(14) & ( !operand0(13) & ( (\alu|Equal3~0_combout\ & (!operand0(14) $ (((operand1(13) & 
-- !\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\))))) ) ) ) # ( !operand1(14) & ( !operand0(13) & ( (\alu|Equal3~0_combout\ & (!operand0(14) $ (((!operand1(13)) # (\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010001010000010100010001000100000101000001000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal3~0_combout\,
	datab => ALT_INV_operand0(14),
	datac => ALT_INV_operand1(13),
	datad => \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datae => ALT_INV_operand1(14),
	dataf => ALT_INV_operand0(13),
	combout => \alu|result~67_combout\);

-- Location: LABCELL_X61_Y3_N39
\alu|result~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~68_combout\ = ( operand1(14) & ( \alu|Equal3~1_combout\ & ( !operand0(14) $ (((!operand0(13) & ((operand1(13)) # (\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\))) # (operand0(13) & 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ & operand1(13))))) ) ) ) # ( !operand1(14) & ( \alu|Equal3~1_combout\ & ( !operand0(14) $ (((!operand0(13) & (!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ 
-- & !operand1(13))) # (operand0(13) & ((!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\) # (!operand1(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111001100111001100011001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(13),
	datab => ALT_INV_operand0(14),
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datad => ALT_INV_operand1(13),
	datae => ALT_INV_operand1(14),
	dataf => \alu|ALT_INV_Equal3~1_combout\,
	combout => \alu|result~68_combout\);

-- Location: LABCELL_X64_Y3_N12
\alu|result[14]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[14]~69_combout\ = ( \SW[6]~input_o\ & ( (!\SW[5]~input_o\ & ((!operand1(14) & ((operand0(14)))) # (operand1(14) & ((!\SW[4]~input_o\) # (!operand0(14)))))) ) ) # ( !\SW[6]~input_o\ & ( (\SW[4]~input_o\ & (\SW[5]~input_o\ & (operand1(14) & 
-- operand0(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100001100110010000000110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => ALT_INV_operand1(14),
	datad => ALT_INV_operand0(14),
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result[14]~69_combout\);

-- Location: LABCELL_X64_Y3_N57
\alu|result[14]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[14]~70_combout\ = ( !\alu|result[14]~69_combout\ & ( (!\alu|sll_module|BARREL[14].BARREL3|or_sel~0_combout\) # (!\alu|result~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|sll_module|BARREL[14].BARREL3|ALT_INV_or_sel~0_combout\,
	datad => \alu|ALT_INV_result~10_combout\,
	dataf => \alu|ALT_INV_result[14]~69_combout\,
	combout => \alu|result[14]~70_combout\);

-- Location: LABCELL_X61_Y3_N24
\alu|Equal7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~18_combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ & ( \alu|result[14]~70_combout\ & ( (!\alu|result~67_combout\ & !\alu|result~68_combout\) ) ) ) # ( 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[15].or_pairs~0_combout\ & ( \alu|result[14]~70_combout\ & ( (!\alu|result~67_combout\ & (!\alu|result~68_combout\ & ((!\alu|Equal3~1_combout\) # (\alu|N~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~67_combout\,
	datab => \alu|ALT_INV_Equal3~1_combout\,
	datac => \alu|ALT_INV_result~68_combout\,
	datad => \alu|ALT_INV_N~1_combout\,
	datae => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[15].or_pairs~0_combout\,
	dataf => \alu|ALT_INV_result[14]~70_combout\,
	combout => \alu|Equal7~18_combout\);

-- Location: LABCELL_X63_Y3_N45
\alu|adder_module|HALF_ADDERS[15].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ = !operand1(15) $ (!operand0(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(15),
	datac => ALT_INV_operand0(15),
	combout => \alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y3_N0
\alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\ = ( operand0(14) & ( operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ (((operand1(14) & ((!operand0(13)) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\))))) ) ) ) # ( !operand0(14) & ( operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ ((((!operand0(13)) # (operand1(14))) # 
-- (\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\))) ) ) ) # ( operand0(14) & ( !operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ 
-- (((\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ & (operand1(14) & !operand0(13))))) ) ) ) # ( !operand0(14) & ( !operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ 
-- ((((\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ & !operand0(13))) # (operand1(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111000011111000011111000000001111100001111100001111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datab => ALT_INV_operand1(14),
	datac => \alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~0_combout\,
	datad => ALT_INV_operand0(13),
	datae => ALT_INV_operand0(14),
	dataf => ALT_INV_operand1(13),
	combout => \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\);

-- Location: LABCELL_X63_Y3_N57
\alu|result[15]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[15]~6_combout\ = ( \SW[5]~input_o\ & ( (operand1(15) & (operand0(15) & (\SW[4]~input_o\ & !\SW[6]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & ((!operand1(15) & (operand0(15))) # (operand1(15) & ((!operand0(15)) # 
-- (!\SW[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110110000000000111011000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(15),
	datab => ALT_INV_operand0(15),
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[15]~6_combout\);

-- Location: LABCELL_X63_Y3_N48
\alu|result~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~5_combout\ = ( \alu|sll_module|BARREL[15].BARREL3|or_sel~0_combout\ & ( \SW[6]~input_o\ & ( (!operand1(5) & (\SW[4]~input_o\ & (!operand1(4) & \SW[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => \ALT_INV_SW[4]~input_o\,
	datac => ALT_INV_operand1(4),
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \alu|sll_module|BARREL[15].BARREL3|ALT_INV_or_sel~0_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result~5_combout\);

-- Location: LABCELL_X62_Y3_N24
\alu|adder_module|HALF_ADDERS[15].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\ = ( \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ (((!operand0(14) & ((!operand1(14)) # (!operand0(13)))) 
-- # (operand0(14) & (!operand1(14) & !operand0(13))))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ (((!operand0(14) & !operand1(14)))) ) ) ) # ( 
-- \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( !operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ (((!operand0(14)) # (!operand1(14)))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( 
-- !operand1(13) & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~0_combout\ $ (((!operand0(14) & ((!operand1(14)) # (!operand0(13)))) # (operand0(14) & (!operand1(14) & !operand0(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100001111001111000011110000001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(14),
	datab => ALT_INV_operand1(14),
	datac => \alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~0_combout\,
	datad => ALT_INV_operand0(13),
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	dataf => ALT_INV_operand1(13),
	combout => \alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\);

-- Location: LABCELL_X62_Y3_N36
\alu|result[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[15]~7_combout\ = ( !\alu|result~5_combout\ & ( \alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\ & ( (!\alu|Equal3~0_combout\ & (!\alu|result[15]~6_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\)))) ) ) ) # ( !\alu|result~5_combout\ & ( !\alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\ & ( (!\alu|result[15]~6_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000000000000000000010001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal3~0_combout\,
	datab => \alu|ALT_INV_Equal3~1_combout\,
	datac => \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\,
	datad => \alu|ALT_INV_result[15]~6_combout\,
	datae => \alu|ALT_INV_result~5_combout\,
	dataf => \alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\,
	combout => \alu|result[15]~7_combout\);

-- Location: LABCELL_X61_Y3_N45
\alu|result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~0_combout\ = ( operand0(15) & ( \alu|Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_Equal3~0_combout\,
	dataf => ALT_INV_operand0(15),
	combout => \alu|result~0_combout\);

-- Location: LABCELL_X62_Y3_N12
\alu|result~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~1_combout\ = ( \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( \alu|result~0_combout\ & ( (!operand1(14) & (operand0(13) & (operand0(14) & operand1(13)))) # (operand1(14) & (((operand0(13) & operand1(13))) # (operand0(14)))) ) ) ) # ( 
-- !\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( \alu|result~0_combout\ & ( (!operand1(14) & (operand0(14) & ((operand1(13)) # (operand0(13))))) # (operand1(14) & (((operand1(13)) # (operand0(14))) # (operand0(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111001111110000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(13),
	datab => ALT_INV_operand1(14),
	datac => ALT_INV_operand0(14),
	datad => ALT_INV_operand1(13),
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	dataf => \alu|ALT_INV_result~0_combout\,
	combout => \alu|result~1_combout\);

-- Location: LABCELL_X62_Y3_N42
\alu|result~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~8_combout\ = ( operand1(15) & ( \alu|Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_Equal3~0_combout\,
	dataf => ALT_INV_operand1(15),
	combout => \alu|result~8_combout\);

-- Location: LABCELL_X62_Y3_N15
\alu|result~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~9_combout\ = ( \alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( \alu|result~8_combout\ & ( (!operand1(14) & (operand0(13) & (operand1(13) & operand0(14)))) # (operand1(14) & (((operand0(13) & operand1(13))) # (operand0(14)))) ) ) ) # ( 
-- !\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\ & ( \alu|result~8_combout\ & ( (!operand1(14) & (operand0(14) & ((operand1(13)) # (operand0(13))))) # (operand1(14) & (((operand0(14)) # (operand1(13))) # (operand0(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011011111110000000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(13),
	datab => ALT_INV_operand1(14),
	datac => ALT_INV_operand1(13),
	datad => ALT_INV_operand0(14),
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	dataf => \alu|ALT_INV_result~8_combout\,
	combout => \alu|result~9_combout\);

-- Location: LABCELL_X63_Y4_N9
\alu|adder_module|HALF_ADDERS[12].summation|xor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\ = !operand1(12) $ (!operand0(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(12),
	datab => ALT_INV_operand0(12),
	combout => \alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\);

-- Location: LABCELL_X62_Y4_N18
\alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\ = ( \alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & ( !\alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\ $ (((!operand0(11) & operand1(11)))) 
-- ) ) # ( !\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~0_combout\ & ( !\alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\ $ (((!operand0(11) & ((!\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\) # 
-- (operand1(11)))) # (operand0(11) & (operand1(11) & !\alu|subtract_module|adding_negative|CARRY_CALC[10].carry_or~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110100110011001011010011010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~0_combout\,
	datab => ALT_INV_operand0(11),
	datac => ALT_INV_operand1(11),
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].carry_or~1_combout\,
	dataf => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~0_combout\,
	combout => \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\);

-- Location: LABCELL_X62_Y2_N15
\alu|result[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[12]~3_combout\ = ( operand0(12) & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ & operand1(12)))) # (\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\SW[4]~input_o\) # (!operand1(12))))) ) ) # ( !operand0(12) & ( (\SW[6]~input_o\ & 
-- (!\SW[5]~input_o\ & operand1(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000010000100101000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => ALT_INV_operand1(12),
	dataf => ALT_INV_operand0(12),
	combout => \alu|result[12]~3_combout\);

-- Location: MLABCELL_X65_Y2_N39
\alu|result~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~2_combout\ = ( \SW[6]~input_o\ & ( \alu|sll_module|BARREL[12].BARREL3|or_sel~0_combout\ & ( (\SW[5]~input_o\ & (!operand1(5) & (\SW[4]~input_o\ & !operand1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => ALT_INV_operand1(5),
	datac => \ALT_INV_SW[4]~input_o\,
	datad => ALT_INV_operand1(4),
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \alu|sll_module|BARREL[12].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result~2_combout\);

-- Location: LABCELL_X62_Y4_N21
\alu|adder_module|HALF_ADDERS[12].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\ = ( operand1(11) & ( !\alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\ $ (((!operand0(11) & (!\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\ & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\)))) ) ) # ( !operand1(11) & ( !\alu|adder_module|HALF_ADDERS[12].summation|xor0~0_combout\ $ (((!operand0(11)) # ((!\alu|adder_module|CARRY_CALC[10].carry_or~1_combout\ & 
-- !\alu|subtract_module|adding_negative|CARRY_CALC[10].or_pairs~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110010101100110011001101010101010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~0_combout\,
	datab => ALT_INV_operand0(11),
	datac => \alu|adder_module|ALT_INV_CARRY_CALC[10].carry_or~1_combout\,
	datad => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[10].or_pairs~1_combout\,
	dataf => ALT_INV_operand1(11),
	combout => \alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\);

-- Location: LABCELL_X62_Y3_N18
\alu|result[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[12]~4_combout\ = ( !\alu|result~2_combout\ & ( \alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\ & ( (!\alu|Equal3~0_combout\ & (!\alu|result[12]~3_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\)))) ) ) ) # ( !\alu|result~2_combout\ & ( !\alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\ & ( (!\alu|result[12]~3_combout\ & ((!\alu|Equal3~1_combout\) # 
-- (\alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000000000000000000011010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\,
	datab => \alu|ALT_INV_Equal3~1_combout\,
	datac => \alu|ALT_INV_Equal3~0_combout\,
	datad => \alu|ALT_INV_result[12]~3_combout\,
	datae => \alu|ALT_INV_result~2_combout\,
	dataf => \alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\,
	combout => \alu|result[12]~4_combout\);

-- Location: LABCELL_X62_Y3_N30
\alu|Equal7~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal7~19_combout\ = ( !\alu|result~9_combout\ & ( \alu|result[12]~4_combout\ & ( (\alu|Equal7~17_combout\ & (\alu|Equal7~18_combout\ & (\alu|result[15]~7_combout\ & !\alu|result~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Equal7~17_combout\,
	datab => \alu|ALT_INV_Equal7~18_combout\,
	datac => \alu|ALT_INV_result[15]~7_combout\,
	datad => \alu|ALT_INV_result~1_combout\,
	datae => \alu|ALT_INV_result~9_combout\,
	dataf => \alu|ALT_INV_result[12]~4_combout\,
	combout => \alu|Equal7~19_combout\);

-- Location: FF_X62_Y3_N31
Zp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \alu|Equal7~19_combout\,
	sclr => \ALT_INV_SW[9]~input_o\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Zp~q\);

-- Location: FF_X71_Y4_N35
\hex_value[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[5][0]~q\);

-- Location: LABCELL_X71_Y3_N33
\hex_value[5][1]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value[5][1]~36_combout\ = ( !\SW[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \hex_value[5][1]~36_combout\);

-- Location: FF_X71_Y3_N35
\hex_value[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value[5][1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[5][1]~q\);

-- Location: MLABCELL_X84_Y20_N33
\hex5|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|Decoder0~0_combout\ = ( \hex_value[5][1]~q\ & ( \hex_value[5][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hex_value[5][0]~q\,
	datae => \ALT_INV_hex_value[5][1]~q\,
	combout => \hex5|Decoder0~0_combout\);

-- Location: MLABCELL_X84_Y20_N36
\hex5|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|WideOr3~0_combout\ = ( \hex_value[5][1]~q\ & ( !\hex_value[5][0]~q\ ) ) # ( !\hex_value[5][1]~q\ & ( \hex_value[5][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[5][0]~q\,
	datae => \ALT_INV_hex_value[5][1]~q\,
	combout => \hex5|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y20_N12
\hex5|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|Decoder0~1_combout\ = ( !\hex_value[5][1]~q\ & ( \hex_value[5][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[5][0]~q\,
	datae => \ALT_INV_hex_value[5][1]~q\,
	combout => \hex5|Decoder0~1_combout\);

-- Location: LABCELL_X63_Y3_N24
\hex_value~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~30_combout\ = ( operand0(15) & ( \SW[9]~input_o\ & ( (!\SW[6]~input_o\ & !\SW[5]~input_o\) ) ) ) # ( !operand0(15) & ( \SW[9]~input_o\ & ( (!\SW[6]~input_o\ & !\SW[5]~input_o\) ) ) ) # ( operand0(15) & ( !\SW[9]~input_o\ & ( (!\SW[8]~input_o\) 
-- # (operand1(15)) ) ) ) # ( !operand0(15) & ( !\SW[9]~input_o\ & ( (operand1(15) & \SW[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(15),
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => ALT_INV_operand0(15),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \hex_value~30_combout\);

-- Location: LABCELL_X63_Y3_N36
\hex_value~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~31_combout\ = ( \alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\ & ( (!\SW[4]~input_o\ & (!\SW[6]~input_o\ & !\hex_value~30_combout\)) # (\SW[4]~input_o\ & ((\hex_value~30_combout\))) ) ) # ( 
-- !\alu|adder_module|HALF_ADDERS[15].summation|xor0~combout\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & !\hex_value~30_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_hex_value~30_combout\,
	dataf => \alu|adder_module|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\,
	combout => \hex_value~31_combout\);

-- Location: LABCELL_X62_Y3_N6
\hex_value~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~5_combout\ = ( \alu|result[15]~6_combout\ & ( \SW[9]~input_o\ ) ) # ( !\alu|result[15]~6_combout\ & ( \SW[9]~input_o\ & ( ((\hex_value~31_combout\ & ((!\alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|xor0~combout\) # 
-- (\hex_value~30_combout\)))) # (\alu|result~5_combout\) ) ) ) # ( \alu|result[15]~6_combout\ & ( !\SW[9]~input_o\ & ( \hex_value~30_combout\ ) ) ) # ( !\alu|result[15]~6_combout\ & ( !\SW[9]~input_o\ & ( \hex_value~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111011001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtract_module|adding_negative|HALF_ADDERS[15].summation|ALT_INV_xor0~combout\,
	datab => \alu|ALT_INV_result~5_combout\,
	datac => \ALT_INV_hex_value~31_combout\,
	datad => \ALT_INV_hex_value~30_combout\,
	datae => \alu|ALT_INV_result[15]~6_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \hex_value~5_combout\);

-- Location: FF_X62_Y3_N8
\hex_value[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~5_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[3][3]~q\);

-- Location: LABCELL_X63_Y3_N51
\alu|result~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~74_combout\ = ( \SW[6]~input_o\ & ( \alu|sll_module|BARREL[13].BARREL3|or_sel~0_combout\ & ( (!operand1(5) & (\SW[4]~input_o\ & (\SW[5]~input_o\ & !operand1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(5),
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => ALT_INV_operand1(4),
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \alu|sll_module|BARREL[13].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \alu|result~74_combout\);

-- Location: LABCELL_X64_Y3_N9
\alu|result~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~72_combout\ = ( !\SW[6]~input_o\ & ( (!\SW[5]~input_o\ & (\SW[4]~input_o\ & (!\alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\ $ (\alu|adder_module|CARRY_CALC[12].carry_or~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder_module|HALF_ADDERS[13].summation|ALT_INV_xor0~0_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \alu|adder_module|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result~72_combout\);

-- Location: LABCELL_X62_Y3_N45
\hex_value~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~1_combout\ = (!\SW[8]~input_o\ & (operand0(13))) # (\SW[8]~input_o\ & ((operand1(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(13),
	datac => ALT_INV_operand1(13),
	datad => \ALT_INV_SW[8]~input_o\,
	combout => \hex_value~1_combout\);

-- Location: LABCELL_X64_Y3_N30
\alu|result~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~73_combout\ = ( !\SW[6]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[5]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[12].carry_or~0_combout\ $ (!\alu|adder_module|HALF_ADDERS[13].summation|xor0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[12].carry_or~0_combout\,
	datad => \alu|adder_module|HALF_ADDERS[13].summation|ALT_INV_xor0~0_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result~73_combout\);

-- Location: LABCELL_X64_Y3_N42
\hex_value~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~2_combout\ = ( \hex_value~1_combout\ & ( \alu|result~73_combout\ ) ) # ( !\hex_value~1_combout\ & ( \alu|result~73_combout\ & ( \SW[9]~input_o\ ) ) ) # ( \hex_value~1_combout\ & ( !\alu|result~73_combout\ & ( ((!\SW[9]~input_o\) # 
-- ((\alu|result~72_combout\) # (\alu|result~74_combout\))) # (\alu|result[13]~11_combout\) ) ) ) # ( !\hex_value~1_combout\ & ( !\alu|result~73_combout\ & ( (\SW[9]~input_o\ & (((\alu|result~72_combout\) # (\alu|result~74_combout\)) # 
-- (\alu|result[13]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011110111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[13]~11_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \alu|ALT_INV_result~74_combout\,
	datad => \alu|ALT_INV_result~72_combout\,
	datae => \ALT_INV_hex_value~1_combout\,
	dataf => \alu|ALT_INV_result~73_combout\,
	combout => \hex_value~2_combout\);

-- Location: FF_X64_Y3_N44
\hex_value[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~2_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[3][1]~q\);

-- Location: LABCELL_X64_Y3_N54
\alu|result[12]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[12]~71_combout\ = ( !\SW[6]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[5]~input_o\ & ((!\alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|xor0~combout\)))) # (\SW[4]~input_o\ & (!\SW[5]~input_o\ & 
-- (\alu|adder_module|HALF_ADDERS[12].summation|xor0~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000100001001100000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \alu|adder_module|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\,
	datad => \alu|subtract_module|adding_negative|HALF_ADDERS[12].summation|ALT_INV_xor0~combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \alu|result[12]~71_combout\);

-- Location: LABCELL_X67_Y2_N0
\hex_value~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~32_combout\ = ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (((operand0(12))))) # (\SW[9]~input_o\ & ((((\alu|result~2_combout\) # (\alu|result[12]~71_combout\))) # (\alu|result[12]~3_combout\))) ) ) # ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & 
-- (((operand1(12))))) # (\SW[9]~input_o\ & ((((\alu|result~2_combout\) # (\alu|result[12]~71_combout\))) # (\alu|result[12]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100111111000111010011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result[12]~3_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => ALT_INV_operand1(12),
	datad => \alu|ALT_INV_result[12]~71_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \alu|ALT_INV_result~2_combout\,
	datag => ALT_INV_operand0(12),
	combout => \hex_value~32_combout\);

-- Location: FF_X67_Y2_N2
\hex_value[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~32_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[3][0]~q\);

-- Location: LABCELL_X61_Y3_N0
\hex_value~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~3_combout\ = ( operand0(14) & ( (!\SW[8]~input_o\) # (operand1(14)) ) ) # ( !operand0(14) & ( (\SW[8]~input_o\ & operand1(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	datad => ALT_INV_operand1(14),
	dataf => ALT_INV_operand0(14),
	combout => \hex_value~3_combout\);

-- Location: LABCELL_X61_Y3_N3
\hex_value~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~4_combout\ = ( \alu|result~67_combout\ & ( (\hex_value~3_combout\) # (\SW[9]~input_o\) ) ) # ( !\alu|result~67_combout\ & ( (!\SW[9]~input_o\ & (((\hex_value~3_combout\)))) # (\SW[9]~input_o\ & (((!\alu|result[14]~70_combout\)) # 
-- (\alu|result~68_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111111011010100011111101101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \alu|ALT_INV_result~68_combout\,
	datac => \alu|ALT_INV_result[14]~70_combout\,
	datad => \ALT_INV_hex_value~3_combout\,
	dataf => \alu|ALT_INV_result~67_combout\,
	combout => \hex_value~4_combout\);

-- Location: FF_X61_Y3_N5
\hex_value[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~4_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[3][2]~q\);

-- Location: LABCELL_X71_Y4_N36
\hex3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr6~0_combout\ = ( \hex_value[3][2]~q\ & ( (!\hex_value[3][1]~q\ & (!\hex_value[3][3]~q\ $ (\hex_value[3][0]~q\))) ) ) # ( !\hex_value[3][2]~q\ & ( (\hex_value[3][0]~q\ & (!\hex_value[3][3]~q\ $ (\hex_value[3][1]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011110000000011000000000000110000111100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[3][3]~q\,
	datac => \ALT_INV_hex_value[3][1]~q\,
	datad => \ALT_INV_hex_value[3][0]~q\,
	datae => \ALT_INV_hex_value[3][2]~q\,
	combout => \hex3|WideOr6~0_combout\);

-- Location: LABCELL_X71_Y4_N45
\hex3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr5~0_combout\ = ( \hex_value[3][2]~q\ & ( (!\hex_value[3][1]~q\ & (!\hex_value[3][0]~q\ $ (!\hex_value[3][3]~q\))) # (\hex_value[3][1]~q\ & ((!\hex_value[3][0]~q\) # (\hex_value[3][3]~q\))) ) ) # ( !\hex_value[3][2]~q\ & ( (\hex_value[3][1]~q\ 
-- & (\hex_value[3][0]~q\ & \hex_value[3][3]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011011010110110100000001000000010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[3][1]~q\,
	datab => \ALT_INV_hex_value[3][0]~q\,
	datac => \ALT_INV_hex_value[3][3]~q\,
	datae => \ALT_INV_hex_value[3][2]~q\,
	combout => \hex3|WideOr5~0_combout\);

-- Location: LABCELL_X71_Y4_N18
\hex3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr4~0_combout\ = (!\hex_value[3][2]~q\ & (!\hex_value[3][0]~q\ & (\hex_value[3][1]~q\ & !\hex_value[3][3]~q\))) # (\hex_value[3][2]~q\ & (\hex_value[3][3]~q\ & ((!\hex_value[3][0]~q\) # (\hex_value[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000101000010000100010100001000010001010000100001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[3][2]~q\,
	datab => \ALT_INV_hex_value[3][0]~q\,
	datac => \ALT_INV_hex_value[3][1]~q\,
	datad => \ALT_INV_hex_value[3][3]~q\,
	combout => \hex3|WideOr4~0_combout\);

-- Location: LABCELL_X71_Y4_N21
\hex3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr3~0_combout\ = ( \hex_value[3][1]~q\ & ( (!\hex_value[3][2]~q\ & (!\hex_value[3][0]~q\ & \hex_value[3][3]~q\)) # (\hex_value[3][2]~q\ & (\hex_value[3][0]~q\)) ) ) # ( !\hex_value[3][1]~q\ & ( (!\hex_value[3][3]~q\ & (!\hex_value[3][2]~q\ $ 
-- (!\hex_value[3][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[3][2]~q\,
	datab => \ALT_INV_hex_value[3][0]~q\,
	datac => \ALT_INV_hex_value[3][3]~q\,
	dataf => \ALT_INV_hex_value[3][1]~q\,
	combout => \hex3|WideOr3~0_combout\);

-- Location: LABCELL_X71_Y4_N54
\hex3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr2~0_combout\ = (!\hex_value[3][1]~q\ & ((!\hex_value[3][2]~q\ & (\hex_value[3][0]~q\)) # (\hex_value[3][2]~q\ & ((!\hex_value[3][3]~q\))))) # (\hex_value[3][1]~q\ & (((\hex_value[3][0]~q\ & !\hex_value[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[3][2]~q\,
	datab => \ALT_INV_hex_value[3][0]~q\,
	datac => \ALT_INV_hex_value[3][1]~q\,
	datad => \ALT_INV_hex_value[3][3]~q\,
	combout => \hex3|WideOr2~0_combout\);

-- Location: LABCELL_X71_Y4_N57
\hex3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr1~0_combout\ = ( \hex_value[3][1]~q\ & ( (!\hex_value[3][3]~q\ & ((!\hex_value[3][2]~q\) # (\hex_value[3][0]~q\))) ) ) # ( !\hex_value[3][1]~q\ & ( (\hex_value[3][0]~q\ & (!\hex_value[3][2]~q\ $ (\hex_value[3][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[3][2]~q\,
	datab => \ALT_INV_hex_value[3][0]~q\,
	datac => \ALT_INV_hex_value[3][3]~q\,
	dataf => \ALT_INV_hex_value[3][1]~q\,
	combout => \hex3|WideOr1~0_combout\);

-- Location: LABCELL_X71_Y4_N0
\hex3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex3|WideOr0~0_combout\ = ( \hex_value[3][2]~q\ & ( (!\hex_value[3][3]~q\ & ((!\hex_value[3][1]~q\) # (!\hex_value[3][0]~q\))) # (\hex_value[3][3]~q\ & ((\hex_value[3][0]~q\) # (\hex_value[3][1]~q\))) ) ) # ( !\hex_value[3][2]~q\ & ( 
-- (\hex_value[3][1]~q\) # (\hex_value[3][3]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110011111111001100111111001111111100111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[3][3]~q\,
	datac => \ALT_INV_hex_value[3][1]~q\,
	datad => \ALT_INV_hex_value[3][0]~q\,
	datae => \ALT_INV_hex_value[3][2]~q\,
	combout => \hex3|WideOr0~0_combout\);

-- Location: LABCELL_X67_Y4_N0
\hexOff~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexOff~3_combout\ = ( !\SW[8]~input_o\ & ( ((!digitA(0) & (!digitA(2) & ((!digitA(1)))))) ) ) # ( \SW[8]~input_o\ & ( (!digitB(2) & (((!digitB(1) & (!digitB(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100000011000000101000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(2),
	datab => ALT_INV_digitA(0),
	datac => ALT_INV_digitB(1),
	datad => ALT_INV_digitB(0),
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_digitA(1),
	datag => ALT_INV_digitA(2),
	combout => \hexOff~3_combout\);

-- Location: FF_X67_Y4_N2
\hexOff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hexOff~3_combout\,
	sclr => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hexOff(2));

-- Location: LABCELL_X62_Y4_N45
\hex_value~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~12_combout\ = ( operand1(11) & ( (\SW[8]~input_o\) # (operand0(11)) ) ) # ( !operand1(11) & ( (operand0(11) & !\SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(11),
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_operand1(11),
	combout => \hex_value~12_combout\);

-- Location: LABCELL_X62_Y4_N6
\hex_value~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~13_combout\ = ( \alu|result~18_combout\ & ( \alu|result~17_combout\ & ( (\hex_value~12_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|result~18_combout\ & ( \alu|result~17_combout\ & ( (\hex_value~12_combout\) # (\SW[9]~input_o\) ) ) ) # ( 
-- \alu|result~18_combout\ & ( !\alu|result~17_combout\ & ( (\hex_value~12_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|result~18_combout\ & ( !\alu|result~17_combout\ & ( (!\SW[9]~input_o\ & (\hex_value~12_combout\)) # (\SW[9]~input_o\ & 
-- (((\alu|result[11]~20_combout\) # (\alu|result~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_hex_value~12_combout\,
	datac => \alu|ALT_INV_result~19_combout\,
	datad => \alu|ALT_INV_result[11]~20_combout\,
	datae => \alu|ALT_INV_result~18_combout\,
	dataf => \alu|ALT_INV_result~17_combout\,
	combout => \hex_value~13_combout\);

-- Location: FF_X62_Y4_N8
\hex_value[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~13_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[2][3]~q\);

-- Location: LABCELL_X62_Y4_N54
\alu|result~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~77_combout\ = ( !\alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|xor0~combout\ & ( (!\SW[6]~input_o\ & (\SW[5]~input_o\ & !\SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|subtract_module|adding_negative|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\,
	combout => \alu|result~77_combout\);

-- Location: LABCELL_X62_Y4_N51
\hex_value~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~8_combout\ = ( operand0(9) & ( (!\SW[8]~input_o\) # (operand1(9)) ) ) # ( !operand0(9) & ( (operand1(9) & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(9),
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_operand0(9),
	combout => \hex_value~8_combout\);

-- Location: LABCELL_X61_Y4_N18
\alu|adder_module|HALF_ADDERS[9].summation|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|adder_module|HALF_ADDERS[9].summation|xor0~combout\ = ( \alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ & ( (!operand0(8) & ((!operand1(8)) # (\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\))) # (operand0(8) & (!operand1(8) & 
-- \alu|adder_module|CARRY_CALC[7].carry_or~0_combout\)) ) ) # ( !\alu|adder_module|HALF_ADDERS[9].summation|xor0~0_combout\ & ( (!operand0(8) & (operand1(8) & !\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\)) # (operand0(8) & 
-- ((!\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\) # (operand1(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000110001110100011101000111010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(8),
	datab => ALT_INV_operand1(8),
	datac => \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	dataf => \alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~0_combout\,
	combout => \alu|adder_module|HALF_ADDERS[9].summation|xor0~combout\);

-- Location: LABCELL_X62_Y4_N57
\alu|result~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~76_combout\ = ( \alu|adder_module|HALF_ADDERS[9].summation|xor0~combout\ & ( (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & \SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \alu|adder_module|HALF_ADDERS[9].summation|ALT_INV_xor0~combout\,
	combout => \alu|result~76_combout\);

-- Location: LABCELL_X62_Y4_N30
\hex_value~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~9_combout\ = ( \alu|result~76_combout\ & ( \alu|result[9]~65_combout\ & ( (\hex_value~8_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|result~76_combout\ & ( \alu|result[9]~65_combout\ & ( (\hex_value~8_combout\) # (\SW[9]~input_o\) ) ) ) # ( 
-- \alu|result~76_combout\ & ( !\alu|result[9]~65_combout\ & ( (\hex_value~8_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|result~76_combout\ & ( !\alu|result[9]~65_combout\ & ( (!\SW[9]~input_o\ & (((\hex_value~8_combout\)))) # (\SW[9]~input_o\ & 
-- (((\alu|result~62_combout\)) # (\alu|result~77_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~77_combout\,
	datab => \alu|ALT_INV_result~62_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_hex_value~8_combout\,
	datae => \alu|ALT_INV_result~76_combout\,
	dataf => \alu|ALT_INV_result[9]~65_combout\,
	combout => \hex_value~9_combout\);

-- Location: FF_X62_Y4_N32
\hex_value[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~9_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[2][1]~q\);

-- Location: LABCELL_X60_Y4_N27
\alu|result~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~78_combout\ = (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (!\SW[5]~input_o\ & \alu|adder_module|HALF_ADDERS[10].summation|xor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \alu|adder_module|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\,
	combout => \alu|result~78_combout\);

-- Location: LABCELL_X60_Y4_N24
\alu|result~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~79_combout\ = (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|xor0~combout\ & \SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \alu|subtract_module|adding_negative|HALF_ADDERS[10].summation|ALT_INV_xor0~combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result~79_combout\);

-- Location: LABCELL_X67_Y4_N30
\hex_value~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~10_combout\ = ( operand0(10) & ( (!\SW[8]~input_o\) # (operand1(10)) ) ) # ( !operand0(10) & ( (operand1(10) & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_operand1(10),
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_operand0(10),
	combout => \hex_value~10_combout\);

-- Location: LABCELL_X60_Y4_N36
\hex_value~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~11_combout\ = ( \SW[9]~input_o\ & ( \alu|result[10]~15_combout\ ) ) # ( !\SW[9]~input_o\ & ( \alu|result[10]~15_combout\ & ( \hex_value~10_combout\ ) ) ) # ( \SW[9]~input_o\ & ( !\alu|result[10]~15_combout\ & ( ((\alu|result~79_combout\) # 
-- (\alu|result~14_combout\)) # (\alu|result~78_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( !\alu|result[10]~15_combout\ & ( \hex_value~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011111110111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~78_combout\,
	datab => \alu|ALT_INV_result~14_combout\,
	datac => \alu|ALT_INV_result~79_combout\,
	datad => \ALT_INV_hex_value~10_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \alu|ALT_INV_result[10]~15_combout\,
	combout => \hex_value~11_combout\);

-- Location: FF_X60_Y4_N38
\hex_value[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~11_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[2][2]~q\);

-- Location: LABCELL_X60_Y4_N9
\hex_value~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~6_combout\ = ( operand0(8) & ( (!\SW[8]~input_o\) # (operand1(8)) ) ) # ( !operand0(8) & ( (\SW[8]~input_o\ & operand1(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	datad => ALT_INV_operand1(8),
	dataf => ALT_INV_operand0(8),
	combout => \hex_value~6_combout\);

-- Location: LABCELL_X60_Y4_N48
\alu|result[8]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[8]~75_combout\ = ( \SW[4]~input_o\ & ( operand0(8) & ( (!\SW[5]~input_o\ & (!operand1(8) $ (((!\SW[6]~input_o\ & !\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\))))) # (\SW[5]~input_o\ & (operand1(8) & (!\SW[6]~input_o\))) ) ) ) # ( 
-- !\SW[4]~input_o\ & ( operand0(8) & ( (!\SW[5]~input_o\ & \SW[6]~input_o\) ) ) ) # ( \SW[4]~input_o\ & ( !operand0(8) & ( (!\SW[5]~input_o\ & (!operand1(8) $ (((\alu|adder_module|CARRY_CALC[7].carry_or~0_combout\) # (\SW[6]~input_o\))))) ) ) ) # ( 
-- !\SW[4]~input_o\ & ( !operand0(8) & ( (operand1(8) & (!\SW[5]~input_o\ & \SW[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100001000100010000001100000011000101100010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(8),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \alu|adder_module|ALT_INV_CARRY_CALC[7].carry_or~0_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => ALT_INV_operand0(8),
	combout => \alu|result[8]~75_combout\);

-- Location: LABCELL_X60_Y4_N30
\hex_value~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~7_combout\ = ( \SW[9]~input_o\ & ( \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( ((\alu|result~61_combout\) # (\alu|result[8]~75_combout\)) # (\alu|result~10_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( \hex_value~6_combout\ ) ) ) # ( \SW[9]~input_o\ & ( !\alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( (\alu|result~61_combout\) # (\alu|result[8]~75_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- !\alu|sll_module|BARREL[8].BARREL3|or_sel~0_combout\ & ( \hex_value~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011111111111101010101010101010011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value~6_combout\,
	datab => \alu|ALT_INV_result~10_combout\,
	datac => \alu|ALT_INV_result[8]~75_combout\,
	datad => \alu|ALT_INV_result~61_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \alu|sll_module|BARREL[8].BARREL3|ALT_INV_or_sel~0_combout\,
	combout => \hex_value~7_combout\);

-- Location: FF_X60_Y4_N32
\hex_value[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~7_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[2][0]~q\);

-- Location: LABCELL_X83_Y8_N30
\hex2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr6~0_combout\ = ( \hex_value[2][2]~q\ & ( \hex_value[2][0]~q\ & ( ((\hex_value[2][3]~q\ & !\hex_value[2][1]~q\)) # (hexOff(2)) ) ) ) # ( !\hex_value[2][2]~q\ & ( \hex_value[2][0]~q\ & ( (!\hex_value[2][3]~q\ $ (\hex_value[2][1]~q\)) # 
-- (hexOff(2)) ) ) ) # ( \hex_value[2][2]~q\ & ( !\hex_value[2][0]~q\ & ( ((!\hex_value[2][3]~q\ & !\hex_value[2][1]~q\)) # (hexOff(2)) ) ) ) # ( !\hex_value[2][2]~q\ & ( !\hex_value[2][0]~q\ & ( hexOff(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110111010101010111011101011101110111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(2),
	datab => \ALT_INV_hex_value[2][3]~q\,
	datad => \ALT_INV_hex_value[2][1]~q\,
	datae => \ALT_INV_hex_value[2][2]~q\,
	dataf => \ALT_INV_hex_value[2][0]~q\,
	combout => \hex2|WideOr6~0_combout\);

-- Location: LABCELL_X83_Y8_N39
\hex2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr5~0_combout\ = ( \hex_value[2][2]~q\ & ( \hex_value[2][0]~q\ & ( (!\hex_value[2][1]~q\ $ (\hex_value[2][3]~q\)) # (hexOff(2)) ) ) ) # ( !\hex_value[2][2]~q\ & ( \hex_value[2][0]~q\ & ( ((\hex_value[2][1]~q\ & \hex_value[2][3]~q\)) # 
-- (hexOff(2)) ) ) ) # ( \hex_value[2][2]~q\ & ( !\hex_value[2][0]~q\ & ( ((hexOff(2)) # (\hex_value[2][3]~q\)) # (\hex_value[2][1]~q\) ) ) ) # ( !\hex_value[2][2]~q\ & ( !\hex_value[2][0]~q\ & ( hexOff(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001111111111111100000011111111111100001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[2][1]~q\,
	datac => \ALT_INV_hex_value[2][3]~q\,
	datad => ALT_INV_hexOff(2),
	datae => \ALT_INV_hex_value[2][2]~q\,
	dataf => \ALT_INV_hex_value[2][0]~q\,
	combout => \hex2|WideOr5~0_combout\);

-- Location: LABCELL_X83_Y8_N42
\hex2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr4~0_combout\ = ( \hex_value[2][3]~q\ & ( ((\hex_value[2][2]~q\ & ((!\hex_value[2][0]~q\) # (\hex_value[2][1]~q\)))) # (hexOff(2)) ) ) # ( !\hex_value[2][3]~q\ & ( ((!\hex_value[2][2]~q\ & (!\hex_value[2][0]~q\ & \hex_value[2][1]~q\))) # 
-- (hexOff(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111010101010101011101010101110101011101110111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(2),
	datab => \ALT_INV_hex_value[2][2]~q\,
	datac => \ALT_INV_hex_value[2][0]~q\,
	datad => \ALT_INV_hex_value[2][1]~q\,
	dataf => \ALT_INV_hex_value[2][3]~q\,
	combout => \hex2|WideOr4~0_combout\);

-- Location: LABCELL_X83_Y8_N45
\hex2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr3~0_combout\ = ( \hex_value[2][0]~q\ & ( ((!\hex_value[2][2]~q\ & (!\hex_value[2][1]~q\ & !\hex_value[2][3]~q\)) # (\hex_value[2][2]~q\ & (\hex_value[2][1]~q\))) # (hexOff(2)) ) ) # ( !\hex_value[2][0]~q\ & ( ((!\hex_value[2][2]~q\ & 
-- (\hex_value[2][1]~q\ & \hex_value[2][3]~q\)) # (\hex_value[2][2]~q\ & (!\hex_value[2][1]~q\ & !\hex_value[2][3]~q\))) # (hexOff(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101011101011101010101110111010111010101111101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(2),
	datab => \ALT_INV_hex_value[2][2]~q\,
	datac => \ALT_INV_hex_value[2][1]~q\,
	datad => \ALT_INV_hex_value[2][3]~q\,
	dataf => \ALT_INV_hex_value[2][0]~q\,
	combout => \hex2|WideOr3~0_combout\);

-- Location: LABCELL_X83_Y8_N48
\hex2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr2~0_combout\ = ( \hex_value[2][3]~q\ & ( ((!\hex_value[2][2]~q\ & (\hex_value[2][0]~q\ & !\hex_value[2][1]~q\))) # (hexOff(2)) ) ) # ( !\hex_value[2][3]~q\ & ( (((\hex_value[2][2]~q\ & !\hex_value[2][1]~q\)) # (\hex_value[2][0]~q\)) # 
-- (hexOff(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101011111011111110101111101011101010101010101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(2),
	datab => \ALT_INV_hex_value[2][2]~q\,
	datac => \ALT_INV_hex_value[2][0]~q\,
	datad => \ALT_INV_hex_value[2][1]~q\,
	dataf => \ALT_INV_hex_value[2][3]~q\,
	combout => \hex2|WideOr2~0_combout\);

-- Location: LABCELL_X83_Y8_N51
\hex2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr1~0_combout\ = ( \hex_value[2][0]~q\ & ( (!\hex_value[2][3]~q\ $ (((\hex_value[2][2]~q\ & !\hex_value[2][1]~q\)))) # (hexOff(2)) ) ) # ( !\hex_value[2][0]~q\ & ( ((!\hex_value[2][2]~q\ & (\hex_value[2][1]~q\ & !\hex_value[2][3]~q\))) # 
-- (hexOff(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101010101010111010101010111011111011101011101111101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(2),
	datab => \ALT_INV_hex_value[2][2]~q\,
	datac => \ALT_INV_hex_value[2][1]~q\,
	datad => \ALT_INV_hex_value[2][3]~q\,
	dataf => \ALT_INV_hex_value[2][0]~q\,
	combout => \hex2|WideOr1~0_combout\);

-- Location: LABCELL_X83_Y8_N24
\hex2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr0~0_combout\ = ( \hex_value[2][2]~q\ & ( \hex_value[2][0]~q\ & ( ((!\hex_value[2][3]~q\ & \hex_value[2][1]~q\)) # (hexOff(2)) ) ) ) # ( !\hex_value[2][2]~q\ & ( \hex_value[2][0]~q\ & ( ((!\hex_value[2][3]~q\ & !\hex_value[2][1]~q\)) # 
-- (hexOff(2)) ) ) ) # ( \hex_value[2][2]~q\ & ( !\hex_value[2][0]~q\ & ( ((\hex_value[2][3]~q\ & !\hex_value[2][1]~q\)) # (hexOff(2)) ) ) ) # ( !\hex_value[2][2]~q\ & ( !\hex_value[2][0]~q\ & ( ((!\hex_value[2][3]~q\ & !\hex_value[2][1]~q\)) # (hexOff(2)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101010101011101110101010111011101010101010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(2),
	datab => \ALT_INV_hex_value[2][3]~q\,
	datad => \ALT_INV_hex_value[2][1]~q\,
	datae => \ALT_INV_hex_value[2][2]~q\,
	dataf => \ALT_INV_hex_value[2][0]~q\,
	combout => \hex2|WideOr0~0_combout\);

-- Location: MLABCELL_X65_Y2_N57
\hex_value~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~16_combout\ = ( operand1(5) & ( (\SW[8]~input_o\) # (operand0(5)) ) ) # ( !operand1(5) & ( (operand0(5) & !\SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(5),
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => ALT_INV_operand1(5),
	combout => \hex_value~16_combout\);

-- Location: MLABCELL_X65_Y2_N0
\hex_value~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~17_combout\ = ( \alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ & ( \alu|result~10_combout\ & ( (\hex_value~16_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ & ( \alu|result~10_combout\ & ( 
-- (!\SW[9]~input_o\ & (\hex_value~16_combout\)) # (\SW[9]~input_o\ & (((\alu|result~47_combout\) # (\alu|result[5]~48_combout\)))) ) ) ) # ( \alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ & ( !\alu|result~10_combout\ & ( (!\SW[9]~input_o\ & 
-- (\hex_value~16_combout\)) # (\SW[9]~input_o\ & (((\alu|result~47_combout\) # (\alu|result[5]~48_combout\)))) ) ) ) # ( !\alu|sll_module|BARREL[5].BARREL3|and_sel0~0_combout\ & ( !\alu|result~10_combout\ & ( (!\SW[9]~input_o\ & (\hex_value~16_combout\)) # 
-- (\SW[9]~input_o\ & (((\alu|result~47_combout\) # (\alu|result[5]~48_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101110111001001110111011100100111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_hex_value~16_combout\,
	datac => \alu|ALT_INV_result[5]~48_combout\,
	datad => \alu|ALT_INV_result~47_combout\,
	datae => \alu|sll_module|BARREL[5].BARREL3|ALT_INV_and_sel0~0_combout\,
	dataf => \alu|ALT_INV_result~10_combout\,
	combout => \hex_value~17_combout\);

-- Location: FF_X65_Y2_N2
\hex_value[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~17_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[1][1]~q\);

-- Location: LABCELL_X67_Y4_N6
\hexOff~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexOff~0_combout\ = ( digitA(2) & ( digitA(1) & ( (!digitB(1) & (\SW[8]~input_o\ & (!digitB(2) & !\SW[9]~input_o\))) ) ) ) # ( !digitA(2) & ( digitA(1) & ( (!digitB(1) & (\SW[8]~input_o\ & (!digitB(2) & !\SW[9]~input_o\))) ) ) ) # ( digitA(2) & ( 
-- !digitA(1) & ( (!digitB(1) & (\SW[8]~input_o\ & (!digitB(2) & !\SW[9]~input_o\))) ) ) ) # ( !digitA(2) & ( !digitA(1) & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # ((!digitB(1) & !digitB(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digitB(1),
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_digitB(2),
	datad => \ALT_INV_SW[9]~input_o\,
	datae => ALT_INV_digitA(2),
	dataf => ALT_INV_digitA(1),
	combout => \hexOff~0_combout\);

-- Location: FF_X67_Y4_N8
\hexOff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hexOff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hexOff(1));

-- Location: LABCELL_X64_Y3_N0
\hex_value~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~14_combout\ = ( \SW[8]~input_o\ & ( operand1(4) ) ) # ( !\SW[8]~input_o\ & ( operand0(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_operand0(4),
	datad => ALT_INV_operand1(4),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \hex_value~14_combout\);

-- Location: MLABCELL_X65_Y3_N0
\hex_value~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~15_combout\ = ( \SW[9]~input_o\ & ( \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ & ( ((\alu|result~22_combout\) # (\alu|result[4]~23_combout\)) # (\alu|result~10_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ & ( \hex_value~14_combout\ ) ) ) # ( \SW[9]~input_o\ & ( !\alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ & ( (\alu|result~22_combout\) # (\alu|result[4]~23_combout\) ) ) ) # ( !\SW[9]~input_o\ & 
-- ( !\alu|sll_module|BARREL[4].BARREL3|and_sel0~0_combout\ & ( \hex_value~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001111110011111100000000111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~10_combout\,
	datab => \alu|ALT_INV_result[4]~23_combout\,
	datac => \alu|ALT_INV_result~22_combout\,
	datad => \ALT_INV_hex_value~14_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \alu|sll_module|BARREL[4].BARREL3|ALT_INV_and_sel0~0_combout\,
	combout => \hex_value~15_combout\);

-- Location: FF_X65_Y3_N2
\hex_value[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~15_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[1][0]~q\);

-- Location: LABCELL_X60_Y4_N42
\alu|result~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result~80_combout\ = ( \SW[6]~input_o\ & ( \alu|sll_module|BARREL[6].BARREL3|and_sel0~0_combout\ & ( (!operand1(4) & (\SW[5]~input_o\ & (!operand1(5) & \SW[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand1(4),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => ALT_INV_operand1(5),
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \alu|sll_module|BARREL[6].BARREL3|ALT_INV_and_sel0~0_combout\,
	combout => \alu|result~80_combout\);

-- Location: LABCELL_X62_Y2_N9
\hex_value~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~18_combout\ = (!\SW[8]~input_o\ & (operand0(6))) # (\SW[8]~input_o\ & ((operand1(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(6),
	datab => ALT_INV_operand1(6),
	datac => \ALT_INV_SW[8]~input_o\,
	combout => \hex_value~18_combout\);

-- Location: LABCELL_X62_Y2_N0
\hex_value~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~19_combout\ = ( \SW[9]~input_o\ & ( \hex_value~18_combout\ & ( (((\alu|result~51_combout\) # (\alu|result~80_combout\)) # (\alu|result[6]~52_combout\)) # (\alu|result~50_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( \hex_value~18_combout\ ) ) # ( 
-- \SW[9]~input_o\ & ( !\hex_value~18_combout\ & ( (((\alu|result~51_combout\) # (\alu|result~80_combout\)) # (\alu|result[6]~52_combout\)) # (\alu|result~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~50_combout\,
	datab => \alu|ALT_INV_result[6]~52_combout\,
	datac => \alu|ALT_INV_result~80_combout\,
	datad => \alu|ALT_INV_result~51_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_hex_value~18_combout\,
	combout => \hex_value~19_combout\);

-- Location: FF_X62_Y2_N2
\hex_value[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~19_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[1][2]~q\);

-- Location: LABCELL_X62_Y2_N54
\alu|result[7]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[7]~81_combout\ = ( \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ $ 
-- (!\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\)))) ) ) ) # ( !\alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & 
-- (!\alu|subtract_module|adding_negative|CARRY_CALC[6].carry_or~0_combout\ $ (!\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\)))) ) ) ) # ( \alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & 
-- (\SW[4]~input_o\ & \alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\)) ) ) ) # ( !\alu|adder_module|CARRY_CALC[6].carry_or~0_combout\ & ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\ & 
-- !\alu|adder_module|HALF_ADDERS[7].summation|xor0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000101000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \alu|subtract_module|adding_negative|ALT_INV_CARRY_CALC[6].carry_or~0_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \alu|adder_module|HALF_ADDERS[7].summation|ALT_INV_xor0~0_combout\,
	datae => \alu|adder_module|ALT_INV_CARRY_CALC[6].carry_or~0_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \alu|result[7]~81_combout\);

-- Location: LABCELL_X66_Y4_N30
\alu|sll_module|BARREL[7].BARREL3|and_sel0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|sll_module|BARREL[7].BARREL3|and_sel0~0_combout\ = ( !\alu|sll_module|FILTER_SHIFT[3].filter_mux|and_sel0~0_combout\ & ( (!\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & ((\alu|sll_module|BARREL[7].BARREL1|or_sel~0_combout\))) # 
-- (\alu|sll_module|FILTER_SHIFT[2].filter_mux|and_sel0~combout\ & (\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|sll_module|FILTER_SHIFT[2].filter_mux|ALT_INV_and_sel0~combout\,
	datac => \alu|sll_module|BARREL[7].BARREL1|ALT_INV_or_sel~0_combout\,
	dataf => \alu|sll_module|FILTER_SHIFT[3].filter_mux|ALT_INV_and_sel0~0_combout\,
	combout => \alu|sll_module|BARREL[7].BARREL3|and_sel0~0_combout\);

-- Location: LABCELL_X67_Y2_N57
\hex_value~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~20_combout\ = (!\SW[8]~input_o\ & (operand0(7))) # (\SW[8]~input_o\ & ((operand1(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_operand0(7),
	datab => ALT_INV_operand1(7),
	datac => \ALT_INV_SW[8]~input_o\,
	combout => \hex_value~20_combout\);

-- Location: LABCELL_X66_Y4_N0
\hex_value~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~21_combout\ = ( \hex_value~20_combout\ & ( \alu|result[7]~54_combout\ ) ) # ( !\hex_value~20_combout\ & ( \alu|result[7]~54_combout\ & ( \SW[9]~input_o\ ) ) ) # ( \hex_value~20_combout\ & ( !\alu|result[7]~54_combout\ & ( (!\SW[9]~input_o\) # 
-- (((\alu|result~10_combout\ & \alu|sll_module|BARREL[7].BARREL3|and_sel0~0_combout\)) # (\alu|result[7]~81_combout\)) ) ) ) # ( !\hex_value~20_combout\ & ( !\alu|result[7]~54_combout\ & ( (\SW[9]~input_o\ & (((\alu|result~10_combout\ & 
-- \alu|sll_module|BARREL[7].BARREL3|and_sel0~0_combout\)) # (\alu|result[7]~81_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101101011111011111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \alu|ALT_INV_result~10_combout\,
	datac => \alu|ALT_INV_result[7]~81_combout\,
	datad => \alu|sll_module|BARREL[7].BARREL3|ALT_INV_and_sel0~0_combout\,
	datae => \ALT_INV_hex_value~20_combout\,
	dataf => \alu|ALT_INV_result[7]~54_combout\,
	combout => \hex_value~21_combout\);

-- Location: FF_X66_Y4_N2
\hex_value[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~21_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[1][3]~q\);

-- Location: LABCELL_X81_Y6_N30
\hex1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr6~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((!\hex_value[1][1]~q\ & \hex_value[1][0]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((\hex_value[1][1]~q\ & \hex_value[1][0]~q\)) # 
-- (hexOff(1)) ) ) ) # ( \hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( ((!\hex_value[1][1]~q\ & !\hex_value[1][0]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( ((!\hex_value[1][1]~q\ & \hex_value[1][0]~q\)) # (hexOff(1)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111110011110000111100001111001111110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[1][1]~q\,
	datac => ALT_INV_hexOff(1),
	datad => \ALT_INV_hex_value[1][0]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr6~0_combout\);

-- Location: LABCELL_X81_Y6_N39
\hex1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr5~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((!\hex_value[1][0]~q\) # (\hex_value[1][1]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((\hex_value[1][0]~q\ & \hex_value[1][1]~q\)) # 
-- (hexOff(1)) ) ) ) # ( \hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( (!\hex_value[1][0]~q\ $ (!\hex_value[1][1]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( hexOff(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011111010111110101010111010101111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(1),
	datab => \ALT_INV_hex_value[1][0]~q\,
	datac => \ALT_INV_hex_value[1][1]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr5~0_combout\);

-- Location: LABCELL_X81_Y6_N12
\hex1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr4~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((!\hex_value[1][0]~q\) # (hexOff(1))) # (\hex_value[1][1]~q\) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( hexOff(1) ) ) ) # ( \hex_value[1][2]~q\ & ( 
-- !\hex_value[1][3]~q\ & ( hexOff(1) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( ((\hex_value[1][1]~q\ & !\hex_value[1][0]~q\)) # (hexOff(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111000011110000111100001111000011111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[1][1]~q\,
	datac => ALT_INV_hexOff(1),
	datad => \ALT_INV_hex_value[1][0]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr4~0_combout\);

-- Location: LABCELL_X81_Y6_N51
\hex1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr3~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((\hex_value[1][0]~q\ & \hex_value[1][1]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((!\hex_value[1][0]~q\ & \hex_value[1][1]~q\)) # 
-- (hexOff(1)) ) ) ) # ( \hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( (!\hex_value[1][0]~q\ $ (\hex_value[1][1]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( ((\hex_value[1][0]~q\ & !\hex_value[1][1]~q\)) # (hexOff(1)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101110101111101011101011101010111010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(1),
	datab => \ALT_INV_hex_value[1][0]~q\,
	datac => \ALT_INV_hex_value[1][1]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr3~0_combout\);

-- Location: LABCELL_X81_Y6_N24
\hex1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr2~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( hexOff(1) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((!\hex_value[1][1]~q\ & \hex_value[1][0]~q\)) # (hexOff(1)) ) ) ) # ( \hex_value[1][2]~q\ & ( 
-- !\hex_value[1][3]~q\ & ( (!\hex_value[1][1]~q\) # ((\hex_value[1][0]~q\) # (hexOff(1))) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( (\hex_value[1][0]~q\) # (hexOff(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111110011111111111100001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[1][1]~q\,
	datac => ALT_INV_hexOff(1),
	datad => \ALT_INV_hex_value[1][0]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr2~0_combout\);

-- Location: LABCELL_X81_Y6_N3
\hex1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr1~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((\hex_value[1][0]~q\ & !\hex_value[1][1]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( hexOff(1) ) ) ) # ( \hex_value[1][2]~q\ & ( 
-- !\hex_value[1][3]~q\ & ( ((\hex_value[1][0]~q\ & \hex_value[1][1]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( ((\hex_value[1][1]~q\) # (\hex_value[1][0]~q\)) # (hexOff(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111010101110101011101010101010101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(1),
	datab => \ALT_INV_hex_value[1][0]~q\,
	datac => \ALT_INV_hex_value[1][1]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr1~0_combout\);

-- Location: LABCELL_X81_Y6_N6
\hex1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr0~0_combout\ = ( \hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( ((!\hex_value[1][1]~q\ & !\hex_value[1][0]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( \hex_value[1][3]~q\ & ( hexOff(1) ) ) ) # ( \hex_value[1][2]~q\ & ( 
-- !\hex_value[1][3]~q\ & ( ((\hex_value[1][1]~q\ & \hex_value[1][0]~q\)) # (hexOff(1)) ) ) ) # ( !\hex_value[1][2]~q\ & ( !\hex_value[1][3]~q\ & ( (!\hex_value[1][1]~q\) # (hexOff(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000011110011111100001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[1][1]~q\,
	datac => ALT_INV_hexOff(1),
	datad => \ALT_INV_hex_value[1][0]~q\,
	datae => \ALT_INV_hex_value[1][2]~q\,
	dataf => \ALT_INV_hex_value[1][3]~q\,
	combout => \hex1|WideOr0~0_combout\);

-- Location: LABCELL_X68_Y4_N51
\hexOff~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexOff~1_combout\ = ( digitB(1) & ( (!digitB(2) & !digitB(0)) ) ) # ( !digitB(1) & ( !digitB(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digitB(2),
	datad => ALT_INV_digitB(0),
	dataf => ALT_INV_digitB(1),
	combout => \hexOff~1_combout\);

-- Location: LABCELL_X67_Y4_N42
\hexOff~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexOff~2_combout\ = ( digitA(2) & ( digitA(1) & ( (!\SW[9]~input_o\ & (\SW[8]~input_o\ & \hexOff~1_combout\)) ) ) ) # ( !digitA(2) & ( digitA(1) & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & ((!digitA(0)))) # (\SW[8]~input_o\ & (\hexOff~1_combout\)))) ) ) 
-- ) # ( digitA(2) & ( !digitA(1) & ( (!\SW[9]~input_o\ & (\SW[8]~input_o\ & \hexOff~1_combout\)) ) ) ) # ( !digitA(2) & ( !digitA(1) & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (\hexOff~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010000000100000001010001010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_hexOff~1_combout\,
	datad => ALT_INV_digitA(0),
	datae => ALT_INV_digitA(2),
	dataf => ALT_INV_digitA(1),
	combout => \hexOff~2_combout\);

-- Location: FF_X67_Y4_N44
\hexOff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hexOff~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hexOff(0));

-- Location: LABCELL_X71_Y4_N51
\hex_value~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~28_combout\ = ( \SW[8]~input_o\ & ( operand1(3) ) ) # ( !\SW[8]~input_o\ & ( operand0(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_operand0(3),
	datac => ALT_INV_operand1(3),
	datae => \ALT_INV_SW[8]~input_o\,
	combout => \hex_value~28_combout\);

-- Location: LABCELL_X66_Y4_N6
\hex_value~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~29_combout\ = ( \SW[9]~input_o\ & ( \hex_value~28_combout\ & ( (((\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & \alu|result~26_combout\)) # (\alu|result[3]~28_combout\)) # (\alu|result~27_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \hex_value~28_combout\ ) ) # ( \SW[9]~input_o\ & ( !\hex_value~28_combout\ & ( (((\alu|sll_module|BARREL[3].BARREL1|or_sel~0_combout\ & \alu|result~26_combout\)) # (\alu|result[3]~28_combout\)) # (\alu|result~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111111111111111111111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sll_module|BARREL[3].BARREL1|ALT_INV_or_sel~0_combout\,
	datab => \alu|ALT_INV_result~26_combout\,
	datac => \alu|ALT_INV_result~27_combout\,
	datad => \alu|ALT_INV_result[3]~28_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_hex_value~28_combout\,
	combout => \hex_value~29_combout\);

-- Location: FF_X66_Y4_N8
\hex_value[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~29_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[0][3]~q\);

-- Location: LABCELL_X63_Y3_N18
\alu|result[0]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|result[0]~82_combout\ = ( !\SW[4]~input_o\ & ( operand1(15) & ( (\SW[5]~input_o\ & (\SW[6]~input_o\ & ((!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\) # (!operand0(15))))) ) ) ) # ( !\SW[4]~input_o\ & ( !operand1(15) & ( 
-- (!\alu|slt_module|VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\ & (\SW[5]~input_o\ & (\SW[6]~input_o\ & !operand0(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000011000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|slt_module|ALT_INV_VALID_LESS_THAN[0].sum_valid_less_than_or~11_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => ALT_INV_operand0(15),
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => ALT_INV_operand1(15),
	combout => \alu|result[0]~82_combout\);

-- Location: LABCELL_X67_Y4_N36
\hex_value~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~22_combout\ = ( operand1(0) & ( (operand0(0)) # (\SW[8]~input_o\) ) ) # ( !operand1(0) & ( (!\SW[8]~input_o\ & operand0(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_operand0(0),
	dataf => ALT_INV_operand1(0),
	combout => \hex_value~22_combout\);

-- Location: LABCELL_X67_Y4_N18
\hex_value~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~23_combout\ = ( \hex_value~22_combout\ & ( \alu|result~26_combout\ & ( (!\SW[9]~input_o\) # (((\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\) # (\alu|result[0]~58_combout\)) # (\alu|result[0]~82_combout\)) ) ) ) # ( 
-- !\hex_value~22_combout\ & ( \alu|result~26_combout\ & ( (\SW[9]~input_o\ & (((\alu|sll_module|BARREL[0].BARREL1|and_sel0~0_combout\) # (\alu|result[0]~58_combout\)) # (\alu|result[0]~82_combout\))) ) ) ) # ( \hex_value~22_combout\ & ( 
-- !\alu|result~26_combout\ & ( (!\SW[9]~input_o\) # ((\alu|result[0]~58_combout\) # (\alu|result[0]~82_combout\)) ) ) ) # ( !\hex_value~22_combout\ & ( !\alu|result~26_combout\ & ( (\SW[9]~input_o\ & ((\alu|result[0]~58_combout\) # 
-- (\alu|result[0]~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101101111111011111100010101010101011011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \alu|ALT_INV_result[0]~82_combout\,
	datac => \alu|ALT_INV_result[0]~58_combout\,
	datad => \alu|sll_module|BARREL[0].BARREL1|ALT_INV_and_sel0~0_combout\,
	datae => \ALT_INV_hex_value~22_combout\,
	dataf => \alu|ALT_INV_result~26_combout\,
	combout => \hex_value~23_combout\);

-- Location: FF_X67_Y4_N20
\hex_value[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~23_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[0][0]~q\);

-- Location: LABCELL_X67_Y2_N18
\hex_value~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~26_combout\ = ( operand1(2) & ( (operand0(2)) # (\SW[8]~input_o\) ) ) # ( !operand1(2) & ( (!\SW[8]~input_o\ & operand0(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => ALT_INV_operand0(2),
	dataf => ALT_INV_operand1(2),
	combout => \hex_value~26_combout\);

-- Location: LABCELL_X67_Y2_N12
\hex_value~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~27_combout\ = ( \alu|result~26_combout\ & ( \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ & ( (\hex_value~26_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|result~26_combout\ & ( \alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ & ( 
-- (!\SW[9]~input_o\ & (((\hex_value~26_combout\)))) # (\SW[9]~input_o\ & (((\alu|result[2]~39_combout\)) # (\alu|result~38_combout\))) ) ) ) # ( \alu|result~26_combout\ & ( !\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ & ( (!\SW[9]~input_o\ & 
-- (((\hex_value~26_combout\)))) # (\SW[9]~input_o\ & (((\alu|result[2]~39_combout\)) # (\alu|result~38_combout\))) ) ) ) # ( !\alu|result~26_combout\ & ( !\alu|sll_module|BARREL[2].BARREL1|or_sel~0_combout\ & ( (!\SW[9]~input_o\ & 
-- (((\hex_value~26_combout\)))) # (\SW[9]~input_o\ & (((\alu|result[2]~39_combout\)) # (\alu|result~38_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \alu|ALT_INV_result~38_combout\,
	datac => \ALT_INV_hex_value~26_combout\,
	datad => \alu|ALT_INV_result[2]~39_combout\,
	datae => \alu|ALT_INV_result~26_combout\,
	dataf => \alu|sll_module|BARREL[2].BARREL1|ALT_INV_or_sel~0_combout\,
	combout => \hex_value~27_combout\);

-- Location: FF_X67_Y2_N14
\hex_value[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~27_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[0][2]~q\);

-- Location: LABCELL_X67_Y2_N51
\hex_value~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~24_combout\ = ( operand1(1) & ( (operand0(1)) # (\SW[8]~input_o\) ) ) # ( !operand1(1) & ( (!\SW[8]~input_o\ & operand0(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	datad => ALT_INV_operand0(1),
	dataf => ALT_INV_operand1(1),
	combout => \hex_value~24_combout\);

-- Location: LABCELL_X67_Y2_N36
\hex_value~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_value~25_combout\ = ( \alu|result~26_combout\ & ( \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( (\hex_value~24_combout\) # (\SW[9]~input_o\) ) ) ) # ( !\alu|result~26_combout\ & ( \alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( 
-- (!\SW[9]~input_o\ & (((\hex_value~24_combout\)))) # (\SW[9]~input_o\ & (((\alu|result[1]~36_combout\)) # (\alu|result~35_combout\))) ) ) ) # ( \alu|result~26_combout\ & ( !\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( (!\SW[9]~input_o\ & 
-- (((\hex_value~24_combout\)))) # (\SW[9]~input_o\ & (((\alu|result[1]~36_combout\)) # (\alu|result~35_combout\))) ) ) ) # ( !\alu|result~26_combout\ & ( !\alu|sll_module|BARREL[1].BARREL1|and_sel0~0_combout\ & ( (!\SW[9]~input_o\ & 
-- (((\hex_value~24_combout\)))) # (\SW[9]~input_o\ & (((\alu|result[1]~36_combout\)) # (\alu|result~35_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100111111000111010011111100011101001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_result~35_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_hex_value~24_combout\,
	datad => \alu|ALT_INV_result[1]~36_combout\,
	datae => \alu|ALT_INV_result~26_combout\,
	dataf => \alu|sll_module|BARREL[1].BARREL1|ALT_INV_and_sel0~0_combout\,
	combout => \hex_value~25_combout\);

-- Location: FF_X67_Y2_N38
\hex_value[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \hex_value~25_combout\,
	ena => \Zp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex_value[0][1]~q\);

-- Location: LABCELL_X83_Y8_N3
\hex0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr6~0_combout\ = ( \hex_value[0][1]~q\ & ( ((\hex_value[0][3]~q\ & (\hex_value[0][0]~q\ & !\hex_value[0][2]~q\))) # (hexOff(0)) ) ) # ( !\hex_value[0][1]~q\ & ( ((!\hex_value[0][3]~q\ & (!\hex_value[0][0]~q\ $ (!\hex_value[0][2]~q\))) # 
-- (\hex_value[0][3]~q\ & (\hex_value[0][0]~q\ & \hex_value[0][2]~q\))) # (hexOff(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111010111010111011101011101010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(0),
	datab => \ALT_INV_hex_value[0][3]~q\,
	datac => \ALT_INV_hex_value[0][0]~q\,
	datad => \ALT_INV_hex_value[0][2]~q\,
	dataf => \ALT_INV_hex_value[0][1]~q\,
	combout => \hex0|WideOr6~0_combout\);

-- Location: LABCELL_X83_Y8_N0
\hex0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr5~0_combout\ = ( \hex_value[0][0]~q\ & ( ((!\hex_value[0][3]~q\ & (\hex_value[0][2]~q\ & !\hex_value[0][1]~q\)) # (\hex_value[0][3]~q\ & ((\hex_value[0][1]~q\)))) # (hexOff(0)) ) ) # ( !\hex_value[0][0]~q\ & ( ((\hex_value[0][2]~q\ & 
-- ((\hex_value[0][1]~q\) # (\hex_value[0][3]~q\)))) # (hexOff(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101011111010101110101111101011101011101110101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hexOff(0),
	datab => \ALT_INV_hex_value[0][3]~q\,
	datac => \ALT_INV_hex_value[0][2]~q\,
	datad => \ALT_INV_hex_value[0][1]~q\,
	dataf => \ALT_INV_hex_value[0][0]~q\,
	combout => \hex0|WideOr5~0_combout\);

-- Location: LABCELL_X83_Y8_N6
\hex0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr4~0_combout\ = ( \hex_value[0][3]~q\ & ( ((\hex_value[0][2]~q\ & ((!\hex_value[0][0]~q\) # (\hex_value[0][1]~q\)))) # (hexOff(0)) ) ) # ( !\hex_value[0][3]~q\ & ( ((\hex_value[0][1]~q\ & (!\hex_value[0][0]~q\ & !\hex_value[0][2]~q\))) # 
-- (hexOff(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001111010011110000111100001111110111110000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[0][1]~q\,
	datab => \ALT_INV_hex_value[0][0]~q\,
	datac => ALT_INV_hexOff(0),
	datad => \ALT_INV_hex_value[0][2]~q\,
	dataf => \ALT_INV_hex_value[0][3]~q\,
	combout => \hex0|WideOr4~0_combout\);

-- Location: LABCELL_X83_Y8_N15
\hex0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr3~0_combout\ = ( \hex_value[0][2]~q\ & ( hexOff(0) ) ) # ( !\hex_value[0][2]~q\ & ( hexOff(0) ) ) # ( \hex_value[0][2]~q\ & ( !hexOff(0) & ( (!\hex_value[0][1]~q\ & (!\hex_value[0][0]~q\ & !\hex_value[0][3]~q\)) # (\hex_value[0][1]~q\ & 
-- (\hex_value[0][0]~q\)) ) ) ) # ( !\hex_value[0][2]~q\ & ( !hexOff(0) & ( (!\hex_value[0][1]~q\ & (\hex_value[0][0]~q\ & !\hex_value[0][3]~q\)) # (\hex_value[0][1]~q\ & (!\hex_value[0][0]~q\ & \hex_value[0][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100100100011001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[0][1]~q\,
	datab => \ALT_INV_hex_value[0][0]~q\,
	datac => \ALT_INV_hex_value[0][3]~q\,
	datae => \ALT_INV_hex_value[0][2]~q\,
	dataf => ALT_INV_hexOff(0),
	combout => \hex0|WideOr3~0_combout\);

-- Location: LABCELL_X83_Y8_N9
\hex0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr2~0_combout\ = ( hexOff(0) ) # ( !hexOff(0) & ( (!\hex_value[0][1]~q\ & ((!\hex_value[0][2]~q\ & (\hex_value[0][0]~q\)) # (\hex_value[0][2]~q\ & ((!\hex_value[0][3]~q\))))) # (\hex_value[0][1]~q\ & (\hex_value[0][0]~q\ & 
-- (!\hex_value[0][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010110000001100101011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_value[0][1]~q\,
	datab => \ALT_INV_hex_value[0][0]~q\,
	datac => \ALT_INV_hex_value[0][3]~q\,
	datad => \ALT_INV_hex_value[0][2]~q\,
	dataf => ALT_INV_hexOff(0),
	combout => \hex0|WideOr2~0_combout\);

-- Location: LABCELL_X83_Y8_N18
\hex0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr1~0_combout\ = ( \hex_value[0][2]~q\ & ( hexOff(0) ) ) # ( !\hex_value[0][2]~q\ & ( hexOff(0) ) ) # ( \hex_value[0][2]~q\ & ( !hexOff(0) & ( (\hex_value[0][0]~q\ & (!\hex_value[0][3]~q\ $ (!\hex_value[0][1]~q\))) ) ) ) # ( !\hex_value[0][2]~q\ 
-- & ( !hexOff(0) & ( (!\hex_value[0][3]~q\ & ((\hex_value[0][0]~q\) # (\hex_value[0][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000000000011110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[0][3]~q\,
	datac => \ALT_INV_hex_value[0][1]~q\,
	datad => \ALT_INV_hex_value[0][0]~q\,
	datae => \ALT_INV_hex_value[0][2]~q\,
	dataf => ALT_INV_hexOff(0),
	combout => \hex0|WideOr1~0_combout\);

-- Location: LABCELL_X83_Y8_N54
\hex0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr0~0_combout\ = ( \hex_value[0][2]~q\ & ( hexOff(0) ) ) # ( !\hex_value[0][2]~q\ & ( hexOff(0) ) ) # ( \hex_value[0][2]~q\ & ( !hexOff(0) & ( (!\hex_value[0][3]~q\ & (\hex_value[0][1]~q\ & \hex_value[0][0]~q\)) # (\hex_value[0][3]~q\ & 
-- (!\hex_value[0][1]~q\ & !\hex_value[0][0]~q\)) ) ) ) # ( !\hex_value[0][2]~q\ & ( !hexOff(0) & ( (!\hex_value[0][3]~q\ & !\hex_value[0][1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex_value[0][3]~q\,
	datac => \ALT_INV_hex_value[0][1]~q\,
	datad => \ALT_INV_hex_value[0][0]~q\,
	datae => \ALT_INV_hex_value[0][2]~q\,
	dataf => ALT_INV_hexOff(0),
	combout => \hex0|WideOr0~0_combout\);

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

-- Location: LABCELL_X57_Y9_N0
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


