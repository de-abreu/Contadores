-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/17/2024 14:47:53"

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

ENTITY 	parte1PlacaGrande IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	q : OUT std_logic_vector(0 TO 7)
	);
END parte1PlacaGrande;

-- Design Ports Information
-- q[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parte1PlacaGrande IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_q : std_logic_vector(0 TO 7);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \tFlipFlop_0|q_reg~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \tFlipFlop_0|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_1|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_1|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_2|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_2|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_3|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_3|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_4|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_4|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_5|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_5|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_6|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_6|q_reg~q\ : std_logic;
SIGNAL \tFlipFlop_7|q_reg~0_combout\ : std_logic;
SIGNAL \tFlipFlop_7|q_reg~1_combout\ : std_logic;
SIGNAL \tFlipFlop_7|q_reg~q\ : std_logic;
SIGNAL t : std_logic_vector(0 TO 7);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_en <= en;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y73_N9
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_7|q_reg~q\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_6|q_reg~q\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_5|q_reg~q\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_4|q_reg~q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_3|q_reg~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_2|q_reg~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_1|q_reg~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tFlipFlop_0|q_reg~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y73_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X6_Y72_N10
\tFlipFlop_0|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_0|q_reg~0_combout\ = \tFlipFlop_0|q_reg~q\ $ (\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tFlipFlop_0|q_reg~q\,
	datad => \en~input_o\,
	combout => \tFlipFlop_0|q_reg~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X6_Y72_N11
\tFlipFlop_0|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_0|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_0|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N4
\tFlipFlop_1|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_1|q_reg~0_combout\ = \tFlipFlop_1|q_reg~q\ $ (((\en~input_o\ & \tFlipFlop_0|q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => \tFlipFlop_1|q_reg~q\,
	datad => \tFlipFlop_0|q_reg~q\,
	combout => \tFlipFlop_1|q_reg~0_combout\);

-- Location: FF_X6_Y72_N5
\tFlipFlop_1|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_1|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_1|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N26
\tFlipFlop_2|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_2|q_reg~0_combout\ = \tFlipFlop_2|q_reg~q\ $ (((\tFlipFlop_1|q_reg~q\ & (\en~input_o\ & \tFlipFlop_0|q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tFlipFlop_1|q_reg~q\,
	datab => \en~input_o\,
	datac => \tFlipFlop_2|q_reg~q\,
	datad => \tFlipFlop_0|q_reg~q\,
	combout => \tFlipFlop_2|q_reg~0_combout\);

-- Location: FF_X6_Y72_N27
\tFlipFlop_2|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_2|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_2|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N20
\t[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- t(3) = (\tFlipFlop_2|q_reg~q\ & (\en~input_o\ & (\tFlipFlop_1|q_reg~q\ & \tFlipFlop_0|q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tFlipFlop_2|q_reg~q\,
	datab => \en~input_o\,
	datac => \tFlipFlop_1|q_reg~q\,
	datad => \tFlipFlop_0|q_reg~q\,
	combout => t(3));

-- Location: LCCOMB_X6_Y72_N8
\tFlipFlop_3|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_3|q_reg~0_combout\ = \tFlipFlop_3|q_reg~q\ $ (t(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tFlipFlop_3|q_reg~q\,
	datad => t(3),
	combout => \tFlipFlop_3|q_reg~0_combout\);

-- Location: FF_X6_Y72_N9
\tFlipFlop_3|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_3|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_3|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N30
\tFlipFlop_4|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_4|q_reg~0_combout\ = \tFlipFlop_4|q_reg~q\ $ (((\tFlipFlop_3|q_reg~q\ & t(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tFlipFlop_3|q_reg~q\,
	datac => \tFlipFlop_4|q_reg~q\,
	datad => t(3),
	combout => \tFlipFlop_4|q_reg~0_combout\);

-- Location: FF_X6_Y72_N31
\tFlipFlop_4|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_4|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_4|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N28
\tFlipFlop_5|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_5|q_reg~0_combout\ = \tFlipFlop_5|q_reg~q\ $ (((\tFlipFlop_4|q_reg~q\ & (\tFlipFlop_3|q_reg~q\ & t(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tFlipFlop_4|q_reg~q\,
	datab => \tFlipFlop_3|q_reg~q\,
	datac => \tFlipFlop_5|q_reg~q\,
	datad => t(3),
	combout => \tFlipFlop_5|q_reg~0_combout\);

-- Location: FF_X6_Y72_N29
\tFlipFlop_5|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_5|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_5|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N16
\t[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- t(6) = (\tFlipFlop_4|q_reg~q\ & (\tFlipFlop_5|q_reg~q\ & (\tFlipFlop_3|q_reg~q\ & t(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tFlipFlop_4|q_reg~q\,
	datab => \tFlipFlop_5|q_reg~q\,
	datac => \tFlipFlop_3|q_reg~q\,
	datad => t(3),
	combout => t(6));

-- Location: LCCOMB_X6_Y72_N22
\tFlipFlop_6|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_6|q_reg~0_combout\ = \tFlipFlop_6|q_reg~q\ $ (t(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tFlipFlop_6|q_reg~q\,
	datad => t(6),
	combout => \tFlipFlop_6|q_reg~0_combout\);

-- Location: FF_X6_Y72_N23
\tFlipFlop_6|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_6|q_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_6|q_reg~q\);

-- Location: LCCOMB_X6_Y72_N14
\tFlipFlop_7|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_7|q_reg~0_combout\ = ((!\tFlipFlop_5|q_reg~q\) # (!\tFlipFlop_3|q_reg~q\)) # (!\tFlipFlop_4|q_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tFlipFlop_4|q_reg~q\,
	datac => \tFlipFlop_3|q_reg~q\,
	datad => \tFlipFlop_5|q_reg~q\,
	combout => \tFlipFlop_7|q_reg~0_combout\);

-- Location: LCCOMB_X6_Y72_N24
\tFlipFlop_7|q_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tFlipFlop_7|q_reg~1_combout\ = \tFlipFlop_7|q_reg~q\ $ (((\tFlipFlop_6|q_reg~q\ & (!\tFlipFlop_7|q_reg~0_combout\ & t(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tFlipFlop_6|q_reg~q\,
	datab => \tFlipFlop_7|q_reg~0_combout\,
	datac => \tFlipFlop_7|q_reg~q\,
	datad => t(3),
	combout => \tFlipFlop_7|q_reg~1_combout\);

-- Location: FF_X6_Y72_N25
\tFlipFlop_7|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tFlipFlop_7|q_reg~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tFlipFlop_7|q_reg~q\);

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


