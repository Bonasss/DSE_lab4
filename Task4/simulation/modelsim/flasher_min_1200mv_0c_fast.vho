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

-- DATE "04/16/2023 18:26:18"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flasher IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END flasher;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flasher IS
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
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt|q_out[0]~3_combout\ : std_logic;
SIGNAL \sec|Add0~0_combout\ : std_logic;
SIGNAL \sec|Add0~1\ : std_logic;
SIGNAL \sec|Add0~2_combout\ : std_logic;
SIGNAL \sec|q_out[1]~24_combout\ : std_logic;
SIGNAL \sec|Add0~3\ : std_logic;
SIGNAL \sec|Add0~4_combout\ : std_logic;
SIGNAL \sec|q_out[2]~23_combout\ : std_logic;
SIGNAL \sec|Add0~5\ : std_logic;
SIGNAL \sec|Add0~6_combout\ : std_logic;
SIGNAL \sec|q_out[3]~22_combout\ : std_logic;
SIGNAL \sec|Add0~7\ : std_logic;
SIGNAL \sec|Add0~8_combout\ : std_logic;
SIGNAL \sec|q_out[4]~21_combout\ : std_logic;
SIGNAL \sec|Add0~9\ : std_logic;
SIGNAL \sec|Add0~10_combout\ : std_logic;
SIGNAL \sec|q_out[5]~20_combout\ : std_logic;
SIGNAL \sec|Add0~11\ : std_logic;
SIGNAL \sec|Add0~12_combout\ : std_logic;
SIGNAL \sec|q_out[6]~19_combout\ : std_logic;
SIGNAL \sec|Add0~13\ : std_logic;
SIGNAL \sec|Add0~14_combout\ : std_logic;
SIGNAL \sec|q_out[7]~18_combout\ : std_logic;
SIGNAL \sec|Add0~15\ : std_logic;
SIGNAL \sec|Add0~16_combout\ : std_logic;
SIGNAL \sec|q_out[8]~17_combout\ : std_logic;
SIGNAL \sec|Add0~17\ : std_logic;
SIGNAL \sec|Add0~18_combout\ : std_logic;
SIGNAL \sec|q_out[9]~16_combout\ : std_logic;
SIGNAL \sec|Add0~19\ : std_logic;
SIGNAL \sec|Add0~20_combout\ : std_logic;
SIGNAL \sec|q_out[10]~15_combout\ : std_logic;
SIGNAL \sec|Add0~21\ : std_logic;
SIGNAL \sec|Add0~22_combout\ : std_logic;
SIGNAL \sec|q_out[11]~14_combout\ : std_logic;
SIGNAL \sec|Add0~23\ : std_logic;
SIGNAL \sec|Add0~24_combout\ : std_logic;
SIGNAL \sec|q_out[12]~13_combout\ : std_logic;
SIGNAL \sec|Add0~25\ : std_logic;
SIGNAL \sec|Add0~26_combout\ : std_logic;
SIGNAL \sec|q_out[13]~12_combout\ : std_logic;
SIGNAL \sec|Add0~27\ : std_logic;
SIGNAL \sec|Add0~28_combout\ : std_logic;
SIGNAL \sec|q_out[14]~11_combout\ : std_logic;
SIGNAL \sec|Add0~29\ : std_logic;
SIGNAL \sec|Add0~30_combout\ : std_logic;
SIGNAL \sec|q_out[15]~10_combout\ : std_logic;
SIGNAL \sec|Add0~31\ : std_logic;
SIGNAL \sec|Add0~32_combout\ : std_logic;
SIGNAL \sec|q_out[16]~9_combout\ : std_logic;
SIGNAL \sec|Add0~33\ : std_logic;
SIGNAL \sec|Add0~34_combout\ : std_logic;
SIGNAL \sec|q_out[17]~8_combout\ : std_logic;
SIGNAL \sec|Add0~35\ : std_logic;
SIGNAL \sec|Add0~36_combout\ : std_logic;
SIGNAL \sec|q_out[18]~7_combout\ : std_logic;
SIGNAL \sec|Add0~37\ : std_logic;
SIGNAL \sec|Add0~38_combout\ : std_logic;
SIGNAL \sec|q_out[19]~6_combout\ : std_logic;
SIGNAL \sec|Add0~39\ : std_logic;
SIGNAL \sec|Add0~40_combout\ : std_logic;
SIGNAL \sec|q_out[20]~5_combout\ : std_logic;
SIGNAL \sec|Add0~41\ : std_logic;
SIGNAL \sec|Add0~42_combout\ : std_logic;
SIGNAL \sec|q_out[21]~4_combout\ : std_logic;
SIGNAL \sec|Add0~43\ : std_logic;
SIGNAL \sec|Add0~44_combout\ : std_logic;
SIGNAL \sec|q_out[22]~3_combout\ : std_logic;
SIGNAL \sec|Add0~45\ : std_logic;
SIGNAL \sec|Add0~46_combout\ : std_logic;
SIGNAL \sec|q_out[23]~2_combout\ : std_logic;
SIGNAL \sec|Add0~47\ : std_logic;
SIGNAL \sec|Add0~49\ : std_logic;
SIGNAL \sec|Add0~50_combout\ : std_logic;
SIGNAL \sec|q_out[25]~1_combout\ : std_logic;
SIGNAL \sec|Add0~48_combout\ : std_logic;
SIGNAL \sec|q_out[24]~0_combout\ : std_logic;
SIGNAL \cnt|q_out[0]~1_combout\ : std_logic;
SIGNAL \cnt|q_out[2]~2_combout\ : std_logic;
SIGNAL \cmp1|LessThan1~0_combout\ : std_logic;
SIGNAL \cnt|Add0~0_combout\ : std_logic;
SIGNAL \cnt|q_out[3]~0_combout\ : std_logic;
SIGNAL \cmp1|comb~5_combout\ : std_logic;
SIGNAL \cmp1|is_bigger~combout\ : std_logic;
SIGNAL \cnt|q_out[1]~4_combout\ : std_logic;
SIGNAL \dec|comb~57_combout\ : std_logic;
SIGNAL \dec|comb~56_combout\ : std_logic;
SIGNAL \dec|comb~60_combout\ : std_logic;
SIGNAL \dec|comb~61_combout\ : std_logic;
SIGNAL \dec|comb~54_combout\ : std_logic;
SIGNAL \dec|comb~55_combout\ : std_logic;
SIGNAL \dec|comb~63_combout\ : std_logic;
SIGNAL \dec|comb~62_combout\ : std_logic;
SIGNAL \dec|Equal0~0_combout\ : std_logic;
SIGNAL \dec|comb~66_combout\ : std_logic;
SIGNAL \dec|comb~65_combout\ : std_logic;
SIGNAL \dec|comb~64_combout\ : std_logic;
SIGNAL \dec|comb~59_combout\ : std_logic;
SIGNAL \dec|comb~58_combout\ : std_logic;
SIGNAL \cnt|q_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sec|q_out\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \dec|output\ : std_logic_vector(0 TO 6);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N2
\HEX0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\HEX0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\HEX0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\HEX0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\HEX0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\HEX0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\HEX0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|output\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLOCK_50~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G17
\CLOCK_50~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X14_Y2_N28
\cnt|q_out[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[0]~3_combout\ = (!\cnt|q_out\(0) & !\cmp1|is_bigger~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|q_out\(0),
	datad => \cmp1|is_bigger~combout\,
	combout => \cnt|q_out[0]~3_combout\);

-- Location: LCCOMB_X14_Y6_N6
\sec|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~0_combout\ = \sec|q_out\(0) $ (VCC)
-- \sec|Add0~1\ = CARRY(\sec|q_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datad => VCC,
	combout => \sec|Add0~0_combout\,
	cout => \sec|Add0~1\);

-- Location: FF_X14_Y6_N7
\sec|q_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(0));

