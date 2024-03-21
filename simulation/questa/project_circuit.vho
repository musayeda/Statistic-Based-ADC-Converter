-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "12/05/2023 16:09:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	project_circuit IS
    PORT (
	CLK9 : OUT std_logic;
	C0 : OUT std_logic;
	C0B : OUT std_logic;
	C1 : OUT std_logic;
	C1B : OUT std_logic;
	CLOCK_50 : IN std_logic;
	set : IN std_logic;
	C2B : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C3B : OUT std_logic;
	CLK8 : OUT std_logic;
	CLK7 : OUT std_logic;
	CLK6 : OUT std_logic;
	CLK2 : OUT std_logic;
	CLK3 : OUT std_logic;
	CLK4 : OUT std_logic;
	CLK5 : OUT std_logic;
	CLKCOMP : OUT std_logic;
	COMPOUTP : IN std_logic;
	COMPOUTN : IN std_logic;
	CLKS : OUT std_logic;
	B : OUT std_logic;
	CLK1 : OUT std_logic;
	A : OUT std_logic;
	C : OUT std_logic;
	CLK10 : OUT std_logic;
	CAP1P : INOUT std_logic;
	CAP1N : INOUT std_logic;
	CAP2P : INOUT std_logic;
	CAP2N : INOUT std_logic;
	CAP3P : INOUT std_logic;
	CAP3N : INOUT std_logic;
	CAP4P : INOUT std_logic;
	CAP4N : INOUT std_logic;
	CAP5P : INOUT std_logic;
	CAP5N : INOUT std_logic;
	CAP6P : INOUT std_logic;
	CAP6N : INOUT std_logic;
	CAP7P : INOUT std_logic;
	CAP7N : INOUT std_logic;
	CAP8P : INOUT std_logic;
	CAP8N : INOUT std_logic;
	CAP9P : INOUT std_logic;
	CAP9N : INOUT std_logic;
	D0 : INOUT std_logic;
	GPIO : OUT std_logic_vector(1 DOWNTO 0)
	);
END project_circuit;

