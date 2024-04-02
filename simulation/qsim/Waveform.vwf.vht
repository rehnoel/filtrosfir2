-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/02/2024 15:55:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fir_gen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fir_gen_vhd_vec_tst IS
END fir_gen_vhd_vec_tst;
ARCHITECTURE fir_gen_arch OF fir_gen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT fir_gen
	PORT (
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fir_gen
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	rst => rst,
	x => x,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- x[15]
t_prcs_x_15: PROCESS
BEGIN
LOOP
	x(15) <= '0';
	WAIT FOR 5000 ps;
	x(15) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_15;
-- x[14]
t_prcs_x_14: PROCESS
BEGIN
LOOP
	x(14) <= '0';
	WAIT FOR 5000 ps;
	x(14) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_14;
-- x[13]
t_prcs_x_13: PROCESS
BEGIN
LOOP
	x(13) <= '0';
	WAIT FOR 5000 ps;
	x(13) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_13;
-- x[12]
t_prcs_x_12: PROCESS
BEGIN
LOOP
	x(12) <= '0';
	WAIT FOR 5000 ps;
	x(12) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_12;
-- x[11]
t_prcs_x_11: PROCESS
BEGIN
LOOP
	x(11) <= '0';
	WAIT FOR 5000 ps;
	x(11) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_11;
-- x[10]
t_prcs_x_10: PROCESS
BEGIN
LOOP
	x(10) <= '0';
	WAIT FOR 5000 ps;
	x(10) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_10;
-- x[9]
t_prcs_x_9: PROCESS
BEGIN
LOOP
	x(9) <= '0';
	WAIT FOR 5000 ps;
	x(9) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_9;
-- x[8]
t_prcs_x_8: PROCESS
BEGIN
LOOP
	x(8) <= '0';
	WAIT FOR 5000 ps;
	x(8) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_8;
-- x[7]
t_prcs_x_7: PROCESS
BEGIN
LOOP
	x(7) <= '0';
	WAIT FOR 5000 ps;
	x(7) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_7;
-- x[6]
t_prcs_x_6: PROCESS
BEGIN
LOOP
	x(6) <= '0';
	WAIT FOR 5000 ps;
	x(6) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_6;
-- x[5]
t_prcs_x_5: PROCESS
BEGIN
LOOP
	x(5) <= '0';
	WAIT FOR 5000 ps;
	x(5) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_5;
-- x[4]
t_prcs_x_4: PROCESS
BEGIN
LOOP
	x(4) <= '0';
	WAIT FOR 5000 ps;
	x(4) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_4;
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
LOOP
	x(3) <= '0';
	WAIT FOR 5000 ps;
	x(3) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
LOOP
	x(2) <= '0';
	WAIT FOR 5000 ps;
	x(2) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
LOOP
	x(1) <= '0';
	WAIT FOR 5000 ps;
	x(1) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
LOOP
	x(0) <= '0';
	WAIT FOR 5000 ps;
	x(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_0;
END fir_gen_arch;