-- Location: LCCOMB_X14_Y6_N8
\sec|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~2_combout\ = (\sec|q_out\(1) & (!\sec|Add0~1\)) # (!\sec|q_out\(1) & ((\sec|Add0~1\) # (GND)))
-- \sec|Add0~3\ = CARRY((!\sec|Add0~1\) # (!\sec|q_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(1),
	datad => VCC,
	cin => \sec|Add0~1\,
	combout => \sec|Add0~2_combout\,
	cout => \sec|Add0~3\);

-- Location: LCCOMB_X14_Y6_N0
\sec|q_out[1]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[1]~24_combout\ = (\sec|Add0~2_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(24))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(24),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~2_combout\,
	combout => \sec|q_out[1]~24_combout\);

-- Location: FF_X14_Y6_N1
\sec|q_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(1));

-- Location: LCCOMB_X14_Y6_N10
\sec|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~4_combout\ = (\sec|q_out\(2) & (\sec|Add0~3\ $ (GND))) # (!\sec|q_out\(2) & (!\sec|Add0~3\ & VCC))
-- \sec|Add0~5\ = CARRY((\sec|q_out\(2) & !\sec|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(2),
	datad => VCC,
	cin => \sec|Add0~3\,
	combout => \sec|Add0~4_combout\,
	cout => \sec|Add0~5\);

-- Location: LCCOMB_X15_Y6_N30
\sec|q_out[2]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[2]~23_combout\ = (\sec|Add0~4_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(25))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~4_combout\,
	combout => \sec|q_out[2]~23_combout\);

-- Location: FF_X14_Y6_N31
\sec|q_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sec|q_out[2]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(2));

-- Location: LCCOMB_X14_Y6_N12
\sec|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~6_combout\ = (\sec|q_out\(3) & (!\sec|Add0~5\)) # (!\sec|q_out\(3) & ((\sec|Add0~5\) # (GND)))
-- \sec|Add0~7\ = CARRY((!\sec|Add0~5\) # (!\sec|q_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(3),
	datad => VCC,
	cin => \sec|Add0~5\,
	combout => \sec|Add0~6_combout\,
	cout => \sec|Add0~7\);