-- Design Ports Information
-- CLK9	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0B	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1B	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2B	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3B	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK8	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK7	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK6	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK2	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK3	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK4	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK5	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKCOMP	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKS	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK1	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK10	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CAP1P	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP1N	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP2P	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP2N	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP3P	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP3N	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP4P	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP4N	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP5P	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP5N	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP6P	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP6N	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP7P	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP7N	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP8P	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP8N	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP9P	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAP9N	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COMPOUTP	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COMPOUTN	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF project_circuit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK9 : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_C0B : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_C1B : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_C2B : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_C3B : std_logic;
SIGNAL ww_CLK8 : std_logic;
SIGNAL ww_CLK7 : std_logic;
SIGNAL ww_CLK6 : std_logic;
SIGNAL ww_CLK2 : std_logic;
SIGNAL ww_CLK3 : std_logic;
SIGNAL ww_CLK4 : std_logic;
SIGNAL ww_CLK5 : std_logic;
SIGNAL ww_CLKCOMP : std_logic;
SIGNAL ww_COMPOUTP : std_logic;
SIGNAL ww_COMPOUTN : std_logic;
SIGNAL ww_CLKS : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_CLK10 : std_logic;
SIGNAL ww_GPIO : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst35~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst41~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst38~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst44~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst59~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst56~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst47~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst53~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP1P~input_o\ : std_logic;
SIGNAL \CAP1N~input_o\ : std_logic;
SIGNAL \CAP2P~input_o\ : std_logic;
SIGNAL \CAP2N~input_o\ : std_logic;
SIGNAL \CAP3P~input_o\ : std_logic;
SIGNAL \CAP3N~input_o\ : std_logic;
SIGNAL \CAP4P~input_o\ : std_logic;
SIGNAL \CAP4N~input_o\ : std_logic;
SIGNAL \CAP5P~input_o\ : std_logic;
SIGNAL \CAP5N~input_o\ : std_logic;
SIGNAL \CAP6P~input_o\ : std_logic;
SIGNAL \CAP6N~input_o\ : std_logic;
SIGNAL \CAP7P~input_o\ : std_logic;
SIGNAL \CAP7N~input_o\ : std_logic;
SIGNAL \CAP8P~input_o\ : std_logic;
SIGNAL \CAP8N~input_o\ : std_logic;
SIGNAL \CAP9P~input_o\ : std_logic;
SIGNAL \CAP9N~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \CAP1P~output_o\ : std_logic;
SIGNAL \CAP1N~output_o\ : std_logic;
SIGNAL \CAP2P~output_o\ : std_logic;
SIGNAL \CAP2N~output_o\ : std_logic;
SIGNAL \CAP3P~output_o\ : std_logic;
SIGNAL \CAP3N~output_o\ : std_logic;
SIGNAL \CAP4P~output_o\ : std_logic;
SIGNAL \CAP4N~output_o\ : std_logic;
SIGNAL \CAP5P~output_o\ : std_logic;
SIGNAL \CAP5N~output_o\ : std_logic;
SIGNAL \CAP6P~output_o\ : std_logic;
SIGNAL \CAP6N~output_o\ : std_logic;
SIGNAL \CAP7P~output_o\ : std_logic;
SIGNAL \CAP7N~output_o\ : std_logic;
SIGNAL \CAP8P~output_o\ : std_logic;
SIGNAL \CAP8N~output_o\ : std_logic;
SIGNAL \CAP9P~output_o\ : std_logic;
SIGNAL \CAP9N~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \CLK9~output_o\ : std_logic;
SIGNAL \C0~output_o\ : std_logic;
SIGNAL \C0B~output_o\ : std_logic;
SIGNAL \C1~output_o\ : std_logic;
SIGNAL \C1B~output_o\ : std_logic;
SIGNAL \C2B~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \C3B~output_o\ : std_logic;
SIGNAL \CLK8~output_o\ : std_logic;
SIGNAL \CLK7~output_o\ : std_logic;
SIGNAL \CLK6~output_o\ : std_logic;
SIGNAL \CLK2~output_o\ : std_logic;
SIGNAL \CLK3~output_o\ : std_logic;
SIGNAL \CLK4~output_o\ : std_logic;
SIGNAL \CLK5~output_o\ : std_logic;
SIGNAL \CLKCOMP~output_o\ : std_logic;
SIGNAL \CLKS~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \CLK1~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \CLK10~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMPOUTN~input_o\ : std_logic;
SIGNAL \COMPOUTP~input_o\ : std_logic;
SIGNAL \inst63~combout\ : std_logic;
SIGNAL \inst154~q\ : std_logic;
SIGNAL \inst156~feeder_combout\ : std_logic;
SIGNAL \inst156~q\ : std_logic;
SIGNAL \D1~0_combout\ : std_logic;
SIGNAL \D1~feeder_combout\ : std_logic;
SIGNAL \D2~0_combout\ : std_logic;
SIGNAL \D2~feeder_combout\ : std_logic;
SIGNAL \D2~q\ : std_logic;
SIGNAL \inst119~combout\ : std_logic;
SIGNAL \D5~0_combout\ : std_logic;
SIGNAL \D5~q\ : std_logic;
SIGNAL \D6~0_combout\ : std_logic;
SIGNAL \D6~q\ : std_logic;
SIGNAL \inst126~0_combout\ : std_logic;
SIGNAL \inst126~combout\ : std_logic;
SIGNAL \inst125~combout\ : std_logic;
SIGNAL \D1~q\ : std_logic;
SIGNAL \D3~0_combout\ : std_logic;
SIGNAL \D3~feeder_combout\ : std_logic;
SIGNAL \D3~q\ : std_logic;
SIGNAL \D4~0_combout\ : std_logic;
SIGNAL \D4~feeder_combout\ : std_logic;
SIGNAL \D4~q\ : std_logic;
SIGNAL \inst127~0_combout\ : std_logic;
SIGNAL \inst127~1_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \inst128~combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst1~2_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst~11_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst~9_combout\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst35~clkctrl_outclk\ : std_logic;
SIGNAL \inst36~0_combout\ : std_logic;
SIGNAL \inst36~q\ : std_logic;
SIGNAL \inst37~0_combout\ : std_logic;
SIGNAL \inst37~q\ : std_logic;
SIGNAL \inst~4_combout\ : std_logic;
SIGNAL \inst38~combout\ : std_logic;
SIGNAL \inst38~clkctrl_outclk\ : std_logic;
SIGNAL \inst39~0_combout\ : std_logic;
SIGNAL \inst39~q\ : std_logic;
SIGNAL \inst40~0_combout\ : std_logic;
SIGNAL \inst40~q\ : std_logic;
SIGNAL \inst~5_combout\ : std_logic;
SIGNAL \inst41~combout\ : std_logic;
SIGNAL \inst41~clkctrl_outclk\ : std_logic;
SIGNAL \inst42~0_combout\ : std_logic;
SIGNAL \inst42~q\ : std_logic;
SIGNAL \inst43~0_combout\ : std_logic;
SIGNAL \inst43~q\ : std_logic;
SIGNAL \inst~6_combout\ : std_logic;
SIGNAL \inst44~combout\ : std_logic;
SIGNAL \inst44~clkctrl_outclk\ : std_logic;
SIGNAL \inst45~0_combout\ : std_logic;
SIGNAL \inst45~q\ : std_logic;
SIGNAL \inst46~0_combout\ : std_logic;
SIGNAL \inst46~q\ : std_logic;
SIGNAL \inst~7_combout\ : std_logic;
SIGNAL \inst47~combout\ : std_logic;
SIGNAL \inst47~clkctrl_outclk\ : std_logic;
SIGNAL \inst48~0_combout\ : std_logic;
SIGNAL \inst48~feeder_combout\ : std_logic;
SIGNAL \inst48~q\ : std_logic;
SIGNAL \inst49~0_combout\ : std_logic;
SIGNAL \inst49~q\ : std_logic;
SIGNAL \inst~3_combout\ : std_logic;
SIGNAL \inst50~combout\ : std_logic;
SIGNAL \inst50~clkctrl_outclk\ : std_logic;
SIGNAL \inst51~0_combout\ : std_logic;
SIGNAL \inst51~q\ : std_logic;
SIGNAL \inst52~0_combout\ : std_logic;
SIGNAL \inst52~q\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;
SIGNAL \inst53~combout\ : std_logic;
SIGNAL \inst53~clkctrl_outclk\ : std_logic;
SIGNAL \inst54~0_combout\ : std_logic;
SIGNAL \inst54~q\ : std_logic;
SIGNAL \inst55~0_combout\ : std_logic;
SIGNAL \inst55~q\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst56~combout\ : std_logic;
SIGNAL \inst56~clkctrl_outclk\ : std_logic;
SIGNAL \inst57~0_combout\ : std_logic;
SIGNAL \inst57~q\ : std_logic;
SIGNAL \inst58~0_combout\ : std_logic;
SIGNAL \inst58~q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst59~combout\ : std_logic;
SIGNAL \inst59~clkctrl_outclk\ : std_logic;
SIGNAL \inst60~0_combout\ : std_logic;
SIGNAL \inst60~q\ : std_logic;
SIGNAL \inst61~0_combout\ : std_logic;
SIGNAL \inst61~q\ : std_logic;
SIGNAL \inst~10_combout\ : std_logic;
SIGNAL \inst66~combout\ : std_logic;
SIGNAL \inst65~0_combout\ : std_logic;
SIGNAL \inst65~q\ : std_logic;
SIGNAL \inst~8_combout\ : std_logic;
SIGNAL \inst72~combout\ : std_logic;
SIGNAL \inst73~0_combout\ : std_logic;
SIGNAL \inst73~q\ : std_logic;
SIGNAL \ALT_INV_inst125~combout\ : std_logic;
SIGNAL \ALT_INV_inst65~q\ : std_logic;
SIGNAL \ALT_INV_inst61~q\ : std_logic;
SIGNAL \ALT_INV_inst60~q\ : std_logic;
SIGNAL \ALT_INV_inst58~q\ : std_logic;
SIGNAL \ALT_INV_inst57~q\ : std_logic;
SIGNAL \ALT_INV_inst55~q\ : std_logic;
SIGNAL \ALT_INV_inst54~q\ : std_logic;
SIGNAL \ALT_INV_inst52~q\ : std_logic;
SIGNAL \ALT_INV_inst51~q\ : std_logic;
SIGNAL \ALT_INV_inst49~q\ : std_logic;
SIGNAL \ALT_INV_inst48~q\ : std_logic;
SIGNAL \ALT_INV_inst46~q\ : std_logic;
SIGNAL \ALT_INV_inst45~q\ : std_logic;
SIGNAL \ALT_INV_inst43~q\ : std_logic;
SIGNAL \ALT_INV_inst42~q\ : std_logic;
SIGNAL \ALT_INV_inst40~q\ : std_logic;
SIGNAL \ALT_INV_inst39~q\ : std_logic;
SIGNAL \ALT_INV_inst37~q\ : std_logic;
SIGNAL \ALT_INV_inst36~q\ : std_logic;
SIGNAL \ALT_INV_inst~11_combout\ : std_logic;
SIGNAL \ALT_INV_inst156~q\ : std_logic;
SIGNAL \ALT_INV_inst9~q\ : std_logic;
SIGNAL \ALT_INV_inst10~q\ : std_logic;
SIGNAL \ALT_INV_inst11~q\ : std_logic;
SIGNAL \ALT_INV_inst12~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CLK9 <= ww_CLK9;
C0 <= ww_C0;
C0B <= ww_C0B;
C1 <= ww_C1;
C1B <= ww_C1B;
ww_CLOCK_50 <= CLOCK_50;
ww_set <= set;
C2B <= ww_C2B;
C2 <= ww_C2;
C3 <= ww_C3;
C3B <= ww_C3B;
CLK8 <= ww_CLK8;
CLK7 <= ww_CLK7;
CLK6 <= ww_CLK6;
CLK2 <= ww_CLK2;
CLK3 <= ww_CLK3;
CLK4 <= ww_CLK4;
CLK5 <= ww_CLK5;
CLKCOMP <= ww_CLKCOMP;
ww_COMPOUTP <= COMPOUTP;
ww_COMPOUTN <= COMPOUTN;
CLKS <= ww_CLKS;
B <= ww_B;
CLK1 <= ww_CLK1;
A <= ww_A;
C <= ww_C;
CLK10 <= ww_CLK10;
GPIO <= ww_GPIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst35~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst35~combout\);

