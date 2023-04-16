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

-- DATE "04/16/2023 13:47:47"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	synchronous_counter IS
    PORT (
	enable : IN std_logic;
	clock : IN std_logic;
	clear : IN std_logic;
	Q : OUT IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0)
	);
END synchronous_counter;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF synchronous_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \q_out[0]~16_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \q_out[0]~18_combout\ : std_logic;
SIGNAL \q_out[0]~17\ : std_logic;
SIGNAL \q_out[1]~19_combout\ : std_logic;
SIGNAL \q_out[1]~20\ : std_logic;
SIGNAL \q_out[2]~21_combout\ : std_logic;
SIGNAL \q_out[2]~22\ : std_logic;
SIGNAL \q_out[3]~23_combout\ : std_logic;
SIGNAL \q_out[3]~24\ : std_logic;
SIGNAL \q_out[4]~25_combout\ : std_logic;
SIGNAL \q_out[4]~26\ : std_logic;
SIGNAL \q_out[5]~27_combout\ : std_logic;
SIGNAL \q_out[5]~28\ : std_logic;
SIGNAL \q_out[6]~29_combout\ : std_logic;
SIGNAL \q_out[6]~30\ : std_logic;
SIGNAL \q_out[7]~31_combout\ : std_logic;
SIGNAL \q_out[7]~32\ : std_logic;
SIGNAL \q_out[8]~33_combout\ : std_logic;
SIGNAL \q_out[8]~34\ : std_logic;
SIGNAL \q_out[9]~35_combout\ : std_logic;
SIGNAL \q_out[9]~36\ : std_logic;
SIGNAL \q_out[10]~37_combout\ : std_logic;
SIGNAL \q_out[10]~38\ : std_logic;
SIGNAL \q_out[11]~39_combout\ : std_logic;
SIGNAL \q_out[11]~40\ : std_logic;
SIGNAL \q_out[12]~41_combout\ : std_logic;
SIGNAL \q_out[12]~42\ : std_logic;
SIGNAL \q_out[13]~43_combout\ : std_logic;
SIGNAL \q_out[13]~44\ : std_logic;
SIGNAL \q_out[14]~45_combout\ : std_logic;
SIGNAL \q_out[14]~46\ : std_logic;
SIGNAL \q_out[15]~47_combout\ : std_logic;
SIGNAL q_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clear~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enable <= enable;
ww_clock <= clock;
ww_clear <= clear;
Q <= IEEE.NUMERIC_STD.UNSIGNED(ww_Q);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y31_N2
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\Q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\Q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\Q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\Q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\Q[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(8),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\Q[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(9),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\Q[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(10),
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\Q[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(11),
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\Q[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(12),
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\Q[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(13),
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\Q[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(14),
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\Q[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q_out(15),
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y27_N0
\q_out[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[0]~16_combout\ = q_out(0) $ (VCC)
-- \q_out[0]~17\ = CARRY(q_out(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q_out(0),
	datad => VCC,
	combout => \q_out[0]~16_combout\,
	cout => \q_out[0]~17\);

-- Location: IOIBUF_X33_Y27_N8
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X25_Y27_N24
\q_out[0]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[0]~18_combout\ = (\enable~input_o\) # (!\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \clear~input_o\,
	combout => \q_out[0]~18_combout\);

-- Location: FF_X24_Y27_N1
\q_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[0]~16_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(0));

-- Location: LCCOMB_X24_Y27_N2
\q_out[1]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[1]~19_combout\ = (q_out(1) & (!\q_out[0]~17\)) # (!q_out(1) & ((\q_out[0]~17\) # (GND)))
-- \q_out[1]~20\ = CARRY((!\q_out[0]~17\) # (!q_out(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(1),
	datad => VCC,
	cin => \q_out[0]~17\,
	combout => \q_out[1]~19_combout\,
	cout => \q_out[1]~20\);

-- Location: FF_X24_Y27_N3
\q_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[1]~19_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(1));

-- Location: LCCOMB_X24_Y27_N4
\q_out[2]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[2]~21_combout\ = (q_out(2) & (\q_out[1]~20\ $ (GND))) # (!q_out(2) & (!\q_out[1]~20\ & VCC))
-- \q_out[2]~22\ = CARRY((q_out(2) & !\q_out[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(2),
	datad => VCC,
	cin => \q_out[1]~20\,
	combout => \q_out[2]~21_combout\,
	cout => \q_out[2]~22\);

-- Location: FF_X24_Y27_N5
\q_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[2]~21_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(2));

-- Location: LCCOMB_X24_Y27_N6
\q_out[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[3]~23_combout\ = (q_out(3) & (!\q_out[2]~22\)) # (!q_out(3) & ((\q_out[2]~22\) # (GND)))
-- \q_out[3]~24\ = CARRY((!\q_out[2]~22\) # (!q_out(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q_out(3),
	datad => VCC,
	cin => \q_out[2]~22\,
	combout => \q_out[3]~23_combout\,
	cout => \q_out[3]~24\);

-- Location: FF_X24_Y27_N7
\q_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[3]~23_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(3));

-- Location: LCCOMB_X24_Y27_N8
\q_out[4]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[4]~25_combout\ = (q_out(4) & (\q_out[3]~24\ $ (GND))) # (!q_out(4) & (!\q_out[3]~24\ & VCC))
-- \q_out[4]~26\ = CARRY((q_out(4) & !\q_out[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(4),
	datad => VCC,
	cin => \q_out[3]~24\,
	combout => \q_out[4]~25_combout\,
	cout => \q_out[4]~26\);

-- Location: FF_X24_Y27_N9
\q_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[4]~25_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(4));

-- Location: LCCOMB_X24_Y27_N10
\q_out[5]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[5]~27_combout\ = (q_out(5) & (!\q_out[4]~26\)) # (!q_out(5) & ((\q_out[4]~26\) # (GND)))
-- \q_out[5]~28\ = CARRY((!\q_out[4]~26\) # (!q_out(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q_out(5),
	datad => VCC,
	cin => \q_out[4]~26\,
	combout => \q_out[5]~27_combout\,
	cout => \q_out[5]~28\);

-- Location: FF_X24_Y27_N11
\q_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[5]~27_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(5));

-- Location: LCCOMB_X24_Y27_N12
\q_out[6]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[6]~29_combout\ = (q_out(6) & (\q_out[5]~28\ $ (GND))) # (!q_out(6) & (!\q_out[5]~28\ & VCC))
-- \q_out[6]~30\ = CARRY((q_out(6) & !\q_out[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q_out(6),
	datad => VCC,
	cin => \q_out[5]~28\,
	combout => \q_out[6]~29_combout\,
	cout => \q_out[6]~30\);

-- Location: FF_X24_Y27_N13
\q_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[6]~29_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(6));

-- Location: LCCOMB_X24_Y27_N14
\q_out[7]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[7]~31_combout\ = (q_out(7) & (!\q_out[6]~30\)) # (!q_out(7) & ((\q_out[6]~30\) # (GND)))
-- \q_out[7]~32\ = CARRY((!\q_out[6]~30\) # (!q_out(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(7),
	datad => VCC,
	cin => \q_out[6]~30\,
	combout => \q_out[7]~31_combout\,
	cout => \q_out[7]~32\);

-- Location: FF_X24_Y27_N15
\q_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[7]~31_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(7));

-- Location: LCCOMB_X24_Y27_N16
\q_out[8]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[8]~33_combout\ = (q_out(8) & (\q_out[7]~32\ $ (GND))) # (!q_out(8) & (!\q_out[7]~32\ & VCC))
-- \q_out[8]~34\ = CARRY((q_out(8) & !\q_out[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(8),
	datad => VCC,
	cin => \q_out[7]~32\,
	combout => \q_out[8]~33_combout\,
	cout => \q_out[8]~34\);

-- Location: FF_X24_Y27_N17
\q_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[8]~33_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(8));

-- Location: LCCOMB_X24_Y27_N18
\q_out[9]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[9]~35_combout\ = (q_out(9) & (!\q_out[8]~34\)) # (!q_out(9) & ((\q_out[8]~34\) # (GND)))
-- \q_out[9]~36\ = CARRY((!\q_out[8]~34\) # (!q_out(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(9),
	datad => VCC,
	cin => \q_out[8]~34\,
	combout => \q_out[9]~35_combout\,
	cout => \q_out[9]~36\);

-- Location: FF_X24_Y27_N19
\q_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[9]~35_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(9));

-- Location: LCCOMB_X24_Y27_N20
\q_out[10]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[10]~37_combout\ = (q_out(10) & (\q_out[9]~36\ $ (GND))) # (!q_out(10) & (!\q_out[9]~36\ & VCC))
-- \q_out[10]~38\ = CARRY((q_out(10) & !\q_out[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(10),
	datad => VCC,
	cin => \q_out[9]~36\,
	combout => \q_out[10]~37_combout\,
	cout => \q_out[10]~38\);

-- Location: FF_X24_Y27_N21
\q_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[10]~37_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(10));

-- Location: LCCOMB_X24_Y27_N22
\q_out[11]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[11]~39_combout\ = (q_out(11) & (!\q_out[10]~38\)) # (!q_out(11) & ((\q_out[10]~38\) # (GND)))
-- \q_out[11]~40\ = CARRY((!\q_out[10]~38\) # (!q_out(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q_out(11),
	datad => VCC,
	cin => \q_out[10]~38\,
	combout => \q_out[11]~39_combout\,
	cout => \q_out[11]~40\);

-- Location: FF_X24_Y27_N23
\q_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[11]~39_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(11));

-- Location: LCCOMB_X24_Y27_N24
\q_out[12]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[12]~41_combout\ = (q_out(12) & (\q_out[11]~40\ $ (GND))) # (!q_out(12) & (!\q_out[11]~40\ & VCC))
-- \q_out[12]~42\ = CARRY((q_out(12) & !\q_out[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(12),
	datad => VCC,
	cin => \q_out[11]~40\,
	combout => \q_out[12]~41_combout\,
	cout => \q_out[12]~42\);

-- Location: FF_X24_Y27_N25
\q_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[12]~41_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(12));

-- Location: LCCOMB_X24_Y27_N26
\q_out[13]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[13]~43_combout\ = (q_out(13) & (!\q_out[12]~42\)) # (!q_out(13) & ((\q_out[12]~42\) # (GND)))
-- \q_out[13]~44\ = CARRY((!\q_out[12]~42\) # (!q_out(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q_out(13),
	datad => VCC,
	cin => \q_out[12]~42\,
	combout => \q_out[13]~43_combout\,
	cout => \q_out[13]~44\);

-- Location: FF_X24_Y27_N27
\q_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[13]~43_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(13));

-- Location: LCCOMB_X24_Y27_N28
\q_out[14]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[14]~45_combout\ = (q_out(14) & (\q_out[13]~44\ $ (GND))) # (!q_out(14) & (!\q_out[13]~44\ & VCC))
-- \q_out[14]~46\ = CARRY((q_out(14) & !\q_out[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q_out(14),
	datad => VCC,
	cin => \q_out[13]~44\,
	combout => \q_out[14]~45_combout\,
	cout => \q_out[14]~46\);

-- Location: FF_X24_Y27_N29
\q_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[14]~45_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(14));

-- Location: LCCOMB_X24_Y27_N30
\q_out[15]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q_out[15]~47_combout\ = q_out(15) $ (\q_out[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q_out(15),
	cin => \q_out[14]~46\,
	combout => \q_out[15]~47_combout\);

-- Location: FF_X24_Y27_N31
\q_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \q_out[15]~47_combout\,
	sclr => \ALT_INV_clear~input_o\,
	ena => \q_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_out(15));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;
END structure;


