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

-- DATE "09/17/2024 17:06:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Rotate IS
    PORT (
	h00 : OUT std_logic;
	set : IN std_logic;
	Clock : IN std_logic;
	h01 : OUT std_logic;
	h02 : OUT std_logic;
	h03 : OUT std_logic;
	h04 : OUT std_logic;
	h05 : OUT std_logic;
	h06 : OUT std_logic;
	h10 : OUT std_logic;
	h11 : OUT std_logic;
	h12 : OUT std_logic;
	h13 : OUT std_logic;
	h14 : OUT std_logic;
	h15 : OUT std_logic;
	h16 : OUT std_logic;
	h20 : OUT std_logic;
	h21 : OUT std_logic;
	h22 : OUT std_logic;
	h23 : OUT std_logic;
	h24 : OUT std_logic;
	h25 : OUT std_logic;
	h26 : OUT std_logic
	);
END Rotate;

-- Design Ports Information
-- h00	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h01	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h02	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h03	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h04	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h05	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h06	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h10	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h11	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h12	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h13	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h14	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h15	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h16	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h20	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h21	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h22	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h23	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h24	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h25	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h26	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Rotate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_h00 : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_h01 : std_logic;
SIGNAL ww_h02 : std_logic;
SIGNAL ww_h03 : std_logic;
SIGNAL ww_h04 : std_logic;
SIGNAL ww_h05 : std_logic;
SIGNAL ww_h06 : std_logic;
SIGNAL ww_h10 : std_logic;
SIGNAL ww_h11 : std_logic;
SIGNAL ww_h12 : std_logic;
SIGNAL ww_h13 : std_logic;
SIGNAL ww_h14 : std_logic;
SIGNAL ww_h15 : std_logic;
SIGNAL ww_h16 : std_logic;
SIGNAL ww_h20 : std_logic;
SIGNAL ww_h21 : std_logic;
SIGNAL ww_h22 : std_logic;
SIGNAL ww_h23 : std_logic;
SIGNAL ww_h24 : std_logic;
SIGNAL ww_h25 : std_logic;
SIGNAL ww_h26 : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \h00~output_o\ : std_logic;
SIGNAL \h01~output_o\ : std_logic;
SIGNAL \h02~output_o\ : std_logic;
SIGNAL \h03~output_o\ : std_logic;
SIGNAL \h04~output_o\ : std_logic;
SIGNAL \h05~output_o\ : std_logic;
SIGNAL \h06~output_o\ : std_logic;
SIGNAL \h10~output_o\ : std_logic;
SIGNAL \h11~output_o\ : std_logic;
SIGNAL \h12~output_o\ : std_logic;
SIGNAL \h13~output_o\ : std_logic;
SIGNAL \h14~output_o\ : std_logic;
SIGNAL \h15~output_o\ : std_logic;
SIGNAL \h16~output_o\ : std_logic;
SIGNAL \h20~output_o\ : std_logic;
SIGNAL \h21~output_o\ : std_logic;
SIGNAL \h22~output_o\ : std_logic;
SIGNAL \h23~output_o\ : std_logic;
SIGNAL \h24~output_o\ : std_logic;
SIGNAL \h25~output_o\ : std_logic;
SIGNAL \h26~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

h00 <= ww_h00;
ww_set <= set;
ww_Clock <= Clock;
h01 <= ww_h01;
h02 <= ww_h02;
h03 <= ww_h03;
h04 <= ww_h04;
h05 <= ww_h05;
h06 <= ww_h06;
h10 <= ww_h10;
h11 <= ww_h11;
h12 <= ww_h12;
h13 <= ww_h13;
h14 <= ww_h14;
h15 <= ww_h15;
h16 <= ww_h16;
h20 <= ww_h20;
h21 <= ww_h21;
h22 <= ww_h22;
h23 <= ww_h23;
h24 <= ww_h24;
h25 <= ww_h25;
h26 <= ww_h26;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\h00~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h00~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\h01~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h01~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\h02~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h02~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\h03~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h03~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\h04~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h04~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\h05~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h05~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\h06~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h06~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\h10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h10~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\h11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h11~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\h12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h12~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\h13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h13~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\h14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h14~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\h15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h15~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\h16~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h16~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\h20~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h20~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\h21~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h21~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\h22~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h22~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\h23~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h23~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\h24~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h24~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\h25~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \h25~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\h26~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h26~output_o\);

-- Location: IOIBUF_X115_Y35_N22
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

ww_h00 <= \h00~output_o\;

ww_h01 <= \h01~output_o\;

ww_h02 <= \h02~output_o\;

ww_h03 <= \h03~output_o\;

ww_h04 <= \h04~output_o\;

ww_h05 <= \h05~output_o\;

ww_h06 <= \h06~output_o\;

ww_h10 <= \h10~output_o\;

ww_h11 <= \h11~output_o\;

ww_h12 <= \h12~output_o\;

ww_h13 <= \h13~output_o\;

ww_h14 <= \h14~output_o\;

ww_h15 <= \h15~output_o\;

ww_h16 <= \h16~output_o\;

ww_h20 <= \h20~output_o\;

ww_h21 <= \h21~output_o\;

ww_h22 <= \h22~output_o\;

ww_h23 <= \h23~output_o\;

ww_h24 <= \h24~output_o\;

ww_h25 <= \h25~output_o\;

ww_h26 <= \h26~output_o\;
END structure;