-- Location: LCCOMB_X15_Y6_N0
\sec|q_out[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[3]~22_combout\ = (\sec|Add0~6_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(25))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~6_combout\,
	combout => \sec|q_out[3]~22_combout\);

-- Location: FF_X14_Y6_N9
\sec|q_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sec|q_out[3]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(3));

-- Location: LCCOMB_X14_Y6_N14
\sec|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~8_combout\ = (\sec|q_out\(4) & (\sec|Add0~7\ $ (GND))) # (!\sec|q_out\(4) & (!\sec|Add0~7\ & VCC))
-- \sec|Add0~9\ = CARRY((\sec|q_out\(4) & !\sec|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(4),
	datad => VCC,
	cin => \sec|Add0~7\,
	combout => \sec|Add0~8_combout\,
	cout => \sec|Add0~9\);

-- Location: LCCOMB_X15_Y6_N10
\sec|q_out[4]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[4]~21_combout\ = (\sec|Add0~8_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(25))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~8_combout\,
	combout => \sec|q_out[4]~21_combout\);

-- Location: FF_X14_Y6_N25
\sec|q_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sec|q_out[4]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(4));

-- Location: LCCOMB_X14_Y6_N16
\sec|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~10_combout\ = (\sec|q_out\(5) & (!\sec|Add0~9\)) # (!\sec|q_out\(5) & ((\sec|Add0~9\) # (GND)))
-- \sec|Add0~11\ = CARRY((!\sec|Add0~9\) # (!\sec|q_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(5),
	datad => VCC,
	cin => \sec|Add0~9\,
	combout => \sec|Add0~10_combout\,
	cout => \sec|Add0~11\);

-- Location: LCCOMB_X14_Y6_N2
\sec|q_out[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[5]~20_combout\ = (\sec|Add0~10_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(24))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(24),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~10_combout\,
	combout => \sec|q_out[5]~20_combout\);

-- Location: FF_X14_Y6_N3
\sec|q_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(5));

-- Location: LCCOMB_X14_Y6_N18
\sec|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~12_combout\ = (\sec|q_out\(6) & (\sec|Add0~11\ $ (GND))) # (!\sec|q_out\(6) & (!\sec|Add0~11\ & VCC))
-- \sec|Add0~13\ = CARRY((\sec|q_out\(6) & !\sec|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(6),
	datad => VCC,
	cin => \sec|Add0~11\,
	combout => \sec|Add0~12_combout\,
	cout => \sec|Add0~13\);

-- Location: LCCOMB_X15_Y6_N20
\sec|q_out[6]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[6]~19_combout\ = (\sec|Add0~12_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(25))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~12_combout\,
	combout => \sec|q_out[6]~19_combout\);

-- Location: FF_X14_Y6_N21
\sec|q_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sec|q_out[6]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(6));

-- Location: LCCOMB_X14_Y6_N20
\sec|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~14_combout\ = (\sec|q_out\(7) & (!\sec|Add0~13\)) # (!\sec|q_out\(7) & ((\sec|Add0~13\) # (GND)))
-- \sec|Add0~15\ = CARRY((!\sec|Add0~13\) # (!\sec|q_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(7),
	datad => VCC,
	cin => \sec|Add0~13\,
	combout => \sec|Add0~14_combout\,
	cout => \sec|Add0~15\);

-- Location: LCCOMB_X13_Y6_N12
\sec|q_out[7]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[7]~18_combout\ = (\sec|Add0~14_combout\ & (((!\sec|q_out\(25)) # (!\sec|q_out\(0))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(0),
	datac => \sec|q_out\(25),
	datad => \sec|Add0~14_combout\,
	combout => \sec|q_out[7]~18_combout\);

-- Location: FF_X13_Y6_N13
\sec|q_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(7));

-- Location: LCCOMB_X14_Y6_N22
\sec|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~16_combout\ = (\sec|q_out\(8) & (\sec|Add0~15\ $ (GND))) # (!\sec|q_out\(8) & (!\sec|Add0~15\ & VCC))
-- \sec|Add0~17\ = CARRY((\sec|q_out\(8) & !\sec|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(8),
	datad => VCC,
	cin => \sec|Add0~15\,
	combout => \sec|Add0~16_combout\,
	cout => \sec|Add0~17\);

-- Location: LCCOMB_X13_Y6_N14
\sec|q_out[8]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[8]~17_combout\ = (\sec|Add0~16_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(0))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(0),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~16_combout\,
	combout => \sec|q_out[8]~17_combout\);

-- Location: FF_X13_Y6_N15
\sec|q_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(8));

