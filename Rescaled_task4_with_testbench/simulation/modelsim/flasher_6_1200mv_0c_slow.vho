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

-- DATE "04/16/2023 18:30:58"

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
-- HEX0[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \cmp1|is_bigger~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \sec|q_out[0]~3_combout\ : std_logic;
SIGNAL \cmp0|comb~0_combout\ : std_logic;
SIGNAL \sec|q_out[1]~0_combout\ : std_logic;
SIGNAL \sec|q_out[2]~2_combout\ : std_logic;
SIGNAL \sec|q_out[3]~1_combout\ : std_logic;
SIGNAL \cmp0|Equal0~0_combout\ : std_logic;
SIGNAL \cnt|q_out[0]~3_combout\ : std_logic;
SIGNAL \dec|output[3]~17_combout\ : std_logic;
SIGNAL \cnt|q_out[3]~2_combout\ : std_logic;
SIGNAL \cmp1|comb~5_combout\ : std_logic;
SIGNAL \cmp1|LessThan1~0_combout\ : std_logic;
SIGNAL \cmp1|is_bigger~combout\ : std_logic;
SIGNAL \cmp1|is_bigger~clkctrl_outclk\ : std_logic;
SIGNAL \cnt|q_out[1]~4_combout\ : std_logic;
SIGNAL \cnt|q_out[2]~5_combout\ : std_logic;
SIGNAL \dec|comb~57_combout\ : std_logic;
SIGNAL \dec|comb~56_combout\ : std_logic;
SIGNAL \dec|comb~61_combout\ : std_logic;
SIGNAL \dec|comb~60_combout\ : std_logic;
SIGNAL \dec|comb~55_combout\ : std_logic;
SIGNAL \dec|comb~54_combout\ : std_logic;
SIGNAL \dec|comb~63_combout\ : std_logic;
SIGNAL \dec|comb~62_combout\ : std_logic;
SIGNAL \dec|Equal0~0_combout\ : std_logic;
SIGNAL \dec|comb~66_combout\ : std_logic;
SIGNAL \dec|comb~65_combout\ : std_logic;
SIGNAL \dec|comb~64_combout\ : std_logic;
SIGNAL \dec|comb~59_combout\ : std_logic;
SIGNAL \dec|comb~58_combout\ : std_logic;
SIGNAL \sec|q_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt|q_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dec|output\ : std_logic_vector(0 TO 6);
SIGNAL \cmp1|ALT_INV_is_bigger~clkctrl_outclk\ : std_logic;
SIGNAL \cmp0|ALT_INV_comb~0_combout\ : std_logic;

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

\cmp1|is_bigger~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cmp1|is_bigger~combout\);
\cmp1|ALT_INV_is_bigger~clkctrl_outclk\ <= NOT \cmp1|is_bigger~clkctrl_outclk\;
\cmp0|ALT_INV_comb~0_combout\ <= NOT \cmp0|comb~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N9
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

-- Location: LCCOMB_X19_Y1_N0
\sec|q_out[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[0]~3_combout\ = !\sec|q_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|q_out\(0),
	combout => \sec|q_out[0]~3_combout\);

-- Location: LCCOMB_X19_Y1_N30
\cmp0|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp0|comb~0_combout\ = (\sec|q_out\(3) & ((\sec|q_out\(2)) # ((\sec|q_out\(0) & \sec|q_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(2),
	datab => \sec|q_out\(0),
	datac => \sec|q_out\(1),
	datad => \sec|q_out\(3),
	combout => \cmp0|comb~0_combout\);

-- Location: FF_X19_Y1_N1
\sec|q_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[0]~3_combout\,
	clrn => \cmp0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(0));

-- Location: LCCOMB_X19_Y1_N4
\sec|q_out[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[1]~0_combout\ = \sec|q_out\(1) $ (\sec|q_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|q_out\(1),
	datad => \sec|q_out\(0),
	combout => \sec|q_out[1]~0_combout\);

-- Location: FF_X19_Y1_N5
\sec|q_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[1]~0_combout\,
	clrn => \cmp0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(1));

