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

-- DATE "04/15/2016 20:34:37"

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

ENTITY 	sram_test_de1soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END sram_test_de1soc;

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
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sram_test_de1soc IS
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
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clock_divider|div_clks[0]~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~78\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~58\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~34\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~6\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \memory|mdr[1]~1_combout\ : std_logic;
SIGNAL \memory|always2~0_combout\ : std_logic;
SIGNAL \KEY[0]~_wirecell_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \memory|memory~32779_combout\ : std_logic;
SIGNAL \memory|memory~49_q\ : std_logic;
SIGNAL \memory|memory~17feeder_combout\ : std_logic;
SIGNAL \memory|memory~32777_combout\ : std_logic;
SIGNAL \memory|memory~17_q\ : std_logic;
SIGNAL \memory|memory~32776_combout\ : std_logic;
SIGNAL \memory|memory~1_q\ : std_logic;
SIGNAL \memory|memory~32778_combout\ : std_logic;
SIGNAL \memory|memory~33_q\ : std_logic;
SIGNAL \memory|memory~32769_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \memory|mdr[1]~2_combout\ : std_logic;
SIGNAL \memory|memory~52_q\ : std_logic;
SIGNAL \memory|memory~20_q\ : std_logic;
SIGNAL \memory|memory~4_q\ : std_logic;
SIGNAL \memory|memory~36_q\ : std_logic;
SIGNAL \memory|memory~32772_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \memory|mdr[4]~5_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \memory|memory~55_q\ : std_logic;
SIGNAL \memory|memory~23_q\ : std_logic;
SIGNAL \memory|memory~7_q\ : std_logic;
SIGNAL \memory|memory~39_q\ : std_logic;
SIGNAL \memory|memory~32775_combout\ : std_logic;
SIGNAL \memory|mdr[7]~8_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[7]~8_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \memory|memory~54_q\ : std_logic;
SIGNAL \memory|memory~6feeder_combout\ : std_logic;
SIGNAL \memory|memory~6_q\ : std_logic;
SIGNAL \memory|memory~38_q\ : std_logic;
SIGNAL \memory|memory~22feeder_combout\ : std_logic;
SIGNAL \memory|memory~22_q\ : std_logic;
SIGNAL \memory|memory~32774_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \memory|mdr[6]~7_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[6]~7_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \memory|memory~53_q\ : std_logic;
SIGNAL \memory|memory~21feeder_combout\ : std_logic;
SIGNAL \memory|memory~21_q\ : std_logic;
SIGNAL \memory|memory~37_q\ : std_logic;
SIGNAL \memory|memory~5feeder_combout\ : std_logic;
SIGNAL \memory|memory~5_q\ : std_logic;
SIGNAL \memory|memory~32773_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \memory|mdr[5]~6_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[5]~6_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \memory|sram_data_bus[4]~5_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \memory|memory~51_q\ : std_logic;
SIGNAL \memory|memory~3_q\ : std_logic;
SIGNAL \memory|memory~19_q\ : std_logic;
SIGNAL \memory|memory~35_q\ : std_logic;
SIGNAL \memory|memory~32771_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \memory|mdr[3]~4_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[3]~4_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \memory|memory~50_q\ : std_logic;
SIGNAL \memory|memory~2_q\ : std_logic;
SIGNAL \memory|memory~18_q\ : std_logic;
SIGNAL \memory|memory~34_q\ : std_logic;
SIGNAL \memory|memory~32770_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \memory|mdr[2]~3_combout\ : std_logic;
SIGNAL \memory|sram_data_bus[2]~3_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \memory|sram_data_bus[1]~2_combout\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memory|sram_data_bus[0]~1_combout\ : std_logic;
SIGNAL \memory|memory~16_q\ : std_logic;
SIGNAL \memory|memory~48_q\ : std_logic;
SIGNAL \memory|memory~0feeder_combout\ : std_logic;
SIGNAL \memory|memory~0_q\ : std_logic;
SIGNAL \memory|memory~32_q\ : std_logic;
SIGNAL \memory|memory~32768_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \memory|mdr[0]~0_combout\ : std_logic;
SIGNAL \read_data[0]~0_combout\ : std_logic;
SIGNAL \memory|sram_data_bus~0_combout\ : std_logic;
SIGNAL \read_data[1]~1_combout\ : std_logic;
SIGNAL \read_data[2]~2_combout\ : std_logic;
SIGNAL \read_data[3]~3_combout\ : std_logic;
SIGNAL \read_data[4]~4_combout\ : std_logic;
SIGNAL \read_data[5]~5_combout\ : std_logic;
SIGNAL \read_data[6]~6_combout\ : std_logic;
SIGNAL \read_data[7]~7_combout\ : std_logic;
SIGNAL \memory|mar\ : std_logic_vector(10 DOWNTO 0);
SIGNAL write_data : std_logic_vector(31 DOWNTO 0);
SIGNAL led_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|mdr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock_divider|div_clks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~_wirecell_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mdr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_div_clks\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \memory|ALT_INV_sram_data_bus[6]~7_combout\ : std_logic;
SIGNAL \memory|ALT_INV_sram_data_bus[5]~6_combout\ : std_logic;
SIGNAL \memory|ALT_INV_sram_data_bus[1]~2_combout\ : std_logic;
SIGNAL \memory|ALT_INV_sram_data_bus[0]~1_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[7]~8_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32775_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~55_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~39_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~23_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~7_q\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[6]~7_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32774_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~54_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~38_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~22_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~6_q\ : std_logic;
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
SIGNAL \memory|ALT_INV_mdr[1]~1_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mdr[0]~0_combout\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32768_combout\ : std_logic;
SIGNAL \memory|ALT_INV_mar\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \memory|ALT_INV_memory~48_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~32_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~16_q\ : std_logic;
SIGNAL \memory|ALT_INV_memory~0_q\ : std_logic;
SIGNAL ALT_INV_write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & \memory|sram_data_bus[7]~8_combout\ & \memory|sram_data_bus[6]~7_combout\ & \memory|sram_data_bus[5]~6_combout\ & \memory|sram_data_bus[4]~5_combout\ & \memory|sram_data_bus[3]~4_combout\ & \memory|sram_data_bus[2]~3_combout\ & 
\memory|sram_data_bus[1]~2_combout\ & \memory|sram_data_bus[0]~1_combout\);

\memory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\memory|mar\(1) & \memory|mar\(0));

\memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\SW[9]~input_o\ & \SW[8]~input_o\);