\inst41~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst41~combout\);

\inst38~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst38~combout\);

\inst44~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst44~combout\);

\inst59~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst59~combout\);

\inst50~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst50~combout\);

\inst56~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst56~combout\);

\inst47~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst47~combout\);

\inst53~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst53~combout\);
\ALT_INV_inst125~combout\ <= NOT \inst125~combout\;
\ALT_INV_inst65~q\ <= NOT \inst65~q\;
\ALT_INV_inst61~q\ <= NOT \inst61~q\;
\ALT_INV_inst60~q\ <= NOT \inst60~q\;
\ALT_INV_inst58~q\ <= NOT \inst58~q\;
\ALT_INV_inst57~q\ <= NOT \inst57~q\;
\ALT_INV_inst55~q\ <= NOT \inst55~q\;
\ALT_INV_inst54~q\ <= NOT \inst54~q\;
\ALT_INV_inst52~q\ <= NOT \inst52~q\;
\ALT_INV_inst51~q\ <= NOT \inst51~q\;
\ALT_INV_inst49~q\ <= NOT \inst49~q\;
\ALT_INV_inst48~q\ <= NOT \inst48~q\;
\ALT_INV_inst46~q\ <= NOT \inst46~q\;
\ALT_INV_inst45~q\ <= NOT \inst45~q\;
\ALT_INV_inst43~q\ <= NOT \inst43~q\;
\ALT_INV_inst42~q\ <= NOT \inst42~q\;
\ALT_INV_inst40~q\ <= NOT \inst40~q\;
\ALT_INV_inst39~q\ <= NOT \inst39~q\;
\ALT_INV_inst37~q\ <= NOT \inst37~q\;
\ALT_INV_inst36~q\ <= NOT \inst36~q\;
\ALT_INV_inst~11_combout\ <= NOT \inst~11_combout\;
\ALT_INV_inst156~q\ <= NOT \inst156~q\;
\ALT_INV_inst9~q\ <= NOT \inst9~q\;
\ALT_INV_inst10~q\ <= NOT \inst10~q\;
\ALT_INV_inst11~q\ <= NOT \inst11~q\;
\ALT_INV_inst12~q\ <= NOT \inst12~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y62_N16
\CAP1P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst36~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP1P~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\CAP1N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst37~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP1N~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\CAP2P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst39~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP2P~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\CAP2N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst40~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP2N~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\CAP3P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst42~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP3P~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\CAP3N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst43~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP3N~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\CAP4P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst45~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP4P~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\CAP4N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst46~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP4N~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\CAP5P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst48~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP5P~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\CAP5N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst49~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP5N~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\CAP6P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst51~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP6P~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\CAP6N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst52~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP6N~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\CAP7P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst54~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP7P~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\CAP7N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst55~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP7N~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\CAP8P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst57~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP8P~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\CAP8N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst58~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP8N~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\CAP9P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst60~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP9P~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\CAP9N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst61~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \CAP9N~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\D0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst65~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\CLK9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
	devoe => ww_devoe,
	o => \CLK9~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\C0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \C0~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\C0B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst9~q\,
	devoe => ww_devoe,
	o => \C0B~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\C1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~q\,
	devoe => ww_devoe,
	o => \C1~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\C1B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst10~q\,
	devoe => ww_devoe,
	o => \C1B~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\C2B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst11~q\,
	devoe => ww_devoe,
	o => \C2B~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\C2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\C3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\C3B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~q\,
	devoe => ww_devoe,
	o => \C3B~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\CLK8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~1_combout\,
	devoe => ww_devoe,
	o => \CLK8~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\CLK7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~2_combout\,
	devoe => ww_devoe,
	o => \CLK7~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\CLK6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~3_combout\,
	devoe => ww_devoe,
	o => \CLK6~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\CLK2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~4_combout\,
	devoe => ww_devoe,
	o => \CLK2~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\CLK3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~5_combout\,
	devoe => ww_devoe,
	o => \CLK3~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\CLK4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~6_combout\,
	devoe => ww_devoe,
	o => \CLK4~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\CLK5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~7_combout\,
	devoe => ww_devoe,
	o => \CLK5~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\CLKCOMP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst73~q\,
	devoe => ww_devoe,
	o => \CLKCOMP~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\CLKS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~8_combout\,
	devoe => ww_devoe,
	o => \CLKS~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35~combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\CLK1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~9_combout\,
	devoe => ww_devoe,
	o => \CLK1~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst156~q\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst63~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\CLK10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~10_combout\,
	devoe => ww_devoe,
	o => \CLK10~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_50~input_o\,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~2_combout\,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y73_N1