-- Location: LCCOMB_X14_Y6_N24
\sec|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~18_combout\ = (\sec|q_out\(9) & (!\sec|Add0~17\)) # (!\sec|q_out\(9) & ((\sec|Add0~17\) # (GND)))
-- \sec|Add0~19\ = CARRY((!\sec|Add0~17\) # (!\sec|q_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(9),
	datad => VCC,
	cin => \sec|Add0~17\,
	combout => \sec|Add0~18_combout\,
	cout => \sec|Add0~19\);

-- Location: LCCOMB_X14_Y6_N4
\sec|q_out[9]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[9]~16_combout\ = (\sec|Add0~18_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(24))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(24),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~18_combout\,
	combout => \sec|q_out[9]~16_combout\);

-- Location: FF_X14_Y6_N5
\sec|q_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(9));

-- Location: LCCOMB_X14_Y6_N26
\sec|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~20_combout\ = (\sec|q_out\(10) & (\sec|Add0~19\ $ (GND))) # (!\sec|q_out\(10) & (!\sec|Add0~19\ & VCC))
-- \sec|Add0~21\ = CARRY((\sec|q_out\(10) & !\sec|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(10),
	datad => VCC,
	cin => \sec|Add0~19\,
	combout => \sec|Add0~20_combout\,
	cout => \sec|Add0~21\);

-- Location: LCCOMB_X13_Y6_N4
\sec|q_out[10]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[10]~15_combout\ = (\sec|Add0~20_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(0))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(0),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~20_combout\,
	combout => \sec|q_out[10]~15_combout\);

-- Location: FF_X13_Y6_N5
\sec|q_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(10));

-- Location: LCCOMB_X14_Y6_N28
\sec|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~22_combout\ = (\sec|q_out\(11) & (!\sec|Add0~21\)) # (!\sec|q_out\(11) & ((\sec|Add0~21\) # (GND)))
-- \sec|Add0~23\ = CARRY((!\sec|Add0~21\) # (!\sec|q_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(11),
	datad => VCC,
	cin => \sec|Add0~21\,
	combout => \sec|Add0~22_combout\,
	cout => \sec|Add0~23\);

-- Location: LCCOMB_X13_Y6_N6
\sec|q_out[11]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[11]~14_combout\ = (\sec|Add0~22_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(0))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(0),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~22_combout\,
	combout => \sec|q_out[11]~14_combout\);

-- Location: FF_X13_Y6_N7
\sec|q_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(11));

