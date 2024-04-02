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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/02/2024 15:55:29"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	fir_gen IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	x : IN IEEE.NUMERIC_STD.signed(15 DOWNTO 0);
	y : OUT IEEE.NUMERIC_STD.signed(31 DOWNTO 0)
	);
END fir_gen;

-- Design Ports Information


ARCHITECTURE structure OF fir_gen IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_x : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \delay[0][0]~regout\ : std_logic;
SIGNAL \delay[1][0]~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \delay[2][0]~regout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \delay[3][0]~regout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \delay[4][0]~regout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \delay[5][0]~regout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \delay[6][0]~regout\ : std_logic;
SIGNAL \y[0]~reg0_regout\ : std_logic;
SIGNAL \delay[0][1]~regout\ : std_logic;
SIGNAL \delay[1][1]~regout\ : std_logic;
SIGNAL \delay[2][1]~regout\ : std_logic;
SIGNAL \delay[3][1]~regout\ : std_logic;
SIGNAL \delay[4][1]~regout\ : std_logic;
SIGNAL \delay[5][1]~regout\ : std_logic;
SIGNAL \delay[6][1]~regout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_91\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_91\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_96\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~2COUT1_101\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \y[1]~reg0_regout\ : std_logic;
SIGNAL \delay[0][2]~regout\ : std_logic;
SIGNAL \delay[1][2]~regout\ : std_logic;
SIGNAL \delay[2][2]~regout\ : std_logic;
SIGNAL \delay[3][2]~regout\ : std_logic;
SIGNAL \delay[4][2]~regout\ : std_logic;
SIGNAL \delay[5][2]~regout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_92\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_92\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~7COUT1_97\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~7COUT1_102\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_111\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \delay[6][2]~regout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~7COUT1_111\ : std_logic;
SIGNAL \y[2]~reg0_regout\ : std_logic;
SIGNAL \delay[0][3]~regout\ : std_logic;
SIGNAL \delay[1][3]~regout\ : std_logic;
SIGNAL \delay[2][3]~regout\ : std_logic;
SIGNAL \delay[3][3]~regout\ : std_logic;
SIGNAL \delay[4][3]~regout\ : std_logic;
SIGNAL \delay[5][3]~regout\ : std_logic;
SIGNAL \delay[6][3]~regout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_93\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_93\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_98\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_103\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_112\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~12COUT1_112\ : std_logic;
SIGNAL \y[3]~reg0_regout\ : std_logic;
SIGNAL \delay[0][4]~regout\ : std_logic;
SIGNAL \delay[1][4]~regout\ : std_logic;
SIGNAL \delay[2][4]~regout\ : std_logic;
SIGNAL \delay[3][4]~regout\ : std_logic;
SIGNAL \delay[4][4]~regout\ : std_logic;
SIGNAL \delay[5][4]~regout\ : std_logic;
SIGNAL \delay[6][4]~regout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~17COUT1_104\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_113\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~17COUT1_113\ : std_logic;
SIGNAL \y[4]~reg0_regout\ : std_logic;
SIGNAL \delay[0][5]~regout\ : std_logic;
SIGNAL \delay[1][5]~regout\ : std_logic;
SIGNAL \delay[2][5]~regout\ : std_logic;
SIGNAL \delay[3][5]~regout\ : std_logic;
SIGNAL \delay[4][5]~regout\ : std_logic;
SIGNAL \delay[5][5]~regout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_94\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_94\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_99\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~22COUT1_114\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \delay[6][5]~regout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~22COUT1_114\ : std_logic;
SIGNAL \y[5]~reg0_regout\ : std_logic;
SIGNAL \delay[0][6]~regout\ : std_logic;
SIGNAL \delay[1][6]~regout\ : std_logic;
SIGNAL \delay[2][6]~regout\ : std_logic;
SIGNAL \delay[3][6]~regout\ : std_logic;
SIGNAL \delay[4][6]~regout\ : std_logic;
SIGNAL \delay[5][6]~regout\ : std_logic;
SIGNAL \delay[6][6]~regout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_95\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_95\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_100\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_105\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \y[6]~reg0_regout\ : std_logic;
SIGNAL \delay[0][7]~regout\ : std_logic;
SIGNAL \delay[1][7]~regout\ : std_logic;
SIGNAL \delay[2][7]~regout\ : std_logic;
SIGNAL \delay[3][7]~regout\ : std_logic;
SIGNAL \delay[4][7]~regout\ : std_logic;
SIGNAL \delay[5][7]~regout\ : std_logic;
SIGNAL \delay[6][7]~regout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_96\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_96\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~32COUT1_101\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~32COUT1_106\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_115\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~32COUT1_115\ : std_logic;
SIGNAL \y[7]~reg0_regout\ : std_logic;
SIGNAL \delay[0][8]~regout\ : std_logic;
SIGNAL \delay[1][8]~regout\ : std_logic;
SIGNAL \delay[2][8]~regout\ : std_logic;
SIGNAL \delay[3][8]~regout\ : std_logic;
SIGNAL \delay[4][8]~regout\ : std_logic;
SIGNAL \delay[5][8]~regout\ : std_logic;
SIGNAL \delay[6][8]~regout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_97\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_97\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_102\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_107\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~37COUT1_116\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~37COUT1_116\ : std_logic;
SIGNAL \y[8]~reg0_regout\ : std_logic;
SIGNAL \delay[0][9]~regout\ : std_logic;
SIGNAL \delay[1][9]~regout\ : std_logic;
SIGNAL \delay[2][9]~regout\ : std_logic;
SIGNAL \delay[3][9]~regout\ : std_logic;
SIGNAL \delay[4][9]~regout\ : std_logic;
SIGNAL \delay[5][9]~regout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_108\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~42COUT1_117\ : std_logic;
SIGNAL \Add6~45_combout\ : std_logic;
SIGNAL \delay[6][9]~regout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~42COUT1_117\ : std_logic;
SIGNAL \y[9]~reg0_regout\ : std_logic;
SIGNAL \delay[0][10]~regout\ : std_logic;
SIGNAL \delay[1][10]~regout\ : std_logic;
SIGNAL \delay[2][10]~regout\ : std_logic;
SIGNAL \delay[3][10]~regout\ : std_logic;
SIGNAL \delay[4][10]~regout\ : std_logic;
SIGNAL \delay[5][10]~regout\ : std_logic;
SIGNAL \delay[6][10]~regout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_98\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_98\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~47COUT1_103\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~47COUT1_118\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~47COUT1_118\ : std_logic;
SIGNAL \y[10]~reg0_regout\ : std_logic;
SIGNAL \delay[0][11]~regout\ : std_logic;
SIGNAL \delay[1][11]~regout\ : std_logic;
SIGNAL \delay[2][11]~regout\ : std_logic;
SIGNAL \delay[3][11]~regout\ : std_logic;
SIGNAL \delay[4][11]~regout\ : std_logic;
SIGNAL \delay[5][11]~regout\ : std_logic;
SIGNAL \delay[6][11]~regout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_99\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~52COUT1_99\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~52COUT1_104\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~52COUT1_109\ : std_logic;
SIGNAL \Add4~55_combout\ : std_logic;
SIGNAL \Add6~52\ : std_logic;
SIGNAL \Add6~55_combout\ : std_logic;
SIGNAL \Add7~52\ : std_logic;
SIGNAL \y[11]~reg0_regout\ : std_logic;
SIGNAL \delay[0][12]~regout\ : std_logic;
SIGNAL \delay[1][12]~regout\ : std_logic;
SIGNAL \delay[2][12]~regout\ : std_logic;
SIGNAL \delay[3][12]~regout\ : std_logic;
SIGNAL \delay[4][12]~regout\ : std_logic;
SIGNAL \delay[5][12]~regout\ : std_logic;
SIGNAL \delay[6][12]~regout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_100\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~57COUT1_100\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~57COUT1_105\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~57COUT1_110\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~57COUT1_119\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~57COUT1_119\ : std_logic;
SIGNAL \y[12]~reg0_regout\ : std_logic;
SIGNAL \delay[0][13]~regout\ : std_logic;
SIGNAL \delay[1][13]~regout\ : std_logic;
SIGNAL \delay[2][13]~regout\ : std_logic;
SIGNAL \delay[3][13]~regout\ : std_logic;
SIGNAL \delay[4][13]~regout\ : std_logic;
SIGNAL \delay[5][13]~regout\ : std_logic;
SIGNAL \delay[6][13]~regout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_101\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~62COUT1_101\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~62COUT1_106\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~62COUT1_111\ : std_logic;
SIGNAL \Add4~65_combout\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~62COUT1_120\ : std_logic;
SIGNAL \Add6~65_combout\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~62COUT1_120\ : std_logic;
SIGNAL \y[13]~reg0_regout\ : std_logic;
SIGNAL \delay[0][14]~regout\ : std_logic;
SIGNAL \delay[1][14]~regout\ : std_logic;
SIGNAL \delay[2][14]~regout\ : std_logic;
SIGNAL \delay[3][14]~regout\ : std_logic;
SIGNAL \delay[4][14]~regout\ : std_logic;
SIGNAL \delay[5][14]~regout\ : std_logic;
SIGNAL \delay[6][14]~regout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~67COUT1_112\ : std_logic;
SIGNAL \Add4~70_combout\ : std_logic;
SIGNAL \Add6~67\ : std_logic;
SIGNAL \Add6~67COUT1_121\ : std_logic;
SIGNAL \Add6~70_combout\ : std_logic;
SIGNAL \Add7~67\ : std_logic;
SIGNAL \Add7~67COUT1_121\ : std_logic;
SIGNAL \y[14]~reg0_regout\ : std_logic;
SIGNAL \delay[0][15]~regout\ : std_logic;
SIGNAL \delay[1][15]~regout\ : std_logic;
SIGNAL \delay[2][15]~regout\ : std_logic;
SIGNAL \delay[3][15]~regout\ : std_logic;
SIGNAL \delay[4][15]~regout\ : std_logic;
SIGNAL \delay[5][15]~regout\ : std_logic;
SIGNAL \delay[6][15]~regout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_102\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~72COUT1_102\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add2~72\ : std_logic;
SIGNAL \Add2~72COUT1_107\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add4~72\ : std_logic;
SIGNAL \Add4~75_combout\ : std_logic;
SIGNAL \Add6~72\ : std_logic;
SIGNAL \Add6~72COUT1_122\ : std_logic;
SIGNAL \Add6~75_combout\ : std_logic;
SIGNAL \Add7~72\ : std_logic;
SIGNAL \Add7~72COUT1_122\ : std_logic;
SIGNAL \y[15]~reg0_regout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_103\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~77COUT1_103\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~77COUT1_108\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add4~77\ : std_logic;
SIGNAL \Add4~77COUT1_113\ : std_logic;
SIGNAL \Add4~80_combout\ : std_logic;
SIGNAL \Add6~77\ : std_logic;
SIGNAL \Add6~80_combout\ : std_logic;
SIGNAL \Add7~77\ : std_logic;
SIGNAL \y[16]~reg0_regout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_104\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~82COUT1_104\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~82COUT1_109\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~82COUT1_114\ : std_logic;
SIGNAL \Add4~85_combout\ : std_logic;
SIGNAL \Add6~82\ : std_logic;
SIGNAL \Add6~82COUT1_123\ : std_logic;
SIGNAL \Add6~85_combout\ : std_logic;
SIGNAL \Add7~82\ : std_logic;
SIGNAL \Add7~82COUT1_123\ : std_logic;
SIGNAL \y[17]~reg0_regout\ : std_logic;
SIGNAL \Add2~87\ : std_logic;
SIGNAL \Add2~87COUT1_110\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add4~87\ : std_logic;
SIGNAL \Add4~87COUT1_115\ : std_logic;
SIGNAL \Add4~90_combout\ : std_logic;
SIGNAL \Add6~87\ : std_logic;
SIGNAL \Add6~87COUT1_124\ : std_logic;
SIGNAL \Add6~90_combout\ : std_logic;
SIGNAL \Add7~87\ : std_logic;
SIGNAL \Add7~87COUT1_124\ : std_logic;
SIGNAL \y[18]~reg0_regout\ : std_logic;
SIGNAL \Add4~92\ : std_logic;
SIGNAL \Add4~92COUT1_116\ : std_logic;
SIGNAL \Add4~95_combout\ : std_logic;
SIGNAL \Add6~92\ : std_logic;
SIGNAL \Add6~92COUT1_125\ : std_logic;
SIGNAL \Add6~95_combout\ : std_logic;
SIGNAL \Add7~92\ : std_logic;
SIGNAL \Add7~92COUT1_125\ : std_logic;
SIGNAL \y[19]~reg0_regout\ : std_logic;
SIGNAL \Add6~97\ : std_logic;
SIGNAL \Add6~97COUT1_126\ : std_logic;
SIGNAL \Add6~100_combout\ : std_logic;
SIGNAL \Add7~97\ : std_logic;
SIGNAL \Add7~97COUT1_126\ : std_logic;
SIGNAL \y[20]~reg0_regout\ : std_logic;
SIGNAL \Add6~102\ : std_logic;
SIGNAL \Add6~105_combout\ : std_logic;
SIGNAL \Add7~102\ : std_logic;
SIGNAL \y[21]~reg0_regout\ : std_logic;
SIGNAL \Add7~105\ : std_logic;
SIGNAL \y[22]~reg0_regout\ : std_logic;
SIGNAL \y[23]~reg0_regout\ : std_logic;
SIGNAL \y[24]~reg0_regout\ : std_logic;
SIGNAL \y[25]~reg0_regout\ : std_logic;
SIGNAL \y[26]~reg0_regout\ : std_logic;
SIGNAL \y[27]~reg0_regout\ : std_logic;
SIGNAL \y[28]~reg0_regout\ : std_logic;
SIGNAL \y[29]~reg0_regout\ : std_logic;
SIGNAL \y[30]~reg0_regout\ : std_logic;
SIGNAL \y[31]~reg0_regout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_x <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(x);
y <= IEEE.NUMERIC_STD.SIGNED(ww_y);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X4_Y6_N0
\delay[0][0]\ : maxv_lcell
-- Equation(s):
-- \delay[0][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][0]~regout\);

-- Location: LC_X3_Y6_N4
\delay[1][0]\ : maxv_lcell
-- Equation(s):
-- \delay[1][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][0]~regout\);