\COMPOUTN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COMPOUTN,
	o => \COMPOUTN~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\COMPOUTP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COMPOUTP,
	o => \COMPOUTP~input_o\);

-- Location: LCCOMB_X5_Y67_N24
inst63 : cycloneive_lcell_comb
-- Equation(s):
-- \inst63~combout\ = \COMPOUTN~input_o\ $ (\COMPOUTP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMPOUTN~input_o\,
	datad => \COMPOUTP~input_o\,
	combout => \inst63~combout\);

-- Location: FF_X5_Y67_N25
inst154 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst63~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst154~q\);

-- Location: LCCOMB_X4_Y67_N26
\inst156~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst156~feeder_combout\ = \inst154~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst154~q\,
	combout => \inst156~feeder_combout\);

-- Location: FF_X4_Y67_N27
inst156 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst156~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst156~q\);

-- Location: LCCOMB_X2_Y58_N26
\D1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1~0_combout\ = !\D1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D1~q\,
	combout => \D1~0_combout\);

-- Location: LCCOMB_X2_Y58_N28
\D1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \D1~feeder_combout\ = \D1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~0_combout\,
	combout => \D1~feeder_combout\);

-- Location: LCCOMB_X1_Y58_N24
\D2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2~0_combout\ = \D1~q\ $ (\D2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D1~q\,
	datad => \D2~q\,
	combout => \D2~0_combout\);

-- Location: LCCOMB_X1_Y58_N2
\D2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \D2~feeder_combout\ = \D2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2~0_combout\,
	combout => \D2~feeder_combout\);