-- Location: LCCOMB_X14_Y6_N30
\sec|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~24_combout\ = (\sec|q_out\(12) & (\sec|Add0~23\ $ (GND))) # (!\sec|q_out\(12) & (!\sec|Add0~23\ & VCC))
-- \sec|Add0~25\ = CARRY((\sec|q_out\(12) & !\sec|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(12),
	datad => VCC,
	cin => \sec|Add0~23\,
	combout => \sec|Add0~24_combout\,
	cout => \sec|Add0~25\);

-- Location: LCCOMB_X13_Y6_N16
\sec|q_out[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[12]~13_combout\ = (\sec|Add0~24_combout\ & (((!\sec|q_out\(25)) # (!\sec|q_out\(0))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(0),
	datac => \sec|q_out\(25),
	datad => \sec|Add0~24_combout\,
	combout => \sec|q_out[12]~13_combout\);

-- Location: FF_X13_Y6_N17
\sec|q_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(12));

-- Location: LCCOMB_X14_Y5_N0
\sec|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~26_combout\ = (\sec|q_out\(13) & (!\sec|Add0~25\)) # (!\sec|q_out\(13) & ((\sec|Add0~25\) # (GND)))
-- \sec|Add0~27\ = CARRY((!\sec|Add0~25\) # (!\sec|q_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(13),
	datad => VCC,
	cin => \sec|Add0~25\,
	combout => \sec|Add0~26_combout\,
	cout => \sec|Add0~27\);

-- Location: LCCOMB_X15_Y5_N24
\sec|q_out[13]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[13]~12_combout\ = (\sec|Add0~26_combout\ & (((!\sec|q_out\(25)) # (!\sec|q_out\(24))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(24),
	datac => \sec|Add0~26_combout\,
	datad => \sec|q_out\(25),
	combout => \sec|q_out[13]~12_combout\);

-- Location: FF_X15_Y5_N25
\sec|q_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(13));

-- Location: LCCOMB_X14_Y5_N2
\sec|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~28_combout\ = (\sec|q_out\(14) & (\sec|Add0~27\ $ (GND))) # (!\sec|q_out\(14) & (!\sec|Add0~27\ & VCC))
-- \sec|Add0~29\ = CARRY((\sec|q_out\(14) & !\sec|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(14),
	datad => VCC,
	cin => \sec|Add0~27\,
	combout => \sec|Add0~28_combout\,
	cout => \sec|Add0~29\);

-- Location: LCCOMB_X15_Y5_N22
\sec|q_out[14]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[14]~11_combout\ = (\sec|Add0~28_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~28_combout\,
	combout => \sec|q_out[14]~11_combout\);

-- Location: FF_X15_Y5_N23
\sec|q_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[14]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(14));

-- Location: LCCOMB_X14_Y5_N4
\sec|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~30_combout\ = (\sec|q_out\(15) & (!\sec|Add0~29\)) # (!\sec|q_out\(15) & ((\sec|Add0~29\) # (GND)))
-- \sec|Add0~31\ = CARRY((!\sec|Add0~29\) # (!\sec|q_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(15),
	datad => VCC,
	cin => \sec|Add0~29\,
	combout => \sec|Add0~30_combout\,
	cout => \sec|Add0~31\);

-- Location: LCCOMB_X14_Y5_N30
\sec|q_out[15]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[15]~10_combout\ = (\sec|Add0~30_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(0))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(0),
	datac => \sec|Add0~30_combout\,
	datad => \sec|q_out\(24),
	combout => \sec|q_out[15]~10_combout\);

-- Location: FF_X14_Y5_N31
\sec|q_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(15));

-- Location: LCCOMB_X14_Y5_N6
\sec|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~32_combout\ = (\sec|q_out\(16) & (\sec|Add0~31\ $ (GND))) # (!\sec|q_out\(16) & (!\sec|Add0~31\ & VCC))
-- \sec|Add0~33\ = CARRY((\sec|q_out\(16) & !\sec|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(16),
	datad => VCC,
	cin => \sec|Add0~31\,
	combout => \sec|Add0~32_combout\,
	cout => \sec|Add0~33\);

-- Location: LCCOMB_X15_Y5_N20
\sec|q_out[16]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[16]~9_combout\ = (\sec|Add0~32_combout\ & (((!\sec|q_out\(25)) # (!\sec|q_out\(24))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(24),
	datac => \sec|Add0~32_combout\,
	datad => \sec|q_out\(25),
	combout => \sec|q_out[16]~9_combout\);

-- Location: FF_X15_Y5_N21
\sec|q_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(16));

-- Location: LCCOMB_X14_Y5_N8
\sec|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~34_combout\ = (\sec|q_out\(17) & (!\sec|Add0~33\)) # (!\sec|q_out\(17) & ((\sec|Add0~33\) # (GND)))
-- \sec|Add0~35\ = CARRY((!\sec|Add0~33\) # (!\sec|q_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(17),
	datad => VCC,
	cin => \sec|Add0~33\,
	combout => \sec|Add0~34_combout\,
	cout => \sec|Add0~35\);

-- Location: LCCOMB_X14_Y5_N28
\sec|q_out[17]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[17]~8_combout\ = (\sec|Add0~34_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(0))) # (!\sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(25),
	datab => \sec|q_out\(0),
	datac => \sec|Add0~34_combout\,
	datad => \sec|q_out\(24),
	combout => \sec|q_out[17]~8_combout\);

-- Location: FF_X14_Y5_N29
\sec|q_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[17]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(17));

-- Location: LCCOMB_X14_Y5_N10
\sec|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~36_combout\ = (\sec|q_out\(18) & (\sec|Add0~35\ $ (GND))) # (!\sec|q_out\(18) & (!\sec|Add0~35\ & VCC))
-- \sec|Add0~37\ = CARRY((\sec|q_out\(18) & !\sec|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(18),
	datad => VCC,
	cin => \sec|Add0~35\,
	combout => \sec|Add0~36_combout\,
	cout => \sec|Add0~37\);

-- Location: LCCOMB_X15_Y5_N30
\sec|q_out[18]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[18]~7_combout\ = (\sec|Add0~36_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~36_combout\,
	combout => \sec|q_out[18]~7_combout\);

-- Location: FF_X15_Y5_N31
\sec|q_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[18]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(18));

-- Location: LCCOMB_X14_Y5_N12
\sec|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~38_combout\ = (\sec|q_out\(19) & (!\sec|Add0~37\)) # (!\sec|q_out\(19) & ((\sec|Add0~37\) # (GND)))
-- \sec|Add0~39\ = CARRY((!\sec|Add0~37\) # (!\sec|q_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(19),
	datad => VCC,
	cin => \sec|Add0~37\,
	combout => \sec|Add0~38_combout\,
	cout => \sec|Add0~39\);

-- Location: LCCOMB_X15_Y5_N8
\sec|q_out[19]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[19]~6_combout\ = (\sec|Add0~38_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~38_combout\,
	combout => \sec|q_out[19]~6_combout\);

-- Location: FF_X15_Y5_N9
\sec|q_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[19]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(19));

-- Location: LCCOMB_X14_Y5_N14
\sec|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~40_combout\ = (\sec|q_out\(20) & (\sec|Add0~39\ $ (GND))) # (!\sec|q_out\(20) & (!\sec|Add0~39\ & VCC))
-- \sec|Add0~41\ = CARRY((\sec|q_out\(20) & !\sec|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(20),
	datad => VCC,
	cin => \sec|Add0~39\,
	combout => \sec|Add0~40_combout\,
	cout => \sec|Add0~41\);

-- Location: LCCOMB_X15_Y5_N6
\sec|q_out[20]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[20]~5_combout\ = (\sec|Add0~40_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~40_combout\,
	combout => \sec|q_out[20]~5_combout\);

-- Location: FF_X15_Y5_N7
\sec|q_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(20));