\memory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memory|memory_rtl_0|auto_generated|ram_block1a1\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memory|memory_rtl_0|auto_generated|ram_block1a2\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memory|memory_rtl_0|auto_generated|ram_block1a3\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memory|memory_rtl_0|auto_generated|ram_block1a4\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memory|memory_rtl_0|auto_generated|ram_block1a5\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memory|memory_rtl_0|auto_generated|ram_block1a6\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memory|memory_rtl_0|auto_generated|ram_block1a7\ <= \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~_wirecell_combout\ <= NOT \KEY[0]~_wirecell_combout\;
\memory|ALT_INV_mdr\(7) <= NOT \memory|mdr\(7);
\memory|ALT_INV_mdr\(6) <= NOT \memory|mdr\(6);
\memory|ALT_INV_mdr\(5) <= NOT \memory|mdr\(5);
\memory|ALT_INV_mdr\(4) <= NOT \memory|mdr\(4);
\memory|ALT_INV_mdr\(3) <= NOT \memory|mdr\(3);
\memory|ALT_INV_mdr\(2) <= NOT \memory|mdr\(2);
\memory|ALT_INV_mdr\(1) <= NOT \memory|mdr\(1);
\memory|ALT_INV_mdr\(0) <= NOT \memory|mdr\(0);
\clock_divider|ALT_INV_div_clks\(0) <= NOT \clock_divider|div_clks\(0);
\clock_divider|ALT_INV_div_clks\(1) <= NOT \clock_divider|div_clks\(1);
\clock_divider|ALT_INV_div_clks\(2) <= NOT \clock_divider|div_clks\(2);
\clock_divider|ALT_INV_div_clks\(3) <= NOT \clock_divider|div_clks\(3);
\clock_divider|ALT_INV_div_clks\(4) <= NOT \clock_divider|div_clks\(4);
\clock_divider|ALT_INV_div_clks\(5) <= NOT \clock_divider|div_clks\(5);
\clock_divider|ALT_INV_div_clks\(6) <= NOT \clock_divider|div_clks\(6);
\clock_divider|ALT_INV_div_clks\(7) <= NOT \clock_divider|div_clks\(7);
\clock_divider|ALT_INV_div_clks\(8) <= NOT \clock_divider|div_clks\(8);
\clock_divider|ALT_INV_div_clks\(9) <= NOT \clock_divider|div_clks\(9);
\clock_divider|ALT_INV_div_clks\(10) <= NOT \clock_divider|div_clks\(10);
\clock_divider|ALT_INV_div_clks\(11) <= NOT \clock_divider|div_clks\(11);
\clock_divider|ALT_INV_div_clks\(12) <= NOT \clock_divider|div_clks\(12);
\clock_divider|ALT_INV_div_clks\(13) <= NOT \clock_divider|div_clks\(13);
\clock_divider|ALT_INV_div_clks\(14) <= NOT \clock_divider|div_clks\(14);
\clock_divider|ALT_INV_div_clks\(15) <= NOT \clock_divider|div_clks\(15);
\clock_divider|ALT_INV_div_clks\(16) <= NOT \clock_divider|div_clks\(16);
\clock_divider|ALT_INV_div_clks\(17) <= NOT \clock_divider|div_clks\(17);
\clock_divider|ALT_INV_div_clks\(18) <= NOT \clock_divider|div_clks\(18);
\clock_divider|ALT_INV_div_clks\(19) <= NOT \clock_divider|div_clks\(19);
\memory|ALT_INV_sram_data_bus[6]~7_combout\ <= NOT \memory|sram_data_bus[6]~7_combout\;
\memory|ALT_INV_sram_data_bus[5]~6_combout\ <= NOT \memory|sram_data_bus[5]~6_combout\;
\memory|ALT_INV_sram_data_bus[1]~2_combout\ <= NOT \memory|sram_data_bus[1]~2_combout\;
\memory|ALT_INV_sram_data_bus[0]~1_combout\ <= NOT \memory|sram_data_bus[0]~1_combout\;
\memory|ALT_INV_mdr[7]~8_combout\ <= NOT \memory|mdr[7]~8_combout\;
\memory|ALT_INV_memory~32775_combout\ <= NOT \memory|memory~32775_combout\;
\memory|ALT_INV_memory~55_q\ <= NOT \memory|memory~55_q\;
\memory|ALT_INV_memory~39_q\ <= NOT \memory|memory~39_q\;
\memory|ALT_INV_memory~23_q\ <= NOT \memory|memory~23_q\;
\memory|ALT_INV_memory~7_q\ <= NOT \memory|memory~7_q\;
\memory|ALT_INV_mdr[6]~7_combout\ <= NOT \memory|mdr[6]~7_combout\;
\memory|ALT_INV_memory~32774_combout\ <= NOT \memory|memory~32774_combout\;
\memory|ALT_INV_memory~54_q\ <= NOT \memory|memory~54_q\;
\memory|ALT_INV_memory~38_q\ <= NOT \memory|memory~38_q\;
\memory|ALT_INV_memory~22_q\ <= NOT \memory|memory~22_q\;
\memory|ALT_INV_memory~6_q\ <= NOT \memory|memory~6_q\;
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
\memory|ALT_INV_mdr[1]~1_combout\ <= NOT \memory|mdr[1]~1_combout\;
\memory|ALT_INV_mdr[0]~0_combout\ <= NOT \memory|mdr[0]~0_combout\;
\memory|ALT_INV_memory~32768_combout\ <= NOT \memory|memory~32768_combout\;
\memory|ALT_INV_mar\(1) <= NOT \memory|mar\(1);
\memory|ALT_INV_mar\(0) <= NOT \memory|mar\(0);
\memory|ALT_INV_memory~48_q\ <= NOT \memory|memory~48_q\;
\memory|ALT_INV_memory~32_q\ <= NOT \memory|memory~32_q\;
\memory|ALT_INV_memory~16_q\ <= NOT \memory|memory~16_q\;
\memory|ALT_INV_memory~0_q\ <= NOT \memory|memory~0_q\;
ALT_INV_write_data(7) <= NOT write_data(7);
ALT_INV_write_data(6) <= NOT write_data(6);
ALT_INV_write_data(5) <= NOT write_data(5);
ALT_INV_write_data(4) <= NOT write_data(4);
ALT_INV_write_data(3) <= NOT write_data(3);
ALT_INV_write_data(2) <= NOT write_data(2);
ALT_INV_write_data(1) <= NOT write_data(1);
\clock_divider|ALT_INV_div_clks\(20) <= NOT \clock_divider|div_clks\(20);
ALT_INV_write_data(0) <= NOT write_data(0);
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a1\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a2\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a3\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a4\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a5\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a6\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a7\;
\memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \memory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\;

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