-- Location: LCCOMB_X19_Y1_N26
\sec|q_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[2]~2_combout\ = \sec|q_out\(2) $ (((\sec|q_out\(1) & \sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|q_out\(1),
	datac => \sec|q_out\(2),
	datad => \sec|q_out\(0),
	combout => \sec|q_out[2]~2_combout\);

-- Location: FF_X19_Y1_N27
\sec|q_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[2]~2_combout\,
	clrn => \cmp0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(2));

-- Location: LCCOMB_X19_Y1_N6
\sec|q_out[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec|q_out[3]~1_combout\ = \sec|q_out\(3) $ (((\sec|q_out\(2) & (\sec|q_out\(1) & \sec|q_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(2),
	datab => \sec|q_out\(1),
	datac => \sec|q_out\(3),
	datad => \sec|q_out\(0),
	combout => \sec|q_out[3]~1_combout\);

-- Location: FF_X19_Y1_N7
\sec|q_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sec|q_out[3]~1_combout\,
	clrn => \cmp0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|q_out\(3));

-- Location: LCCOMB_X19_Y1_N20
\cmp0|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp0|Equal0~0_combout\ = (\sec|q_out\(3) & (!\sec|q_out\(2) & (\sec|q_out\(1) & !\sec|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|q_out\(3),
	datab => \sec|q_out\(2),
	datac => \sec|q_out\(1),
	datad => \sec|q_out\(0),
	combout => \cmp0|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y1_N8
\cnt|q_out[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[0]~3_combout\ = \cnt|q_out\(0) $ (\cmp0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|q_out\(0),
	datad => \cmp0|Equal0~0_combout\,
	combout => \cnt|q_out[0]~3_combout\);

-- Location: LCCOMB_X19_Y1_N2
\dec|output[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output[3]~17_combout\ = (\cnt|q_out\(0) & \cnt|q_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|q_out\(0),
	datad => \cnt|q_out\(1),
	combout => \dec|output[3]~17_combout\);

-- Location: LCCOMB_X19_Y1_N12
\cnt|q_out[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[3]~2_combout\ = \cnt|q_out\(3) $ (((\cnt|q_out\(2) & (\dec|output[3]~17_combout\ & \cmp0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \dec|output[3]~17_combout\,
	datac => \cnt|q_out\(3),
	datad => \cmp0|Equal0~0_combout\,
	combout => \cnt|q_out[3]~2_combout\);

-- Location: FF_X19_Y1_N13
\cnt|q_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[3]~2_combout\,
	clrn => \cmp1|ALT_INV_is_bigger~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(3));

-- Location: LCCOMB_X15_Y1_N6
\cmp1|comb~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp1|comb~5_combout\ = (\cnt|q_out\(3) & ((\cnt|q_out\(2)) # (\cnt|q_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \cmp1|comb~5_combout\);

-- Location: LCCOMB_X15_Y1_N8
\cmp1|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp1|LessThan1~0_combout\ = (\cnt|q_out\(2)) # (\cnt|q_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datac => \cnt|q_out\(1),
	combout => \cmp1|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\cmp1|is_bigger\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp1|is_bigger~combout\ = (\cmp1|comb~5_combout\ & ((\cmp1|LessThan1~0_combout\) # (\cmp1|is_bigger~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|comb~5_combout\,
	datac => \cmp1|LessThan1~0_combout\,
	datad => \cmp1|is_bigger~combout\,
	combout => \cmp1|is_bigger~combout\);

-- Location: CLKCTRL_G18
\cmp1|is_bigger~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cmp1|is_bigger~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cmp1|is_bigger~clkctrl_outclk\);

-- Location: FF_X19_Y1_N9
\cnt|q_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[0]~3_combout\,
	clrn => \cmp1|ALT_INV_is_bigger~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(0));

-- Location: LCCOMB_X19_Y1_N18
\cnt|q_out[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[1]~4_combout\ = \cnt|q_out\(1) $ (((\cnt|q_out\(0) & \cmp0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cmp0|Equal0~0_combout\,
	combout => \cnt|q_out[1]~4_combout\);

-- Location: FF_X19_Y1_N19
\cnt|q_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[1]~4_combout\,
	clrn => \cmp1|ALT_INV_is_bigger~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(1));

-- Location: LCCOMB_X19_Y1_N22
\cnt|q_out[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|q_out[2]~5_combout\ = \cnt|q_out\(2) $ (((\cnt|q_out\(1) & (\cnt|q_out\(0) & \cmp0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(2),
	datad => \cmp0|Equal0~0_combout\,
	combout => \cnt|q_out[2]~5_combout\);

-- Location: FF_X19_Y1_N23
\cnt|q_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|q_out[2]~5_combout\,
	clrn => \cmp1|ALT_INV_is_bigger~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|q_out\(2));

-- Location: LCCOMB_X15_Y1_N24
\dec|comb~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~57_combout\ = (\cnt|q_out\(0) & (!\cnt|q_out\(3) & (\cnt|q_out\(2) $ (!\cnt|q_out\(1))))) # (!\cnt|q_out\(0) & (!\cnt|q_out\(2) & (\cnt|q_out\(1) $ (!\cnt|q_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~57_combout\);

-- Location: LCCOMB_X15_Y1_N14
\dec|comb~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~56_combout\ = (\cnt|q_out\(2) & (!\cnt|q_out\(3) & ((!\cnt|q_out\(1)) # (!\cnt|q_out\(0))))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(1) $ (\cnt|q_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~56_combout\);

-- Location: LCCOMB_X14_Y1_N24
\dec|output[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(6) = (!\dec|comb~56_combout\ & ((\dec|comb~57_combout\) # (\dec|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec|comb~57_combout\,
	datac => \dec|comb~56_combout\,
	datad => \dec|output\(6),
	combout => \dec|output\(6));

-- Location: LCCOMB_X15_Y1_N28
\dec|comb~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~61_combout\ = (!\cnt|q_out\(3) & ((\cnt|q_out\(2) & (\cnt|q_out\(0) & \cnt|q_out\(1))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(0)) # (\cnt|q_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~61_combout\);

-- Location: LCCOMB_X15_Y1_N26
\dec|comb~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~60_combout\ = (\cnt|q_out\(0) & (!\cnt|q_out\(1) & (\cnt|q_out\(2) $ (\cnt|q_out\(3))))) # (!\cnt|q_out\(0) & ((\cnt|q_out\(2) & ((!\cnt|q_out\(3)))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(3)) # (!\cnt|q_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~60_combout\);

-- Location: LCCOMB_X15_Y1_N20
\dec|output[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(5) = (!\dec|comb~60_combout\ & ((\dec|comb~61_combout\) # (\dec|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec|comb~61_combout\,
	datac => \dec|comb~60_combout\,
	datad => \dec|output\(5),
	combout => \dec|output\(5));

-- Location: LCCOMB_X19_Y1_N14
\dec|comb~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~55_combout\ = (\cnt|q_out\(1) & (!\cnt|q_out\(3) & (\cnt|q_out\(0)))) # (!\cnt|q_out\(1) & ((\cnt|q_out\(2) & (!\cnt|q_out\(3))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(3),
	datac => \cnt|q_out\(0),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~55_combout\);

-- Location: LCCOMB_X19_Y1_N28
\dec|comb~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~54_combout\ = (!\cnt|q_out\(0) & (((\cnt|q_out\(1) & !\cnt|q_out\(3))) # (!\cnt|q_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(3),
	datac => \cnt|q_out\(0),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~54_combout\);

-- Location: LCCOMB_X20_Y1_N28
\dec|output[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(4) = (!\dec|comb~54_combout\ & ((\dec|comb~55_combout\) # (\dec|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|comb~55_combout\,
	datab => \dec|comb~54_combout\,
	datad => \dec|output\(4),
	combout => \dec|output\(4));

-- Location: LCCOMB_X15_Y1_N0
\dec|comb~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~63_combout\ = (!\cnt|q_out\(3) & ((\cnt|q_out\(2) & (\cnt|q_out\(0) $ (!\cnt|q_out\(1)))) # (!\cnt|q_out\(2) & (\cnt|q_out\(0) & !\cnt|q_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~63_combout\);

-- Location: LCCOMB_X15_Y1_N22
\dec|comb~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~62_combout\ = (\cnt|q_out\(2) & (!\cnt|q_out\(3) & (\cnt|q_out\(0) $ (\cnt|q_out\(1))))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(1) $ (\cnt|q_out\(3))) # (!\cnt|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~62_combout\);

-- Location: LCCOMB_X15_Y1_N10
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

-- Location: LCCOMB_X19_Y1_N16
\dec|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|Equal0~0_combout\ = (\cnt|q_out\(1) & (!\cnt|q_out\(3) & (!\cnt|q_out\(0) & !\cnt|q_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(3),
	datac => \cnt|q_out\(0),
	datad => \cnt|q_out\(2),
	combout => \dec|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y1_N24
\dec|comb~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~66_combout\ = (\cnt|q_out\(2) & (((!\cnt|q_out\(3))))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(3) $ (\cnt|q_out\(0))) # (!\cnt|q_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(1),
	datab => \cnt|q_out\(3),
	datac => \cnt|q_out\(0),
	datad => \cnt|q_out\(2),
	combout => \dec|comb~66_combout\);

-- Location: LCCOMB_X20_Y1_N10
\dec|output[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(2) = (!\dec|comb~66_combout\ & ((\dec|Equal0~0_combout\) # (\dec|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|Equal0~0_combout\,
	datac => \dec|comb~66_combout\,
	datad => \dec|output\(2),
	combout => \dec|output\(2));

-- Location: LCCOMB_X15_Y1_N4
\dec|comb~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~65_combout\ = (\cnt|q_out\(2) & (!\cnt|q_out\(3) & (\cnt|q_out\(0) $ (\cnt|q_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~65_combout\);

-- Location: LCCOMB_X15_Y1_N30
\dec|comb~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~64_combout\ = (\cnt|q_out\(2) & (!\cnt|q_out\(3) & (\cnt|q_out\(0) $ (!\cnt|q_out\(1))))) # (!\cnt|q_out\(2) & (((!\cnt|q_out\(3)) # (!\cnt|q_out\(1))) # (!\cnt|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~64_combout\);

-- Location: LCCOMB_X14_Y1_N10
\dec|output[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(1) = (!\dec|comb~64_combout\ & ((\dec|comb~65_combout\) # (\dec|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|comb~65_combout\,
	datac => \dec|comb~64_combout\,
	datad => \dec|output\(1),
	combout => \dec|output\(1));

-- Location: LCCOMB_X15_Y1_N12
\dec|comb~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~59_combout\ = (!\cnt|q_out\(1) & (!\cnt|q_out\(3) & (\cnt|q_out\(2) $ (\cnt|q_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~59_combout\);

-- Location: LCCOMB_X15_Y1_N18
\dec|comb~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|comb~58_combout\ = (\cnt|q_out\(2) & (!\cnt|q_out\(3) & ((\cnt|q_out\(0)) # (\cnt|q_out\(1))))) # (!\cnt|q_out\(2) & ((\cnt|q_out\(1) $ (\cnt|q_out\(3))) # (!\cnt|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|q_out\(2),
	datab => \cnt|q_out\(0),
	datac => \cnt|q_out\(1),
	datad => \cnt|q_out\(3),
	combout => \dec|comb~58_combout\);

-- Location: LCCOMB_X15_Y1_N16
\dec|output[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|output\(0) = (!\dec|comb~58_combout\ & ((\dec|comb~59_combout\) # (\dec|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|comb~59_combout\,
	datab => \dec|comb~58_combout\,
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