-- Location: LC_X4_Y6_N1
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \delay[0][0]~regout\ $ ((\delay[1][0]~regout\))
-- \Add0~2\ = CARRY((\delay[0][0]~regout\ & (\delay[1][0]~regout\)))
-- \Add0~2COUT1_91\ = CARRY((\delay[0][0]~regout\ & (\delay[1][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][0]~regout\,
	datab => \delay[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_91\);

-- Location: LC_X4_Y5_N0
\delay[2][0]\ : maxv_lcell
-- Equation(s):
-- \delay[2][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][0]~regout\);

-- Location: LC_X4_Y5_N1
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = \Add0~0_combout\ $ ((\delay[2][0]~regout\))
-- \Add1~2\ = CARRY((\Add0~0_combout\ & (\delay[2][0]~regout\)))
-- \Add1~2COUT1_91\ = CARRY((\Add0~0_combout\ & (\delay[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \delay[2][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_91\);

-- Location: LC_X7_Y5_N0
\delay[3][0]\ : maxv_lcell
-- Equation(s):
-- \delay[3][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][0]~regout\);

-- Location: LC_X7_Y5_N1
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = \Add1~0_combout\ $ ((!\delay[3][0]~regout\))
-- \Add2~2\ = CARRY((\Add1~0_combout\) # ((\delay[3][0]~regout\)))
-- \Add2~2COUT1_96\ = CARRY((\Add1~0_combout\) # ((\delay[3][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99ee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \delay[3][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_96\);

-- Location: LC_X9_Y4_N1
\delay[4][0]\ : maxv_lcell
-- Equation(s):
-- \delay[4][0]~regout\ = DFFEAS((((\delay[3][0]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][0]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][0]~regout\);

-- Location: LC_X9_Y5_N0
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = \Add2~0_combout\ $ ((!\delay[4][0]~regout\))
-- \Add4~2\ = CARRY((\Add2~0_combout\) # ((\delay[4][0]~regout\)))
-- \Add4~2COUT1_101\ = CARRY((\Add2~0_combout\) # ((\delay[4][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99ee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \delay[4][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout0 => \Add4~2\,
	cout1 => \Add4~2COUT1_101\);

-- Location: LC_X9_Y4_N0
\delay[5][0]\ : maxv_lcell
-- Equation(s):
-- \delay[5][0]~regout\ = DFFEAS((((\delay[4][0]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][0]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][0]~regout\);

-- Location: LC_X9_Y4_N4
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = \Add4~0_combout\ $ ((\delay[5][0]~regout\))
-- \Add6~2\ = CARRY((\Add4~0_combout\ & (\delay[5][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \delay[5][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout => \Add6~2\);

-- Location: LC_X5_Y4_N2
\delay[6][0]\ : maxv_lcell
-- Equation(s):
-- \delay[6][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][0]~regout\);

-- Location: LC_X5_Y4_N4
\y[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[0]~reg0_regout\ = DFFEAS(\Add6~0_combout\ $ ((\delay[6][0]~regout\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~2\ = CARRY((\Add6~0_combout\ & (\delay[6][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~0_combout\,
	datab => \delay[6][0]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[0]~reg0_regout\,
	cout => \Add7~2\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: LC_X3_Y6_N0
\delay[0][1]\ : maxv_lcell
-- Equation(s):
-- \delay[0][1]~regout\ = DFFEAS((((\x~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \x~combout\(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][1]~regout\);

-- Location: LC_X3_Y6_N2
\delay[1][1]\ : maxv_lcell
-- Equation(s):
-- \delay[1][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][1]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][1]~regout\);

-- Location: LC_X3_Y5_N3
\delay[2][1]\ : maxv_lcell
-- Equation(s):
-- \delay[2][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][1]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][1]~regout\);

-- Location: LC_X4_Y7_N9
\delay[3][1]\ : maxv_lcell
-- Equation(s):
-- \delay[3][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][1]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][1]~regout\);

-- Location: LC_X4_Y7_N4
\delay[4][1]\ : maxv_lcell
-- Equation(s):
-- \delay[4][1]~regout\ = DFFEAS((((\delay[3][1]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][1]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][1]~regout\);

-- Location: LC_X4_Y7_N8
\delay[5][1]\ : maxv_lcell
-- Equation(s):
-- \delay[5][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][1]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][1]~regout\);

-- Location: LC_X4_Y7_N5
\delay[6][1]\ : maxv_lcell
-- Equation(s):
-- \delay[6][1]~regout\ = DFFEAS((((\delay[5][1]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][1]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][1]~regout\);

-- Location: LC_X4_Y6_N2
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = \delay[0][1]~regout\ $ (\delay[1][1]~regout\ $ ((\Add0~2\)))
-- \Add0~7\ = CARRY((\delay[0][1]~regout\ & (!\delay[1][1]~regout\ & !\Add0~2\)) # (!\delay[0][1]~regout\ & ((!\Add0~2\) # (!\delay[1][1]~regout\))))
-- \Add0~7COUT1_92\ = CARRY((\delay[0][1]~regout\ & (!\delay[1][1]~regout\ & !\Add0~2COUT1_91\)) # (!\delay[0][1]~regout\ & ((!\Add0~2COUT1_91\) # (!\delay[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][1]~regout\,
	datab => \delay[1][1]~regout\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_92\);

-- Location: LC_X4_Y5_N2
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = \delay[2][1]~regout\ $ (\Add0~5_combout\ $ ((\Add1~2\)))
-- \Add1~7\ = CARRY((\delay[2][1]~regout\ & (!\Add0~5_combout\ & !\Add1~2\)) # (!\delay[2][1]~regout\ & ((!\Add1~2\) # (!\Add0~5_combout\))))
-- \Add1~7COUT1_92\ = CARRY((\delay[2][1]~regout\ & (!\Add0~5_combout\ & !\Add1~2COUT1_91\)) # (!\delay[2][1]~regout\ & ((!\Add1~2COUT1_91\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][1]~regout\,
	datab => \Add0~5_combout\,
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_92\);

-- Location: LC_X7_Y5_N2
\Add2~5\ : maxv_lcell
-- Equation(s):
-- \Add2~5_combout\ = \Add1~5_combout\ $ (\delay[3][1]~regout\ $ ((\Add2~2\)))
-- \Add2~7\ = CARRY((\Add1~5_combout\ & (!\delay[3][1]~regout\ & !\Add2~2\)) # (!\Add1~5_combout\ & ((!\Add2~2\) # (!\delay[3][1]~regout\))))
-- \Add2~7COUT1_97\ = CARRY((\Add1~5_combout\ & (!\delay[3][1]~regout\ & !\Add2~2COUT1_96\)) # (!\Add1~5_combout\ & ((!\Add2~2COUT1_96\) # (!\delay[3][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	datab => \delay[3][1]~regout\,
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout0 => \Add2~7\,
	cout1 => \Add2~7COUT1_97\);

-- Location: LC_X9_Y5_N1
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = \delay[4][1]~regout\ $ (\Add2~5_combout\ $ ((\Add4~2\)))
-- \Add4~7\ = CARRY((\delay[4][1]~regout\ & (!\Add2~5_combout\ & !\Add4~2\)) # (!\delay[4][1]~regout\ & ((!\Add4~2\) # (!\Add2~5_combout\))))
-- \Add4~7COUT1_102\ = CARRY((\delay[4][1]~regout\ & (!\Add2~5_combout\ & !\Add4~2COUT1_101\)) # (!\delay[4][1]~regout\ & ((!\Add4~2COUT1_101\) # (!\Add2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][1]~regout\,
	datab => \Add2~5_combout\,
	cin0 => \Add4~2\,
	cin1 => \Add4~2COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout0 => \Add4~7\,
	cout1 => \Add4~7COUT1_102\);

-- Location: LC_X9_Y4_N5
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = \delay[5][1]~regout\ $ (\Add4~5_combout\ $ ((\Add6~2\)))
-- \Add6~7\ = CARRY((\delay[5][1]~regout\ & (!\Add4~5_combout\ & !\Add6~2\)) # (!\delay[5][1]~regout\ & ((!\Add6~2\) # (!\Add4~5_combout\))))
-- \Add6~7COUT1_111\ = CARRY((\delay[5][1]~regout\ & (!\Add4~5_combout\ & !\Add6~2\)) # (!\delay[5][1]~regout\ & ((!\Add6~2\) # (!\Add4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][1]~regout\,
	datab => \Add4~5_combout\,
	cin => \Add6~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_111\);

-- Location: LC_X5_Y4_N5
\y[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[1]~reg0_regout\ = DFFEAS(\delay[6][1]~regout\ $ (\Add6~5_combout\ $ ((\Add7~2\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~7\ = CARRY((\delay[6][1]~regout\ & (!\Add6~5_combout\ & !\Add7~2\)) # (!\delay[6][1]~regout\ & ((!\Add7~2\) # (!\Add6~5_combout\))))
-- \Add7~7COUT1_111\ = CARRY((\delay[6][1]~regout\ & (!\Add6~5_combout\ & !\Add7~2\)) # (!\delay[6][1]~regout\ & ((!\Add7~2\) # (!\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][1]~regout\,
	datab => \Add6~5_combout\,
	aclr => \rst~combout\,
	cin => \Add7~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[1]~reg0_regout\,
	cout0 => \Add7~7\,
	cout1 => \Add7~7COUT1_111\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: LC_X3_Y6_N9
\delay[0][2]\ : maxv_lcell
-- Equation(s):
-- \delay[0][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][2]~regout\);

-- Location: LC_X3_Y6_N6
\delay[1][2]\ : maxv_lcell
-- Equation(s):
-- \delay[1][2]~regout\ = DFFEAS((((\delay[0][2]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][2]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][2]~regout\);

-- Location: LC_X3_Y5_N6
\delay[2][2]\ : maxv_lcell
-- Equation(s):
-- \delay[2][2]~regout\ = DFFEAS((((\delay[1][2]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][2]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][2]~regout\);

-- Location: LC_X6_Y5_N1
\delay[3][2]\ : maxv_lcell
-- Equation(s):
-- \delay[3][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][2]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][2]~regout\);

-- Location: LC_X9_Y6_N0
\delay[4][2]\ : maxv_lcell
-- Equation(s):
-- \delay[4][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][2]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][2]~regout\);

-- Location: LC_X9_Y4_N3
\delay[5][2]\ : maxv_lcell
-- Equation(s):
-- \delay[5][2]~regout\ = DFFEAS((((\delay[4][2]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][2]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][2]~regout\);

-- Location: LC_X4_Y6_N3
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = \delay[0][2]~regout\ $ (\delay[1][2]~regout\ $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY((\delay[0][2]~regout\ & ((\delay[1][2]~regout\) # (!\Add0~7\))) # (!\delay[0][2]~regout\ & (\delay[1][2]~regout\ & !\Add0~7\)))
-- \Add0~12COUT1_93\ = CARRY((\delay[0][2]~regout\ & ((\delay[1][2]~regout\) # (!\Add0~7COUT1_92\))) # (!\delay[0][2]~regout\ & (\delay[1][2]~regout\ & !\Add0~7COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][2]~regout\,
	datab => \delay[1][2]~regout\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_93\);

-- Location: LC_X4_Y5_N3
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = \Add0~10_combout\ $ (\delay[2][2]~regout\ $ ((!\Add1~7\)))
-- \Add1~12\ = CARRY((\Add0~10_combout\ & ((\delay[2][2]~regout\) # (!\Add1~7\))) # (!\Add0~10_combout\ & (\delay[2][2]~regout\ & !\Add1~7\)))
-- \Add1~12COUT1_93\ = CARRY((\Add0~10_combout\ & ((\delay[2][2]~regout\) # (!\Add1~7COUT1_92\))) # (!\Add0~10_combout\ & (\delay[2][2]~regout\ & !\Add1~7COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \delay[2][2]~regout\,
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_93\);

-- Location: LC_X7_Y5_N3
\Add2~10\ : maxv_lcell
-- Equation(s):
-- \Add2~10_combout\ = \delay[3][2]~regout\ $ (\Add1~10_combout\ $ ((!\Add2~7\)))
-- \Add2~12\ = CARRY((\delay[3][2]~regout\ & ((\Add1~10_combout\) # (!\Add2~7\))) # (!\delay[3][2]~regout\ & (\Add1~10_combout\ & !\Add2~7\)))
-- \Add2~12COUT1_98\ = CARRY((\delay[3][2]~regout\ & ((\Add1~10_combout\) # (!\Add2~7COUT1_97\))) # (!\delay[3][2]~regout\ & (\Add1~10_combout\ & !\Add2~7COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][2]~regout\,
	datab => \Add1~10_combout\,
	cin0 => \Add2~7\,
	cin1 => \Add2~7COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_98\);

-- Location: LC_X9_Y5_N2
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = \delay[4][2]~regout\ $ (\Add2~10_combout\ $ ((!\Add4~7\)))
-- \Add4~12\ = CARRY((\delay[4][2]~regout\ & ((\Add2~10_combout\) # (!\Add4~7\))) # (!\delay[4][2]~regout\ & (\Add2~10_combout\ & !\Add4~7\)))
-- \Add4~12COUT1_103\ = CARRY((\delay[4][2]~regout\ & ((\Add2~10_combout\) # (!\Add4~7COUT1_102\))) # (!\delay[4][2]~regout\ & (\Add2~10_combout\ & !\Add4~7COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][2]~regout\,
	datab => \Add2~10_combout\,
	cin0 => \Add4~7\,
	cin1 => \Add4~7COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_103\);

-- Location: LC_X9_Y4_N6
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = \delay[5][2]~regout\ $ (\Add4~10_combout\ $ ((!(!\Add6~2\ & \Add6~7\) # (\Add6~2\ & \Add6~7COUT1_111\))))
-- \Add6~12\ = CARRY((\delay[5][2]~regout\ & ((\Add4~10_combout\) # (!\Add6~7\))) # (!\delay[5][2]~regout\ & (\Add4~10_combout\ & !\Add6~7\)))
-- \Add6~12COUT1_112\ = CARRY((\delay[5][2]~regout\ & ((\Add4~10_combout\) # (!\Add6~7COUT1_111\))) # (!\delay[5][2]~regout\ & (\Add4~10_combout\ & !\Add6~7COUT1_111\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][2]~regout\,
	datab => \Add4~10_combout\,
	cin => \Add6~2\,
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_112\);

-- Location: LC_X4_Y4_N4
\delay[6][2]\ : maxv_lcell
-- Equation(s):
-- \delay[6][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][2]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][2]~regout\);

-- Location: LC_X5_Y4_N6
\y[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[2]~reg0_regout\ = DFFEAS(\Add6~10_combout\ $ (\delay[6][2]~regout\ $ ((!(!\Add7~2\ & \Add7~7\) # (\Add7~2\ & \Add7~7COUT1_111\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~12\ = CARRY((\Add6~10_combout\ & ((\delay[6][2]~regout\) # (!\Add7~7\))) # (!\Add6~10_combout\ & (\delay[6][2]~regout\ & !\Add7~7\)))
-- \Add7~12COUT1_112\ = CARRY((\Add6~10_combout\ & ((\delay[6][2]~regout\) # (!\Add7~7COUT1_111\))) # (!\Add6~10_combout\ & (\delay[6][2]~regout\ & !\Add7~7COUT1_111\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~10_combout\,
	datab => \delay[6][2]~regout\,
	aclr => \rst~combout\,
	cin => \Add7~2\,
	cin0 => \Add7~7\,
	cin1 => \Add7~7COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[2]~reg0_regout\,
	cout0 => \Add7~12\,
	cout1 => \Add7~12COUT1_112\);

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: LC_X3_Y6_N5
\delay[0][3]\ : maxv_lcell
-- Equation(s):
-- \delay[0][3]~regout\ = DFFEAS((((\x~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \x~combout\(3),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][3]~regout\);

-- Location: LC_X3_Y6_N7
\delay[1][3]\ : maxv_lcell
-- Equation(s):
-- \delay[1][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][3]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][3]~regout\);

-- Location: LC_X3_Y5_N7
\delay[2][3]\ : maxv_lcell
-- Equation(s):
-- \delay[2][3]~regout\ = DFFEAS((((\delay[1][3]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][3]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][3]~regout\);

-- Location: LC_X4_Y4_N0
\delay[3][3]\ : maxv_lcell
-- Equation(s):
-- \delay[3][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][3]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][3]~regout\);

-- Location: LC_X4_Y4_N6
\delay[4][3]\ : maxv_lcell
-- Equation(s):
-- \delay[4][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][3]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][3]~regout\);

-- Location: LC_X4_Y4_N9
\delay[5][3]\ : maxv_lcell
-- Equation(s):
-- \delay[5][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][3]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][3]~regout\);

-- Location: LC_X4_Y4_N1
\delay[6][3]\ : maxv_lcell
-- Equation(s):
-- \delay[6][3]~regout\ = DFFEAS((((\delay[5][3]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][3]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][3]~regout\);

-- Location: LC_X4_Y6_N4
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = \delay[0][3]~regout\ $ (\delay[1][3]~regout\ $ ((\Add0~12\)))
-- \Add0~17\ = CARRY((\delay[0][3]~regout\ & (!\delay[1][3]~regout\ & !\Add0~12COUT1_93\)) # (!\delay[0][3]~regout\ & ((!\Add0~12COUT1_93\) # (!\delay[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][3]~regout\,
	datab => \delay[1][3]~regout\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X4_Y5_N4
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = \delay[2][3]~regout\ $ (\Add0~15_combout\ $ ((\Add1~12\)))
-- \Add1~17\ = CARRY((\delay[2][3]~regout\ & (!\Add0~15_combout\ & !\Add1~12COUT1_93\)) # (!\delay[2][3]~regout\ & ((!\Add1~12COUT1_93\) # (!\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][3]~regout\,
	datab => \Add0~15_combout\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout => \Add1~17\);

-- Location: LC_X7_Y5_N4
\Add2~15\ : maxv_lcell
-- Equation(s):
-- \Add2~15_combout\ = \delay[3][3]~regout\ $ (\Add1~15_combout\ $ ((\Add2~12\)))
-- \Add2~17\ = CARRY((\delay[3][3]~regout\ & (!\Add1~15_combout\ & !\Add2~12COUT1_98\)) # (!\delay[3][3]~regout\ & ((!\Add2~12COUT1_98\) # (!\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][3]~regout\,
	datab => \Add1~15_combout\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout => \Add2~17\);

-- Location: LC_X9_Y5_N3
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = \delay[4][3]~regout\ $ (\Add2~15_combout\ $ ((\Add4~12\)))
-- \Add4~17\ = CARRY((\delay[4][3]~regout\ & (!\Add2~15_combout\ & !\Add4~12\)) # (!\delay[4][3]~regout\ & ((!\Add4~12\) # (!\Add2~15_combout\))))
-- \Add4~17COUT1_104\ = CARRY((\delay[4][3]~regout\ & (!\Add2~15_combout\ & !\Add4~12COUT1_103\)) # (!\delay[4][3]~regout\ & ((!\Add4~12COUT1_103\) # (!\Add2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][3]~regout\,
	datab => \Add2~15_combout\,
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout0 => \Add4~17\,
	cout1 => \Add4~17COUT1_104\);

-- Location: LC_X9_Y4_N7
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = \Add4~15_combout\ $ (\delay[5][3]~regout\ $ (((!\Add6~2\ & \Add6~12\) # (\Add6~2\ & \Add6~12COUT1_112\))))
-- \Add6~17\ = CARRY((\Add4~15_combout\ & (!\delay[5][3]~regout\ & !\Add6~12\)) # (!\Add4~15_combout\ & ((!\Add6~12\) # (!\delay[5][3]~regout\))))
-- \Add6~17COUT1_113\ = CARRY((\Add4~15_combout\ & (!\delay[5][3]~regout\ & !\Add6~12COUT1_112\)) # (!\Add4~15_combout\ & ((!\Add6~12COUT1_112\) # (!\delay[5][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~15_combout\,
	datab => \delay[5][3]~regout\,
	cin => \Add6~2\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_113\);

-- Location: LC_X5_Y4_N7
\y[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[3]~reg0_regout\ = DFFEAS(\delay[6][3]~regout\ $ (\Add6~15_combout\ $ (((!\Add7~2\ & \Add7~12\) # (\Add7~2\ & \Add7~12COUT1_112\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~17\ = CARRY((\delay[6][3]~regout\ & (!\Add6~15_combout\ & !\Add7~12\)) # (!\delay[6][3]~regout\ & ((!\Add7~12\) # (!\Add6~15_combout\))))
-- \Add7~17COUT1_113\ = CARRY((\delay[6][3]~regout\ & (!\Add6~15_combout\ & !\Add7~12COUT1_112\)) # (!\delay[6][3]~regout\ & ((!\Add7~12COUT1_112\) # (!\Add6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][3]~regout\,
	datab => \Add6~15_combout\,
	aclr => \rst~combout\,
	cin => \Add7~2\,
	cin0 => \Add7~12\,
	cin1 => \Add7~12COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[3]~reg0_regout\,
	cout0 => \Add7~17\,
	cout1 => \Add7~17COUT1_113\);

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: LC_X3_Y6_N8
\delay[0][4]\ : maxv_lcell
-- Equation(s):
-- \delay[0][4]~regout\ = DFFEAS((((\x~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \x~combout\(4),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][4]~regout\);

-- Location: LC_X3_Y6_N1
\delay[1][4]\ : maxv_lcell
-- Equation(s):
-- \delay[1][4]~regout\ = DFFEAS((((\delay[0][4]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][4]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][4]~regout\);

-- Location: LC_X3_Y5_N2
\delay[2][4]\ : maxv_lcell
-- Equation(s):
-- \delay[2][4]~regout\ = DFFEAS((((\delay[1][4]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][4]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][4]~regout\);

-- Location: LC_X3_Y5_N5
\delay[3][4]\ : maxv_lcell
-- Equation(s):
-- \delay[3][4]~regout\ = DFFEAS((((\delay[2][4]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[2][4]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][4]~regout\);

-- Location: LC_X8_Y6_N5
\delay[4][4]\ : maxv_lcell
-- Equation(s):
-- \delay[4][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][4]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][4]~regout\);

-- Location: LC_X9_Y4_N2
\delay[5][4]\ : maxv_lcell
-- Equation(s):
-- \delay[5][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][4]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][4]~regout\);

-- Location: LC_X5_Y4_N3
\delay[6][4]\ : maxv_lcell
-- Equation(s):
-- \delay[6][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][4]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][4]~regout\);

-- Location: LC_X4_Y6_N5
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = \delay[1][4]~regout\ $ (\delay[0][4]~regout\ $ ((!\Add0~17\)))
-- \Add0~22\ = CARRY((\delay[1][4]~regout\ & ((\delay[0][4]~regout\) # (!\Add0~17\))) # (!\delay[1][4]~regout\ & (\delay[0][4]~regout\ & !\Add0~17\)))
-- \Add0~22COUT1_94\ = CARRY((\delay[1][4]~regout\ & ((\delay[0][4]~regout\) # (!\Add0~17\))) # (!\delay[1][4]~regout\ & (\delay[0][4]~regout\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[1][4]~regout\,
	datab => \delay[0][4]~regout\,
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_94\);

-- Location: LC_X4_Y5_N5
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = \Add0~20_combout\ $ (\delay[2][4]~regout\ $ ((!\Add1~17\)))
-- \Add1~22\ = CARRY((\Add0~20_combout\ & ((\delay[2][4]~regout\) # (!\Add1~17\))) # (!\Add0~20_combout\ & (\delay[2][4]~regout\ & !\Add1~17\)))
-- \Add1~22COUT1_94\ = CARRY((\Add0~20_combout\ & ((\delay[2][4]~regout\) # (!\Add1~17\))) # (!\Add0~20_combout\ & (\delay[2][4]~regout\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \delay[2][4]~regout\,
	cin => \Add1~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_94\);

-- Location: LC_X7_Y5_N5
\Add2~20\ : maxv_lcell
-- Equation(s):
-- \Add2~20_combout\ = \delay[3][4]~regout\ $ (\Add1~20_combout\ $ ((!\Add2~17\)))
-- \Add2~22\ = CARRY((\delay[3][4]~regout\ & ((\Add1~20_combout\) # (!\Add2~17\))) # (!\delay[3][4]~regout\ & (\Add1~20_combout\ & !\Add2~17\)))
-- \Add2~22COUT1_99\ = CARRY((\delay[3][4]~regout\ & ((\Add1~20_combout\) # (!\Add2~17\))) # (!\delay[3][4]~regout\ & (\Add1~20_combout\ & !\Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][4]~regout\,
	datab => \Add1~20_combout\,
	cin => \Add2~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_99\);

-- Location: LC_X9_Y5_N4
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = \delay[4][4]~regout\ $ (\Add2~20_combout\ $ ((!\Add4~17\)))
-- \Add4~22\ = CARRY((\delay[4][4]~regout\ & ((\Add2~20_combout\) # (!\Add4~17COUT1_104\))) # (!\delay[4][4]~regout\ & (\Add2~20_combout\ & !\Add4~17COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][4]~regout\,
	datab => \Add2~20_combout\,
	cin0 => \Add4~17\,
	cin1 => \Add4~17COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout => \Add4~22\);

-- Location: LC_X9_Y4_N8
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = \delay[5][4]~regout\ $ (\Add4~20_combout\ $ ((!(!\Add6~2\ & \Add6~17\) # (\Add6~2\ & \Add6~17COUT1_113\))))
-- \Add6~22\ = CARRY((\delay[5][4]~regout\ & ((\Add4~20_combout\) # (!\Add6~17\))) # (!\delay[5][4]~regout\ & (\Add4~20_combout\ & !\Add6~17\)))
-- \Add6~22COUT1_114\ = CARRY((\delay[5][4]~regout\ & ((\Add4~20_combout\) # (!\Add6~17COUT1_113\))) # (!\delay[5][4]~regout\ & (\Add4~20_combout\ & !\Add6~17COUT1_113\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][4]~regout\,
	datab => \Add4~20_combout\,
	cin => \Add6~2\,
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout0 => \Add6~22\,
	cout1 => \Add6~22COUT1_114\);

-- Location: LC_X5_Y4_N8
\y[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[4]~reg0_regout\ = DFFEAS(\delay[6][4]~regout\ $ (\Add6~20_combout\ $ ((!(!\Add7~2\ & \Add7~17\) # (\Add7~2\ & \Add7~17COUT1_113\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~22\ = CARRY((\delay[6][4]~regout\ & ((\Add6~20_combout\) # (!\Add7~17\))) # (!\delay[6][4]~regout\ & (\Add6~20_combout\ & !\Add7~17\)))
-- \Add7~22COUT1_114\ = CARRY((\delay[6][4]~regout\ & ((\Add6~20_combout\) # (!\Add7~17COUT1_113\))) # (!\delay[6][4]~regout\ & (\Add6~20_combout\ & !\Add7~17COUT1_113\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][4]~regout\,
	datab => \Add6~20_combout\,
	aclr => \rst~combout\,
	cin => \Add7~2\,
	cin0 => \Add7~17\,
	cin1 => \Add7~17COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[4]~reg0_regout\,
	cout0 => \Add7~22\,
	cout1 => \Add7~22COUT1_114\);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: LC_X7_Y6_N4
\delay[0][5]\ : maxv_lcell
-- Equation(s):
-- \delay[0][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][5]~regout\);

-- Location: LC_X3_Y6_N3
\delay[1][5]\ : maxv_lcell
-- Equation(s):
-- \delay[1][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][5]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][5]~regout\);

-- Location: LC_X3_Y5_N0
\delay[2][5]\ : maxv_lcell
-- Equation(s):
-- \delay[2][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][5]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][5]~regout\);

-- Location: LC_X3_Y5_N4
\delay[3][5]\ : maxv_lcell
-- Equation(s):
-- \delay[3][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][5]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][5]~regout\);

-- Location: LC_X7_Y6_N5
\delay[4][5]\ : maxv_lcell
-- Equation(s):
-- \delay[4][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][5]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][5]~regout\);

-- Location: LC_X7_Y6_N0
\delay[5][5]\ : maxv_lcell
-- Equation(s):
-- \delay[5][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][5]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][5]~regout\);

-- Location: LC_X4_Y6_N6
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = \delay[0][5]~regout\ $ (\delay[1][5]~regout\ $ (((!\Add0~17\ & \Add0~22\) # (\Add0~17\ & \Add0~22COUT1_94\))))
-- \Add0~27\ = CARRY((\delay[0][5]~regout\ & (!\delay[1][5]~regout\ & !\Add0~22\)) # (!\delay[0][5]~regout\ & ((!\Add0~22\) # (!\delay[1][5]~regout\))))
-- \Add0~27COUT1_95\ = CARRY((\delay[0][5]~regout\ & (!\delay[1][5]~regout\ & !\Add0~22COUT1_94\)) # (!\delay[0][5]~regout\ & ((!\Add0~22COUT1_94\) # (!\delay[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][5]~regout\,
	datab => \delay[1][5]~regout\,
	cin => \Add0~17\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_95\);

-- Location: LC_X4_Y5_N6
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = \delay[2][5]~regout\ $ (\Add0~25_combout\ $ (((!\Add1~17\ & \Add1~22\) # (\Add1~17\ & \Add1~22COUT1_94\))))
-- \Add1~27\ = CARRY((\delay[2][5]~regout\ & (!\Add0~25_combout\ & !\Add1~22\)) # (!\delay[2][5]~regout\ & ((!\Add1~22\) # (!\Add0~25_combout\))))
-- \Add1~27COUT1_95\ = CARRY((\delay[2][5]~regout\ & (!\Add0~25_combout\ & !\Add1~22COUT1_94\)) # (!\delay[2][5]~regout\ & ((!\Add1~22COUT1_94\) # (!\Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][5]~regout\,
	datab => \Add0~25_combout\,
	cin => \Add1~17\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_95\);

-- Location: LC_X7_Y5_N6
\Add2~25\ : maxv_lcell
-- Equation(s):
-- \Add2~25_combout\ = \delay[3][5]~regout\ $ (\Add1~25_combout\ $ (((!\Add2~17\ & \Add2~22\) # (\Add2~17\ & \Add2~22COUT1_99\))))
-- \Add2~27\ = CARRY((\delay[3][5]~regout\ & (!\Add1~25_combout\ & !\Add2~22\)) # (!\delay[3][5]~regout\ & ((!\Add2~22\) # (!\Add1~25_combout\))))
-- \Add2~27COUT1_100\ = CARRY((\delay[3][5]~regout\ & (!\Add1~25_combout\ & !\Add2~22COUT1_99\)) # (!\delay[3][5]~regout\ & ((!\Add2~22COUT1_99\) # (!\Add1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][5]~regout\,
	datab => \Add1~25_combout\,
	cin => \Add2~17\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_100\);

-- Location: LC_X9_Y5_N5
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = \delay[4][5]~regout\ $ (\Add2~25_combout\ $ ((\Add4~22\)))
-- \Add4~27\ = CARRY((\delay[4][5]~regout\ & (!\Add2~25_combout\ & !\Add4~22\)) # (!\delay[4][5]~regout\ & ((!\Add4~22\) # (!\Add2~25_combout\))))
-- \Add4~27COUT1_105\ = CARRY((\delay[4][5]~regout\ & (!\Add2~25_combout\ & !\Add4~22\)) # (!\delay[4][5]~regout\ & ((!\Add4~22\) # (!\Add2~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][5]~regout\,
	datab => \Add2~25_combout\,
	cin => \Add4~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_105\);

-- Location: LC_X9_Y4_N9
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = \delay[5][5]~regout\ $ (\Add4~25_combout\ $ (((!\Add6~2\ & \Add6~22\) # (\Add6~2\ & \Add6~22COUT1_114\))))
-- \Add6~27\ = CARRY((\delay[5][5]~regout\ & (!\Add4~25_combout\ & !\Add6~22COUT1_114\)) # (!\delay[5][5]~regout\ & ((!\Add6~22COUT1_114\) # (!\Add4~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][5]~regout\,
	datab => \Add4~25_combout\,
	cin => \Add6~2\,
	cin0 => \Add6~22\,
	cin1 => \Add6~22COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout => \Add6~27\);

-- Location: LC_X7_Y6_N6
\delay[6][5]\ : maxv_lcell
-- Equation(s):
-- \delay[6][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][5]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][5]~regout\);

-- Location: LC_X5_Y4_N9
\y[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[5]~reg0_regout\ = DFFEAS(\Add6~25_combout\ $ (\delay[6][5]~regout\ $ (((!\Add7~2\ & \Add7~22\) # (\Add7~2\ & \Add7~22COUT1_114\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~27\ = CARRY((\Add6~25_combout\ & (!\delay[6][5]~regout\ & !\Add7~22COUT1_114\)) # (!\Add6~25_combout\ & ((!\Add7~22COUT1_114\) # (!\delay[6][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~25_combout\,
	datab => \delay[6][5]~regout\,
	aclr => \rst~combout\,
	cin => \Add7~2\,
	cin0 => \Add7~22\,
	cin1 => \Add7~22COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[5]~reg0_regout\,
	cout => \Add7~27\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: LC_X7_Y6_N1
\delay[0][6]\ : maxv_lcell
-- Equation(s):
-- \delay[0][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][6]~regout\);

-- Location: LC_X7_Y6_N2
\delay[1][6]\ : maxv_lcell
-- Equation(s):
-- \delay[1][6]~regout\ = DFFEAS((((\delay[0][6]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][6]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][6]~regout\);

-- Location: LC_X3_Y5_N9
\delay[2][6]\ : maxv_lcell
-- Equation(s):
-- \delay[2][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][6]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][6]~regout\);

-- Location: LC_X4_Y4_N3
\delay[3][6]\ : maxv_lcell
-- Equation(s):
-- \delay[3][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][6]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][6]~regout\);

-- Location: LC_X4_Y4_N8
\delay[4][6]\ : maxv_lcell
-- Equation(s):
-- \delay[4][6]~regout\ = DFFEAS((((\delay[3][6]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][6]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][6]~regout\);

-- Location: LC_X4_Y4_N7
\delay[5][6]\ : maxv_lcell
-- Equation(s):
-- \delay[5][6]~regout\ = DFFEAS((((\delay[4][6]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][6]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][6]~regout\);

-- Location: LC_X4_Y4_N5
\delay[6][6]\ : maxv_lcell
-- Equation(s):
-- \delay[6][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][6]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][6]~regout\);

-- Location: LC_X4_Y6_N7
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = \delay[0][6]~regout\ $ (\delay[1][6]~regout\ $ ((!(!\Add0~17\ & \Add0~27\) # (\Add0~17\ & \Add0~27COUT1_95\))))
-- \Add0~32\ = CARRY((\delay[0][6]~regout\ & ((\delay[1][6]~regout\) # (!\Add0~27\))) # (!\delay[0][6]~regout\ & (\delay[1][6]~regout\ & !\Add0~27\)))
-- \Add0~32COUT1_96\ = CARRY((\delay[0][6]~regout\ & ((\delay[1][6]~regout\) # (!\Add0~27COUT1_95\))) # (!\delay[0][6]~regout\ & (\delay[1][6]~regout\ & !\Add0~27COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][6]~regout\,
	datab => \delay[1][6]~regout\,
	cin => \Add0~17\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_96\);

-- Location: LC_X4_Y5_N7
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = \delay[2][6]~regout\ $ (\Add0~30_combout\ $ ((!(!\Add1~17\ & \Add1~27\) # (\Add1~17\ & \Add1~27COUT1_95\))))
-- \Add1~32\ = CARRY((\delay[2][6]~regout\ & ((\Add0~30_combout\) # (!\Add1~27\))) # (!\delay[2][6]~regout\ & (\Add0~30_combout\ & !\Add1~27\)))
-- \Add1~32COUT1_96\ = CARRY((\delay[2][6]~regout\ & ((\Add0~30_combout\) # (!\Add1~27COUT1_95\))) # (!\delay[2][6]~regout\ & (\Add0~30_combout\ & !\Add1~27COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][6]~regout\,
	datab => \Add0~30_combout\,
	cin => \Add1~17\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_96\);

-- Location: LC_X7_Y5_N7
\Add2~30\ : maxv_lcell
-- Equation(s):
-- \Add2~30_combout\ = \delay[3][6]~regout\ $ (\Add1~30_combout\ $ ((!(!\Add2~17\ & \Add2~27\) # (\Add2~17\ & \Add2~27COUT1_100\))))
-- \Add2~32\ = CARRY((\delay[3][6]~regout\ & ((\Add1~30_combout\) # (!\Add2~27\))) # (!\delay[3][6]~regout\ & (\Add1~30_combout\ & !\Add2~27\)))
-- \Add2~32COUT1_101\ = CARRY((\delay[3][6]~regout\ & ((\Add1~30_combout\) # (!\Add2~27COUT1_100\))) # (!\delay[3][6]~regout\ & (\Add1~30_combout\ & !\Add2~27COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][6]~regout\,
	datab => \Add1~30_combout\,
	cin => \Add2~17\,
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout0 => \Add2~32\,
	cout1 => \Add2~32COUT1_101\);

-- Location: LC_X9_Y5_N6
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = \delay[4][6]~regout\ $ (\Add2~30_combout\ $ ((!(!\Add4~22\ & \Add4~27\) # (\Add4~22\ & \Add4~27COUT1_105\))))
-- \Add4~32\ = CARRY((\delay[4][6]~regout\ & ((\Add2~30_combout\) # (!\Add4~27\))) # (!\delay[4][6]~regout\ & (\Add2~30_combout\ & !\Add4~27\)))
-- \Add4~32COUT1_106\ = CARRY((\delay[4][6]~regout\ & ((\Add2~30_combout\) # (!\Add4~27COUT1_105\))) # (!\delay[4][6]~regout\ & (\Add2~30_combout\ & !\Add4~27COUT1_105\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][6]~regout\,
	datab => \Add2~30_combout\,
	cin => \Add4~22\,
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout0 => \Add4~32\,
	cout1 => \Add4~32COUT1_106\);

-- Location: LC_X10_Y4_N0
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = \delay[5][6]~regout\ $ (\Add4~30_combout\ $ ((!\Add6~27\)))
-- \Add6~32\ = CARRY((\delay[5][6]~regout\ & ((\Add4~30_combout\) # (!\Add6~27\))) # (!\delay[5][6]~regout\ & (\Add4~30_combout\ & !\Add6~27\)))
-- \Add6~32COUT1_115\ = CARRY((\delay[5][6]~regout\ & ((\Add4~30_combout\) # (!\Add6~27\))) # (!\delay[5][6]~regout\ & (\Add4~30_combout\ & !\Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][6]~regout\,
	datab => \Add4~30_combout\,
	cin => \Add6~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_115\);

-- Location: LC_X6_Y4_N0
\y[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[6]~reg0_regout\ = DFFEAS(\delay[6][6]~regout\ $ (\Add6~30_combout\ $ ((!\Add7~27\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~32\ = CARRY((\delay[6][6]~regout\ & ((\Add6~30_combout\) # (!\Add7~27\))) # (!\delay[6][6]~regout\ & (\Add6~30_combout\ & !\Add7~27\)))
-- \Add7~32COUT1_115\ = CARRY((\delay[6][6]~regout\ & ((\Add6~30_combout\) # (!\Add7~27\))) # (!\delay[6][6]~regout\ & (\Add6~30_combout\ & !\Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][6]~regout\,
	datab => \Add6~30_combout\,
	aclr => \rst~combout\,
	cin => \Add7~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[6]~reg0_regout\,
	cout0 => \Add7~32\,
	cout1 => \Add7~32COUT1_115\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: LC_X7_Y6_N8
\delay[0][7]\ : maxv_lcell
-- Equation(s):
-- \delay[0][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][7]~regout\);

-- Location: LC_X7_Y6_N9
\delay[1][7]\ : maxv_lcell
-- Equation(s):
-- \delay[1][7]~regout\ = DFFEAS((((\delay[0][7]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][7]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][7]~regout\);

-- Location: LC_X3_Y5_N1
\delay[2][7]\ : maxv_lcell
-- Equation(s):
-- \delay[2][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][7]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][7]~regout\);

-- Location: LC_X6_Y5_N5
\delay[3][7]\ : maxv_lcell
-- Equation(s):
-- \delay[3][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][7]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][7]~regout\);

-- Location: LC_X9_Y6_N2
\delay[4][7]\ : maxv_lcell
-- Equation(s):
-- \delay[4][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][7]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][7]~regout\);

-- Location: LC_X9_Y6_N5
\delay[5][7]\ : maxv_lcell
-- Equation(s):
-- \delay[5][7]~regout\ = DFFEAS((((\delay[4][7]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][7]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][7]~regout\);

-- Location: LC_X9_Y6_N4
\delay[6][7]\ : maxv_lcell
-- Equation(s):
-- \delay[6][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][7]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][7]~regout\);

-- Location: LC_X4_Y6_N8
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = \delay[0][7]~regout\ $ (\delay[1][7]~regout\ $ (((!\Add0~17\ & \Add0~32\) # (\Add0~17\ & \Add0~32COUT1_96\))))
-- \Add0~37\ = CARRY((\delay[0][7]~regout\ & (!\delay[1][7]~regout\ & !\Add0~32\)) # (!\delay[0][7]~regout\ & ((!\Add0~32\) # (!\delay[1][7]~regout\))))
-- \Add0~37COUT1_97\ = CARRY((\delay[0][7]~regout\ & (!\delay[1][7]~regout\ & !\Add0~32COUT1_96\)) # (!\delay[0][7]~regout\ & ((!\Add0~32COUT1_96\) # (!\delay[1][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][7]~regout\,
	datab => \delay[1][7]~regout\,
	cin => \Add0~17\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_97\);

-- Location: LC_X4_Y5_N8
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = \delay[2][7]~regout\ $ (\Add0~35_combout\ $ (((!\Add1~17\ & \Add1~32\) # (\Add1~17\ & \Add1~32COUT1_96\))))
-- \Add1~37\ = CARRY((\delay[2][7]~regout\ & (!\Add0~35_combout\ & !\Add1~32\)) # (!\delay[2][7]~regout\ & ((!\Add1~32\) # (!\Add0~35_combout\))))
-- \Add1~37COUT1_97\ = CARRY((\delay[2][7]~regout\ & (!\Add0~35_combout\ & !\Add1~32COUT1_96\)) # (!\delay[2][7]~regout\ & ((!\Add1~32COUT1_96\) # (!\Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][7]~regout\,
	datab => \Add0~35_combout\,
	cin => \Add1~17\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_97\);

-- Location: LC_X7_Y5_N8
\Add2~35\ : maxv_lcell
-- Equation(s):
-- \Add2~35_combout\ = \delay[3][7]~regout\ $ (\Add1~35_combout\ $ (((!\Add2~17\ & \Add2~32\) # (\Add2~17\ & \Add2~32COUT1_101\))))
-- \Add2~37\ = CARRY((\delay[3][7]~regout\ & (!\Add1~35_combout\ & !\Add2~32\)) # (!\delay[3][7]~regout\ & ((!\Add2~32\) # (!\Add1~35_combout\))))
-- \Add2~37COUT1_102\ = CARRY((\delay[3][7]~regout\ & (!\Add1~35_combout\ & !\Add2~32COUT1_101\)) # (!\delay[3][7]~regout\ & ((!\Add2~32COUT1_101\) # (!\Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][7]~regout\,
	datab => \Add1~35_combout\,
	cin => \Add2~17\,
	cin0 => \Add2~32\,
	cin1 => \Add2~32COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_102\);

-- Location: LC_X9_Y5_N7
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = \delay[4][7]~regout\ $ (\Add2~35_combout\ $ (((!\Add4~22\ & \Add4~32\) # (\Add4~22\ & \Add4~32COUT1_106\))))
-- \Add4~37\ = CARRY((\delay[4][7]~regout\ & (!\Add2~35_combout\ & !\Add4~32\)) # (!\delay[4][7]~regout\ & ((!\Add4~32\) # (!\Add2~35_combout\))))
-- \Add4~37COUT1_107\ = CARRY((\delay[4][7]~regout\ & (!\Add2~35_combout\ & !\Add4~32COUT1_106\)) # (!\delay[4][7]~regout\ & ((!\Add4~32COUT1_106\) # (!\Add2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][7]~regout\,
	datab => \Add2~35_combout\,
	cin => \Add4~22\,
	cin0 => \Add4~32\,
	cin1 => \Add4~32COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_107\);

-- Location: LC_X10_Y4_N1
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = \delay[5][7]~regout\ $ (\Add4~35_combout\ $ (((!\Add6~27\ & \Add6~32\) # (\Add6~27\ & \Add6~32COUT1_115\))))
-- \Add6~37\ = CARRY((\delay[5][7]~regout\ & (!\Add4~35_combout\ & !\Add6~32\)) # (!\delay[5][7]~regout\ & ((!\Add6~32\) # (!\Add4~35_combout\))))
-- \Add6~37COUT1_116\ = CARRY((\delay[5][7]~regout\ & (!\Add4~35_combout\ & !\Add6~32COUT1_115\)) # (!\delay[5][7]~regout\ & ((!\Add6~32COUT1_115\) # (!\Add4~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][7]~regout\,
	datab => \Add4~35_combout\,
	cin => \Add6~27\,
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\,
	cout0 => \Add6~37\,
	cout1 => \Add6~37COUT1_116\);

-- Location: LC_X6_Y4_N1
\y[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[7]~reg0_regout\ = DFFEAS(\delay[6][7]~regout\ $ (\Add6~35_combout\ $ (((!\Add7~27\ & \Add7~32\) # (\Add7~27\ & \Add7~32COUT1_115\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~37\ = CARRY((\delay[6][7]~regout\ & (!\Add6~35_combout\ & !\Add7~32\)) # (!\delay[6][7]~regout\ & ((!\Add7~32\) # (!\Add6~35_combout\))))
-- \Add7~37COUT1_116\ = CARRY((\delay[6][7]~regout\ & (!\Add6~35_combout\ & !\Add7~32COUT1_115\)) # (!\delay[6][7]~regout\ & ((!\Add7~32COUT1_115\) # (!\Add6~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][7]~regout\,
	datab => \Add6~35_combout\,
	aclr => \rst~combout\,
	cin => \Add7~27\,
	cin0 => \Add7~32\,
	cin1 => \Add7~32COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[7]~reg0_regout\,
	cout0 => \Add7~37\,
	cout1 => \Add7~37COUT1_116\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(8),
	combout => \x~combout\(8));

-- Location: LC_X7_Y6_N3
\delay[0][8]\ : maxv_lcell
-- Equation(s):
-- \delay[0][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][8]~regout\);

-- Location: LC_X7_Y6_N7
\delay[1][8]\ : maxv_lcell
-- Equation(s):
-- \delay[1][8]~regout\ = DFFEAS((((\delay[0][8]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][8]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][8]~regout\);

-- Location: LC_X3_Y5_N8
\delay[2][8]\ : maxv_lcell
-- Equation(s):
-- \delay[2][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][8]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][8]~regout\);

-- Location: LC_X7_Y7_N7
\delay[3][8]\ : maxv_lcell
-- Equation(s):
-- \delay[3][8]~regout\ = DFFEAS((((\delay[2][8]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[2][8]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][8]~regout\);

-- Location: LC_X7_Y7_N9
\delay[4][8]\ : maxv_lcell
-- Equation(s):
-- \delay[4][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][8]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][8]~regout\);

-- Location: LC_X7_Y7_N5
\delay[5][8]\ : maxv_lcell
-- Equation(s):
-- \delay[5][8]~regout\ = DFFEAS((((\delay[4][8]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][8]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][8]~regout\);

-- Location: LC_X8_Y6_N6
\delay[6][8]\ : maxv_lcell
-- Equation(s):
-- \delay[6][8]~regout\ = DFFEAS((((\delay[5][8]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][8]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][8]~regout\);

-- Location: LC_X4_Y6_N9
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = \delay[0][8]~regout\ $ (\delay[1][8]~regout\ $ ((!(!\Add0~17\ & \Add0~37\) # (\Add0~17\ & \Add0~37COUT1_97\))))
-- \Add0~42\ = CARRY((\delay[0][8]~regout\ & ((\delay[1][8]~regout\) # (!\Add0~37COUT1_97\))) # (!\delay[0][8]~regout\ & (\delay[1][8]~regout\ & !\Add0~37COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][8]~regout\,
	datab => \delay[1][8]~regout\,
	cin => \Add0~17\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X4_Y5_N9
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = \delay[2][8]~regout\ $ (\Add0~40_combout\ $ ((!(!\Add1~17\ & \Add1~37\) # (\Add1~17\ & \Add1~37COUT1_97\))))
-- \Add1~42\ = CARRY((\delay[2][8]~regout\ & ((\Add0~40_combout\) # (!\Add1~37COUT1_97\))) # (!\delay[2][8]~regout\ & (\Add0~40_combout\ & !\Add1~37COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][8]~regout\,
	datab => \Add0~40_combout\,
	cin => \Add1~17\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout => \Add1~42\);

-- Location: LC_X7_Y5_N9
\Add2~40\ : maxv_lcell
-- Equation(s):
-- \Add2~40_combout\ = \delay[3][8]~regout\ $ (\Add1~40_combout\ $ ((!(!\Add2~17\ & \Add2~37\) # (\Add2~17\ & \Add2~37COUT1_102\))))
-- \Add2~42\ = CARRY((\delay[3][8]~regout\ & ((\Add1~40_combout\) # (!\Add2~37COUT1_102\))) # (!\delay[3][8]~regout\ & (\Add1~40_combout\ & !\Add2~37COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][8]~regout\,
	datab => \Add1~40_combout\,
	cin => \Add2~17\,
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout => \Add2~42\);

-- Location: LC_X9_Y5_N8
\Add4~40\ : maxv_lcell
-- Equation(s):
-- \Add4~40_combout\ = \Add2~40_combout\ $ (\delay[4][8]~regout\ $ ((!(!\Add4~22\ & \Add4~37\) # (\Add4~22\ & \Add4~37COUT1_107\))))
-- \Add4~42\ = CARRY((\Add2~40_combout\ & ((\delay[4][8]~regout\) # (!\Add4~37\))) # (!\Add2~40_combout\ & (\delay[4][8]~regout\ & !\Add4~37\)))
-- \Add4~42COUT1_108\ = CARRY((\Add2~40_combout\ & ((\delay[4][8]~regout\) # (!\Add4~37COUT1_107\))) # (!\Add2~40_combout\ & (\delay[4][8]~regout\ & !\Add4~37COUT1_107\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \delay[4][8]~regout\,
	cin => \Add4~22\,
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_108\);

-- Location: LC_X10_Y4_N2
\Add6~40\ : maxv_lcell
-- Equation(s):
-- \Add6~40_combout\ = \delay[5][8]~regout\ $ (\Add4~40_combout\ $ ((!(!\Add6~27\ & \Add6~37\) # (\Add6~27\ & \Add6~37COUT1_116\))))
-- \Add6~42\ = CARRY((\delay[5][8]~regout\ & ((\Add4~40_combout\) # (!\Add6~37\))) # (!\delay[5][8]~regout\ & (\Add4~40_combout\ & !\Add6~37\)))
-- \Add6~42COUT1_117\ = CARRY((\delay[5][8]~regout\ & ((\Add4~40_combout\) # (!\Add6~37COUT1_116\))) # (!\delay[5][8]~regout\ & (\Add4~40_combout\ & !\Add6~37COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][8]~regout\,
	datab => \Add4~40_combout\,
	cin => \Add6~27\,
	cin0 => \Add6~37\,
	cin1 => \Add6~37COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40_combout\,
	cout0 => \Add6~42\,
	cout1 => \Add6~42COUT1_117\);

-- Location: LC_X6_Y4_N2
\y[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[8]~reg0_regout\ = DFFEAS(\delay[6][8]~regout\ $ (\Add6~40_combout\ $ ((!(!\Add7~27\ & \Add7~37\) # (\Add7~27\ & \Add7~37COUT1_116\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~42\ = CARRY((\delay[6][8]~regout\ & ((\Add6~40_combout\) # (!\Add7~37\))) # (!\delay[6][8]~regout\ & (\Add6~40_combout\ & !\Add7~37\)))
-- \Add7~42COUT1_117\ = CARRY((\delay[6][8]~regout\ & ((\Add6~40_combout\) # (!\Add7~37COUT1_116\))) # (!\delay[6][8]~regout\ & (\Add6~40_combout\ & !\Add7~37COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][8]~regout\,
	datab => \Add6~40_combout\,
	aclr => \rst~combout\,
	cin => \Add7~27\,
	cin0 => \Add7~37\,
	cin1 => \Add7~37COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[8]~reg0_regout\,
	cout0 => \Add7~42\,
	cout1 => \Add7~42COUT1_117\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(9),
	combout => \x~combout\(9));

-- Location: LC_X5_Y6_N9
\delay[0][9]\ : maxv_lcell
-- Equation(s):
-- \delay[0][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][9]~regout\);

-- Location: LC_X6_Y6_N1
\delay[1][9]\ : maxv_lcell
-- Equation(s):
-- \delay[1][9]~regout\ = DFFEAS((((\delay[0][9]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][9]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][9]~regout\);

-- Location: LC_X5_Y5_N9
\delay[2][9]\ : maxv_lcell
-- Equation(s):
-- \delay[2][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][9]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][9]~regout\);

-- Location: LC_X6_Y5_N3
\delay[3][9]\ : maxv_lcell
-- Equation(s):
-- \delay[3][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][9]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][9]~regout\);

-- Location: LC_X6_Y5_N0
\delay[4][9]\ : maxv_lcell
-- Equation(s):
-- \delay[4][9]~regout\ = DFFEAS((((\delay[3][9]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][9]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][9]~regout\);

-- Location: LC_X6_Y7_N8
\delay[5][9]\ : maxv_lcell
-- Equation(s):
-- \delay[5][9]~regout\ = DFFEAS((((\delay[4][9]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][9]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][9]~regout\);

-- Location: LC_X5_Y6_N0
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = \delay[1][9]~regout\ $ (\delay[0][9]~regout\ $ ((\Add0~42\)))
-- \Add0~47\ = CARRY((\delay[1][9]~regout\ & (!\delay[0][9]~regout\ & !\Add0~42\)) # (!\delay[1][9]~regout\ & ((!\Add0~42\) # (!\delay[0][9]~regout\))))
-- \Add0~47COUT1_98\ = CARRY((\delay[1][9]~regout\ & (!\delay[0][9]~regout\ & !\Add0~42\)) # (!\delay[1][9]~regout\ & ((!\Add0~42\) # (!\delay[0][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[1][9]~regout\,
	datab => \delay[0][9]~regout\,
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_98\);

-- Location: LC_X5_Y5_N0
\Add1~45\ : maxv_lcell
-- Equation(s):
-- \Add1~45_combout\ = \Add0~45_combout\ $ (\delay[2][9]~regout\ $ ((\Add1~42\)))
-- \Add1~47\ = CARRY((\Add0~45_combout\ & (!\delay[2][9]~regout\ & !\Add1~42\)) # (!\Add0~45_combout\ & ((!\Add1~42\) # (!\delay[2][9]~regout\))))
-- \Add1~47COUT1_98\ = CARRY((\Add0~45_combout\ & (!\delay[2][9]~regout\ & !\Add1~42\)) # (!\Add0~45_combout\ & ((!\Add1~42\) # (!\delay[2][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \delay[2][9]~regout\,
	cin => \Add1~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_98\);

-- Location: LC_X8_Y5_N0
\Add2~45\ : maxv_lcell
-- Equation(s):
-- \Add2~45_combout\ = \delay[3][9]~regout\ $ (\Add1~45_combout\ $ ((\Add2~42\)))
-- \Add2~47\ = CARRY((\delay[3][9]~regout\ & (!\Add1~45_combout\ & !\Add2~42\)) # (!\delay[3][9]~regout\ & ((!\Add2~42\) # (!\Add1~45_combout\))))
-- \Add2~47COUT1_103\ = CARRY((\delay[3][9]~regout\ & (!\Add1~45_combout\ & !\Add2~42\)) # (!\delay[3][9]~regout\ & ((!\Add2~42\) # (!\Add1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][9]~regout\,
	datab => \Add1~45_combout\,
	cin => \Add2~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout0 => \Add2~47\,
	cout1 => \Add2~47COUT1_103\);

-- Location: LC_X9_Y5_N9
\Add4~45\ : maxv_lcell
-- Equation(s):
-- \Add4~45_combout\ = \Add2~45_combout\ $ (\delay[4][9]~regout\ $ (((!\Add4~22\ & \Add4~42\) # (\Add4~22\ & \Add4~42COUT1_108\))))
-- \Add4~47\ = CARRY((\Add2~45_combout\ & (!\delay[4][9]~regout\ & !\Add4~42COUT1_108\)) # (!\Add2~45_combout\ & ((!\Add4~42COUT1_108\) # (!\delay[4][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~45_combout\,
	datab => \delay[4][9]~regout\,
	cin => \Add4~22\,
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~45_combout\,
	cout => \Add4~47\);

-- Location: LC_X10_Y4_N3
\Add6~45\ : maxv_lcell
-- Equation(s):
-- \Add6~45_combout\ = \delay[5][9]~regout\ $ (\Add4~45_combout\ $ (((!\Add6~27\ & \Add6~42\) # (\Add6~27\ & \Add6~42COUT1_117\))))
-- \Add6~47\ = CARRY((\delay[5][9]~regout\ & (!\Add4~45_combout\ & !\Add6~42\)) # (!\delay[5][9]~regout\ & ((!\Add6~42\) # (!\Add4~45_combout\))))
-- \Add6~47COUT1_118\ = CARRY((\delay[5][9]~regout\ & (!\Add4~45_combout\ & !\Add6~42COUT1_117\)) # (!\delay[5][9]~regout\ & ((!\Add6~42COUT1_117\) # (!\Add4~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][9]~regout\,
	datab => \Add4~45_combout\,
	cin => \Add6~27\,
	cin0 => \Add6~42\,
	cin1 => \Add6~42COUT1_117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~45_combout\,
	cout0 => \Add6~47\,
	cout1 => \Add6~47COUT1_118\);

-- Location: LC_X6_Y7_N0
\delay[6][9]\ : maxv_lcell
-- Equation(s):
-- \delay[6][9]~regout\ = DFFEAS((((\delay[5][9]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][9]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][9]~regout\);

-- Location: LC_X6_Y4_N3
\y[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[9]~reg0_regout\ = DFFEAS(\Add6~45_combout\ $ (\delay[6][9]~regout\ $ (((!\Add7~27\ & \Add7~42\) # (\Add7~27\ & \Add7~42COUT1_117\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~47\ = CARRY((\Add6~45_combout\ & (!\delay[6][9]~regout\ & !\Add7~42\)) # (!\Add6~45_combout\ & ((!\Add7~42\) # (!\delay[6][9]~regout\))))
-- \Add7~47COUT1_118\ = CARRY((\Add6~45_combout\ & (!\delay[6][9]~regout\ & !\Add7~42COUT1_117\)) # (!\Add6~45_combout\ & ((!\Add7~42COUT1_117\) # (!\delay[6][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~45_combout\,
	datab => \delay[6][9]~regout\,
	aclr => \rst~combout\,
	cin => \Add7~27\,
	cin0 => \Add7~42\,
	cin1 => \Add7~42COUT1_117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[9]~reg0_regout\,
	cout0 => \Add7~47\,
	cout1 => \Add7~47COUT1_118\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(10),
	combout => \x~combout\(10));

-- Location: LC_X6_Y6_N6
\delay[0][10]\ : maxv_lcell
-- Equation(s):
-- \delay[0][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][10]~regout\);

-- Location: LC_X6_Y6_N4
\delay[1][10]\ : maxv_lcell
-- Equation(s):
-- \delay[1][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][10]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][10]~regout\);

-- Location: LC_X6_Y5_N8
\delay[2][10]\ : maxv_lcell
-- Equation(s):
-- \delay[2][10]~regout\ = DFFEAS((((\delay[1][10]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][10]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][10]~regout\);

-- Location: LC_X9_Y6_N6
\delay[3][10]\ : maxv_lcell
-- Equation(s):
-- \delay[3][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][10]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][10]~regout\);

-- Location: LC_X9_Y6_N8
\delay[4][10]\ : maxv_lcell
-- Equation(s):
-- \delay[4][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][10]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][10]~regout\);

-- Location: LC_X9_Y6_N9
\delay[5][10]\ : maxv_lcell
-- Equation(s):
-- \delay[5][10]~regout\ = DFFEAS((((\delay[4][10]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[4][10]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][10]~regout\);

-- Location: LC_X9_Y6_N3
\delay[6][10]\ : maxv_lcell
-- Equation(s):
-- \delay[6][10]~regout\ = DFFEAS((((\delay[5][10]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][10]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][10]~regout\);

-- Location: LC_X5_Y6_N1
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = \delay[0][10]~regout\ $ (\delay[1][10]~regout\ $ ((!(!\Add0~42\ & \Add0~47\) # (\Add0~42\ & \Add0~47COUT1_98\))))
-- \Add0~52\ = CARRY((\delay[0][10]~regout\ & ((\delay[1][10]~regout\) # (!\Add0~47\))) # (!\delay[0][10]~regout\ & (\delay[1][10]~regout\ & !\Add0~47\)))
-- \Add0~52COUT1_99\ = CARRY((\delay[0][10]~regout\ & ((\delay[1][10]~regout\) # (!\Add0~47COUT1_98\))) # (!\delay[0][10]~regout\ & (\delay[1][10]~regout\ & !\Add0~47COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][10]~regout\,
	datab => \delay[1][10]~regout\,
	cin => \Add0~42\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_99\);

-- Location: LC_X5_Y5_N1
\Add1~50\ : maxv_lcell
-- Equation(s):
-- \Add1~50_combout\ = \Add0~50_combout\ $ (\delay[2][10]~regout\ $ ((!(!\Add1~42\ & \Add1~47\) # (\Add1~42\ & \Add1~47COUT1_98\))))
-- \Add1~52\ = CARRY((\Add0~50_combout\ & ((\delay[2][10]~regout\) # (!\Add1~47\))) # (!\Add0~50_combout\ & (\delay[2][10]~regout\ & !\Add1~47\)))
-- \Add1~52COUT1_99\ = CARRY((\Add0~50_combout\ & ((\delay[2][10]~regout\) # (!\Add1~47COUT1_98\))) # (!\Add0~50_combout\ & (\delay[2][10]~regout\ & !\Add1~47COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \delay[2][10]~regout\,
	cin => \Add1~42\,
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout0 => \Add1~52\,
	cout1 => \Add1~52COUT1_99\);

-- Location: LC_X8_Y5_N1
\Add2~50\ : maxv_lcell
-- Equation(s):
-- \Add2~50_combout\ = \delay[3][10]~regout\ $ (\Add1~50_combout\ $ ((!(!\Add2~42\ & \Add2~47\) # (\Add2~42\ & \Add2~47COUT1_103\))))
-- \Add2~52\ = CARRY((\delay[3][10]~regout\ & ((\Add1~50_combout\) # (!\Add2~47\))) # (!\delay[3][10]~regout\ & (\Add1~50_combout\ & !\Add2~47\)))
-- \Add2~52COUT1_104\ = CARRY((\delay[3][10]~regout\ & ((\Add1~50_combout\) # (!\Add2~47COUT1_103\))) # (!\delay[3][10]~regout\ & (\Add1~50_combout\ & !\Add2~47COUT1_103\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][10]~regout\,
	datab => \Add1~50_combout\,
	cin => \Add2~42\,
	cin0 => \Add2~47\,
	cin1 => \Add2~47COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout0 => \Add2~52\,
	cout1 => \Add2~52COUT1_104\);

-- Location: LC_X10_Y5_N0
\Add4~50\ : maxv_lcell
-- Equation(s):
-- \Add4~50_combout\ = \delay[4][10]~regout\ $ (\Add2~50_combout\ $ ((!\Add4~47\)))
-- \Add4~52\ = CARRY((\delay[4][10]~regout\ & ((\Add2~50_combout\) # (!\Add4~47\))) # (!\delay[4][10]~regout\ & (\Add2~50_combout\ & !\Add4~47\)))
-- \Add4~52COUT1_109\ = CARRY((\delay[4][10]~regout\ & ((\Add2~50_combout\) # (!\Add4~47\))) # (!\delay[4][10]~regout\ & (\Add2~50_combout\ & !\Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][10]~regout\,
	datab => \Add2~50_combout\,
	cin => \Add4~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~50_combout\,
	cout0 => \Add4~52\,
	cout1 => \Add4~52COUT1_109\);

-- Location: LC_X10_Y4_N4
\Add6~50\ : maxv_lcell
-- Equation(s):
-- \Add6~50_combout\ = \Add4~50_combout\ $ (\delay[5][10]~regout\ $ ((!(!\Add6~27\ & \Add6~47\) # (\Add6~27\ & \Add6~47COUT1_118\))))
-- \Add6~52\ = CARRY((\Add4~50_combout\ & ((\delay[5][10]~regout\) # (!\Add6~47COUT1_118\))) # (!\Add4~50_combout\ & (\delay[5][10]~regout\ & !\Add6~47COUT1_118\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~50_combout\,
	datab => \delay[5][10]~regout\,
	cin => \Add6~27\,
	cin0 => \Add6~47\,
	cin1 => \Add6~47COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~50_combout\,
	cout => \Add6~52\);

-- Location: LC_X6_Y4_N4
\y[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[10]~reg0_regout\ = DFFEAS(\delay[6][10]~regout\ $ (\Add6~50_combout\ $ ((!(!\Add7~27\ & \Add7~47\) # (\Add7~27\ & \Add7~47COUT1_118\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~52\ = CARRY((\delay[6][10]~regout\ & ((\Add6~50_combout\) # (!\Add7~47COUT1_118\))) # (!\delay[6][10]~regout\ & (\Add6~50_combout\ & !\Add7~47COUT1_118\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][10]~regout\,
	datab => \Add6~50_combout\,
	aclr => \rst~combout\,
	cin => \Add7~27\,
	cin0 => \Add7~47\,
	cin1 => \Add7~47COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[10]~reg0_regout\,
	cout => \Add7~52\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(11),
	combout => \x~combout\(11));

-- Location: LC_X6_Y6_N9
\delay[0][11]\ : maxv_lcell
-- Equation(s):
-- \delay[0][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][11]~regout\);

-- Location: LC_X6_Y6_N7
\delay[1][11]\ : maxv_lcell
-- Equation(s):
-- \delay[1][11]~regout\ = DFFEAS((((\delay[0][11]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][11]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][11]~regout\);

-- Location: LC_X6_Y5_N6
\delay[2][11]\ : maxv_lcell
-- Equation(s):
-- \delay[2][11]~regout\ = DFFEAS((((\delay[1][11]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][11]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][11]~regout\);

-- Location: LC_X8_Y6_N2
\delay[3][11]\ : maxv_lcell
-- Equation(s):
-- \delay[3][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][11]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][11]~regout\);

-- Location: LC_X8_Y6_N4
\delay[4][11]\ : maxv_lcell
-- Equation(s):
-- \delay[4][11]~regout\ = DFFEAS((((\delay[3][11]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][11]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][11]~regout\);

-- Location: LC_X8_Y6_N1
\delay[5][11]\ : maxv_lcell
-- Equation(s):
-- \delay[5][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][11]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][11]~regout\);

-- Location: LC_X8_Y6_N8
\delay[6][11]\ : maxv_lcell
-- Equation(s):
-- \delay[6][11]~regout\ = DFFEAS((((\delay[5][11]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][11]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][11]~regout\);

-- Location: LC_X5_Y6_N2
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = \delay[1][11]~regout\ $ (\delay[0][11]~regout\ $ (((!\Add0~42\ & \Add0~52\) # (\Add0~42\ & \Add0~52COUT1_99\))))
-- \Add0~57\ = CARRY((\delay[1][11]~regout\ & (!\delay[0][11]~regout\ & !\Add0~52\)) # (!\delay[1][11]~regout\ & ((!\Add0~52\) # (!\delay[0][11]~regout\))))
-- \Add0~57COUT1_100\ = CARRY((\delay[1][11]~regout\ & (!\delay[0][11]~regout\ & !\Add0~52COUT1_99\)) # (!\delay[1][11]~regout\ & ((!\Add0~52COUT1_99\) # (!\delay[0][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[1][11]~regout\,
	datab => \delay[0][11]~regout\,
	cin => \Add0~42\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_100\);

-- Location: LC_X5_Y5_N2
\Add1~55\ : maxv_lcell
-- Equation(s):
-- \Add1~55_combout\ = \delay[2][11]~regout\ $ (\Add0~55_combout\ $ (((!\Add1~42\ & \Add1~52\) # (\Add1~42\ & \Add1~52COUT1_99\))))
-- \Add1~57\ = CARRY((\delay[2][11]~regout\ & (!\Add0~55_combout\ & !\Add1~52\)) # (!\delay[2][11]~regout\ & ((!\Add1~52\) # (!\Add0~55_combout\))))
-- \Add1~57COUT1_100\ = CARRY((\delay[2][11]~regout\ & (!\Add0~55_combout\ & !\Add1~52COUT1_99\)) # (!\delay[2][11]~regout\ & ((!\Add1~52COUT1_99\) # (!\Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][11]~regout\,
	datab => \Add0~55_combout\,
	cin => \Add1~42\,
	cin0 => \Add1~52\,
	cin1 => \Add1~52COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout0 => \Add1~57\,
	cout1 => \Add1~57COUT1_100\);

-- Location: LC_X8_Y5_N2
\Add2~55\ : maxv_lcell
-- Equation(s):
-- \Add2~55_combout\ = \delay[3][11]~regout\ $ (\Add1~55_combout\ $ (((!\Add2~42\ & \Add2~52\) # (\Add2~42\ & \Add2~52COUT1_104\))))
-- \Add2~57\ = CARRY((\delay[3][11]~regout\ & (!\Add1~55_combout\ & !\Add2~52\)) # (!\delay[3][11]~regout\ & ((!\Add2~52\) # (!\Add1~55_combout\))))
-- \Add2~57COUT1_105\ = CARRY((\delay[3][11]~regout\ & (!\Add1~55_combout\ & !\Add2~52COUT1_104\)) # (!\delay[3][11]~regout\ & ((!\Add2~52COUT1_104\) # (!\Add1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][11]~regout\,
	datab => \Add1~55_combout\,
	cin => \Add2~42\,
	cin0 => \Add2~52\,
	cin1 => \Add2~52COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~55_combout\,
	cout0 => \Add2~57\,
	cout1 => \Add2~57COUT1_105\);

-- Location: LC_X10_Y5_N1
\Add4~55\ : maxv_lcell
-- Equation(s):
-- \Add4~55_combout\ = \delay[4][11]~regout\ $ (\Add2~55_combout\ $ (((!\Add4~47\ & \Add4~52\) # (\Add4~47\ & \Add4~52COUT1_109\))))
-- \Add4~57\ = CARRY((\delay[4][11]~regout\ & (!\Add2~55_combout\ & !\Add4~52\)) # (!\delay[4][11]~regout\ & ((!\Add4~52\) # (!\Add2~55_combout\))))
-- \Add4~57COUT1_110\ = CARRY((\delay[4][11]~regout\ & (!\Add2~55_combout\ & !\Add4~52COUT1_109\)) # (!\delay[4][11]~regout\ & ((!\Add4~52COUT1_109\) # (!\Add2~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][11]~regout\,
	datab => \Add2~55_combout\,
	cin => \Add4~47\,
	cin0 => \Add4~52\,
	cin1 => \Add4~52COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~55_combout\,
	cout0 => \Add4~57\,
	cout1 => \Add4~57COUT1_110\);

-- Location: LC_X10_Y4_N5
\Add6~55\ : maxv_lcell
-- Equation(s):
-- \Add6~55_combout\ = \Add4~55_combout\ $ (\delay[5][11]~regout\ $ ((\Add6~52\)))
-- \Add6~57\ = CARRY((\Add4~55_combout\ & (!\delay[5][11]~regout\ & !\Add6~52\)) # (!\Add4~55_combout\ & ((!\Add6~52\) # (!\delay[5][11]~regout\))))
-- \Add6~57COUT1_119\ = CARRY((\Add4~55_combout\ & (!\delay[5][11]~regout\ & !\Add6~52\)) # (!\Add4~55_combout\ & ((!\Add6~52\) # (!\delay[5][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~55_combout\,
	datab => \delay[5][11]~regout\,
	cin => \Add6~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~55_combout\,
	cout0 => \Add6~57\,
	cout1 => \Add6~57COUT1_119\);

-- Location: LC_X6_Y4_N5
\y[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[11]~reg0_regout\ = DFFEAS(\delay[6][11]~regout\ $ (\Add6~55_combout\ $ ((\Add7~52\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~57\ = CARRY((\delay[6][11]~regout\ & (!\Add6~55_combout\ & !\Add7~52\)) # (!\delay[6][11]~regout\ & ((!\Add7~52\) # (!\Add6~55_combout\))))
-- \Add7~57COUT1_119\ = CARRY((\delay[6][11]~regout\ & (!\Add6~55_combout\ & !\Add7~52\)) # (!\delay[6][11]~regout\ & ((!\Add7~52\) # (!\Add6~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][11]~regout\,
	datab => \Add6~55_combout\,
	aclr => \rst~combout\,
	cin => \Add7~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[11]~reg0_regout\,
	cout0 => \Add7~57\,
	cout1 => \Add7~57COUT1_119\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(12),
	combout => \x~combout\(12));

-- Location: LC_X6_Y6_N3
\delay[0][12]\ : maxv_lcell
-- Equation(s):
-- \delay[0][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][12]~regout\);

-- Location: LC_X6_Y6_N2
\delay[1][12]\ : maxv_lcell
-- Equation(s):
-- \delay[1][12]~regout\ = DFFEAS((((\delay[0][12]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][12]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][12]~regout\);

-- Location: LC_X6_Y5_N7
\delay[2][12]\ : maxv_lcell
-- Equation(s):
-- \delay[2][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][12]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][12]~regout\);

-- Location: LC_X6_Y5_N9
\delay[3][12]\ : maxv_lcell
-- Equation(s):
-- \delay[3][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][12]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][12]~regout\);

-- Location: LC_X6_Y7_N4
\delay[4][12]\ : maxv_lcell
-- Equation(s):
-- \delay[4][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][12]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][12]~regout\);

-- Location: LC_X5_Y4_N1
\delay[5][12]\ : maxv_lcell
-- Equation(s):
-- \delay[5][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][12]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][12]~regout\);

-- Location: LC_X5_Y4_N0
\delay[6][12]\ : maxv_lcell
-- Equation(s):
-- \delay[6][12]~regout\ = DFFEAS((((\delay[5][12]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][12]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][12]~regout\);

-- Location: LC_X5_Y6_N3
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = \delay[0][12]~regout\ $ (\delay[1][12]~regout\ $ ((!(!\Add0~42\ & \Add0~57\) # (\Add0~42\ & \Add0~57COUT1_100\))))
-- \Add0~62\ = CARRY((\delay[0][12]~regout\ & ((\delay[1][12]~regout\) # (!\Add0~57\))) # (!\delay[0][12]~regout\ & (\delay[1][12]~regout\ & !\Add0~57\)))
-- \Add0~62COUT1_101\ = CARRY((\delay[0][12]~regout\ & ((\delay[1][12]~regout\) # (!\Add0~57COUT1_100\))) # (!\delay[0][12]~regout\ & (\delay[1][12]~regout\ & !\Add0~57COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][12]~regout\,
	datab => \delay[1][12]~regout\,
	cin => \Add0~42\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_101\);

-- Location: LC_X5_Y5_N3
\Add1~60\ : maxv_lcell
-- Equation(s):
-- \Add1~60_combout\ = \delay[2][12]~regout\ $ (\Add0~60_combout\ $ ((!(!\Add1~42\ & \Add1~57\) # (\Add1~42\ & \Add1~57COUT1_100\))))
-- \Add1~62\ = CARRY((\delay[2][12]~regout\ & ((\Add0~60_combout\) # (!\Add1~57\))) # (!\delay[2][12]~regout\ & (\Add0~60_combout\ & !\Add1~57\)))
-- \Add1~62COUT1_101\ = CARRY((\delay[2][12]~regout\ & ((\Add0~60_combout\) # (!\Add1~57COUT1_100\))) # (!\delay[2][12]~regout\ & (\Add0~60_combout\ & !\Add1~57COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][12]~regout\,
	datab => \Add0~60_combout\,
	cin => \Add1~42\,
	cin0 => \Add1~57\,
	cin1 => \Add1~57COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout0 => \Add1~62\,
	cout1 => \Add1~62COUT1_101\);

-- Location: LC_X8_Y5_N3
\Add2~60\ : maxv_lcell
-- Equation(s):
-- \Add2~60_combout\ = \Add1~60_combout\ $ (\delay[3][12]~regout\ $ ((!(!\Add2~42\ & \Add2~57\) # (\Add2~42\ & \Add2~57COUT1_105\))))
-- \Add2~62\ = CARRY((\Add1~60_combout\ & ((\delay[3][12]~regout\) # (!\Add2~57\))) # (!\Add1~60_combout\ & (\delay[3][12]~regout\ & !\Add2~57\)))
-- \Add2~62COUT1_106\ = CARRY((\Add1~60_combout\ & ((\delay[3][12]~regout\) # (!\Add2~57COUT1_105\))) # (!\Add1~60_combout\ & (\delay[3][12]~regout\ & !\Add2~57COUT1_105\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \delay[3][12]~regout\,
	cin => \Add2~42\,
	cin0 => \Add2~57\,
	cin1 => \Add2~57COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~60_combout\,
	cout0 => \Add2~62\,
	cout1 => \Add2~62COUT1_106\);

-- Location: LC_X10_Y5_N2
\Add4~60\ : maxv_lcell
-- Equation(s):
-- \Add4~60_combout\ = \delay[4][12]~regout\ $ (\Add2~60_combout\ $ ((!(!\Add4~47\ & \Add4~57\) # (\Add4~47\ & \Add4~57COUT1_110\))))
-- \Add4~62\ = CARRY((\delay[4][12]~regout\ & ((\Add2~60_combout\) # (!\Add4~57\))) # (!\delay[4][12]~regout\ & (\Add2~60_combout\ & !\Add4~57\)))
-- \Add4~62COUT1_111\ = CARRY((\delay[4][12]~regout\ & ((\Add2~60_combout\) # (!\Add4~57COUT1_110\))) # (!\delay[4][12]~regout\ & (\Add2~60_combout\ & !\Add4~57COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][12]~regout\,
	datab => \Add2~60_combout\,
	cin => \Add4~47\,
	cin0 => \Add4~57\,
	cin1 => \Add4~57COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~60_combout\,
	cout0 => \Add4~62\,
	cout1 => \Add4~62COUT1_111\);

-- Location: LC_X10_Y4_N6
\Add6~60\ : maxv_lcell
-- Equation(s):
-- \Add6~60_combout\ = \delay[5][12]~regout\ $ (\Add4~60_combout\ $ ((!(!\Add6~52\ & \Add6~57\) # (\Add6~52\ & \Add6~57COUT1_119\))))
-- \Add6~62\ = CARRY((\delay[5][12]~regout\ & ((\Add4~60_combout\) # (!\Add6~57\))) # (!\delay[5][12]~regout\ & (\Add4~60_combout\ & !\Add6~57\)))
-- \Add6~62COUT1_120\ = CARRY((\delay[5][12]~regout\ & ((\Add4~60_combout\) # (!\Add6~57COUT1_119\))) # (!\delay[5][12]~regout\ & (\Add4~60_combout\ & !\Add6~57COUT1_119\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][12]~regout\,
	datab => \Add4~60_combout\,
	cin => \Add6~52\,
	cin0 => \Add6~57\,
	cin1 => \Add6~57COUT1_119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~60_combout\,
	cout0 => \Add6~62\,
	cout1 => \Add6~62COUT1_120\);

-- Location: LC_X6_Y4_N6
\y[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[12]~reg0_regout\ = DFFEAS(\delay[6][12]~regout\ $ (\Add6~60_combout\ $ ((!(!\Add7~52\ & \Add7~57\) # (\Add7~52\ & \Add7~57COUT1_119\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~62\ = CARRY((\delay[6][12]~regout\ & ((\Add6~60_combout\) # (!\Add7~57\))) # (!\delay[6][12]~regout\ & (\Add6~60_combout\ & !\Add7~57\)))
-- \Add7~62COUT1_120\ = CARRY((\delay[6][12]~regout\ & ((\Add6~60_combout\) # (!\Add7~57COUT1_119\))) # (!\delay[6][12]~regout\ & (\Add6~60_combout\ & !\Add7~57COUT1_119\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][12]~regout\,
	datab => \Add6~60_combout\,
	aclr => \rst~combout\,
	cin => \Add7~52\,
	cin0 => \Add7~57\,
	cin1 => \Add7~57COUT1_119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[12]~reg0_regout\,
	cout0 => \Add7~62\,
	cout1 => \Add7~62COUT1_120\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(13),
	combout => \x~combout\(13));

-- Location: LC_X8_Y6_N9
\delay[0][13]\ : maxv_lcell
-- Equation(s):
-- \delay[0][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][13]~regout\);

-- Location: LC_X6_Y6_N5
\delay[1][13]\ : maxv_lcell
-- Equation(s):
-- \delay[1][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][13]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][13]~regout\);

-- Location: LC_X6_Y5_N4
\delay[2][13]\ : maxv_lcell
-- Equation(s):
-- \delay[2][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[1][13]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[1][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][13]~regout\);

-- Location: LC_X8_Y6_N0
\delay[3][13]\ : maxv_lcell
-- Equation(s):
-- \delay[3][13]~regout\ = DFFEAS((((\delay[2][13]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[2][13]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][13]~regout\);

-- Location: LC_X10_Y6_N0
\delay[4][13]\ : maxv_lcell
-- Equation(s):
-- \delay[4][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[3][13]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[3][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][13]~regout\);

-- Location: LC_X10_Y6_N7
\delay[5][13]\ : maxv_lcell
-- Equation(s):
-- \delay[5][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][13]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][13]~regout\);

-- Location: LC_X8_Y4_N0
\delay[6][13]\ : maxv_lcell
-- Equation(s):
-- \delay[6][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][13]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][13]~regout\);

-- Location: LC_X5_Y6_N4
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = \delay[0][13]~regout\ $ (\delay[1][13]~regout\ $ (((!\Add0~42\ & \Add0~62\) # (\Add0~42\ & \Add0~62COUT1_101\))))
-- \Add0~67\ = CARRY((\delay[0][13]~regout\ & (!\delay[1][13]~regout\ & !\Add0~62COUT1_101\)) # (!\delay[0][13]~regout\ & ((!\Add0~62COUT1_101\) # (!\delay[1][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][13]~regout\,
	datab => \delay[1][13]~regout\,
	cin => \Add0~42\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X5_Y5_N4
\Add1~65\ : maxv_lcell
-- Equation(s):
-- \Add1~65_combout\ = \Add0~65_combout\ $ (\delay[2][13]~regout\ $ (((!\Add1~42\ & \Add1~62\) # (\Add1~42\ & \Add1~62COUT1_101\))))
-- \Add1~67\ = CARRY((\Add0~65_combout\ & (!\delay[2][13]~regout\ & !\Add1~62COUT1_101\)) # (!\Add0~65_combout\ & ((!\Add1~62COUT1_101\) # (!\delay[2][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \delay[2][13]~regout\,
	cin => \Add1~42\,
	cin0 => \Add1~62\,
	cin1 => \Add1~62COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65_combout\,
	cout => \Add1~67\);

-- Location: LC_X8_Y5_N4
\Add2~65\ : maxv_lcell
-- Equation(s):
-- \Add2~65_combout\ = \delay[3][13]~regout\ $ (\Add1~65_combout\ $ (((!\Add2~42\ & \Add2~62\) # (\Add2~42\ & \Add2~62COUT1_106\))))
-- \Add2~67\ = CARRY((\delay[3][13]~regout\ & (!\Add1~65_combout\ & !\Add2~62COUT1_106\)) # (!\delay[3][13]~regout\ & ((!\Add2~62COUT1_106\) # (!\Add1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][13]~regout\,
	datab => \Add1~65_combout\,
	cin => \Add2~42\,
	cin0 => \Add2~62\,
	cin1 => \Add2~62COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~65_combout\,
	cout => \Add2~67\);

-- Location: LC_X10_Y5_N3
\Add4~65\ : maxv_lcell
-- Equation(s):
-- \Add4~65_combout\ = \delay[4][13]~regout\ $ (\Add2~65_combout\ $ (((!\Add4~47\ & \Add4~62\) # (\Add4~47\ & \Add4~62COUT1_111\))))
-- \Add4~67\ = CARRY((\delay[4][13]~regout\ & (!\Add2~65_combout\ & !\Add4~62\)) # (!\delay[4][13]~regout\ & ((!\Add4~62\) # (!\Add2~65_combout\))))
-- \Add4~67COUT1_112\ = CARRY((\delay[4][13]~regout\ & (!\Add2~65_combout\ & !\Add4~62COUT1_111\)) # (!\delay[4][13]~regout\ & ((!\Add4~62COUT1_111\) # (!\Add2~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][13]~regout\,
	datab => \Add2~65_combout\,
	cin => \Add4~47\,
	cin0 => \Add4~62\,
	cin1 => \Add4~62COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~65_combout\,
	cout0 => \Add4~67\,
	cout1 => \Add4~67COUT1_112\);

-- Location: LC_X10_Y4_N7
\Add6~65\ : maxv_lcell
-- Equation(s):
-- \Add6~65_combout\ = \delay[5][13]~regout\ $ (\Add4~65_combout\ $ (((!\Add6~52\ & \Add6~62\) # (\Add6~52\ & \Add6~62COUT1_120\))))
-- \Add6~67\ = CARRY((\delay[5][13]~regout\ & (!\Add4~65_combout\ & !\Add6~62\)) # (!\delay[5][13]~regout\ & ((!\Add6~62\) # (!\Add4~65_combout\))))
-- \Add6~67COUT1_121\ = CARRY((\delay[5][13]~regout\ & (!\Add4~65_combout\ & !\Add6~62COUT1_120\)) # (!\delay[5][13]~regout\ & ((!\Add6~62COUT1_120\) # (!\Add4~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][13]~regout\,
	datab => \Add4~65_combout\,
	cin => \Add6~52\,
	cin0 => \Add6~62\,
	cin1 => \Add6~62COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~65_combout\,
	cout0 => \Add6~67\,
	cout1 => \Add6~67COUT1_121\);

-- Location: LC_X6_Y4_N7
\y[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[13]~reg0_regout\ = DFFEAS(\delay[6][13]~regout\ $ (\Add6~65_combout\ $ (((!\Add7~52\ & \Add7~62\) # (\Add7~52\ & \Add7~62COUT1_120\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~67\ = CARRY((\delay[6][13]~regout\ & (!\Add6~65_combout\ & !\Add7~62\)) # (!\delay[6][13]~regout\ & ((!\Add7~62\) # (!\Add6~65_combout\))))
-- \Add7~67COUT1_121\ = CARRY((\delay[6][13]~regout\ & (!\Add6~65_combout\ & !\Add7~62COUT1_120\)) # (!\delay[6][13]~regout\ & ((!\Add7~62COUT1_120\) # (!\Add6~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][13]~regout\,
	datab => \Add6~65_combout\,
	aclr => \rst~combout\,
	cin => \Add7~52\,
	cin0 => \Add7~62\,
	cin1 => \Add7~62COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[13]~reg0_regout\,
	cout0 => \Add7~67\,
	cout1 => \Add7~67COUT1_121\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(14),
	combout => \x~combout\(14));

-- Location: LC_X5_Y7_N5
\delay[0][14]\ : maxv_lcell
-- Equation(s):
-- \delay[0][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(14),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][14]~regout\);

-- Location: LC_X6_Y6_N8
\delay[1][14]\ : maxv_lcell
-- Equation(s):
-- \delay[1][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[0][14]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[0][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][14]~regout\);

-- Location: LC_X5_Y7_N6
\delay[2][14]\ : maxv_lcell
-- Equation(s):
-- \delay[2][14]~regout\ = DFFEAS((((\delay[1][14]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][14]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][14]~regout\);

-- Location: LC_X8_Y6_N7
\delay[3][14]\ : maxv_lcell
-- Equation(s):
-- \delay[3][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[2][14]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[2][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][14]~regout\);

-- Location: LC_X9_Y6_N7
\delay[4][14]\ : maxv_lcell
-- Equation(s):
-- \delay[4][14]~regout\ = DFFEAS((((\delay[3][14]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][14]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][14]~regout\);

-- Location: LC_X9_Y6_N1
\delay[5][14]\ : maxv_lcell
-- Equation(s):
-- \delay[5][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][14]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][14]~regout\);

-- Location: LC_X8_Y4_N3
\delay[6][14]\ : maxv_lcell
-- Equation(s):
-- \delay[6][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[5][14]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[5][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][14]~regout\);

-- Location: LC_X5_Y6_N5
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = \delay[0][14]~regout\ $ (\delay[1][14]~regout\ $ ((!\Add0~67\)))
-- \Add0~72\ = CARRY((\delay[0][14]~regout\ & ((\delay[1][14]~regout\) # (!\Add0~67\))) # (!\delay[0][14]~regout\ & (\delay[1][14]~regout\ & !\Add0~67\)))
-- \Add0~72COUT1_102\ = CARRY((\delay[0][14]~regout\ & ((\delay[1][14]~regout\) # (!\Add0~67\))) # (!\delay[0][14]~regout\ & (\delay[1][14]~regout\ & !\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[0][14]~regout\,
	datab => \delay[1][14]~regout\,
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_102\);

-- Location: LC_X5_Y5_N5
\Add1~70\ : maxv_lcell
-- Equation(s):
-- \Add1~70_combout\ = \delay[2][14]~regout\ $ (\Add0~70_combout\ $ ((!\Add1~67\)))
-- \Add1~72\ = CARRY((\delay[2][14]~regout\ & ((\Add0~70_combout\) # (!\Add1~67\))) # (!\delay[2][14]~regout\ & (\Add0~70_combout\ & !\Add1~67\)))
-- \Add1~72COUT1_102\ = CARRY((\delay[2][14]~regout\ & ((\Add0~70_combout\) # (!\Add1~67\))) # (!\delay[2][14]~regout\ & (\Add0~70_combout\ & !\Add1~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][14]~regout\,
	datab => \Add0~70_combout\,
	cin => \Add1~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70_combout\,
	cout0 => \Add1~72\,
	cout1 => \Add1~72COUT1_102\);

-- Location: LC_X8_Y5_N5
\Add2~70\ : maxv_lcell
-- Equation(s):
-- \Add2~70_combout\ = \delay[3][14]~regout\ $ (\Add1~70_combout\ $ ((!\Add2~67\)))
-- \Add2~72\ = CARRY((\delay[3][14]~regout\ & ((\Add1~70_combout\) # (!\Add2~67\))) # (!\delay[3][14]~regout\ & (\Add1~70_combout\ & !\Add2~67\)))
-- \Add2~72COUT1_107\ = CARRY((\delay[3][14]~regout\ & ((\Add1~70_combout\) # (!\Add2~67\))) # (!\delay[3][14]~regout\ & (\Add1~70_combout\ & !\Add2~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][14]~regout\,
	datab => \Add1~70_combout\,
	cin => \Add2~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~70_combout\,
	cout0 => \Add2~72\,
	cout1 => \Add2~72COUT1_107\);

-- Location: LC_X10_Y5_N4
\Add4~70\ : maxv_lcell
-- Equation(s):
-- \Add4~70_combout\ = \delay[4][14]~regout\ $ (\Add2~70_combout\ $ ((!(!\Add4~47\ & \Add4~67\) # (\Add4~47\ & \Add4~67COUT1_112\))))
-- \Add4~72\ = CARRY((\delay[4][14]~regout\ & ((\Add2~70_combout\) # (!\Add4~67COUT1_112\))) # (!\delay[4][14]~regout\ & (\Add2~70_combout\ & !\Add4~67COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][14]~regout\,
	datab => \Add2~70_combout\,
	cin => \Add4~47\,
	cin0 => \Add4~67\,
	cin1 => \Add4~67COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~70_combout\,
	cout => \Add4~72\);

-- Location: LC_X10_Y4_N8
\Add6~70\ : maxv_lcell
-- Equation(s):
-- \Add6~70_combout\ = \delay[5][14]~regout\ $ (\Add4~70_combout\ $ ((!(!\Add6~52\ & \Add6~67\) # (\Add6~52\ & \Add6~67COUT1_121\))))
-- \Add6~72\ = CARRY((\delay[5][14]~regout\ & ((\Add4~70_combout\) # (!\Add6~67\))) # (!\delay[5][14]~regout\ & (\Add4~70_combout\ & !\Add6~67\)))
-- \Add6~72COUT1_122\ = CARRY((\delay[5][14]~regout\ & ((\Add4~70_combout\) # (!\Add6~67COUT1_121\))) # (!\delay[5][14]~regout\ & (\Add4~70_combout\ & !\Add6~67COUT1_121\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][14]~regout\,
	datab => \Add4~70_combout\,
	cin => \Add6~52\,
	cin0 => \Add6~67\,
	cin1 => \Add6~67COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~70_combout\,
	cout0 => \Add6~72\,
	cout1 => \Add6~72COUT1_122\);

-- Location: LC_X6_Y4_N8
\y[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[14]~reg0_regout\ = DFFEAS(\delay[6][14]~regout\ $ (\Add6~70_combout\ $ ((!(!\Add7~52\ & \Add7~67\) # (\Add7~52\ & \Add7~67COUT1_121\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~72\ = CARRY((\delay[6][14]~regout\ & ((\Add6~70_combout\) # (!\Add7~67\))) # (!\delay[6][14]~regout\ & (\Add6~70_combout\ & !\Add7~67\)))
-- \Add7~72COUT1_122\ = CARRY((\delay[6][14]~regout\ & ((\Add6~70_combout\) # (!\Add7~67COUT1_121\))) # (!\delay[6][14]~regout\ & (\Add6~70_combout\ & !\Add7~67COUT1_121\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][14]~regout\,
	datab => \Add6~70_combout\,
	aclr => \rst~combout\,
	cin => \Add7~52\,
	cin0 => \Add7~67\,
	cin1 => \Add7~67COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[14]~reg0_regout\,
	cout0 => \Add7~72\,
	cout1 => \Add7~72COUT1_122\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(15),
	combout => \x~combout\(15));

-- Location: LC_X8_Y6_N3
\delay[0][15]\ : maxv_lcell
-- Equation(s):
-- \delay[0][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \x~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \x~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[0][15]~regout\);

-- Location: LC_X6_Y6_N0
\delay[1][15]\ : maxv_lcell
-- Equation(s):
-- \delay[1][15]~regout\ = DFFEAS((((\delay[0][15]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[0][15]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[1][15]~regout\);

-- Location: LC_X6_Y5_N2
\delay[2][15]\ : maxv_lcell
-- Equation(s):
-- \delay[2][15]~regout\ = DFFEAS((((\delay[1][15]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[1][15]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[2][15]~regout\);

-- Location: LC_X8_Y4_N2
\delay[3][15]\ : maxv_lcell
-- Equation(s):
-- \delay[3][15]~regout\ = DFFEAS((((\delay[2][15]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[2][15]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[3][15]~regout\);

-- Location: LC_X8_Y4_N1
\delay[4][15]\ : maxv_lcell
-- Equation(s):
-- \delay[4][15]~regout\ = DFFEAS((((\delay[3][15]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[3][15]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[4][15]~regout\);

-- Location: LC_X11_Y4_N8
\delay[5][15]\ : maxv_lcell
-- Equation(s):
-- \delay[5][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \delay[4][15]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \delay[4][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[5][15]~regout\);

-- Location: LC_X11_Y4_N9
\delay[6][15]\ : maxv_lcell
-- Equation(s):
-- \delay[6][15]~regout\ = DFFEAS((((\delay[5][15]~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \delay[5][15]~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \delay[6][15]~regout\);

-- Location: LC_X5_Y6_N6
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = \delay[1][15]~regout\ $ (\delay[0][15]~regout\ $ (((!\Add0~67\ & \Add0~72\) # (\Add0~67\ & \Add0~72COUT1_102\))))
-- \Add0~77\ = CARRY((\delay[1][15]~regout\ & (!\delay[0][15]~regout\ & !\Add0~72\)) # (!\delay[1][15]~regout\ & ((!\Add0~72\) # (!\delay[0][15]~regout\))))
-- \Add0~77COUT1_103\ = CARRY((\delay[1][15]~regout\ & (!\delay[0][15]~regout\ & !\Add0~72COUT1_102\)) # (!\delay[1][15]~regout\ & ((!\Add0~72COUT1_102\) # (!\delay[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[1][15]~regout\,
	datab => \delay[0][15]~regout\,
	cin => \Add0~67\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_103\);

-- Location: LC_X5_Y5_N6
\Add1~75\ : maxv_lcell
-- Equation(s):
-- \Add1~75_combout\ = \Add0~75_combout\ $ (\delay[2][15]~regout\ $ (((!\Add1~67\ & \Add1~72\) # (\Add1~67\ & \Add1~72COUT1_102\))))
-- \Add1~77\ = CARRY((\Add0~75_combout\ & (!\delay[2][15]~regout\ & !\Add1~72\)) # (!\Add0~75_combout\ & ((!\Add1~72\) # (!\delay[2][15]~regout\))))
-- \Add1~77COUT1_103\ = CARRY((\Add0~75_combout\ & (!\delay[2][15]~regout\ & !\Add1~72COUT1_102\)) # (!\Add0~75_combout\ & ((!\Add1~72COUT1_102\) # (!\delay[2][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \delay[2][15]~regout\,
	cin => \Add1~67\,
	cin0 => \Add1~72\,
	cin1 => \Add1~72COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~75_combout\,
	cout0 => \Add1~77\,
	cout1 => \Add1~77COUT1_103\);

-- Location: LC_X8_Y5_N6
\Add2~75\ : maxv_lcell
-- Equation(s):
-- \Add2~75_combout\ = \delay[3][15]~regout\ $ (\Add1~75_combout\ $ (((!\Add2~67\ & \Add2~72\) # (\Add2~67\ & \Add2~72COUT1_107\))))
-- \Add2~77\ = CARRY((\delay[3][15]~regout\ & (!\Add1~75_combout\ & !\Add2~72\)) # (!\delay[3][15]~regout\ & ((!\Add2~72\) # (!\Add1~75_combout\))))
-- \Add2~77COUT1_108\ = CARRY((\delay[3][15]~regout\ & (!\Add1~75_combout\ & !\Add2~72COUT1_107\)) # (!\delay[3][15]~regout\ & ((!\Add2~72COUT1_107\) # (!\Add1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][15]~regout\,
	datab => \Add1~75_combout\,
	cin => \Add2~67\,
	cin0 => \Add2~72\,
	cin1 => \Add2~72COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~75_combout\,
	cout0 => \Add2~77\,
	cout1 => \Add2~77COUT1_108\);

-- Location: LC_X10_Y5_N5
\Add4~75\ : maxv_lcell
-- Equation(s):
-- \Add4~75_combout\ = \delay[4][15]~regout\ $ (\Add2~75_combout\ $ ((\Add4~72\)))
-- \Add4~77\ = CARRY((\delay[4][15]~regout\ & (!\Add2~75_combout\ & !\Add4~72\)) # (!\delay[4][15]~regout\ & ((!\Add4~72\) # (!\Add2~75_combout\))))
-- \Add4~77COUT1_113\ = CARRY((\delay[4][15]~regout\ & (!\Add2~75_combout\ & !\Add4~72\)) # (!\delay[4][15]~regout\ & ((!\Add4~72\) # (!\Add2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][15]~regout\,
	datab => \Add2~75_combout\,
	cin => \Add4~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~75_combout\,
	cout0 => \Add4~77\,
	cout1 => \Add4~77COUT1_113\);

-- Location: LC_X10_Y4_N9
\Add6~75\ : maxv_lcell
-- Equation(s):
-- \Add6~75_combout\ = \delay[5][15]~regout\ $ (\Add4~75_combout\ $ (((!\Add6~52\ & \Add6~72\) # (\Add6~52\ & \Add6~72COUT1_122\))))
-- \Add6~77\ = CARRY((\delay[5][15]~regout\ & (!\Add4~75_combout\ & !\Add6~72COUT1_122\)) # (!\delay[5][15]~regout\ & ((!\Add6~72COUT1_122\) # (!\Add4~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datab => \Add4~75_combout\,
	cin => \Add6~52\,
	cin0 => \Add6~72\,
	cin1 => \Add6~72COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~75_combout\,
	cout => \Add6~77\);

-- Location: LC_X6_Y4_N9
\y[15]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[15]~reg0_regout\ = DFFEAS(\delay[6][15]~regout\ $ (\Add6~75_combout\ $ (((!\Add7~52\ & \Add7~72\) # (\Add7~52\ & \Add7~72COUT1_122\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~77\ = CARRY((\delay[6][15]~regout\ & (!\Add6~75_combout\ & !\Add7~72COUT1_122\)) # (!\delay[6][15]~regout\ & ((!\Add7~72COUT1_122\) # (!\Add6~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][15]~regout\,
	datab => \Add6~75_combout\,
	aclr => \rst~combout\,
	cin => \Add7~52\,
	cin0 => \Add7~72\,
	cin1 => \Add7~72COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[15]~reg0_regout\,
	cout => \Add7~77\);

-- Location: LC_X5_Y6_N7
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = \delay[1][15]~regout\ $ (\delay[0][15]~regout\ $ ((!(!\Add0~67\ & \Add0~77\) # (\Add0~67\ & \Add0~77COUT1_103\))))
-- \Add0~82\ = CARRY((\delay[1][15]~regout\ & ((\delay[0][15]~regout\) # (!\Add0~77\))) # (!\delay[1][15]~regout\ & (\delay[0][15]~regout\ & !\Add0~77\)))
-- \Add0~82COUT1_104\ = CARRY((\delay[1][15]~regout\ & ((\delay[0][15]~regout\) # (!\Add0~77COUT1_103\))) # (!\delay[1][15]~regout\ & (\delay[0][15]~regout\ & !\Add0~77COUT1_103\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[1][15]~regout\,
	datab => \delay[0][15]~regout\,
	cin => \Add0~67\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_104\);

-- Location: LC_X5_Y5_N7
\Add1~80\ : maxv_lcell
-- Equation(s):
-- \Add1~80_combout\ = \delay[2][15]~regout\ $ (\Add0~80_combout\ $ ((!(!\Add1~67\ & \Add1~77\) # (\Add1~67\ & \Add1~77COUT1_103\))))
-- \Add1~82\ = CARRY((\delay[2][15]~regout\ & ((\Add0~80_combout\) # (!\Add1~77\))) # (!\delay[2][15]~regout\ & (\Add0~80_combout\ & !\Add1~77\)))
-- \Add1~82COUT1_104\ = CARRY((\delay[2][15]~regout\ & ((\Add0~80_combout\) # (!\Add1~77COUT1_103\))) # (!\delay[2][15]~regout\ & (\Add0~80_combout\ & !\Add1~77COUT1_103\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[2][15]~regout\,
	datab => \Add0~80_combout\,
	cin => \Add1~67\,
	cin0 => \Add1~77\,
	cin1 => \Add1~77COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~80_combout\,
	cout0 => \Add1~82\,
	cout1 => \Add1~82COUT1_104\);

-- Location: LC_X8_Y5_N7
\Add2~80\ : maxv_lcell
-- Equation(s):
-- \Add2~80_combout\ = \delay[3][15]~regout\ $ (\Add1~80_combout\ $ ((!(!\Add2~67\ & \Add2~77\) # (\Add2~67\ & \Add2~77COUT1_108\))))
-- \Add2~82\ = CARRY((\delay[3][15]~regout\ & ((\Add1~80_combout\) # (!\Add2~77\))) # (!\delay[3][15]~regout\ & (\Add1~80_combout\ & !\Add2~77\)))
-- \Add2~82COUT1_109\ = CARRY((\delay[3][15]~regout\ & ((\Add1~80_combout\) # (!\Add2~77COUT1_108\))) # (!\delay[3][15]~regout\ & (\Add1~80_combout\ & !\Add2~77COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][15]~regout\,
	datab => \Add1~80_combout\,
	cin => \Add2~67\,
	cin0 => \Add2~77\,
	cin1 => \Add2~77COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~80_combout\,
	cout0 => \Add2~82\,
	cout1 => \Add2~82COUT1_109\);

-- Location: LC_X10_Y5_N6
\Add4~80\ : maxv_lcell
-- Equation(s):
-- \Add4~80_combout\ = \delay[4][15]~regout\ $ (\Add2~80_combout\ $ ((!(!\Add4~72\ & \Add4~77\) # (\Add4~72\ & \Add4~77COUT1_113\))))
-- \Add4~82\ = CARRY((\delay[4][15]~regout\ & ((\Add2~80_combout\) # (!\Add4~77\))) # (!\delay[4][15]~regout\ & (\Add2~80_combout\ & !\Add4~77\)))
-- \Add4~82COUT1_114\ = CARRY((\delay[4][15]~regout\ & ((\Add2~80_combout\) # (!\Add4~77COUT1_113\))) # (!\delay[4][15]~regout\ & (\Add2~80_combout\ & !\Add4~77COUT1_113\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][15]~regout\,
	datab => \Add2~80_combout\,
	cin => \Add4~72\,
	cin0 => \Add4~77\,
	cin1 => \Add4~77COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~80_combout\,
	cout0 => \Add4~82\,
	cout1 => \Add4~82COUT1_114\);

-- Location: LC_X11_Y4_N0
\Add6~80\ : maxv_lcell
-- Equation(s):
-- \Add6~80_combout\ = \delay[5][15]~regout\ $ (\Add4~80_combout\ $ ((!\Add6~77\)))
-- \Add6~82\ = CARRY((\delay[5][15]~regout\ & ((\Add4~80_combout\) # (!\Add6~77\))) # (!\delay[5][15]~regout\ & (\Add4~80_combout\ & !\Add6~77\)))
-- \Add6~82COUT1_123\ = CARRY((\delay[5][15]~regout\ & ((\Add4~80_combout\) # (!\Add6~77\))) # (!\delay[5][15]~regout\ & (\Add4~80_combout\ & !\Add6~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datab => \Add4~80_combout\,
	cin => \Add6~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~80_combout\,
	cout0 => \Add6~82\,
	cout1 => \Add6~82COUT1_123\);

-- Location: LC_X7_Y4_N0
\y[16]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[16]~reg0_regout\ = DFFEAS(\delay[6][15]~regout\ $ (\Add6~80_combout\ $ ((!\Add7~77\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~82\ = CARRY((\delay[6][15]~regout\ & ((\Add6~80_combout\) # (!\Add7~77\))) # (!\delay[6][15]~regout\ & (\Add6~80_combout\ & !\Add7~77\)))
-- \Add7~82COUT1_123\ = CARRY((\delay[6][15]~regout\ & ((\Add6~80_combout\) # (!\Add7~77\))) # (!\delay[6][15]~regout\ & (\Add6~80_combout\ & !\Add7~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][15]~regout\,
	datab => \Add6~80_combout\,
	aclr => \rst~combout\,
	cin => \Add7~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[16]~reg0_regout\,
	cout0 => \Add7~82\,
	cout1 => \Add7~82COUT1_123\);

-- Location: LC_X5_Y6_N8
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = \delay[1][15]~regout\ $ ((((!\Add0~67\ & \Add0~82\) # (\Add0~67\ & \Add0~82COUT1_104\) $ (\delay[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[1][15]~regout\,
	datad => \delay[0][15]~regout\,
	cin => \Add0~67\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\);

-- Location: LC_X5_Y5_N8
\Add1~85\ : maxv_lcell
-- Equation(s):
-- \Add1~85_combout\ = (\delay[2][15]~regout\ $ ((!\Add1~67\ & \Add1~82\) # (\Add1~67\ & \Add1~82COUT1_104\) $ (\Add0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \delay[2][15]~regout\,
	datad => \Add0~85_combout\,
	cin => \Add1~67\,
	cin0 => \Add1~82\,
	cin1 => \Add1~82COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~85_combout\);

-- Location: LC_X8_Y5_N8
\Add2~85\ : maxv_lcell
-- Equation(s):
-- \Add2~85_combout\ = \delay[3][15]~regout\ $ (\Add1~85_combout\ $ (((!\Add2~67\ & \Add2~82\) # (\Add2~67\ & \Add2~82COUT1_109\))))
-- \Add2~87\ = CARRY((\delay[3][15]~regout\ & (!\Add1~85_combout\ & !\Add2~82\)) # (!\delay[3][15]~regout\ & ((!\Add2~82\) # (!\Add1~85_combout\))))
-- \Add2~87COUT1_110\ = CARRY((\delay[3][15]~regout\ & (!\Add1~85_combout\ & !\Add2~82COUT1_109\)) # (!\delay[3][15]~regout\ & ((!\Add2~82COUT1_109\) # (!\Add1~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][15]~regout\,
	datab => \Add1~85_combout\,
	cin => \Add2~67\,
	cin0 => \Add2~82\,
	cin1 => \Add2~82COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~85_combout\,
	cout0 => \Add2~87\,
	cout1 => \Add2~87COUT1_110\);

-- Location: LC_X10_Y5_N7
\Add4~85\ : maxv_lcell
-- Equation(s):
-- \Add4~85_combout\ = \delay[4][15]~regout\ $ (\Add2~85_combout\ $ (((!\Add4~72\ & \Add4~82\) # (\Add4~72\ & \Add4~82COUT1_114\))))
-- \Add4~87\ = CARRY((\delay[4][15]~regout\ & (!\Add2~85_combout\ & !\Add4~82\)) # (!\delay[4][15]~regout\ & ((!\Add4~82\) # (!\Add2~85_combout\))))
-- \Add4~87COUT1_115\ = CARRY((\delay[4][15]~regout\ & (!\Add2~85_combout\ & !\Add4~82COUT1_114\)) # (!\delay[4][15]~regout\ & ((!\Add4~82COUT1_114\) # (!\Add2~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][15]~regout\,
	datab => \Add2~85_combout\,
	cin => \Add4~72\,
	cin0 => \Add4~82\,
	cin1 => \Add4~82COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~85_combout\,
	cout0 => \Add4~87\,
	cout1 => \Add4~87COUT1_115\);

-- Location: LC_X11_Y4_N1
\Add6~85\ : maxv_lcell
-- Equation(s):
-- \Add6~85_combout\ = \delay[5][15]~regout\ $ (\Add4~85_combout\ $ (((!\Add6~77\ & \Add6~82\) # (\Add6~77\ & \Add6~82COUT1_123\))))
-- \Add6~87\ = CARRY((\delay[5][15]~regout\ & (!\Add4~85_combout\ & !\Add6~82\)) # (!\delay[5][15]~regout\ & ((!\Add6~82\) # (!\Add4~85_combout\))))
-- \Add6~87COUT1_124\ = CARRY((\delay[5][15]~regout\ & (!\Add4~85_combout\ & !\Add6~82COUT1_123\)) # (!\delay[5][15]~regout\ & ((!\Add6~82COUT1_123\) # (!\Add4~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datab => \Add4~85_combout\,
	cin => \Add6~77\,
	cin0 => \Add6~82\,
	cin1 => \Add6~82COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~85_combout\,
	cout0 => \Add6~87\,
	cout1 => \Add6~87COUT1_124\);

-- Location: LC_X7_Y4_N1
\y[17]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[17]~reg0_regout\ = DFFEAS(\Add6~85_combout\ $ (\delay[6][15]~regout\ $ (((!\Add7~77\ & \Add7~82\) # (\Add7~77\ & \Add7~82COUT1_123\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~87\ = CARRY((\Add6~85_combout\ & (!\delay[6][15]~regout\ & !\Add7~82\)) # (!\Add6~85_combout\ & ((!\Add7~82\) # (!\delay[6][15]~regout\))))
-- \Add7~87COUT1_124\ = CARRY((\Add6~85_combout\ & (!\delay[6][15]~regout\ & !\Add7~82COUT1_123\)) # (!\Add6~85_combout\ & ((!\Add7~82COUT1_123\) # (!\delay[6][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~85_combout\,
	datab => \delay[6][15]~regout\,
	aclr => \rst~combout\,
	cin => \Add7~77\,
	cin0 => \Add7~82\,
	cin1 => \Add7~82COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[17]~reg0_regout\,
	cout0 => \Add7~87\,
	cout1 => \Add7~87COUT1_124\);

-- Location: LC_X8_Y5_N9
\Add2~90\ : maxv_lcell
-- Equation(s):
-- \Add2~90_combout\ = \delay[3][15]~regout\ $ ((((!\Add2~67\ & \Add2~87\) # (\Add2~67\ & \Add2~87COUT1_110\) $ (!\Add1~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[3][15]~regout\,
	datad => \Add1~85_combout\,
	cin => \Add2~67\,
	cin0 => \Add2~87\,
	cin1 => \Add2~87COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~90_combout\);

-- Location: LC_X10_Y5_N8
\Add4~90\ : maxv_lcell
-- Equation(s):
-- \Add4~90_combout\ = \delay[4][15]~regout\ $ (\Add2~90_combout\ $ ((!(!\Add4~72\ & \Add4~87\) # (\Add4~72\ & \Add4~87COUT1_115\))))
-- \Add4~92\ = CARRY((\delay[4][15]~regout\ & ((\Add2~90_combout\) # (!\Add4~87\))) # (!\delay[4][15]~regout\ & (\Add2~90_combout\ & !\Add4~87\)))
-- \Add4~92COUT1_116\ = CARRY((\delay[4][15]~regout\ & ((\Add2~90_combout\) # (!\Add4~87COUT1_115\))) # (!\delay[4][15]~regout\ & (\Add2~90_combout\ & !\Add4~87COUT1_115\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][15]~regout\,
	datab => \Add2~90_combout\,
	cin => \Add4~72\,
	cin0 => \Add4~87\,
	cin1 => \Add4~87COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~90_combout\,
	cout0 => \Add4~92\,
	cout1 => \Add4~92COUT1_116\);

-- Location: LC_X11_Y4_N2
\Add6~90\ : maxv_lcell
-- Equation(s):
-- \Add6~90_combout\ = \delay[5][15]~regout\ $ (\Add4~90_combout\ $ ((!(!\Add6~77\ & \Add6~87\) # (\Add6~77\ & \Add6~87COUT1_124\))))
-- \Add6~92\ = CARRY((\delay[5][15]~regout\ & ((\Add4~90_combout\) # (!\Add6~87\))) # (!\delay[5][15]~regout\ & (\Add4~90_combout\ & !\Add6~87\)))
-- \Add6~92COUT1_125\ = CARRY((\delay[5][15]~regout\ & ((\Add4~90_combout\) # (!\Add6~87COUT1_124\))) # (!\delay[5][15]~regout\ & (\Add4~90_combout\ & !\Add6~87COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datab => \Add4~90_combout\,
	cin => \Add6~77\,
	cin0 => \Add6~87\,
	cin1 => \Add6~87COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~90_combout\,
	cout0 => \Add6~92\,
	cout1 => \Add6~92COUT1_125\);

-- Location: LC_X7_Y4_N2
\y[18]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[18]~reg0_regout\ = DFFEAS(\Add6~90_combout\ $ (\delay[6][15]~regout\ $ ((!(!\Add7~77\ & \Add7~87\) # (\Add7~77\ & \Add7~87COUT1_124\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~92\ = CARRY((\Add6~90_combout\ & ((\delay[6][15]~regout\) # (!\Add7~87\))) # (!\Add6~90_combout\ & (\delay[6][15]~regout\ & !\Add7~87\)))
-- \Add7~92COUT1_125\ = CARRY((\Add6~90_combout\ & ((\delay[6][15]~regout\) # (!\Add7~87COUT1_124\))) # (!\Add6~90_combout\ & (\delay[6][15]~regout\ & !\Add7~87COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~90_combout\,
	datab => \delay[6][15]~regout\,
	aclr => \rst~combout\,
	cin => \Add7~77\,
	cin0 => \Add7~87\,
	cin1 => \Add7~87COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[18]~reg0_regout\,
	cout0 => \Add7~92\,
	cout1 => \Add7~92COUT1_125\);

-- Location: LC_X10_Y5_N9
\Add4~95\ : maxv_lcell
-- Equation(s):
-- \Add4~95_combout\ = \delay[4][15]~regout\ $ ((((!\Add4~72\ & \Add4~92\) # (\Add4~72\ & \Add4~92COUT1_116\) $ (\Add2~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[4][15]~regout\,
	datad => \Add2~90_combout\,
	cin => \Add4~72\,
	cin0 => \Add4~92\,
	cin1 => \Add4~92COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~95_combout\);

-- Location: LC_X11_Y4_N3
\Add6~95\ : maxv_lcell
-- Equation(s):
-- \Add6~95_combout\ = \delay[5][15]~regout\ $ (\Add4~95_combout\ $ (((!\Add6~77\ & \Add6~92\) # (\Add6~77\ & \Add6~92COUT1_125\))))
-- \Add6~97\ = CARRY((\delay[5][15]~regout\ & (!\Add4~95_combout\ & !\Add6~92\)) # (!\delay[5][15]~regout\ & ((!\Add6~92\) # (!\Add4~95_combout\))))
-- \Add6~97COUT1_126\ = CARRY((\delay[5][15]~regout\ & (!\Add4~95_combout\ & !\Add6~92COUT1_125\)) # (!\delay[5][15]~regout\ & ((!\Add6~92COUT1_125\) # (!\Add4~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datab => \Add4~95_combout\,
	cin => \Add6~77\,
	cin0 => \Add6~92\,
	cin1 => \Add6~92COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~95_combout\,
	cout0 => \Add6~97\,
	cout1 => \Add6~97COUT1_126\);

-- Location: LC_X7_Y4_N3
\y[19]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[19]~reg0_regout\ = DFFEAS(\delay[6][15]~regout\ $ (\Add6~95_combout\ $ (((!\Add7~77\ & \Add7~92\) # (\Add7~77\ & \Add7~92COUT1_125\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~97\ = CARRY((\delay[6][15]~regout\ & (!\Add6~95_combout\ & !\Add7~92\)) # (!\delay[6][15]~regout\ & ((!\Add7~92\) # (!\Add6~95_combout\))))
-- \Add7~97COUT1_126\ = CARRY((\delay[6][15]~regout\ & (!\Add6~95_combout\ & !\Add7~92COUT1_125\)) # (!\delay[6][15]~regout\ & ((!\Add7~92COUT1_125\) # (!\Add6~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][15]~regout\,
	datab => \Add6~95_combout\,
	aclr => \rst~combout\,
	cin => \Add7~77\,
	cin0 => \Add7~92\,
	cin1 => \Add7~92COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[19]~reg0_regout\,
	cout0 => \Add7~97\,
	cout1 => \Add7~97COUT1_126\);

-- Location: LC_X11_Y4_N4
\Add6~100\ : maxv_lcell
-- Equation(s):
-- \Add6~100_combout\ = \delay[5][15]~regout\ $ (\Add4~95_combout\ $ ((!(!\Add6~77\ & \Add6~97\) # (\Add6~77\ & \Add6~97COUT1_126\))))
-- \Add6~102\ = CARRY((\delay[5][15]~regout\ & ((\Add4~95_combout\) # (!\Add6~97COUT1_126\))) # (!\delay[5][15]~regout\ & (\Add4~95_combout\ & !\Add6~97COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datab => \Add4~95_combout\,
	cin => \Add6~77\,
	cin0 => \Add6~97\,
	cin1 => \Add6~97COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~100_combout\,
	cout => \Add6~102\);

-- Location: LC_X7_Y4_N4
\y[20]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[20]~reg0_regout\ = DFFEAS(\delay[6][15]~regout\ $ (\Add6~100_combout\ $ ((!(!\Add7~77\ & \Add7~97\) # (\Add7~77\ & \Add7~97COUT1_126\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )
-- \Add7~102\ = CARRY((\delay[6][15]~regout\ & ((\Add6~100_combout\) # (!\Add7~97COUT1_126\))) # (!\delay[6][15]~regout\ & (\Add6~100_combout\ & !\Add7~97COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][15]~regout\,
	datab => \Add6~100_combout\,
	aclr => \rst~combout\,
	cin => \Add7~77\,
	cin0 => \Add7~97\,
	cin1 => \Add7~97COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[20]~reg0_regout\,
	cout => \Add7~102\);

-- Location: LC_X11_Y4_N5
\Add6~105\ : maxv_lcell
-- Equation(s):
-- \Add6~105_combout\ = \delay[5][15]~regout\ $ (((\Add6~102\ $ (\Add4~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \delay[5][15]~regout\,
	datad => \Add4~95_combout\,
	cin => \Add6~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~105_combout\);

-- Location: LC_X7_Y4_N5
\y[21]~reg0\ : maxv_lcell
-- Equation(s):
-- \Add7~105\ = \delay[6][15]~regout\ $ (((\Add7~102\ $ (\Add6~105_combout\))))
-- \y[21]~reg0_regout\ = DFFEAS(\Add7~105\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \delay[6][15]~regout\,
	datad => \Add6~105_combout\,
	aclr => \rst~combout\,
	cin => \Add7~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~105\,
	regout => \y[21]~reg0_regout\);

-- Location: LC_X8_Y4_N5
\y[22]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[22]~reg0_regout\ = DFFEAS((((\Add7~105\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add7~105\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[22]~reg0_regout\);

-- Location: LC_X8_Y4_N4
\y[23]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[23]~reg0_regout\ = DFFEAS((((\Add7~105\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add7~105\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[23]~reg0_regout\);

-- Location: LC_X8_Y4_N6
\y[24]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[24]~reg0_regout\ = DFFEAS((((\Add7~105\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add7~105\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[24]~reg0_regout\);

-- Location: LC_X8_Y4_N9
\y[25]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[25]~reg0_regout\ = DFFEAS((((\Add7~105\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add7~105\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[25]~reg0_regout\);

-- Location: LC_X8_Y4_N7
\y[26]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[26]~reg0_regout\ = DFFEAS((((\Add7~105\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add7~105\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[26]~reg0_regout\);

-- Location: LC_X7_Y4_N6
\y[27]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[27]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \Add7~105\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add7~105\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[27]~reg0_regout\);

-- Location: LC_X7_Y4_N8
\y[28]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[28]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \Add7~105\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add7~105\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[28]~reg0_regout\);

-- Location: LC_X7_Y4_N7
\y[29]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[29]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \Add7~105\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add7~105\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[29]~reg0_regout\);

-- Location: LC_X7_Y4_N9
\y[30]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[30]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , \Add7~105\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add7~105\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[30]~reg0_regout\);

-- Location: LC_X8_Y4_N8
\y[31]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[31]~reg0_regout\ = DFFEAS((((\Add7~105\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add7~105\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[31]~reg0_regout\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[0]~reg0_regout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[1]~reg0_regout\,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[2]~reg0_regout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[3]~reg0_regout\,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[4]~reg0_regout\,
	oe => VCC,
	padio => ww_y(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[5]~reg0_regout\,
	oe => VCC,
	padio => ww_y(5));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[6]~reg0_regout\,
	oe => VCC,
	padio => ww_y(6));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[7]~reg0_regout\,
	oe => VCC,
	padio => ww_y(7));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[8]~reg0_regout\,
	oe => VCC,
	padio => ww_y(8));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[9]~reg0_regout\,
	oe => VCC,
	padio => ww_y(9));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[10]~reg0_regout\,
	oe => VCC,
	padio => ww_y(10));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[11]~reg0_regout\,
	oe => VCC,
	padio => ww_y(11));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[12]~reg0_regout\,
	oe => VCC,
	padio => ww_y(12));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[13]~reg0_regout\,
	oe => VCC,
	padio => ww_y(13));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[14]~reg0_regout\,
	oe => VCC,
	padio => ww_y(14));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[15]~reg0_regout\,
	oe => VCC,
	padio => ww_y(15));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[16]~reg0_regout\,
	oe => VCC,
	padio => ww_y(16));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[17]~reg0_regout\,
	oe => VCC,
	padio => ww_y(17));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[18]~reg0_regout\,
	oe => VCC,
	padio => ww_y(18));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[19]~reg0_regout\,
	oe => VCC,
	padio => ww_y(19));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[20]~reg0_regout\,
	oe => VCC,
	padio => ww_y(20));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[21]~reg0_regout\,
	oe => VCC,
	padio => ww_y(21));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[22]~reg0_regout\,
	oe => VCC,
	padio => ww_y(22));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[23]~reg0_regout\,
	oe => VCC,
	padio => ww_y(23));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[24]~reg0_regout\,
	oe => VCC,
	padio => ww_y(24));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[25]~reg0_regout\,
	oe => VCC,
	padio => ww_y(25));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[26]~reg0_regout\,
	oe => VCC,
	padio => ww_y(26));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[27]~reg0_regout\,
	oe => VCC,
	padio => ww_y(27));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[28]~reg0_regout\,
	oe => VCC,
	padio => ww_y(28));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[29]~reg0_regout\,
	oe => VCC,
	padio => ww_y(29));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[30]~reg0_regout\,
	oe => VCC,
	padio => ww_y(30));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[31]~reg0_regout\,
	oe => VCC,
	padio => ww_y(31));
END structure;