-- Location: LCCOMB_X14_Y5_N16
\sec|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~42_combout\ = (\sec|q_out\(21) & (!\sec|Add0~41\)) # (!\sec|q_out\(21) & ((\sec|Add0~41\) # (GND)))
-- \sec|Add0~43\ = CARRY((!\sec|Add0~41\) # (!\sec|q_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(21),
	datad => VCC,
	cin => \sec|Add0~41\,
	combout => \sec|Add0~42_combout\,
	cout => \sec|Add0~43\);

-- Location: LCCOMB_X14_Y5_N26
\sec|q_out[21]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[21]~4_combout\ = (\sec|Add0~42_combout\ & (((!\sec|q_out\(0)) # (!\sec|q_out\(25))) # (!\sec|q_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(0),
	datad => \sec|Add0~42_combout\,
	combout => \sec|q_out[21]~4_combout\);

-- Location: FF_X14_Y5_N27
\sec|q_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(21));

-- Location: LCCOMB_X14_Y5_N18
\sec|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~44_combout\ = (\sec|q_out\(22) & (\sec|Add0~43\ $ (GND))) # (!\sec|q_out\(22) & (!\sec|Add0~43\ & VCC))
-- \sec|Add0~45\ = CARRY((\sec|q_out\(22) & !\sec|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(22),
	datad => VCC,
	cin => \sec|Add0~43\,
	combout => \sec|Add0~44_combout\,
	cout => \sec|Add0~45\);

-- Location: LCCOMB_X15_Y5_N12
\sec|q_out[22]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[22]~3_combout\ = (\sec|Add0~44_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~44_combout\,
	combout => \sec|q_out[22]~3_combout\);

-- Location: FF_X15_Y5_N13
\sec|q_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(22));

-- Location: LCCOMB_X14_Y5_N20
\sec|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~46_combout\ = (\sec|q_out\(23) & (!\sec|Add0~45\)) # (!\sec|q_out\(23) & ((\sec|Add0~45\) # (GND)))
-- \sec|Add0~47\ = CARRY((!\sec|Add0~45\) # (!\sec|q_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(23),
	datad => VCC,
	cin => \sec|Add0~45\,
	combout => \sec|Add0~46_combout\,
	cout => \sec|Add0~47\);

-- Location: LCCOMB_X15_Y5_N10
\sec|q_out[23]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[23]~2_combout\ = (\sec|Add0~46_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~46_combout\,
	combout => \sec|q_out[23]~2_combout\);

-- Location: FF_X15_Y5_N11
\sec|q_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(23));