-- Location: LABCELL_X27_Y3_N30
\clock_divider|div_clks[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|div_clks[0]~0_combout\ = ( !\clock_divider|div_clks\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clock_divider|ALT_INV_div_clks\(0),
	combout => \clock_divider|div_clks[0]~0_combout\);

-- Location: FF_X27_Y3_N31
\clock_divider|div_clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|div_clks[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(0));

-- Location: MLABCELL_X28_Y3_N0
\clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~77_sumout\ = SUM(( \clock_divider|div_clks\(1) ) + ( \clock_divider|div_clks\(0) ) + ( !VCC ))
-- \clock_divider|Add0~78\ = CARRY(( \clock_divider|div_clks\(1) ) + ( \clock_divider|div_clks\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_div_clks\(0),
	datad => \clock_divider|ALT_INV_div_clks\(1),
	cin => GND,
	sumout => \clock_divider|Add0~77_sumout\,
	cout => \clock_divider|Add0~78\);

-- Location: FF_X28_Y3_N2
\clock_divider|div_clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(1));

-- Location: MLABCELL_X28_Y3_N3
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( \clock_divider|div_clks\(2) ) + ( GND ) + ( \clock_divider|Add0~78\ ))
-- \clock_divider|Add0~74\ = CARRY(( \clock_divider|div_clks\(2) ) + ( GND ) + ( \clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(2),
	cin => \clock_divider|Add0~78\,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: FF_X28_Y3_N5
\clock_divider|div_clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(2));

-- Location: MLABCELL_X28_Y3_N6
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( \clock_divider|div_clks\(3) ) + ( GND ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~70\ = CARRY(( \clock_divider|div_clks\(3) ) + ( GND ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(3),
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: FF_X28_Y3_N8
\clock_divider|div_clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(3));

-- Location: MLABCELL_X28_Y3_N9
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( \clock_divider|div_clks\(4) ) + ( GND ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~66\ = CARRY(( \clock_divider|div_clks\(4) ) + ( GND ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(4),
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: FF_X28_Y3_N11
\clock_divider|div_clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(4));

-- Location: MLABCELL_X28_Y3_N12
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( \clock_divider|div_clks\(5) ) + ( GND ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~62\ = CARRY(( \clock_divider|div_clks\(5) ) + ( GND ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(5),
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: FF_X28_Y3_N14
\clock_divider|div_clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(5));

-- Location: MLABCELL_X28_Y3_N15
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( \clock_divider|div_clks\(6) ) + ( GND ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~58\ = CARRY(( \clock_divider|div_clks\(6) ) + ( GND ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(6),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~57_sumout\,
	cout => \clock_divider|Add0~58\);

-- Location: FF_X28_Y3_N17
\clock_divider|div_clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(6));

-- Location: MLABCELL_X28_Y3_N18
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( \clock_divider|div_clks\(7) ) + ( GND ) + ( \clock_divider|Add0~58\ ))
-- \clock_divider|Add0~54\ = CARRY(( \clock_divider|div_clks\(7) ) + ( GND ) + ( \clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(7),
	cin => \clock_divider|Add0~58\,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: FF_X28_Y3_N20
\clock_divider|div_clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(7));

-- Location: MLABCELL_X28_Y3_N21
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( \clock_divider|div_clks\(8) ) + ( GND ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~50\ = CARRY(( \clock_divider|div_clks\(8) ) + ( GND ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(8),
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: FF_X28_Y3_N23
\clock_divider|div_clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(8));

-- Location: MLABCELL_X28_Y3_N24
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( \clock_divider|div_clks\(9) ) + ( GND ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~46\ = CARRY(( \clock_divider|div_clks\(9) ) + ( GND ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(9),
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: FF_X28_Y3_N26
\clock_divider|div_clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(9));

-- Location: MLABCELL_X28_Y3_N27
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( \clock_divider|div_clks\(10) ) + ( GND ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~42\ = CARRY(( \clock_divider|div_clks\(10) ) + ( GND ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(10),
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: FF_X28_Y3_N29
\clock_divider|div_clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(10));

-- Location: MLABCELL_X28_Y3_N30
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( \clock_divider|div_clks\(11) ) + ( GND ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~38\ = CARRY(( \clock_divider|div_clks\(11) ) + ( GND ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(11),
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: FF_X28_Y3_N32
\clock_divider|div_clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(11));

-- Location: MLABCELL_X28_Y3_N33
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( \clock_divider|div_clks\(12) ) + ( GND ) + ( \clock_divider|Add0~38\ ))
-- \clock_divider|Add0~34\ = CARRY(( \clock_divider|div_clks\(12) ) + ( GND ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(12),
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~33_sumout\,
	cout => \clock_divider|Add0~34\);

-- Location: FF_X28_Y3_N35
\clock_divider|div_clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(12));

-- Location: MLABCELL_X28_Y3_N36
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( \clock_divider|div_clks\(13) ) + ( GND ) + ( \clock_divider|Add0~34\ ))
-- \clock_divider|Add0~30\ = CARRY(( \clock_divider|div_clks\(13) ) + ( GND ) + ( \clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(13),
	cin => \clock_divider|Add0~34\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: FF_X28_Y3_N38
\clock_divider|div_clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(13));

-- Location: MLABCELL_X28_Y3_N39
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( \clock_divider|div_clks\(14) ) + ( GND ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~26\ = CARRY(( \clock_divider|div_clks\(14) ) + ( GND ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(14),
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: FF_X28_Y3_N41
\clock_divider|div_clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(14));

-- Location: MLABCELL_X28_Y3_N42
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( \clock_divider|div_clks\(15) ) + ( GND ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~22\ = CARRY(( \clock_divider|div_clks\(15) ) + ( GND ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(15),
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: FF_X28_Y3_N44
\clock_divider|div_clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(15));

-- Location: MLABCELL_X28_Y3_N45
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( \clock_divider|div_clks\(16) ) + ( GND ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~18\ = CARRY(( \clock_divider|div_clks\(16) ) + ( GND ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(16),
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: FF_X28_Y3_N47
\clock_divider|div_clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(16));

-- Location: MLABCELL_X28_Y3_N48
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( \clock_divider|div_clks\(17) ) + ( GND ) + ( \clock_divider|Add0~18\ ))
-- \clock_divider|Add0~14\ = CARRY(( \clock_divider|div_clks\(17) ) + ( GND ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(17),
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: FF_X28_Y3_N50
\clock_divider|div_clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(17));

-- Location: MLABCELL_X28_Y3_N51
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( \clock_divider|div_clks\(18) ) + ( GND ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~10\ = CARRY(( \clock_divider|div_clks\(18) ) + ( GND ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(18),
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: FF_X28_Y3_N53
\clock_divider|div_clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(18));

-- Location: MLABCELL_X28_Y3_N54
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( \clock_divider|div_clks\(19) ) + ( GND ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~6\ = CARRY(( \clock_divider|div_clks\(19) ) + ( GND ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_div_clks\(19),
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~5_sumout\,
	cout => \clock_divider|Add0~6\);

-- Location: FF_X28_Y3_N56
\clock_divider|div_clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(19));

-- Location: MLABCELL_X28_Y3_N57
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( \clock_divider|div_clks\(20) ) + ( GND ) + ( \clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_div_clks\(20),
	cin => \clock_divider|Add0~6\,
	sumout => \clock_divider|Add0~1_sumout\);

-- Location: FF_X27_Y2_N44
\clock_divider|div_clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clock_divider|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|div_clks\(20));

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

-- Location: LABCELL_X27_Y2_N24
\memory|mdr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[1]~1_combout\ = ( \clock_divider|div_clks\(20) & ( (!\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) ) # ( !\clock_divider|div_clks\(20) & ( (\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	dataf => \clock_divider|ALT_INV_div_clks\(20),
	combout => \memory|mdr[1]~1_combout\);

-- Location: MLABCELL_X28_Y2_N15
\memory|always2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|always2~0_combout\ = (!\KEY[1]~input_o\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	combout => \memory|always2~0_combout\);

-- Location: LABCELL_X27_Y2_N45
\KEY[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \KEY[0]~_wirecell_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \KEY[0]~_wirecell_combout\);

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

-- Location: FF_X29_Y2_N38
\memory|mar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|ALT_INV_div_clks\(20),
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|mar\(0));

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

-- Location: FF_X29_Y2_N41
\memory|mar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|ALT_INV_div_clks\(20),
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|mar\(1));

-- Location: MLABCELL_X25_Y3_N30
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LABCELL_X29_Y2_N39
\memory|memory~32779\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32779_combout\ = ( \memory|mar\(0) & ( (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & \memory|mar\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \memory|ALT_INV_mar\(1),
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32779_combout\);

-- Location: FF_X27_Y2_N56
\memory|memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[1]~2_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~49_q\);

-- Location: MLABCELL_X25_Y2_N36
\memory|memory~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~17feeder_combout\ = ( \memory|sram_data_bus[1]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[1]~2_combout\,
	combout => \memory|memory~17feeder_combout\);

-- Location: LABCELL_X27_Y2_N27
\memory|memory~32777\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32777_combout\ = ( !\memory|mar\(1) & ( (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & \memory|mar\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \memory|ALT_INV_mar\(0),
	dataf => \memory|ALT_INV_mar\(1),
	combout => \memory|memory~32777_combout\);

-- Location: FF_X25_Y2_N37
\memory|memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|memory~17feeder_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~17_q\);

-- Location: LABCELL_X27_Y2_N9
\memory|memory~32776\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32776_combout\ = ( !\memory|mar\(1) & ( (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & !\memory|mar\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \memory|ALT_INV_mar\(0),
	dataf => \memory|ALT_INV_mar\(1),
	combout => \memory|memory~32776_combout\);

-- Location: FF_X25_Y2_N31
\memory|memory~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[1]~2_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~1_q\);

-- Location: LABCELL_X29_Y2_N36
\memory|memory~32778\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32778_combout\ = ( \memory|mar\(1) & ( (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & !\memory|mar\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \memory|ALT_INV_mar\(0),
	dataf => \memory|ALT_INV_mar\(1),
	combout => \memory|memory~32778_combout\);

-- Location: FF_X29_Y2_N14
\memory|memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[1]~2_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~33_q\);

-- Location: LABCELL_X29_Y2_N12
\memory|memory~32769\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32769_combout\ = ( \memory|memory~33_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & ((\memory|memory~17_q\))) # (\memory|mar\(1) & (\memory|memory~49_q\)) ) ) ) # ( !\memory|memory~33_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- ((\memory|memory~17_q\))) # (\memory|mar\(1) & (\memory|memory~49_q\)) ) ) ) # ( \memory|memory~33_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~1_q\) ) ) ) # ( !\memory|memory~33_q\ & ( !\memory|mar\(0) & ( (\memory|memory~1_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~49_q\,
	datab => \memory|ALT_INV_memory~17_q\,
	datac => \memory|ALT_INV_memory~1_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~33_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32769_combout\);

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

-- Location: FF_X27_Y2_N14
\write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(1));

-- Location: LABCELL_X27_Y2_N12
\memory|mdr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[1]~2_combout\ = ( \KEY[1]~input_o\ & ( \memory|memory~32769_combout\ ) ) # ( !\KEY[1]~input_o\ & ( (!\clock_divider|div_clks\(20) & ((write_data(1)))) # (\clock_divider|div_clks\(20) & (\memory|memory~32769_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_div_clks\(20),
	datac => \memory|ALT_INV_memory~32769_combout\,
	datad => ALT_INV_write_data(1),
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|mdr[1]~2_combout\);

-- Location: LABCELL_X27_Y2_N3
\memory|mdr[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(1) = ( \memory|mdr[1]~2_combout\ & ( (!\memory|mdr[1]~1_combout\) # (\memory|mdr\(1)) ) ) # ( !\memory|mdr[1]~2_combout\ & ( (\memory|mdr[1]~1_combout\ & \memory|mdr\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	datad => \memory|ALT_INV_mdr\(1),
	dataf => \memory|ALT_INV_mdr[1]~2_combout\,
	combout => \memory|mdr\(1));

-- Location: FF_X27_Y2_N37
\memory|memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[4]~5_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~52_q\);

-- Location: FF_X25_Y2_N14
\memory|memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[4]~5_combout\,
	sload => VCC,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~20_q\);

-- Location: FF_X25_Y2_N8
\memory|memory~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[4]~5_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~4_q\);

-- Location: FF_X25_Y2_N50
\memory|memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[4]~5_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~36_q\);

-- Location: MLABCELL_X25_Y2_N48
\memory|memory~32772\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32772_combout\ = ( \memory|memory~36_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & ((\memory|memory~20_q\))) # (\memory|mar\(1) & (\memory|memory~52_q\)) ) ) ) # ( !\memory|memory~36_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- ((\memory|memory~20_q\))) # (\memory|mar\(1) & (\memory|memory~52_q\)) ) ) ) # ( \memory|memory~36_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~4_q\) ) ) ) # ( !\memory|memory~36_q\ & ( !\memory|mar\(0) & ( (\memory|memory~4_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~52_q\,
	datab => \memory|ALT_INV_memory~20_q\,
	datac => \memory|ALT_INV_memory~4_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~36_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32772_combout\);

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

-- Location: FF_X27_Y2_N20
\write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(4));

-- Location: LABCELL_X27_Y2_N18
\memory|mdr[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[4]~5_combout\ = ( \KEY[1]~input_o\ & ( \memory|memory~32772_combout\ ) ) # ( !\KEY[1]~input_o\ & ( (!\clock_divider|div_clks\(20) & ((write_data(4)))) # (\clock_divider|div_clks\(20) & (\memory|memory~32772_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_div_clks\(20),
	datac => \memory|ALT_INV_memory~32772_combout\,
	datad => ALT_INV_write_data(4),
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|mdr[4]~5_combout\);

-- Location: LABCELL_X27_Y2_N39
\memory|mdr[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(4) = ( \memory|mdr\(4) & ( (\memory|mdr[1]~1_combout\) # (\memory|mdr[4]~5_combout\) ) ) # ( !\memory|mdr\(4) & ( (\memory|mdr[4]~5_combout\ & !\memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mdr[4]~5_combout\,
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(4),
	combout => \memory|mdr\(4));

-- Location: M10K_X26_Y2_N0
\memory|memory_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sram:memory|altsyncram:memory_rtl_0|altsyncram_ruk1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \memory|always2~0_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_KEY[0]~_wirecell_combout\,
	clk0 => \clock_divider|div_clks\(20),
	clk1 => \clock_divider|ALT_INV_div_clks\(20),
	ena0 => \memory|always2~0_combout\,
	portadatain => \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

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

-- Location: FF_X28_Y2_N8
\write_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(7));

-- Location: FF_X28_Y2_N52
\memory|memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[7]~8_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~55_q\);

-- Location: FF_X25_Y2_N16
\memory|memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[7]~8_combout\,
	sload => VCC,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~23_q\);

-- Location: FF_X25_Y2_N35
\memory|memory~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[7]~8_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~7_q\);

-- Location: FF_X29_Y2_N26
\memory|memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[7]~8_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~39_q\);

-- Location: LABCELL_X29_Y2_N24
\memory|memory~32775\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32775_combout\ = ( \memory|memory~39_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & ((\memory|memory~23_q\))) # (\memory|mar\(1) & (\memory|memory~55_q\)) ) ) ) # ( !\memory|memory~39_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- ((\memory|memory~23_q\))) # (\memory|mar\(1) & (\memory|memory~55_q\)) ) ) ) # ( \memory|memory~39_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~7_q\) ) ) ) # ( !\memory|memory~39_q\ & ( !\memory|mar\(0) & ( (\memory|memory~7_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~55_q\,
	datab => \memory|ALT_INV_memory~23_q\,
	datac => \memory|ALT_INV_memory~7_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~39_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32775_combout\);

-- Location: MLABCELL_X28_Y2_N6
\memory|mdr[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[7]~8_combout\ = ( \memory|memory~32775_combout\ & ( ((write_data(7)) # (\KEY[1]~input_o\)) # (\clock_divider|div_clks\(20)) ) ) # ( !\memory|memory~32775_combout\ & ( (!\clock_divider|div_clks\(20) & (!\KEY[1]~input_o\ & write_data(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_div_clks\(20),
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => ALT_INV_write_data(7),
	dataf => \memory|ALT_INV_memory~32775_combout\,
	combout => \memory|mdr[7]~8_combout\);

-- Location: MLABCELL_X28_Y2_N57
\memory|mdr[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(7) = ( \memory|mdr\(7) & ( (\memory|mdr[7]~8_combout\) # (\memory|mdr[1]~1_combout\) ) ) # ( !\memory|mdr\(7) & ( (!\memory|mdr[1]~1_combout\ & \memory|mdr[7]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	datad => \memory|ALT_INV_mdr[7]~8_combout\,
	dataf => \memory|ALT_INV_mdr\(7),
	combout => \memory|mdr\(7));

-- Location: MLABCELL_X28_Y2_N51
\memory|sram_data_bus[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[7]~8_combout\ = ( \memory|mdr\(7) & ( (!\KEY[1]~input_o\) # ((\memory|memory_rtl_0|auto_generated|ram_block1a7\) # (\KEY[0]~input_o\)) ) ) # ( !\memory|mdr\(7) & ( (\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & 
-- \memory|memory_rtl_0|auto_generated|ram_block1a7\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \memory|ALT_INV_mdr\(7),
	combout => \memory|sram_data_bus[7]~8_combout\);

-- Location: FF_X28_Y2_N13
\memory|memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[6]~7_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~54_q\);

-- Location: MLABCELL_X25_Y2_N30
\memory|memory~6feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~6feeder_combout\ = ( \memory|sram_data_bus[6]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[6]~7_combout\,
	combout => \memory|memory~6feeder_combout\);

-- Location: FF_X25_Y2_N32
\memory|memory~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|memory~6feeder_combout\,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~6_q\);

-- Location: FF_X29_Y2_N20
\memory|memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[6]~7_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~38_q\);

-- Location: MLABCELL_X25_Y2_N12
\memory|memory~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~22feeder_combout\ = ( \memory|sram_data_bus[6]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[6]~7_combout\,
	combout => \memory|memory~22feeder_combout\);

-- Location: FF_X25_Y2_N13
\memory|memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|memory~22feeder_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~22_q\);

-- Location: LABCELL_X29_Y2_N18
\memory|memory~32774\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32774_combout\ = ( \memory|memory~38_q\ & ( \memory|memory~22_q\ & ( (!\memory|mar\(0) & (((\memory|mar\(1)) # (\memory|memory~6_q\)))) # (\memory|mar\(0) & (((!\memory|mar\(1))) # (\memory|memory~54_q\))) ) ) ) # ( !\memory|memory~38_q\ & 
-- ( \memory|memory~22_q\ & ( (!\memory|mar\(0) & (((\memory|memory~6_q\ & !\memory|mar\(1))))) # (\memory|mar\(0) & (((!\memory|mar\(1))) # (\memory|memory~54_q\))) ) ) ) # ( \memory|memory~38_q\ & ( !\memory|memory~22_q\ & ( (!\memory|mar\(0) & 
-- (((\memory|mar\(1)) # (\memory|memory~6_q\)))) # (\memory|mar\(0) & (\memory|memory~54_q\ & ((\memory|mar\(1))))) ) ) ) # ( !\memory|memory~38_q\ & ( !\memory|memory~22_q\ & ( (!\memory|mar\(0) & (((\memory|memory~6_q\ & !\memory|mar\(1))))) # 
-- (\memory|mar\(0) & (\memory|memory~54_q\ & ((\memory|mar\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mar\(0),
	datab => \memory|ALT_INV_memory~54_q\,
	datac => \memory|ALT_INV_memory~6_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~38_q\,
	dataf => \memory|ALT_INV_memory~22_q\,
	combout => \memory|memory~32774_combout\);

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

-- Location: FF_X27_Y2_N23
\write_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(6));

-- Location: LABCELL_X27_Y2_N21
\memory|mdr[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[6]~7_combout\ = ( \KEY[1]~input_o\ & ( \memory|memory~32774_combout\ ) ) # ( !\KEY[1]~input_o\ & ( (!\clock_divider|div_clks\(20) & ((write_data(6)))) # (\clock_divider|div_clks\(20) & (\memory|memory~32774_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_div_clks\(20),
	datac => \memory|ALT_INV_memory~32774_combout\,
	datad => ALT_INV_write_data(6),
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|mdr[6]~7_combout\);

-- Location: MLABCELL_X28_Y2_N9
\memory|mdr[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(6) = ( \memory|mdr\(6) & ( (\memory|mdr[6]~7_combout\) # (\memory|mdr[1]~1_combout\) ) ) # ( !\memory|mdr\(6) & ( (!\memory|mdr[1]~1_combout\ & \memory|mdr[6]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	datad => \memory|ALT_INV_mdr[6]~7_combout\,
	dataf => \memory|ALT_INV_mdr\(6),
	combout => \memory|mdr\(6));

-- Location: MLABCELL_X28_Y2_N12
\memory|sram_data_bus[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[6]~7_combout\ = ( \memory|mdr\(6) & ( (!\KEY[1]~input_o\) # ((\memory|memory_rtl_0|auto_generated|ram_block1a6\) # (\KEY[0]~input_o\)) ) ) # ( !\memory|mdr\(6) & ( (\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & 
-- \memory|memory_rtl_0|auto_generated|ram_block1a6\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	dataf => \memory|ALT_INV_mdr\(6),
	combout => \memory|sram_data_bus[6]~7_combout\);

-- Location: FF_X28_Y2_N49
\memory|memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[5]~6_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~53_q\);

-- Location: MLABCELL_X25_Y2_N15
\memory|memory~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~21feeder_combout\ = ( \memory|sram_data_bus[5]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[5]~6_combout\,
	combout => \memory|memory~21feeder_combout\);

-- Location: FF_X25_Y2_N17
\memory|memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|memory~21feeder_combout\,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~21_q\);

-- Location: FF_X25_Y2_N56
\memory|memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[5]~6_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~37_q\);

-- Location: MLABCELL_X25_Y2_N9
\memory|memory~5feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~5feeder_combout\ = ( \memory|sram_data_bus[5]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memory|ALT_INV_sram_data_bus[5]~6_combout\,
	combout => \memory|memory~5feeder_combout\);

-- Location: FF_X25_Y2_N11
\memory|memory~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|memory~5feeder_combout\,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~5_q\);

-- Location: MLABCELL_X25_Y2_N54
\memory|memory~32773\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32773_combout\ = ( \memory|memory~37_q\ & ( \memory|memory~5_q\ & ( (!\memory|mar\(0)) # ((!\memory|mar\(1) & ((\memory|memory~21_q\))) # (\memory|mar\(1) & (\memory|memory~53_q\))) ) ) ) # ( !\memory|memory~37_q\ & ( \memory|memory~5_q\ & 
-- ( (!\memory|mar\(0) & (!\memory|mar\(1))) # (\memory|mar\(0) & ((!\memory|mar\(1) & ((\memory|memory~21_q\))) # (\memory|mar\(1) & (\memory|memory~53_q\)))) ) ) ) # ( \memory|memory~37_q\ & ( !\memory|memory~5_q\ & ( (!\memory|mar\(0) & (\memory|mar\(1))) 
-- # (\memory|mar\(0) & ((!\memory|mar\(1) & ((\memory|memory~21_q\))) # (\memory|mar\(1) & (\memory|memory~53_q\)))) ) ) ) # ( !\memory|memory~37_q\ & ( !\memory|memory~5_q\ & ( (\memory|mar\(0) & ((!\memory|mar\(1) & ((\memory|memory~21_q\))) # 
-- (\memory|mar\(1) & (\memory|memory~53_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mar\(0),
	datab => \memory|ALT_INV_mar\(1),
	datac => \memory|ALT_INV_memory~53_q\,
	datad => \memory|ALT_INV_memory~21_q\,
	datae => \memory|ALT_INV_memory~37_q\,
	dataf => \memory|ALT_INV_memory~5_q\,
	combout => \memory|memory~32773_combout\);

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

-- Location: FF_X28_Y2_N35
\write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(5));

-- Location: MLABCELL_X28_Y2_N33
\memory|mdr[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[5]~6_combout\ = ( \clock_divider|div_clks\(20) & ( \memory|memory~32773_combout\ ) ) # ( !\clock_divider|div_clks\(20) & ( (!\KEY[1]~input_o\ & ((write_data(5)))) # (\KEY[1]~input_o\ & (\memory|memory~32773_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \memory|ALT_INV_memory~32773_combout\,
	datad => ALT_INV_write_data(5),
	dataf => \clock_divider|ALT_INV_div_clks\(20),
	combout => \memory|mdr[5]~6_combout\);

-- Location: MLABCELL_X28_Y2_N30
\memory|mdr[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(5) = ( \memory|mdr\(5) & ( (\memory|mdr[5]~6_combout\) # (\memory|mdr[1]~1_combout\) ) ) # ( !\memory|mdr\(5) & ( (!\memory|mdr[1]~1_combout\ & \memory|mdr[5]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_mdr[1]~1_combout\,
	datac => \memory|ALT_INV_mdr[5]~6_combout\,
	dataf => \memory|ALT_INV_mdr\(5),
	combout => \memory|mdr\(5));

-- Location: MLABCELL_X28_Y2_N48
\memory|sram_data_bus[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[5]~6_combout\ = ( \memory|mdr\(5) & ( (!\KEY[1]~input_o\) # ((\memory|memory_rtl_0|auto_generated|ram_block1a5\) # (\KEY[0]~input_o\)) ) ) # ( !\memory|mdr\(5) & ( (\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & 
-- \memory|memory_rtl_0|auto_generated|ram_block1a5\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \memory|ALT_INV_mdr\(5),
	combout => \memory|sram_data_bus[5]~6_combout\);

-- Location: LABCELL_X27_Y2_N36
\memory|sram_data_bus[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[4]~5_combout\ = ( \KEY[1]~input_o\ & ( (!\KEY[0]~input_o\ & ((\memory|memory_rtl_0|auto_generated|ram_block1a4\))) # (\KEY[0]~input_o\ & (\memory|mdr\(4))) ) ) # ( !\KEY[1]~input_o\ & ( \memory|mdr\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_mdr\(4),
	datac => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|sram_data_bus[4]~5_combout\);

-- Location: FF_X27_Y2_N7
\memory|memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[3]~4_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~51_q\);

-- Location: FF_X25_Y2_N47
\memory|memory~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[3]~4_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~3_q\);

-- Location: FF_X25_Y2_N23
\memory|memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[3]~4_combout\,
	sload => VCC,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~19_q\);

-- Location: FF_X25_Y2_N2
\memory|memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[3]~4_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~35_q\);

-- Location: MLABCELL_X25_Y2_N0
\memory|memory~32771\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32771_combout\ = ( \memory|memory~35_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & ((\memory|memory~19_q\))) # (\memory|mar\(1) & (\memory|memory~51_q\)) ) ) ) # ( !\memory|memory~35_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- ((\memory|memory~19_q\))) # (\memory|mar\(1) & (\memory|memory~51_q\)) ) ) ) # ( \memory|memory~35_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~3_q\) ) ) ) # ( !\memory|memory~35_q\ & ( !\memory|mar\(0) & ( (\memory|memory~3_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~51_q\,
	datab => \memory|ALT_INV_memory~3_q\,
	datac => \memory|ALT_INV_memory~19_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~35_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32771_combout\);

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

-- Location: FF_X27_Y2_N2
\write_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(3));

-- Location: LABCELL_X27_Y2_N0
\memory|mdr[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[3]~4_combout\ = ( \KEY[1]~input_o\ & ( \memory|memory~32771_combout\ ) ) # ( !\KEY[1]~input_o\ & ( (!\clock_divider|div_clks\(20) & ((write_data(3)))) # (\clock_divider|div_clks\(20) & (\memory|memory~32771_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_div_clks\(20),
	datac => \memory|ALT_INV_memory~32771_combout\,
	datad => ALT_INV_write_data(3),
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|mdr[3]~4_combout\);

-- Location: LABCELL_X27_Y2_N33
\memory|mdr[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(3) = ( \memory|mdr\(3) & ( (\memory|mdr[1]~1_combout\) # (\memory|mdr[3]~4_combout\) ) ) # ( !\memory|mdr\(3) & ( (\memory|mdr[3]~4_combout\ & !\memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mdr[3]~4_combout\,
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(3),
	combout => \memory|mdr\(3));

-- Location: LABCELL_X27_Y2_N6
\memory|sram_data_bus[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[3]~4_combout\ = ( \memory|mdr\(3) & ( ((!\KEY[1]~input_o\) # (\memory|memory_rtl_0|auto_generated|ram_block1a3\)) # (\KEY[0]~input_o\) ) ) # ( !\memory|mdr\(3) & ( (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & 
-- \memory|memory_rtl_0|auto_generated|ram_block1a3\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \memory|ALT_INV_mdr\(3),
	combout => \memory|sram_data_bus[3]~4_combout\);

-- Location: FF_X27_Y2_N58
\memory|memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[2]~3_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~50_q\);

-- Location: FF_X25_Y2_N44
\memory|memory~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[2]~3_combout\,
	sload => VCC,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~2_q\);

-- Location: FF_X25_Y2_N20
\memory|memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[2]~3_combout\,
	sload => VCC,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~18_q\);

-- Location: FF_X25_Y2_N26
\memory|memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[2]~3_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~34_q\);

-- Location: MLABCELL_X25_Y2_N24
\memory|memory~32770\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32770_combout\ = ( \memory|memory~34_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & ((\memory|memory~18_q\))) # (\memory|mar\(1) & (\memory|memory~50_q\)) ) ) ) # ( !\memory|memory~34_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- ((\memory|memory~18_q\))) # (\memory|mar\(1) & (\memory|memory~50_q\)) ) ) ) # ( \memory|memory~34_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~2_q\) ) ) ) # ( !\memory|memory~34_q\ & ( !\memory|mar\(0) & ( (\memory|memory~2_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~50_q\,
	datab => \memory|ALT_INV_memory~2_q\,
	datac => \memory|ALT_INV_memory~18_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~34_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32770_combout\);

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

-- Location: FF_X27_Y2_N32
\write_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(2));

-- Location: LABCELL_X27_Y2_N30
\memory|mdr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[2]~3_combout\ = ( \KEY[1]~input_o\ & ( \memory|memory~32770_combout\ ) ) # ( !\KEY[1]~input_o\ & ( (!\clock_divider|div_clks\(20) & ((write_data(2)))) # (\clock_divider|div_clks\(20) & (\memory|memory~32770_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_div_clks\(20),
	datac => \memory|ALT_INV_memory~32770_combout\,
	datad => ALT_INV_write_data(2),
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|mdr[2]~3_combout\);

-- Location: LABCELL_X27_Y2_N15
\memory|mdr[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(2) = ( \memory|mdr\(2) & ( (\memory|mdr[1]~1_combout\) # (\memory|mdr[2]~3_combout\) ) ) # ( !\memory|mdr\(2) & ( (\memory|mdr[2]~3_combout\ & !\memory|mdr[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mdr[2]~3_combout\,
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	dataf => \memory|ALT_INV_mdr\(2),
	combout => \memory|mdr\(2));

-- Location: LABCELL_X27_Y2_N57
\memory|sram_data_bus[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[2]~3_combout\ = ( \memory|mdr\(2) & ( ((!\KEY[1]~input_o\) # (\memory|memory_rtl_0|auto_generated|ram_block1a2\)) # (\KEY[0]~input_o\) ) ) # ( !\memory|mdr\(2) & ( (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & 
-- \memory|memory_rtl_0|auto_generated|ram_block1a2\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \memory|ALT_INV_mdr\(2),
	combout => \memory|sram_data_bus[2]~3_combout\);

-- Location: LABCELL_X27_Y2_N54
\memory|sram_data_bus[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[1]~2_combout\ = ( \memory|memory_rtl_0|auto_generated|ram_block1a1\ & ( ((!\KEY[0]~input_o\ & \KEY[1]~input_o\)) # (\memory|mdr\(1)) ) ) # ( !\memory|memory_rtl_0|auto_generated|ram_block1a1\ & ( (\memory|mdr\(1) & 
-- ((!\KEY[1]~input_o\) # (\KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \memory|ALT_INV_mdr\(1),
	dataf => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \memory|sram_data_bus[1]~2_combout\);

-- Location: LABCELL_X27_Y2_N48
\memory|sram_data_bus[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus[0]~1_combout\ = ( \KEY[1]~input_o\ & ( (!\KEY[0]~input_o\ & ((\memory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (\KEY[0]~input_o\ & (\memory|mdr\(0))) ) ) # ( !\KEY[1]~input_o\ & ( \memory|mdr\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \memory|ALT_INV_mdr\(0),
	datac => \memory|memory_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|sram_data_bus[0]~1_combout\);

-- Location: FF_X25_Y2_N40
\memory|memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[0]~1_combout\,
	sload => VCC,
	ena => \memory|memory~32777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~16_q\);

-- Location: FF_X27_Y2_N49
\memory|memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|sram_data_bus[0]~1_combout\,
	ena => \memory|memory~32779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~48_q\);

-- Location: MLABCELL_X25_Y2_N33
\memory|memory~0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~0feeder_combout\ = \memory|sram_data_bus[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_sram_data_bus[0]~1_combout\,
	combout => \memory|memory~0feeder_combout\);

-- Location: FF_X25_Y2_N34
\memory|memory~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \memory|memory~0feeder_combout\,
	ena => \memory|memory~32776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~0_q\);

-- Location: FF_X29_Y2_N32
\memory|memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \memory|sram_data_bus[0]~1_combout\,
	sload => VCC,
	ena => \memory|memory~32778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|memory~32_q\);

-- Location: LABCELL_X29_Y2_N30
\memory|memory~32768\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|memory~32768_combout\ = ( \memory|memory~32_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & (\memory|memory~16_q\)) # (\memory|mar\(1) & ((\memory|memory~48_q\))) ) ) ) # ( !\memory|memory~32_q\ & ( \memory|mar\(0) & ( (!\memory|mar\(1) & 
-- (\memory|memory~16_q\)) # (\memory|mar\(1) & ((\memory|memory~48_q\))) ) ) ) # ( \memory|memory~32_q\ & ( !\memory|mar\(0) & ( (\memory|mar\(1)) # (\memory|memory~0_q\) ) ) ) # ( !\memory|memory~32_q\ & ( !\memory|mar\(0) & ( (\memory|memory~0_q\ & 
-- !\memory|mar\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_memory~16_q\,
	datab => \memory|ALT_INV_memory~48_q\,
	datac => \memory|ALT_INV_memory~0_q\,
	datad => \memory|ALT_INV_mar\(1),
	datae => \memory|ALT_INV_memory~32_q\,
	dataf => \memory|ALT_INV_mar\(0),
	combout => \memory|memory~32768_combout\);

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

-- Location: FF_X27_Y2_N26
\write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \memory|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_data(0));

-- Location: LABCELL_X27_Y2_N42
\memory|mdr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr[0]~0_combout\ = ( \KEY[1]~input_o\ & ( \memory|memory~32768_combout\ ) ) # ( !\KEY[1]~input_o\ & ( (!\clock_divider|div_clks\(20) & ((write_data(0)))) # (\clock_divider|div_clks\(20) & (\memory|memory~32768_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory|ALT_INV_memory~32768_combout\,
	datac => ALT_INV_write_data(0),
	datad => \clock_divider|ALT_INV_div_clks\(20),
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \memory|mdr[0]~0_combout\);

-- Location: LABCELL_X27_Y2_N51
\memory|mdr[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|mdr\(0) = ( \memory|mdr\(0) & ( (\memory|mdr[0]~0_combout\) # (\memory|mdr[1]~1_combout\) ) ) # ( !\memory|mdr\(0) & ( (!\memory|mdr[1]~1_combout\ & \memory|mdr[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memory|ALT_INV_mdr[1]~1_combout\,
	datad => \memory|ALT_INV_mdr[0]~0_combout\,
	dataf => \memory|ALT_INV_mdr\(0),
	combout => \memory|mdr\(0));

-- Location: MLABCELL_X28_Y2_N0
\read_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[0]~0_combout\ = ( \memory|mdr\(0) ) # ( !\memory|mdr\(0) & ( (!\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \memory|ALT_INV_mdr\(0),
	combout => \read_data[0]~0_combout\);

-- Location: MLABCELL_X28_Y2_N45
\memory|sram_data_bus~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memory|sram_data_bus~0_combout\ = (\KEY[1]~input_o\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	combout => \memory|sram_data_bus~0_combout\);

-- Location: FF_X28_Y2_N1
\led_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[0]~0_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(0));

-- Location: MLABCELL_X28_Y2_N3
\read_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[1]~1_combout\ = ( \memory|mdr\(1) ) # ( !\memory|mdr\(1) & ( (!\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \memory|ALT_INV_mdr\(1),
	combout => \read_data[1]~1_combout\);

-- Location: FF_X28_Y2_N4
\led_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[1]~1_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(1));

-- Location: MLABCELL_X28_Y2_N36
\read_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[2]~2_combout\ = ( \memory|mdr\(2) ) # ( !\memory|mdr\(2) & ( (!\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \memory|ALT_INV_mdr\(2),
	combout => \read_data[2]~2_combout\);

-- Location: FF_X28_Y2_N37
\led_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[2]~2_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(2));

-- Location: MLABCELL_X28_Y2_N42
\read_data[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[3]~3_combout\ = (!\KEY[1]~input_o\) # ((\memory|mdr\(3)) # (\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datad => \memory|ALT_INV_mdr\(3),
	combout => \read_data[3]~3_combout\);

-- Location: FF_X28_Y2_N43
\led_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[3]~3_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(3));

-- Location: MLABCELL_X28_Y2_N39
\read_data[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[4]~4_combout\ = ( \memory|mdr\(4) ) # ( !\memory|mdr\(4) & ( (!\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \memory|ALT_INV_mdr\(4),
	combout => \read_data[4]~4_combout\);

-- Location: FF_X28_Y2_N40
\led_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[4]~4_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(4));

-- Location: MLABCELL_X28_Y2_N18
\read_data[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[5]~5_combout\ = ( \memory|mdr\(5) ) # ( !\memory|mdr\(5) & ( (!\KEY[1]~input_o\) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \memory|ALT_INV_mdr\(5),
	combout => \read_data[5]~5_combout\);

-- Location: FF_X28_Y2_N19
\led_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[5]~5_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(5));

-- Location: MLABCELL_X28_Y2_N21
\read_data[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[6]~6_combout\ = (!\KEY[1]~input_o\) # ((\memory|mdr\(6)) # (\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \memory|ALT_INV_mdr\(6),
	combout => \read_data[6]~6_combout\);

-- Location: FF_X28_Y2_N22
\led_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[6]~6_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(6));

-- Location: MLABCELL_X28_Y2_N54
\read_data[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[7]~7_combout\ = ((!\KEY[1]~input_o\) # (\KEY[0]~input_o\)) # (\memory|mdr\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory|ALT_INV_mdr\(7),
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	combout => \read_data[7]~7_combout\);

-- Location: FF_X28_Y2_N55
\led_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|div_clks\(20),
	d => \read_data[7]~7_combout\,
	ena => \memory|sram_data_bus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_data(7));
END structure;