-- Location: FF_X1_Y58_N3
D2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \D2~feeder_combout\,
	clrn => \ALT_INV_inst125~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2~q\);

-- Location: LCCOMB_X1_Y58_N12
inst119 : cycloneive_lcell_comb
-- Equation(s):
-- \inst119~combout\ = LCELL((!\D3~q\ & (!\D2~q\ & (!\D4~q\ & !\D1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3~q\,
	datab => \D2~q\,
	datac => \D4~q\,
	datad => \D1~q\,
	combout => \inst119~combout\);

-- Location: LCCOMB_X1_Y58_N4
\D5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D5~0_combout\ = !\D5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D5~q\,
	combout => \D5~0_combout\);

-- Location: FF_X1_Y58_N5
D5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst119~combout\,
	d => \D5~0_combout\,
	clrn => \ALT_INV_inst125~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5~q\);

-- Location: LCCOMB_X1_Y58_N22
\D6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D6~0_combout\ = \D6~q\ $ (\D5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D6~q\,
	datad => \D5~q\,
	combout => \D6~0_combout\);

-- Location: FF_X1_Y58_N23
D6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst119~combout\,
	d => \D6~0_combout\,
	clrn => \ALT_INV_inst125~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D6~q\);

-- Location: LCCOMB_X1_Y58_N14
\inst126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst126~0_combout\ = (!\D3~q\ & (!\D1~q\ & (!\D4~q\ & \D2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3~q\,
	datab => \D1~q\,
	datac => \D4~q\,
	datad => \D2~q\,
	combout => \inst126~0_combout\);

-- Location: LCCOMB_X1_Y58_N30
inst126 : cycloneive_lcell_comb
-- Equation(s):
-- \inst126~combout\ = (\D6~q\ & (\D5~q\ & (\inst126~0_combout\ & \inst1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6~q\,
	datab => \D5~q\,
	datac => \inst126~0_combout\,
	datad => \inst1~2_combout\,
	combout => \inst126~combout\);

-- Location: LCCOMB_X1_Y58_N0
inst125 : cycloneive_lcell_comb
-- Equation(s):
-- \inst125~combout\ = (\inst127~1_combout\) # (\inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst127~1_combout\,
	datac => \inst126~combout\,
	combout => \inst125~combout\);

-- Location: FF_X2_Y58_N29
D1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \D1~feeder_combout\,
	clrn => \ALT_INV_inst125~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1~q\);

-- Location: LCCOMB_X1_Y58_N16
\D3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D3~0_combout\ = \D3~q\ $ (((\D1~q\ & \D2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1~q\,
	datac => \D3~q\,
	datad => \D2~q\,
	combout => \D3~0_combout\);

-- Location: LCCOMB_X1_Y58_N26
\D3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \D3~feeder_combout\ = \D3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D3~0_combout\,
	combout => \D3~feeder_combout\);

-- Location: FF_X1_Y58_N27
D3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \D3~feeder_combout\,
	clrn => \ALT_INV_inst125~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3~q\);

-- Location: LCCOMB_X1_Y58_N20
\D4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D4~0_combout\ = \D4~q\ $ (((\D3~q\ & (\D1~q\ & \D2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3~q\,
	datab => \D1~q\,
	datac => \D4~q\,
	datad => \D2~q\,
	combout => \D4~0_combout\);

-- Location: LCCOMB_X1_Y58_N8
\D4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \D4~feeder_combout\ = \D4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~0_combout\,
	combout => \D4~feeder_combout\);

-- Location: FF_X1_Y58_N9
D4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \D4~feeder_combout\,
	clrn => \ALT_INV_inst125~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4~q\);

-- Location: LCCOMB_X1_Y58_N18
\inst127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127~0_combout\ = (\D6~q\ & (\D1~q\ & (\D5~q\ & !\D2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6~q\,
	datab => \D1~q\,
	datac => \D5~q\,
	datad => \D2~q\,
	combout => \inst127~0_combout\);

-- Location: LCCOMB_X1_Y58_N10
\inst127~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127~1_combout\ = (!\inst1~2_combout\ & (!\D4~q\ & (\D3~q\ & \inst127~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~2_combout\,
	datab => \D4~q\,
	datac => \D3~q\,
	datad => \inst127~0_combout\,
	combout => \inst127~1_combout\);

-- Location: IOIBUF_X0_Y67_N15
\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: LCCOMB_X1_Y67_N8
inst128 : cycloneive_lcell_comb
-- Equation(s):
-- \inst128~combout\ = (\inst127~1_combout\) # (\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst127~1_combout\,
	datad => \set~input_o\,
	combout => \inst128~combout\);

-- Location: LCCOMB_X4_Y67_N18
\inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = (!\inst126~combout\ & ((\inst128~combout\) # (\inst1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst128~combout\,
	datac => \inst126~combout\,
	datad => \inst1~1_combout\,
	combout => \inst1~1_combout\);

-- Location: LCCOMB_X4_Y67_N20
\inst1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~2_combout\ = (!\inst126~combout\ & ((\inst1~1_combout\) # (\inst128~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~1_combout\,
	datac => \inst126~combout\,
	datad => \inst128~combout\,
	combout => \inst1~2_combout\);

-- Location: LCCOMB_X3_Y67_N10
\inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = !\inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9~q\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X3_Y67_N30
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = \inst10~q\ $ (\inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10~q\,
	datad => \inst9~q\,
	combout => \inst10~0_combout\);

-- Location: FF_X3_Y67_N5
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~2_combout\,
	asdata => \inst10~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X3_Y67_N18
\inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = \inst11~q\ $ (((\inst9~q\ & \inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst11~q\,
	combout => \inst11~0_combout\);

-- Location: FF_X3_Y67_N19
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~2_combout\,
	d => \inst11~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X3_Y67_N22
\inst12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = \inst12~q\ $ (((\inst11~q\ & (\inst10~q\ & \inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst9~q\,
	combout => \inst12~0_combout\);

-- Location: FF_X3_Y67_N23
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~2_combout\,
	d => \inst12~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X3_Y67_N24
\inst~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~11_combout\ = (\inst9~q\ & (\inst10~q\ & (\inst12~q\ & !\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~11_combout\);

-- Location: FF_X3_Y67_N11
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~2_combout\,
	d => \inst9~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X3_Y67_N28
\inst~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~9_combout\ = (\inst9~q\ & (!\inst10~q\ & (!\inst12~q\ & !\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~9_combout\);

-- Location: LCCOMB_X4_Y67_N2
inst35 : cycloneive_lcell_comb
-- Equation(s):
-- \inst35~combout\ = LCELL((\inst156~q\ & \inst~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst156~q\,
	datad => \inst~9_combout\,
	combout => \inst35~combout\);

-- Location: CLKCTRL_G12
\inst35~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst35~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst35~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y67_N6
\inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst36~0_combout\);

-- Location: FF_X3_Y67_N1
inst36 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst35~clkctrl_outclk\,
	asdata => \inst36~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36~q\);

-- Location: LCCOMB_X2_Y67_N16
\inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst37~0_combout\);

-- Location: FF_X3_Y67_N21
inst37 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst35~clkctrl_outclk\,
	asdata => \inst37~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37~q\);

-- Location: LCCOMB_X3_Y67_N14
\inst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~4_combout\ = (!\inst9~q\ & (\inst10~q\ & (!\inst12~q\ & !\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~4_combout\);

-- Location: LCCOMB_X4_Y67_N28
inst38 : cycloneive_lcell_comb
-- Equation(s):
-- \inst38~combout\ = LCELL((\inst156~q\ & \inst~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst156~q\,
	datad => \inst~4_combout\,
	combout => \inst38~combout\);

-- Location: CLKCTRL_G13
\inst38~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst38~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst38~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y70_N0
\inst39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst39~0_combout\);

-- Location: FF_X6_Y70_N1
inst39 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38~clkctrl_outclk\,
	d => \inst39~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39~q\);

-- Location: LCCOMB_X6_Y70_N2
\inst40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst40~0_combout\);

-- Location: FF_X6_Y70_N3
inst40 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38~clkctrl_outclk\,
	d => \inst40~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40~q\);

-- Location: LCCOMB_X3_Y67_N12
\inst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~5_combout\ = (\inst9~q\ & (\inst10~q\ & (!\inst12~q\ & !\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~5_combout\);

-- Location: LCCOMB_X4_Y67_N14
inst41 : cycloneive_lcell_comb
-- Equation(s):
-- \inst41~combout\ = LCELL((\inst156~q\ & \inst~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst156~q\,
	datad => \inst~5_combout\,
	combout => \inst41~combout\);

-- Location: CLKCTRL_G14
\inst41~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst41~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst41~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y67_N0
\inst42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst42~0_combout\);

-- Location: FF_X2_Y67_N1
inst42 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst41~clkctrl_outclk\,
	d => \inst42~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst42~q\);

-- Location: LCCOMB_X2_Y67_N26
\inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst43~0_combout\);

-- Location: FF_X2_Y67_N27
inst43 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst41~clkctrl_outclk\,
	d => \inst43~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43~q\);

-- Location: LCCOMB_X3_Y67_N16
\inst~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~6_combout\ = (!\inst12~q\ & (\inst11~q\ & (!\inst10~q\ & !\inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst11~q\,
	datac => \inst10~q\,
	datad => \inst9~q\,
	combout => \inst~6_combout\);

-- Location: LCCOMB_X4_Y67_N8
inst44 : cycloneive_lcell_comb
-- Equation(s):
-- \inst44~combout\ = LCELL((\inst~6_combout\ & \inst156~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~6_combout\,
	datad => \inst156~q\,
	combout => \inst44~combout\);

-- Location: CLKCTRL_G0
\inst44~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst44~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst44~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y70_N12
\inst45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst45~0_combout\);

-- Location: FF_X2_Y70_N13
inst45 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44~clkctrl_outclk\,
	d => \inst45~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45~q\);

-- Location: LCCOMB_X2_Y70_N2
\inst46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst46~0_combout\);

-- Location: FF_X2_Y70_N3
inst46 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44~clkctrl_outclk\,
	d => \inst46~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46~q\);

-- Location: LCCOMB_X3_Y67_N26
\inst~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~7_combout\ = (\inst9~q\ & (!\inst10~q\ & (!\inst12~q\ & \inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~7_combout\);

-- Location: LCCOMB_X4_Y67_N6
inst47 : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~combout\ = LCELL((\inst~7_combout\ & \inst156~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~7_combout\,
	datad => \inst156~q\,
	combout => \inst47~combout\);

-- Location: CLKCTRL_G10
\inst47~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst47~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst47~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y67_N14
\inst48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst48~0_combout\);

-- Location: LCCOMB_X6_Y67_N0
\inst48~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48~feeder_combout\ = \inst48~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48~0_combout\,
	combout => \inst48~feeder_combout\);

-- Location: FF_X6_Y67_N1
inst48 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst48~feeder_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48~q\);

-- Location: LCCOMB_X6_Y67_N14
\inst49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMPOUTN~input_o\,
	combout => \inst49~0_combout\);

-- Location: FF_X6_Y67_N15
inst49 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst49~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49~q\);

-- Location: LCCOMB_X4_Y67_N22
\inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~3_combout\ = (!\inst9~q\ & (\inst11~q\ & (\inst10~q\ & !\inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst11~q\,
	datac => \inst10~q\,
	datad => \inst12~q\,
	combout => \inst~3_combout\);

-- Location: LCCOMB_X4_Y67_N30
inst50 : cycloneive_lcell_comb
-- Equation(s):
-- \inst50~combout\ = LCELL((\inst~3_combout\ & \inst156~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~3_combout\,
	datad => \inst156~q\,
	combout => \inst50~combout\);

-- Location: CLKCTRL_G3
\inst50~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst50~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y70_N0
\inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst51~0_combout\);

-- Location: FF_X2_Y70_N1
inst51 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50~clkctrl_outclk\,
	d => \inst51~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51~q\);

-- Location: LCCOMB_X2_Y70_N22
\inst52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst52~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst52~0_combout\);

-- Location: FF_X2_Y70_N23
inst52 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50~clkctrl_outclk\,
	d => \inst52~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst52~q\);

-- Location: LCCOMB_X3_Y67_N2
\inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = (\inst9~q\ & (\inst10~q\ & (!\inst12~q\ & \inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~2_combout\);

-- Location: LCCOMB_X4_Y67_N4
inst53 : cycloneive_lcell_comb
-- Equation(s):
-- \inst53~combout\ = LCELL((\inst156~q\ & \inst~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst156~q\,
	datad => \inst~2_combout\,
	combout => \inst53~combout\);

-- Location: CLKCTRL_G11
\inst53~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst53~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst53~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y70_N24
\inst54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst54~0_combout\);

-- Location: FF_X6_Y70_N25
inst54 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst53~clkctrl_outclk\,
	d => \inst54~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst54~q\);

-- Location: LCCOMB_X6_Y70_N6
\inst55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst55~0_combout\);

-- Location: FF_X6_Y70_N7
inst55 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst53~clkctrl_outclk\,
	d => \inst55~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55~q\);

-- Location: LCCOMB_X4_Y67_N24
\inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = (!\inst9~q\ & (!\inst11~q\ & (!\inst10~q\ & \inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst11~q\,
	datac => \inst10~q\,
	datad => \inst12~q\,
	combout => \inst~1_combout\);

-- Location: LCCOMB_X4_Y67_N12
inst56 : cycloneive_lcell_comb
-- Equation(s):
-- \inst56~combout\ = LCELL((\inst156~q\ & \inst~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst156~q\,
	datad => \inst~1_combout\,
	combout => \inst56~combout\);

-- Location: CLKCTRL_G1
\inst56~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst56~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst56~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y70_N24
\inst57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst57~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst57~0_combout\);

-- Location: FF_X4_Y70_N25
inst57 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst56~clkctrl_outclk\,
	d => \inst57~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst57~q\);

-- Location: LCCOMB_X4_Y70_N2
\inst58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst58~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMPOUTN~input_o\,
	combout => \inst58~0_combout\);

-- Location: FF_X4_Y70_N3
inst58 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst56~clkctrl_outclk\,
	d => \inst58~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst58~q\);

-- Location: LCCOMB_X3_Y67_N8
\inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\inst12~q\ & (!\inst11~q\ & (!\inst10~q\ & \inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst11~q\,
	datac => \inst10~q\,
	datad => \inst9~q\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X3_Y67_N0
inst59 : cycloneive_lcell_comb
-- Equation(s):
-- \inst59~combout\ = LCELL((\inst~0_combout\ & \inst156~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst~0_combout\,
	datad => \inst156~q\,
	combout => \inst59~combout\);

-- Location: CLKCTRL_G2
\inst59~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst59~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst59~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y67_N10
\inst60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst60~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst60~0_combout\);

-- Location: FF_X5_Y67_N11
inst60 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst59~clkctrl_outclk\,
	d => \inst60~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst60~q\);

-- Location: LCCOMB_X5_Y67_N8
\inst61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst61~0_combout\ = !\COMPOUTN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTN~input_o\,
	combout => \inst61~0_combout\);

-- Location: FF_X5_Y67_N9
inst61 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst59~clkctrl_outclk\,
	d => \inst61~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst61~q\);

-- Location: LCCOMB_X3_Y67_N4
\inst~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~10_combout\ = (\inst12~q\ & (!\inst9~q\ & (\inst10~q\ & !\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst9~q\,
	datac => \inst10~q\,
	datad => \inst11~q\,
	combout => \inst~10_combout\);

-- Location: LCCOMB_X3_Y67_N20
inst66 : cycloneive_lcell_comb
-- Equation(s):
-- \inst66~combout\ = LCELL((\inst~10_combout\ & \inst156~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst~10_combout\,
	datad => \inst156~q\,
	combout => \inst66~combout\);

-- Location: LCCOMB_X2_Y67_N12
\inst65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65~0_combout\ = !\COMPOUTP~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPOUTP~input_o\,
	combout => \inst65~0_combout\);

-- Location: FF_X2_Y67_N13
inst65 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst66~combout\,
	d => \inst65~0_combout\,
	clrn => \ALT_INV_inst~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65~q\);

-- Location: LCCOMB_X3_Y67_N6
\inst~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~8_combout\ = (!\inst9~q\ & (!\inst10~q\ & (!\inst12~q\ & !\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst10~q\,
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \inst~8_combout\);

-- Location: LCCOMB_X4_Y67_N10
inst72 : cycloneive_lcell_comb
-- Equation(s):
-- \inst72~combout\ = LCELL((!\inst~8_combout\ & \inst1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst~8_combout\,
	datad => \inst1~2_combout\,
	combout => \inst72~combout\);

-- Location: LCCOMB_X4_Y67_N0
\inst73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst73~0_combout\ = !\set~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	combout => \inst73~0_combout\);

-- Location: FF_X4_Y67_N11
inst73 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst72~combout\,
	asdata => \inst73~0_combout\,
	clrn => \ALT_INV_inst156~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst73~q\);

-- Location: IOIBUF_X0_Y62_N15
\CAP1P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP1P,
	o => \CAP1P~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\CAP1N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP1N,
	o => \CAP1N~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\CAP2P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP2P,
	o => \CAP2P~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\CAP2N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP2N,
	o => \CAP2N~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\CAP3P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP3P,
	o => \CAP3P~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\CAP3N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP3N,
	o => \CAP3N~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\CAP4P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP4P,
	o => \CAP4P~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\CAP4N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP4N,
	o => \CAP4N~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\CAP5P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP5P,
	o => \CAP5P~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\CAP5N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP5N,
	o => \CAP5N~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\CAP6P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP6P,
	o => \CAP6P~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\CAP6N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP6N,
	o => \CAP6N~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\CAP7P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP7P,
	o => \CAP7P~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\CAP7N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP7N,
	o => \CAP7N~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\CAP8P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP8P,
	o => \CAP8P~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\CAP8N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP8N,
	o => \CAP8N~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\CAP9P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP9P,
	o => \CAP9P~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\CAP9N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAP9N,
	o => \CAP9N~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\D0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D0,
	o => \D0~input_o\);

ww_CLK9 <= \CLK9~output_o\;

ww_C0 <= \C0~output_o\;

ww_C0B <= \C0B~output_o\;

ww_C1 <= \C1~output_o\;

ww_C1B <= \C1B~output_o\;

ww_C2B <= \C2B~output_o\;

ww_C2 <= \C2~output_o\;

ww_C3 <= \C3~output_o\;

ww_C3B <= \C3B~output_o\;

ww_CLK8 <= \CLK8~output_o\;

ww_CLK7 <= \CLK7~output_o\;

ww_CLK6 <= \CLK6~output_o\;

ww_CLK2 <= \CLK2~output_o\;

ww_CLK3 <= \CLK3~output_o\;

ww_CLK4 <= \CLK4~output_o\;

ww_CLK5 <= \CLK5~output_o\;

ww_CLKCOMP <= \CLKCOMP~output_o\;

ww_CLKS <= \CLKS~output_o\;

ww_B <= \B~output_o\;

ww_CLK1 <= \CLK1~output_o\;

ww_A <= \A~output_o\;

ww_C <= \C~output_o\;

ww_CLK10 <= \CLK10~output_o\;

ww_GPIO(1) <= \GPIO[1]~output_o\;

ww_GPIO(0) <= \GPIO[0]~output_o\;

CAP1P <= \CAP1P~output_o\;

CAP1N <= \CAP1N~output_o\;

CAP2P <= \CAP2P~output_o\;

CAP2N <= \CAP2N~output_o\;

CAP3P <= \CAP3P~output_o\;

CAP3N <= \CAP3N~output_o\;

CAP4P <= \CAP4P~output_o\;

CAP4N <= \CAP4N~output_o\;

CAP5P <= \CAP5P~output_o\;

CAP5N <= \CAP5N~output_o\;

CAP6P <= \CAP6P~output_o\;

CAP6N <= \CAP6N~output_o\;

CAP7P <= \CAP7P~output_o\;

CAP7N <= \CAP7N~output_o\;

CAP8P <= \CAP8P~output_o\;

CAP8N <= \CAP8N~output_o\;

CAP9P <= \CAP9P~output_o\;

CAP9N <= \CAP9N~output_o\;

D0 <= \D0~output_o\;
END structure;