-- Location: LCCOMB_X14_Y5_N22
\sec|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~48_combout\ = (\sec|q_out\(24) & (\sec|Add0~47\ $ (GND))) # (!\sec|q_out\(24) & (!\sec|Add0~47\ & VCC))
-- \sec|Add0~49\ = CARRY((\sec|q_out\(24) & !\sec|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(24),
	datad => VCC,
	cin => \sec|Add0~47\,
	combout => \sec|Add0~48_combout\,
	cout => \sec|Add0~49\);

-- Location: LCCOMB_X14_Y5_N24
\sec|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|Add0~50_combout\ = \sec|Add0~49\ $ (\sec|q_out\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sec|q_out\(25),
	cin => \sec|Add0~49\,
	combout => \sec|Add0~50_combout\);

-- Location: LCCOMB_X15_Y5_N2
\sec|q_out[25]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[25]~1_combout\ = (\sec|Add0~50_combout\ & (((!\sec|q_out\(25)) # (!\sec|q_out\(24))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(24),
	datac => \sec|q_out\(25),
	datad => \sec|Add0~50_combout\,
	combout => \sec|q_out[25]~1_combout\);

-- Location: FF_X15_Y5_N3
\sec|q_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(25));

-- Location: LCCOMB_X15_Y5_N4
\sec|q_out[24]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[24]~0_combout\ = (\sec|Add0~48_combout\ & (((!\sec|q_out\(24)) # (!\sec|q_out\(25))) # (!\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(0),
	datab => \sec|q_out\(25),
	datac => \sec|q_out\(24),
	datad => \sec|Add0~48_combout\,
	combout => \sec|q_out[24]~0_combout\);

-- Location: FF_X15_Y5_N5
\sec|q_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(24));

-- Location: LCCOMB_X15_Y5_N16
\cnt|q_out[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[0]~1_combout\ = (\cmp1|is_bigger~combout\) # ((\sec|q_out\(24) & (!\sec|q_out\(0) & \sec|q_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|is_bigger~combout\,
	datab => \sec|q_out\(24),
	datac => \sec|q_out\(0),
	datad => \sec|q_out\(25),
	combout => \cnt|q_out[0]~1_combout\);

-- Location: FF_X14_Y2_N29
\cnt|q_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[0]~3_combout\,
	ena => \cnt|q_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(0));

-- Location: LCCOMB_X14_Y2_N18
\cnt|q_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[2]~2_combout\ = (!\cmp1|is_bigger~combout\ & (\cnt|q_out\(2) $ (((\cnt|q_out\(0) & \cnt|q_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|is_bigger~combout\,
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(2),
	datad => \cnt|q_out\(1),
	combout => \cnt|q_out[2]~2_combout\);

-- Location: FF_X14_Y2_N19
\cnt|q_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[2]~2_combout\,
	ena => \cnt|q_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(2));

-- Location: LCCOMB_X14_Y2_N30
\cmp1|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp1|LessThan1~0_combout\ = (\cnt|q_out\(2)) # (\cnt|q_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|q_out\(2),
	datad => \cnt|q_out\(1),
	combout => \cmp1|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y2_N20
\cnt|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|Add0~0_combout\ = (\cnt|q_out\(0) & \cnt|q_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|q_out\(0),
	datad => \cnt|q_out\(1),
	combout => \cnt|Add0~0_combout\);

-- Location: LCCOMB_X14_Y2_N0
\cnt|q_out[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[3]~0_combout\ = (!\cmp1|is_bigger~combout\ & (\cnt|q_out\(3) $ (((\cnt|Add0~0_combout\ & \cnt|q_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|is_bigger~combout\,
	datab => \cnt|Add0~0_combout\,
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \cnt|q_out[3]~0_combout\);

-- Location: FF_X14_Y2_N1
\cnt|q_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[3]~0_combout\,
	ena => \cnt|q_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(3));

-- Location: LCCOMB_X14_Y2_N8
\cmp1|comb~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp1|comb~5_combout\ = (\cnt|q_out\(3) & ((\cnt|q_out\(2)) # (\cnt|q_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|q_out\(2),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(1),
	combout => \cmp1|comb~5_combout\);

-- Location: LCCOMB_X14_Y2_N10
\cmp1|is_bigger\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp1|is_bigger~combout\ = (\cmp1|comb~5_combout\ & ((\cmp1|LessThan1~0_combout\) # (\cmp1|is_bigger~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|LessThan1~0_combout\,
	datac => \cmp1|comb~5_combout\,
	datad => \cmp1|is_bigger~combout\,
	combout => \cmp1|is_bigger~combout\);

-- Location: LCCOMB_X14_Y2_N6
\cnt|q_out[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[1]~4_combout\ = (!\cmp1|is_bigger~combout\ & (\cnt|q_out\(1) $ (\cnt|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|is_bigger~combout\,
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(0),
	combout => \cnt|q_out[1]~4_combout\);

-- Location: FF_X14_Y2_N7
\cnt|q_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[1]~4_combout\,
	ena => \cnt|q_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(1));

-- Location: LCCOMB_X14_Y2_N22
\dec|comb~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~57_combout\ = (\cnt|q_out\(0) & (!\cnt|q_out\(3) & (\cnt|q_out\(1) $ (!\cnt|q_out\(2))))) # (!\cnt|q_out\(0) & (!\cnt|q_out\(2) & (\cnt|q_out\(1) $ (!\cnt|q_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~57_combout\);

-- Location: LCCOMB_X14_Y2_N4
\dec|comb~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~56_combout\ = (\cnt|q_out\(1) & (!\cnt|q_out\(3) & ((!\cnt|q_out\(2)) # (!\cnt|q_out\(0))))) # (!\cnt|q_out\(1) & ((\cnt|q_out\(3) $ (\cnt|q_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~56_combout\);

-- Location: LCCOMB_X14_Y2_N2
\dec|output[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(6) = (!\dec|comb~56_combout\ & ((\dec|comb~57_combout\) # (\dec|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|comb~57_combout\,
	datac => \dec|comb~56_combout\,
	datad => \dec|output\(6),
	combout => \dec|output\(6));

-- Location: LCCOMB_X13_Y2_N18
\dec|comb~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~60_combout\ = (\cnt|q_out\(1) & (!\cnt|q_out\(0) & (\cnt|q_out\(3) $ (\cnt|q_out\(2))))) # (!\cnt|q_out\(1) & ((\cnt|q_out\(3) & ((!\cnt|q_out\(2)))) # (!\cnt|q_out\(3) & ((\cnt|q_out\(2)) # (!\cnt|q_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~60_combout\);

-- Location: LCCOMB_X13_Y2_N8
\dec|comb~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~61_combout\ = (!\cnt|q_out\(3) & ((\cnt|q_out\(1) & ((\cnt|q_out\(0)) # (!\cnt|q_out\(2)))) # (!\cnt|q_out\(1) & (\cnt|q_out\(0) & !\cnt|q_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~61_combout\);

-- Location: LCCOMB_X13_Y2_N20
\dec|output[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(5) = (!\dec|comb~60_combout\ & ((\dec|comb~61_combout\) # (\dec|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec|comb~60_combout\,
	datac => \dec|comb~61_combout\,
	datad => \dec|output\(5),
	combout => \dec|output\(5));

-- Location: LCCOMB_X14_Y2_N12
\dec|comb~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~54_combout\ = (!\cnt|q_out\(0) & (((\cnt|q_out\(1) & !\cnt|q_out\(3))) # (!\cnt|q_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~54_combout\);

-- Location: LCCOMB_X14_Y2_N14
\dec|comb~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~55_combout\ = (\cnt|q_out\(1) & (\cnt|q_out\(0) & (!\cnt|q_out\(3)))) # (!\cnt|q_out\(1) & ((\cnt|q_out\(2) & ((!\cnt|q_out\(3)))) # (!\cnt|q_out\(2) & (\cnt|q_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~55_combout\);

-- Location: LCCOMB_X14_Y2_N16
\dec|output[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(4) = (!\dec|comb~54_combout\ & ((\dec|comb~55_combout\) # (\dec|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|comb~54_combout\,
	datac => \dec|comb~55_combout\,
	datad => \dec|output\(4),
	combout => \dec|output\(4));

-- Location: LCCOMB_X13_Y2_N28
\dec|comb~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~63_combout\ = (!\cnt|q_out\(3) & ((\cnt|q_out\(1) & (\cnt|q_out\(0) & \cnt|q_out\(2))) # (!\cnt|q_out\(1) & (\cnt|q_out\(0) $ (\cnt|q_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~63_combout\);

-- Location: LCCOMB_X13_Y2_N14
\dec|comb~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~62_combout\ = (\cnt|q_out\(2) & (!\cnt|q_out\(3) & (\cnt|q_out\(1) $ (\cnt|q_out\(0))))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(1) $ (\cnt|q_out\(3))) # (!\cnt|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~62_combout\);

-- Location: LCCOMB_X13_Y2_N2
\dec|output[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(3) = (!\dec|comb~62_combout\ & ((\dec|comb~63_combout\) # (\dec|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec|comb~63_combout\,
	datac => \dec|comb~62_combout\,
	datad => \dec|output\(3),
	combout => \dec|output\(3));

-- Location: LCCOMB_X13_Y2_N24
\dec|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|Equal0~0_combout\ = (\cnt|q_out\(1) & (!\cnt|q_out\(0) & (!\cnt|q_out\(3) & !\cnt|q_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y2_N10
\dec|comb~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~66_combout\ = (\cnt|q_out\(2) & (((!\cnt|q_out\(3))))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(0) $ (\cnt|q_out\(3))) # (!\cnt|q_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~66_combout\);

-- Location: LCCOMB_X12_Y2_N0
\dec|output[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(2) = (!\dec|comb~66_combout\ & ((\dec|Equal0~0_combout\) # (\dec|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec|Equal0~0_combout\,
	datac => \dec|comb~66_combout\,
	datad => \dec|output\(2),
	combout => \dec|output\(2));

-- Location: LCCOMB_X13_Y2_N4
\dec|comb~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~65_combout\ = (!\cnt|q_out\(3) & (\cnt|q_out\(2) & (\cnt|q_out\(1) $ (\cnt|q_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~65_combout\);

-- Location: LCCOMB_X13_Y2_N30
\dec|comb~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~64_combout\ = (\cnt|q_out\(1) & ((\cnt|q_out\(0) & (!\cnt|q_out\(3))) # (!\cnt|q_out\(0) & ((!\cnt|q_out\(2)))))) # (!\cnt|q_out\(1) & (((!\cnt|q_out\(0) & !\cnt|q_out\(3))) # (!\cnt|q_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~64_combout\);

-- Location: LCCOMB_X13_Y2_N16
\dec|output[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(1) = (!\dec|comb~64_combout\ & ((\dec|comb~65_combout\) # (\dec|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec|comb~65_combout\,
	datac => \dec|comb~64_combout\,
	datad => \dec|output\(1),
	combout => \dec|output\(1));

-- Location: LCCOMB_X13_Y2_N12
\dec|comb~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~59_combout\ = (!\cnt|q_out\(1) & (!\cnt|q_out\(3) & (\cnt|q_out\(0) $ (\cnt|q_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~59_combout\);

-- Location: LCCOMB_X13_Y2_N22
\dec|comb~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~58_combout\ = (\cnt|q_out\(1) & (((!\cnt|q_out\(0) & !\cnt|q_out\(2))) # (!\cnt|q_out\(3)))) # (!\cnt|q_out\(1) & (\cnt|q_out\(2) $ (((\cnt|q_out\(3)) # (!\cnt|q_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(3),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~58_combout\);

-- Location: LCCOMB_X13_Y2_N6
\dec|output[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(0) = (!\dec|comb~58_combout\ & ((\dec|comb~59_combout\) # (\dec|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|comb~59_combout\,
	datac => \dec|comb~58_combout\,
	datad => \dec|output\(0),
	combout => \dec|output\(0));

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


