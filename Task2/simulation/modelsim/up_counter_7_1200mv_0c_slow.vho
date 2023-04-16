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

-- DATE "04/16/2023 11:55:18"

-- 
-- Device: Altera EP4CGX30CF19C7 Package FBGA324
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
-- ~ALTERA_NCEO~	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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

ENTITY 	up_counter IS
    PORT (
	en : IN std_logic;
	clock : IN std_logic;
	clear : IN std_logic;
	Q_tot : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END up_counter;

-- Design Ports Information
-- Q_tot[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[8]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[9]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[11]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_tot[15]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF up_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_Q_tot : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q_tot[0]~output_o\ : std_logic;
SIGNAL \Q_tot[1]~output_o\ : std_logic;
SIGNAL \Q_tot[2]~output_o\ : std_logic;
SIGNAL \Q_tot[3]~output_o\ : std_logic;
SIGNAL \Q_tot[4]~output_o\ : std_logic;
SIGNAL \Q_tot[5]~output_o\ : std_logic;
SIGNAL \Q_tot[6]~output_o\ : std_logic;
SIGNAL \Q_tot[7]~output_o\ : std_logic;
SIGNAL \Q_tot[8]~output_o\ : std_logic;
SIGNAL \Q_tot[9]~output_o\ : std_logic;
SIGNAL \Q_tot[10]~output_o\ : std_logic;
SIGNAL \Q_tot[11]~output_o\ : std_logic;
SIGNAL \Q_tot[12]~output_o\ : std_logic;
SIGNAL \Q_tot[13]~output_o\ : std_logic;
SIGNAL \Q_tot[14]~output_o\ : std_logic;
SIGNAL \Q_tot[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \TFF0|t_tmp~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \TFF0|t_tmp~q\ : std_logic;
SIGNAL \F1:1:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:1:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:2:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:2:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:3:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:3:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:4:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:4:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:5:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:5:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:6:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:6:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:7:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:7:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:8:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:8:TFFx|t_tmp~q\ : std_logic;
SIGNAL \t_tmp[9]~0_combout\ : std_logic;
SIGNAL \F1:9:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:9:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:10:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:10:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:11:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:11:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:12:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:12:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:13:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:13:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:14:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:14:TFFx|t_tmp~q\ : std_logic;
SIGNAL \F1:15:TFFx|t_tmp~0_combout\ : std_logic;
SIGNAL \F1:15:TFFx|t_tmp~q\ : std_logic;
SIGNAL t_tmp : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clear~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_clock <= clock;
ww_clear <= clear;
Q_tot <= ww_Q_tot;
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

-- Location: IOOBUF_X52_Y30_N9
\Q_tot[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TFF0|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[0]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\Q_tot[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:1:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[1]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\Q_tot[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:2:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\Q_tot[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:3:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[3]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\Q_tot[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:4:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[4]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\Q_tot[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:5:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[5]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\Q_tot[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:6:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[6]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\Q_tot[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:7:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\Q_tot[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:8:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[8]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\Q_tot[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:9:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[9]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\Q_tot[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:10:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[10]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\Q_tot[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:11:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[11]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\Q_tot[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:12:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[12]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\Q_tot[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:13:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[13]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\Q_tot[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:14:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[14]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\Q_tot[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F1:15:TFFx|t_tmp~q\,
	devoe => ww_devoe,
	o => \Q_tot[15]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
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

-- Location: IOIBUF_X52_Y31_N8
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X50_Y27_N8
\TFF0|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \TFF0|t_tmp~0_combout\ = \TFF0|t_tmp~q\ $ (\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFF0|t_tmp~q\,
	datad => \en~input_o\,
	combout => \TFF0|t_tmp~0_combout\);

-- Location: IOIBUF_X52_Y27_N1
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X50_Y27_N9
\TFF0|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TFF0|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFF0|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N18
\F1:1:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:1:TFFx|t_tmp~0_combout\ = \F1:1:TFFx|t_tmp~q\ $ (((\TFF0|t_tmp~q\ & \en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFF0|t_tmp~q\,
	datac => \F1:1:TFFx|t_tmp~q\,
	datad => \en~input_o\,
	combout => \F1:1:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N19
\F1:1:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:1:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:1:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N24
\F1:2:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:2:TFFx|t_tmp~0_combout\ = \F1:2:TFFx|t_tmp~q\ $ (((\TFF0|t_tmp~q\ & (\F1:1:TFFx|t_tmp~q\ & \en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFF0|t_tmp~q\,
	datab => \F1:1:TFFx|t_tmp~q\,
	datac => \F1:2:TFFx|t_tmp~q\,
	datad => \en~input_o\,
	combout => \F1:2:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N25
\F1:2:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:2:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:2:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N10
\t_tmp[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- t_tmp(3) = (\en~input_o\ & (\F1:2:TFFx|t_tmp~q\ & (\TFF0|t_tmp~q\ & \F1:1:TFFx|t_tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \F1:2:TFFx|t_tmp~q\,
	datac => \TFF0|t_tmp~q\,
	datad => \F1:1:TFFx|t_tmp~q\,
	combout => t_tmp(3));

-- Location: LCCOMB_X50_Y27_N30
\F1:3:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:3:TFFx|t_tmp~0_combout\ = \F1:3:TFFx|t_tmp~q\ $ (t_tmp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F1:3:TFFx|t_tmp~q\,
	datad => t_tmp(3),
	combout => \F1:3:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N31
\F1:3:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:3:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:3:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N28
\F1:4:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:4:TFFx|t_tmp~0_combout\ = \F1:4:TFFx|t_tmp~q\ $ (((\F1:3:TFFx|t_tmp~q\ & t_tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:3:TFFx|t_tmp~q\,
	datac => \F1:4:TFFx|t_tmp~q\,
	datad => t_tmp(3),
	combout => \F1:4:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N29
\F1:4:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:4:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:4:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N14
\F1:5:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:5:TFFx|t_tmp~0_combout\ = \F1:5:TFFx|t_tmp~q\ $ (((t_tmp(3) & (\F1:4:TFFx|t_tmp~q\ & \F1:3:TFFx|t_tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_tmp(3),
	datab => \F1:4:TFFx|t_tmp~q\,
	datac => \F1:5:TFFx|t_tmp~q\,
	datad => \F1:3:TFFx|t_tmp~q\,
	combout => \F1:5:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N15
\F1:5:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:5:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:5:TFFx|t_tmp~q\);

-- Location: LCCOMB_X51_Y27_N24
\t_tmp[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- t_tmp(6) = (\F1:5:TFFx|t_tmp~q\ & (\F1:4:TFFx|t_tmp~q\ & (\F1:3:TFFx|t_tmp~q\ & t_tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:5:TFFx|t_tmp~q\,
	datab => \F1:4:TFFx|t_tmp~q\,
	datac => \F1:3:TFFx|t_tmp~q\,
	datad => t_tmp(3),
	combout => t_tmp(6));

-- Location: LCCOMB_X51_Y27_N8
\F1:6:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:6:TFFx|t_tmp~0_combout\ = \F1:6:TFFx|t_tmp~q\ $ (t_tmp(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F1:6:TFFx|t_tmp~q\,
	datad => t_tmp(6),
	combout => \F1:6:TFFx|t_tmp~0_combout\);

-- Location: FF_X51_Y27_N9
\F1:6:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:6:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:6:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N16
\F1:7:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:7:TFFx|t_tmp~0_combout\ = \F1:7:TFFx|t_tmp~q\ $ (((\F1:6:TFFx|t_tmp~q\ & t_tmp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1:6:TFFx|t_tmp~q\,
	datac => \F1:7:TFFx|t_tmp~q\,
	datad => t_tmp(6),
	combout => \F1:7:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N17
\F1:7:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:7:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:7:TFFx|t_tmp~q\);

-- Location: LCCOMB_X51_Y27_N30
\F1:8:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:8:TFFx|t_tmp~0_combout\ = \F1:8:TFFx|t_tmp~q\ $ (((\F1:6:TFFx|t_tmp~q\ & (\F1:7:TFFx|t_tmp~q\ & t_tmp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:6:TFFx|t_tmp~q\,
	datab => \F1:7:TFFx|t_tmp~q\,
	datac => \F1:8:TFFx|t_tmp~q\,
	datad => t_tmp(6),
	combout => \F1:8:TFFx|t_tmp~0_combout\);

-- Location: FF_X51_Y27_N31
\F1:8:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:8:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:8:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N4
\t_tmp[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_tmp[9]~0_combout\ = (\F1:3:TFFx|t_tmp~q\ & (\F1:7:TFFx|t_tmp~q\ & (\F1:5:TFFx|t_tmp~q\ & \F1:4:TFFx|t_tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:3:TFFx|t_tmp~q\,
	datab => \F1:7:TFFx|t_tmp~q\,
	datac => \F1:5:TFFx|t_tmp~q\,
	datad => \F1:4:TFFx|t_tmp~q\,
	combout => \t_tmp[9]~0_combout\);

-- Location: LCCOMB_X50_Y27_N6
\t_tmp[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- t_tmp(9) = (\F1:8:TFFx|t_tmp~q\ & (\F1:6:TFFx|t_tmp~q\ & (\t_tmp[9]~0_combout\ & t_tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:8:TFFx|t_tmp~q\,
	datab => \F1:6:TFFx|t_tmp~q\,
	datac => \t_tmp[9]~0_combout\,
	datad => t_tmp(3),
	combout => t_tmp(9));

-- Location: LCCOMB_X49_Y27_N16
\F1:9:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:9:TFFx|t_tmp~0_combout\ = \F1:9:TFFx|t_tmp~q\ $ (t_tmp(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F1:9:TFFx|t_tmp~q\,
	datad => t_tmp(9),
	combout => \F1:9:TFFx|t_tmp~0_combout\);

-- Location: FF_X49_Y27_N17
\F1:9:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:9:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:9:TFFx|t_tmp~q\);

-- Location: LCCOMB_X49_Y27_N18
\F1:10:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:10:TFFx|t_tmp~0_combout\ = \F1:10:TFFx|t_tmp~q\ $ (((\F1:9:TFFx|t_tmp~q\ & t_tmp(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1:9:TFFx|t_tmp~q\,
	datac => \F1:10:TFFx|t_tmp~q\,
	datad => t_tmp(9),
	combout => \F1:10:TFFx|t_tmp~0_combout\);

-- Location: FF_X49_Y27_N19
\F1:10:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:10:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:10:TFFx|t_tmp~q\);

-- Location: LCCOMB_X49_Y27_N28
\F1:11:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:11:TFFx|t_tmp~0_combout\ = \F1:11:TFFx|t_tmp~q\ $ (((\F1:10:TFFx|t_tmp~q\ & (\F1:9:TFFx|t_tmp~q\ & t_tmp(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:10:TFFx|t_tmp~q\,
	datab => \F1:9:TFFx|t_tmp~q\,
	datac => \F1:11:TFFx|t_tmp~q\,
	datad => t_tmp(9),
	combout => \F1:11:TFFx|t_tmp~0_combout\);

-- Location: FF_X49_Y27_N29
\F1:11:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:11:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:11:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N20
\t_tmp[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- t_tmp(12) = (\F1:10:TFFx|t_tmp~q\ & (\F1:11:TFFx|t_tmp~q\ & (\F1:9:TFFx|t_tmp~q\ & t_tmp(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:10:TFFx|t_tmp~q\,
	datab => \F1:11:TFFx|t_tmp~q\,
	datac => \F1:9:TFFx|t_tmp~q\,
	datad => t_tmp(9),
	combout => t_tmp(12));

-- Location: LCCOMB_X50_Y27_N26
\F1:12:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:12:TFFx|t_tmp~0_combout\ = \F1:12:TFFx|t_tmp~q\ $ (t_tmp(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F1:12:TFFx|t_tmp~q\,
	datad => t_tmp(12),
	combout => \F1:12:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N27
\F1:12:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:12:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:12:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N0
\F1:13:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:13:TFFx|t_tmp~0_combout\ = \F1:13:TFFx|t_tmp~q\ $ (((\F1:12:TFFx|t_tmp~q\ & t_tmp(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:12:TFFx|t_tmp~q\,
	datac => \F1:13:TFFx|t_tmp~q\,
	datad => t_tmp(12),
	combout => \F1:13:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N1
\F1:13:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:13:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:13:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N22
\F1:14:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:14:TFFx|t_tmp~0_combout\ = \F1:14:TFFx|t_tmp~q\ $ (((\F1:12:TFFx|t_tmp~q\ & (\F1:13:TFFx|t_tmp~q\ & t_tmp(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:12:TFFx|t_tmp~q\,
	datab => \F1:13:TFFx|t_tmp~q\,
	datac => \F1:14:TFFx|t_tmp~q\,
	datad => t_tmp(12),
	combout => \F1:14:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N23
\F1:14:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:14:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:14:TFFx|t_tmp~q\);

-- Location: LCCOMB_X50_Y27_N2
\t_tmp[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- t_tmp(15) = (\F1:14:TFFx|t_tmp~q\ & (\F1:13:TFFx|t_tmp~q\ & (\F1:12:TFFx|t_tmp~q\ & t_tmp(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1:14:TFFx|t_tmp~q\,
	datab => \F1:13:TFFx|t_tmp~q\,
	datac => \F1:12:TFFx|t_tmp~q\,
	datad => t_tmp(12),
	combout => t_tmp(15));

-- Location: LCCOMB_X50_Y27_N12
\F1:15:TFFx|t_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \F1:15:TFFx|t_tmp~0_combout\ = \F1:15:TFFx|t_tmp~q\ $ (t_tmp(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F1:15:TFFx|t_tmp~q\,
	datad => t_tmp(15),
	combout => \F1:15:TFFx|t_tmp~0_combout\);

-- Location: FF_X50_Y27_N13
\F1:15:TFFx|t_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \F1:15:TFFx|t_tmp~0_combout\,
	sclr => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F1:15:TFFx|t_tmp~q\);

ww_Q_tot(0) <= \Q_tot[0]~output_o\;

ww_Q_tot(1) <= \Q_tot[1]~output_o\;

ww_Q_tot(2) <= \Q_tot[2]~output_o\;

ww_Q_tot(3) <= \Q_tot[3]~output_o\;

ww_Q_tot(4) <= \Q_tot[4]~output_o\;

ww_Q_tot(5) <= \Q_tot[5]~output_o\;

ww_Q_tot(6) <= \Q_tot[6]~output_o\;

ww_Q_tot(7) <= \Q_tot[7]~output_o\;

ww_Q_tot(8) <= \Q_tot[8]~output_o\;

ww_Q_tot(9) <= \Q_tot[9]~output_o\;

ww_Q_tot(10) <= \Q_tot[10]~output_o\;

ww_Q_tot(11) <= \Q_tot[11]~output_o\;

ww_Q_tot(12) <= \Q_tot[12]~output_o\;

ww_Q_tot(13) <= \Q_tot[13]~output_o\;

ww_Q_tot(14) <= \Q_tot[14]~output_o\;

ww_Q_tot(15) <= \Q_tot[15]~output_o\;
END structure;


