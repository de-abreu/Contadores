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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Tue Sep 17 12:37:29 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY display7seg IS 
	PORT
	(
		x0 :  IN  STD_LOGIC;
		x1 :  IN  STD_LOGIC;
		x2 :  IN  STD_LOGIC;
		x3 :  IN  STD_LOGIC;
		h0 :  OUT  STD_LOGIC;
		h1 :  OUT  STD_LOGIC;
		h2 :  OUT  STD_LOGIC;
		h4 :  OUT  STD_LOGIC;
		h5 :  OUT  STD_LOGIC;
		h6 :  OUT  STD_LOGIC;
		h3 :  OUT  STD_LOGIC
	);
END display7seg;

ARCHITECTURE bdf_type OF display7seg IS 

SIGNAL	i0 :  STD_LOGIC;
SIGNAL	i1 :  STD_LOGIC;
SIGNAL	i2 :  STD_LOGIC;
SIGNAL	i3 :  STD_LOGIC;
SIGNAL	ni0 :  STD_LOGIC;
SIGNAL	ni1 :  STD_LOGIC;
SIGNAL	ni2 :  STD_LOGIC;
SIGNAL	ni3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_7 <= i3 AND i1 AND i0;


SYNTHESIZED_WIRE_6 <= ni3 AND i2 AND ni1 AND i0;


SYNTHESIZED_WIRE_4 <= i3 AND i2 AND ni1 AND ni0;


SYNTHESIZED_WIRE_15 <= i3 AND i2 AND ni1 AND i0;


SYNTHESIZED_WIRE_19 <= ni3 AND i2 AND i1 AND i0;


SYNTHESIZED_WIRE_20 <= i3 AND i2 AND ni1 AND ni0;


SYNTHESIZED_WIRE_5 <= i2 AND i1 AND ni0;


SYNTHESIZED_WIRE_22 <= i3 AND i2 AND i1;


ni0 <= NOT(i0);



h0 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


h1 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


h3 <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11;


h4 <= SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_12 <= ni3 AND i0;


ni1 <= NOT(i1);



SYNTHESIZED_WIRE_14 <= ni3 AND i2 AND ni1;


SYNTHESIZED_WIRE_13 <= ni2 AND ni1 AND i0;


h5 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16 OR SYNTHESIZED_WIRE_17 OR SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_16 <= ni3 AND i1 AND i0;


SYNTHESIZED_WIRE_17 <= ni3 AND ni2 AND i1;


h6 <= SYNTHESIZED_WIRE_19 OR SYNTHESIZED_WIRE_20 OR SYNTHESIZED_WIRE_21;


ni2 <= NOT(i2);



SYNTHESIZED_WIRE_2 <= i3 AND ni2 AND i1 AND i0;


SYNTHESIZED_WIRE_0 <= ni3 AND ni2 AND ni1 AND i0;


SYNTHESIZED_WIRE_18 <= ni3 AND ni2 AND i0;


SYNTHESIZED_WIRE_8 <= ni3 AND i2 AND ni1 AND ni0;


SYNTHESIZED_WIRE_11 <= ni2 AND ni1 AND i0;


SYNTHESIZED_WIRE_9 <= i2 AND i1 AND i0;


SYNTHESIZED_WIRE_10 <= i3 AND ni2 AND i1 AND ni0;


SYNTHESIZED_WIRE_24 <= i3 AND i2 AND ni1 AND ni0;


SYNTHESIZED_WIRE_23 <= ni3 AND ni2 AND i1 AND ni0;


h2 <= SYNTHESIZED_WIRE_22 OR SYNTHESIZED_WIRE_23 OR SYNTHESIZED_WIRE_24;


ni3 <= NOT(i3);



SYNTHESIZED_WIRE_21 <= NOT(i3 OR i2 OR i1);


SYNTHESIZED_WIRE_3 <= ni3 AND i2 AND ni1 AND ni0;


SYNTHESIZED_WIRE_1 <= i3 AND i2 AND ni1 AND i0;

i3 <= x3;
i2 <= x2;
i1 <= x1;
i0 <= x0;

END bdf_type;