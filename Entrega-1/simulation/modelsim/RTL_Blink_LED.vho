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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "08/26/2019 19:29:35"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	fpga_clk_50 : IN std_logic;
	fpga_en_sw : IN std_logic;
	fpga_sw : IN std_logic_vector(3 DOWNTO 0);
	fpga_led_pio : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- fpga_led_pio[0]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- fpga_led_pio[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- fpga_led_pio[2]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- fpga_led_pio[3]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- fpga_led_pio[4]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- fpga_led_pio[5]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- fpga_en_sw	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_clk_50	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_sw[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_sw[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_sw[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_sw[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpga_clk_50 : std_logic;
SIGNAL ww_fpga_en_sw : std_logic;
SIGNAL ww_fpga_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fpga_led_pio : std_logic_vector(5 DOWNTO 0);
SIGNAL \A0|Mult0~24_AX_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \A0|Mult0~24_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \A0|Mult0~24_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \A0|Mult0~405_AX_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \A0|Mult0~405_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \A0|Mult0~405_BX_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \A0|Mult0~405_BY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \A0|Mult0~405_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \A0|Mult0~56\ : std_logic;
SIGNAL \A0|Mult0~57\ : std_logic;
SIGNAL \A0|Mult0~58\ : std_logic;
SIGNAL \A0|Mult0~59\ : std_logic;
SIGNAL \A0|Mult0~60\ : std_logic;
SIGNAL \A0|Mult0~61\ : std_logic;
SIGNAL \A0|Mult0~62\ : std_logic;
SIGNAL \A0|Mult0~63\ : std_logic;
SIGNAL \A0|Mult0~64\ : std_logic;
SIGNAL \A0|Mult0~65\ : std_logic;
SIGNAL \A0|Mult0~66\ : std_logic;
SIGNAL \A0|Mult0~67\ : std_logic;
SIGNAL \A0|Mult0~68\ : std_logic;
SIGNAL \A0|Mult0~69\ : std_logic;
SIGNAL \A0|Mult0~70\ : std_logic;
SIGNAL \A0|Mult0~71\ : std_logic;
SIGNAL \A0|Mult0~72\ : std_logic;
SIGNAL \A0|Mult0~73\ : std_logic;
SIGNAL \A0|Mult0~74\ : std_logic;
SIGNAL \A0|Mult0~75\ : std_logic;
SIGNAL \A0|Mult0~76\ : std_logic;
SIGNAL \A0|Mult0~77\ : std_logic;
SIGNAL \A0|Mult0~78\ : std_logic;
SIGNAL \A0|Mult0~79\ : std_logic;
SIGNAL \A0|Mult0~80\ : std_logic;
SIGNAL \A0|Mult0~81\ : std_logic;
SIGNAL \A0|Mult0~82\ : std_logic;
SIGNAL \A0|Mult0~83\ : std_logic;
SIGNAL \A0|Mult0~84\ : std_logic;
SIGNAL \A0|Mult0~85\ : std_logic;
SIGNAL \A0|Mult0~86\ : std_logic;
SIGNAL \A0|Mult0~87\ : std_logic;
SIGNAL \A0|Mult0~419\ : std_logic;
SIGNAL \A0|Mult0~420\ : std_logic;
SIGNAL \A0|Mult0~421\ : std_logic;
SIGNAL \A0|Mult0~422\ : std_logic;
SIGNAL \A0|Mult0~423\ : std_logic;
SIGNAL \A0|Mult0~424\ : std_logic;
SIGNAL \A0|Mult0~425\ : std_logic;
SIGNAL \A0|Mult0~426\ : std_logic;
SIGNAL \A0|Mult0~427\ : std_logic;
SIGNAL \A0|Mult0~428\ : std_logic;
SIGNAL \A0|Mult0~429\ : std_logic;
SIGNAL \A0|Mult0~430\ : std_logic;
SIGNAL \A0|Mult0~431\ : std_logic;
SIGNAL \A0|Mult0~432\ : std_logic;
SIGNAL \A0|Mult0~433\ : std_logic;
SIGNAL \A0|Mult0~434\ : std_logic;
SIGNAL \A0|Mult0~435\ : std_logic;
SIGNAL \A0|Mult0~436\ : std_logic;
SIGNAL \A0|Mult0~437\ : std_logic;
SIGNAL \A0|Mult0~438\ : std_logic;
SIGNAL \A0|Mult0~439\ : std_logic;
SIGNAL \A0|Mult0~440\ : std_logic;
SIGNAL \A0|Mult0~441\ : std_logic;
SIGNAL \A0|Mult0~442\ : std_logic;
SIGNAL \A0|Mult0~443\ : std_logic;
SIGNAL \A0|Mult0~444\ : std_logic;
SIGNAL \A0|Mult0~445\ : std_logic;
SIGNAL \A0|Mult0~446\ : std_logic;
SIGNAL \A0|Mult0~447\ : std_logic;
SIGNAL \A0|Mult0~448\ : std_logic;
SIGNAL \A0|Mult0~449\ : std_logic;
SIGNAL \A0|Mult0~450\ : std_logic;
SIGNAL \A0|Mult0~451\ : std_logic;
SIGNAL \A0|Mult0~452\ : std_logic;
SIGNAL \A0|Mult0~453\ : std_logic;
SIGNAL \A0|Mult0~454\ : std_logic;
SIGNAL \A0|Mult0~455\ : std_logic;
SIGNAL \A0|Mult0~456\ : std_logic;
SIGNAL \A0|Mult0~457\ : std_logic;
SIGNAL \A0|Mult0~458\ : std_logic;
SIGNAL \A0|Mult0~459\ : std_logic;
SIGNAL \A0|Mult0~460\ : std_logic;
SIGNAL \A0|Mult0~461\ : std_logic;
SIGNAL \A0|Mult0~462\ : std_logic;
SIGNAL \A0|Mult0~463\ : std_logic;
SIGNAL \A0|Mult0~464\ : std_logic;
SIGNAL \A0|Mult0~465\ : std_logic;
SIGNAL \A0|Mult0~466\ : std_logic;
SIGNAL \A0|Mult0~467\ : std_logic;
SIGNAL \A0|Mult0~468\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fpga_clk_50~input_o\ : std_logic;
SIGNAL \fpga_clk_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \A0|Add1~49_sumout\ : std_logic;
SIGNAL \fpga_sw[0]~input_o\ : std_logic;
SIGNAL \fpga_sw[1]~input_o\ : std_logic;
SIGNAL \A0|Add0~0_combout\ : std_logic;
SIGNAL \fpga_sw[2]~input_o\ : std_logic;
SIGNAL \A0|Add0~1_combout\ : std_logic;
SIGNAL \fpga_sw[3]~input_o\ : std_logic;
SIGNAL \A0|Add0~2_combout\ : std_logic;
SIGNAL \A0|Add0~3_combout\ : std_logic;
SIGNAL \A0|Mult0~33\ : std_logic;
SIGNAL \A0|Mult0~34\ : std_logic;
SIGNAL \A0|LessThan0~19_combout\ : std_logic;
SIGNAL \A0|Mult0~35\ : std_logic;
SIGNAL \A0|LessThan0~18_combout\ : std_logic;
SIGNAL \A0|Mult0~36\ : std_logic;
SIGNAL \A0|Mult0~37\ : std_logic;
SIGNAL \A0|Mult0~38\ : std_logic;
SIGNAL \A0|LessThan0~17_combout\ : std_logic;
SIGNAL \A0|Mult0~32\ : std_logic;
SIGNAL \A0|LessThan0~24_combout\ : std_logic;
SIGNAL \A0|LessThan0~25_combout\ : std_logic;
SIGNAL \A0|Mult0~39\ : std_logic;
SIGNAL \A0|LessThan0~9_combout\ : std_logic;
SIGNAL \A0|LessThan0~22_combout\ : std_logic;
SIGNAL \A0|LessThan0~23_combout\ : std_logic;
SIGNAL \A0|Mult0~30\ : std_logic;
SIGNAL \A0|Mult0~29\ : std_logic;
SIGNAL \A0|Mult0~31\ : std_logic;
SIGNAL \A0|LessThan0~10_combout\ : std_logic;
SIGNAL \A0|Mult0~28\ : std_logic;
SIGNAL \A0|LessThan0~15_combout\ : std_logic;
SIGNAL \A0|LessThan0~16_combout\ : std_logic;
SIGNAL \A0|LessThan0~20_combout\ : std_logic;
SIGNAL \A0|LessThan0~21_combout\ : std_logic;
SIGNAL \A0|Mult0~25\ : std_logic;
SIGNAL \A0|Mult0~24_resulta\ : std_logic;
SIGNAL \A0|LessThan0~11_combout\ : std_logic;
SIGNAL \A0|Mult0~27\ : std_logic;
SIGNAL \A0|Mult0~26\ : std_logic;
SIGNAL \A0|LessThan0~13_combout\ : std_logic;
SIGNAL \A0|LessThan0~12_combout\ : std_logic;
SIGNAL \A0|LessThan0~14_combout\ : std_logic;
SIGNAL \A0|LessThan0~26_combout\ : std_logic;
SIGNAL \A0|Mult0~405_resulta\ : std_logic;
SIGNAL \A0|Mult0~42\ : std_logic;
SIGNAL \A0|Mult0~358_sumout\ : std_logic;
SIGNAL \A0|LessThan0~1_combout\ : std_logic;
SIGNAL \A0|Mult0~41\ : std_logic;
SIGNAL \A0|LessThan0~2_combout\ : std_logic;
SIGNAL \A0|Mult0~45\ : std_logic;
SIGNAL \A0|Mult0~408\ : std_logic;
SIGNAL \A0|Mult0~44\ : std_logic;
SIGNAL \A0|Mult0~407\ : std_logic;
SIGNAL \A0|Mult0~43\ : std_logic;
SIGNAL \A0|Mult0~406\ : std_logic;
SIGNAL \A0|Mult0~359\ : std_logic;
SIGNAL \A0|Mult0~14\ : std_logic;
SIGNAL \A0|Mult0~10\ : std_logic;
SIGNAL \A0|Mult0~5_sumout\ : std_logic;
SIGNAL \A0|Mult0~13_sumout\ : std_logic;
SIGNAL \A0|Add1~10\ : std_logic;
SIGNAL \A0|Add1~5_sumout\ : std_logic;
SIGNAL \A0|Add1~6\ : std_logic;
SIGNAL \A0|Add1~1_sumout\ : std_logic;
SIGNAL \A0|Mult0~9_sumout\ : std_logic;
SIGNAL \A0|LessThan0~0_combout\ : std_logic;
SIGNAL \A0|Mult0~40\ : std_logic;
SIGNAL \A0|LessThan0~8_combout\ : std_logic;
SIGNAL \A0|LessThan0~36_combout\ : std_logic;
SIGNAL \A0|Mult0~416\ : std_logic;
SIGNAL \A0|Mult0~53\ : std_logic;
SIGNAL \A0|Mult0~52\ : std_logic;
SIGNAL \A0|Mult0~415\ : std_logic;
SIGNAL \A0|Mult0~51\ : std_logic;
SIGNAL \A0|Mult0~414\ : std_logic;
SIGNAL \A0|Mult0~50\ : std_logic;
SIGNAL \A0|Mult0~413\ : std_logic;
SIGNAL \A0|Mult0~49\ : std_logic;
SIGNAL \A0|Mult0~412\ : std_logic;
SIGNAL \A0|Mult0~48\ : std_logic;
SIGNAL \A0|Mult0~411\ : std_logic;
SIGNAL \A0|Mult0~47\ : std_logic;
SIGNAL \A0|Mult0~410\ : std_logic;
SIGNAL \A0|Mult0~46\ : std_logic;
SIGNAL \A0|Mult0~409\ : std_logic;
SIGNAL \A0|Mult0~6\ : std_logic;
SIGNAL \A0|Mult0~367\ : std_logic;
SIGNAL \A0|Mult0~363\ : std_logic;
SIGNAL \A0|Mult0~391\ : std_logic;
SIGNAL \A0|Mult0~395\ : std_logic;
SIGNAL \A0|Mult0~371\ : std_logic;
SIGNAL \A0|Mult0~375\ : std_logic;
SIGNAL \A0|Mult0~379\ : std_logic;
SIGNAL \A0|Mult0~382_sumout\ : std_logic;
SIGNAL \A0|Mult0~378_sumout\ : std_logic;
SIGNAL \A0|Mult0~54\ : std_logic;
SIGNAL \A0|Mult0~417\ : std_logic;
SIGNAL \A0|Mult0~383\ : std_logic;
SIGNAL \A0|Mult0~386_sumout\ : std_logic;
SIGNAL \A0|Mult0~394_sumout\ : std_logic;
SIGNAL \A0|Mult0~366_sumout\ : std_logic;
SIGNAL \A0|Add1~2\ : std_logic;
SIGNAL \A0|Add1~93_sumout\ : std_logic;
SIGNAL \A0|Mult0~362_sumout\ : std_logic;
SIGNAL \A0|Add1~94\ : std_logic;
SIGNAL \A0|Add1~89_sumout\ : std_logic;
SIGNAL \A0|Mult0~390_sumout\ : std_logic;
SIGNAL \A0|LessThan0~34_combout\ : std_logic;
SIGNAL \A0|Mult0~374_sumout\ : std_logic;
SIGNAL \A0|Mult0~370_sumout\ : std_logic;
SIGNAL \A0|LessThan0~35_combout\ : std_logic;
SIGNAL \A0|LessThan0~27_combout\ : std_logic;
SIGNAL \A0|LessThan0~37_combout\ : std_logic;
SIGNAL \A0|LessThan0~33_combout\ : std_logic;
SIGNAL \A0|LessThan0~3_combout\ : std_logic;
SIGNAL \A0|LessThan0~4_combout\ : std_logic;
SIGNAL \A0|Mult0~418\ : std_logic;
SIGNAL \A0|Mult0~55\ : std_logic;
SIGNAL \A0|Mult0~387\ : std_logic;
SIGNAL \A0|Mult0~1_sumout\ : std_logic;
SIGNAL \A0|LessThan0~38_combout\ : std_logic;
SIGNAL \A0|Add1~50\ : std_logic;
SIGNAL \A0|Add1~45_sumout\ : std_logic;
SIGNAL \A0|Add1~46\ : std_logic;
SIGNAL \A0|Add1~57_sumout\ : std_logic;
SIGNAL \A0|Add1~58\ : std_logic;
SIGNAL \A0|Add1~53_sumout\ : std_logic;
SIGNAL \A0|Add1~54\ : std_logic;
SIGNAL \A0|Add1~29_sumout\ : std_logic;
SIGNAL \A0|Add1~30\ : std_logic;
SIGNAL \A0|Add1~41_sumout\ : std_logic;
SIGNAL \A0|Add1~42\ : std_logic;
SIGNAL \A0|Add1~37_sumout\ : std_logic;
SIGNAL \A0|Add1~38\ : std_logic;
SIGNAL \A0|Add1~33_sumout\ : std_logic;
SIGNAL \A0|Add1~34\ : std_logic;
SIGNAL \A0|Add1~85_sumout\ : std_logic;
SIGNAL \A0|Add1~86\ : std_logic;
SIGNAL \A0|Add1~77_sumout\ : std_logic;
SIGNAL \A0|Add1~78\ : std_logic;
SIGNAL \A0|Add1~81_sumout\ : std_logic;
SIGNAL \A0|Add1~82\ : std_logic;
SIGNAL \A0|Add1~73_sumout\ : std_logic;
SIGNAL \A0|Add1~74\ : std_logic;
SIGNAL \A0|Add1~69_sumout\ : std_logic;
SIGNAL \A0|Add1~70\ : std_logic;
SIGNAL \A0|Add1~65_sumout\ : std_logic;
SIGNAL \A0|Add1~66\ : std_logic;
SIGNAL \A0|Add1~61_sumout\ : std_logic;
SIGNAL \A0|Add1~62\ : std_logic;
SIGNAL \A0|Add1~25_sumout\ : std_logic;
SIGNAL \A0|Add1~26\ : std_logic;
SIGNAL \A0|Add1~17_sumout\ : std_logic;
SIGNAL \A0|Add1~18\ : std_logic;
SIGNAL \A0|Add1~21_sumout\ : std_logic;
SIGNAL \A0|Add1~22\ : std_logic;
SIGNAL \A0|Add1~13_sumout\ : std_logic;
SIGNAL \A0|Add1~14\ : std_logic;
SIGNAL \A0|Add1~9_sumout\ : std_logic;
SIGNAL \A0|LessThan0~31_combout\ : std_logic;
SIGNAL \A0|LessThan0~29_combout\ : std_logic;
SIGNAL \A0|LessThan0~6_combout\ : std_logic;
SIGNAL \A0|LessThan0~30_combout\ : std_logic;
SIGNAL \A0|LessThan0~5_combout\ : std_logic;
SIGNAL \A0|LessThan0~28_combout\ : std_logic;
SIGNAL \A0|LessThan0~7_combout\ : std_logic;
SIGNAL \A0|LessThan0~32_combout\ : std_logic;
SIGNAL \A0|blink~0_combout\ : std_logic;
SIGNAL \A0|blink~q\ : std_logic;
SIGNAL \fpga_en_sw~input_o\ : std_logic;
SIGNAL \A0|leds\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \A0|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_fpga_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_fpga_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_fpga_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_fpga_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_fpga_en_sw~input_o\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~37_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~36_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~35_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~34_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~33_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~32_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~31_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~30_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~29_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~28_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~27_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \A0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \A0|ALT_INV_blink~q\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~418\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~417\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~416\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~415\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~414\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~413\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~412\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~411\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~410\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~409\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~408\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~407\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~406\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~405_resulta\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~394_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~390_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~386_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~382_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~378_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~374_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~370_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~366_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \A0|ALT_INV_Mult0~362_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~358_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~55\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~54\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~53\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~52\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~51\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~50\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~49\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~48\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~47\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~46\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~45\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~44\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~43\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~42\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~41\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~40\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~39\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~38\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~37\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~36\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~31\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~24_resulta\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~13_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~9_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~5_sumout\ : std_logic;
SIGNAL \A0|ALT_INV_Mult0~1_sumout\ : std_logic;

BEGIN

ww_fpga_clk_50 <= fpga_clk_50;
ww_fpga_en_sw <= fpga_en_sw;
ww_fpga_sw <= fpga_sw;
fpga_led_pio <= ww_fpga_led_pio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\A0|Mult0~24_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \A0|Add0~3_combout\ & \A0|Add0~2_combout\ & \A0|Add0~1_combout\ & \A0|Add0~0_combout\ & NOT \fpga_sw[0]~input_o\);

\A0|Mult0~24_AY_bus\ <= (vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\A0|Mult0~24_resulta\ <= \A0|Mult0~24_RESULTA_bus\(0);
\A0|Mult0~25\ <= \A0|Mult0~24_RESULTA_bus\(1);
\A0|Mult0~26\ <= \A0|Mult0~24_RESULTA_bus\(2);
\A0|Mult0~27\ <= \A0|Mult0~24_RESULTA_bus\(3);
\A0|Mult0~28\ <= \A0|Mult0~24_RESULTA_bus\(4);
\A0|Mult0~29\ <= \A0|Mult0~24_RESULTA_bus\(5);
\A0|Mult0~30\ <= \A0|Mult0~24_RESULTA_bus\(6);
\A0|Mult0~31\ <= \A0|Mult0~24_RESULTA_bus\(7);
\A0|Mult0~32\ <= \A0|Mult0~24_RESULTA_bus\(8);
\A0|Mult0~33\ <= \A0|Mult0~24_RESULTA_bus\(9);
\A0|Mult0~34\ <= \A0|Mult0~24_RESULTA_bus\(10);
\A0|Mult0~35\ <= \A0|Mult0~24_RESULTA_bus\(11);
\A0|Mult0~36\ <= \A0|Mult0~24_RESULTA_bus\(12);
\A0|Mult0~37\ <= \A0|Mult0~24_RESULTA_bus\(13);
\A0|Mult0~38\ <= \A0|Mult0~24_RESULTA_bus\(14);
\A0|Mult0~39\ <= \A0|Mult0~24_RESULTA_bus\(15);
\A0|Mult0~40\ <= \A0|Mult0~24_RESULTA_bus\(16);
\A0|Mult0~41\ <= \A0|Mult0~24_RESULTA_bus\(17);
\A0|Mult0~42\ <= \A0|Mult0~24_RESULTA_bus\(18);
\A0|Mult0~43\ <= \A0|Mult0~24_RESULTA_bus\(19);
\A0|Mult0~44\ <= \A0|Mult0~24_RESULTA_bus\(20);
\A0|Mult0~45\ <= \A0|Mult0~24_RESULTA_bus\(21);
\A0|Mult0~46\ <= \A0|Mult0~24_RESULTA_bus\(22);
\A0|Mult0~47\ <= \A0|Mult0~24_RESULTA_bus\(23);
\A0|Mult0~48\ <= \A0|Mult0~24_RESULTA_bus\(24);
\A0|Mult0~49\ <= \A0|Mult0~24_RESULTA_bus\(25);
\A0|Mult0~50\ <= \A0|Mult0~24_RESULTA_bus\(26);
\A0|Mult0~51\ <= \A0|Mult0~24_RESULTA_bus\(27);
\A0|Mult0~52\ <= \A0|Mult0~24_RESULTA_bus\(28);
\A0|Mult0~53\ <= \A0|Mult0~24_RESULTA_bus\(29);
\A0|Mult0~54\ <= \A0|Mult0~24_RESULTA_bus\(30);
\A0|Mult0~55\ <= \A0|Mult0~24_RESULTA_bus\(31);
\A0|Mult0~56\ <= \A0|Mult0~24_RESULTA_bus\(32);
\A0|Mult0~57\ <= \A0|Mult0~24_RESULTA_bus\(33);
\A0|Mult0~58\ <= \A0|Mult0~24_RESULTA_bus\(34);
\A0|Mult0~59\ <= \A0|Mult0~24_RESULTA_bus\(35);
\A0|Mult0~60\ <= \A0|Mult0~24_RESULTA_bus\(36);
\A0|Mult0~61\ <= \A0|Mult0~24_RESULTA_bus\(37);
\A0|Mult0~62\ <= \A0|Mult0~24_RESULTA_bus\(38);
\A0|Mult0~63\ <= \A0|Mult0~24_RESULTA_bus\(39);
\A0|Mult0~64\ <= \A0|Mult0~24_RESULTA_bus\(40);
\A0|Mult0~65\ <= \A0|Mult0~24_RESULTA_bus\(41);
\A0|Mult0~66\ <= \A0|Mult0~24_RESULTA_bus\(42);
\A0|Mult0~67\ <= \A0|Mult0~24_RESULTA_bus\(43);
\A0|Mult0~68\ <= \A0|Mult0~24_RESULTA_bus\(44);
\A0|Mult0~69\ <= \A0|Mult0~24_RESULTA_bus\(45);
\A0|Mult0~70\ <= \A0|Mult0~24_RESULTA_bus\(46);
\A0|Mult0~71\ <= \A0|Mult0~24_RESULTA_bus\(47);
\A0|Mult0~72\ <= \A0|Mult0~24_RESULTA_bus\(48);
\A0|Mult0~73\ <= \A0|Mult0~24_RESULTA_bus\(49);
\A0|Mult0~74\ <= \A0|Mult0~24_RESULTA_bus\(50);
\A0|Mult0~75\ <= \A0|Mult0~24_RESULTA_bus\(51);
\A0|Mult0~76\ <= \A0|Mult0~24_RESULTA_bus\(52);
\A0|Mult0~77\ <= \A0|Mult0~24_RESULTA_bus\(53);
\A0|Mult0~78\ <= \A0|Mult0~24_RESULTA_bus\(54);
\A0|Mult0~79\ <= \A0|Mult0~24_RESULTA_bus\(55);
\A0|Mult0~80\ <= \A0|Mult0~24_RESULTA_bus\(56);
\A0|Mult0~81\ <= \A0|Mult0~24_RESULTA_bus\(57);
\A0|Mult0~82\ <= \A0|Mult0~24_RESULTA_bus\(58);
\A0|Mult0~83\ <= \A0|Mult0~24_RESULTA_bus\(59);
\A0|Mult0~84\ <= \A0|Mult0~24_RESULTA_bus\(60);
\A0|Mult0~85\ <= \A0|Mult0~24_RESULTA_bus\(61);
\A0|Mult0~86\ <= \A0|Mult0~24_RESULTA_bus\(62);
\A0|Mult0~87\ <= \A0|Mult0~24_RESULTA_bus\(63);

\A0|Mult0~405_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\A0|Mult0~405_AY_bus\ <= (vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\A0|Mult0~405_BX_bus\ <= (vcc & vcc);

\A0|Mult0~405_BY_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \A0|Add0~3_combout\ & \A0|Add0~2_combout\ & \A0|Add0~1_combout\ & \A0|Add0~0_combout\ & NOT \fpga_sw[0]~input_o\);

\A0|Mult0~405_resulta\ <= \A0|Mult0~405_RESULTA_bus\(0);
\A0|Mult0~406\ <= \A0|Mult0~405_RESULTA_bus\(1);
\A0|Mult0~407\ <= \A0|Mult0~405_RESULTA_bus\(2);
\A0|Mult0~408\ <= \A0|Mult0~405_RESULTA_bus\(3);
\A0|Mult0~409\ <= \A0|Mult0~405_RESULTA_bus\(4);
\A0|Mult0~410\ <= \A0|Mult0~405_RESULTA_bus\(5);
\A0|Mult0~411\ <= \A0|Mult0~405_RESULTA_bus\(6);
\A0|Mult0~412\ <= \A0|Mult0~405_RESULTA_bus\(7);
\A0|Mult0~413\ <= \A0|Mult0~405_RESULTA_bus\(8);
\A0|Mult0~414\ <= \A0|Mult0~405_RESULTA_bus\(9);
\A0|Mult0~415\ <= \A0|Mult0~405_RESULTA_bus\(10);
\A0|Mult0~416\ <= \A0|Mult0~405_RESULTA_bus\(11);
\A0|Mult0~417\ <= \A0|Mult0~405_RESULTA_bus\(12);
\A0|Mult0~418\ <= \A0|Mult0~405_RESULTA_bus\(13);
\A0|Mult0~419\ <= \A0|Mult0~405_RESULTA_bus\(14);
\A0|Mult0~420\ <= \A0|Mult0~405_RESULTA_bus\(15);
\A0|Mult0~421\ <= \A0|Mult0~405_RESULTA_bus\(16);
\A0|Mult0~422\ <= \A0|Mult0~405_RESULTA_bus\(17);
\A0|Mult0~423\ <= \A0|Mult0~405_RESULTA_bus\(18);
\A0|Mult0~424\ <= \A0|Mult0~405_RESULTA_bus\(19);
\A0|Mult0~425\ <= \A0|Mult0~405_RESULTA_bus\(20);
\A0|Mult0~426\ <= \A0|Mult0~405_RESULTA_bus\(21);
\A0|Mult0~427\ <= \A0|Mult0~405_RESULTA_bus\(22);
\A0|Mult0~428\ <= \A0|Mult0~405_RESULTA_bus\(23);
\A0|Mult0~429\ <= \A0|Mult0~405_RESULTA_bus\(24);
\A0|Mult0~430\ <= \A0|Mult0~405_RESULTA_bus\(25);
\A0|Mult0~431\ <= \A0|Mult0~405_RESULTA_bus\(26);
\A0|Mult0~432\ <= \A0|Mult0~405_RESULTA_bus\(27);
\A0|Mult0~433\ <= \A0|Mult0~405_RESULTA_bus\(28);
\A0|Mult0~434\ <= \A0|Mult0~405_RESULTA_bus\(29);
\A0|Mult0~435\ <= \A0|Mult0~405_RESULTA_bus\(30);
\A0|Mult0~436\ <= \A0|Mult0~405_RESULTA_bus\(31);
\A0|Mult0~437\ <= \A0|Mult0~405_RESULTA_bus\(32);
\A0|Mult0~438\ <= \A0|Mult0~405_RESULTA_bus\(33);
\A0|Mult0~439\ <= \A0|Mult0~405_RESULTA_bus\(34);
\A0|Mult0~440\ <= \A0|Mult0~405_RESULTA_bus\(35);
\A0|Mult0~441\ <= \A0|Mult0~405_RESULTA_bus\(36);
\A0|Mult0~442\ <= \A0|Mult0~405_RESULTA_bus\(37);
\A0|Mult0~443\ <= \A0|Mult0~405_RESULTA_bus\(38);
\A0|Mult0~444\ <= \A0|Mult0~405_RESULTA_bus\(39);
\A0|Mult0~445\ <= \A0|Mult0~405_RESULTA_bus\(40);
\A0|Mult0~446\ <= \A0|Mult0~405_RESULTA_bus\(41);
\A0|Mult0~447\ <= \A0|Mult0~405_RESULTA_bus\(42);
\A0|Mult0~448\ <= \A0|Mult0~405_RESULTA_bus\(43);
\A0|Mult0~449\ <= \A0|Mult0~405_RESULTA_bus\(44);
\A0|Mult0~450\ <= \A0|Mult0~405_RESULTA_bus\(45);
\A0|Mult0~451\ <= \A0|Mult0~405_RESULTA_bus\(46);
\A0|Mult0~452\ <= \A0|Mult0~405_RESULTA_bus\(47);
\A0|Mult0~453\ <= \A0|Mult0~405_RESULTA_bus\(48);
\A0|Mult0~454\ <= \A0|Mult0~405_RESULTA_bus\(49);
\A0|Mult0~455\ <= \A0|Mult0~405_RESULTA_bus\(50);
\A0|Mult0~456\ <= \A0|Mult0~405_RESULTA_bus\(51);
\A0|Mult0~457\ <= \A0|Mult0~405_RESULTA_bus\(52);
\A0|Mult0~458\ <= \A0|Mult0~405_RESULTA_bus\(53);
\A0|Mult0~459\ <= \A0|Mult0~405_RESULTA_bus\(54);
\A0|Mult0~460\ <= \A0|Mult0~405_RESULTA_bus\(55);
\A0|Mult0~461\ <= \A0|Mult0~405_RESULTA_bus\(56);
\A0|Mult0~462\ <= \A0|Mult0~405_RESULTA_bus\(57);
\A0|Mult0~463\ <= \A0|Mult0~405_RESULTA_bus\(58);
\A0|Mult0~464\ <= \A0|Mult0~405_RESULTA_bus\(59);
\A0|Mult0~465\ <= \A0|Mult0~405_RESULTA_bus\(60);
\A0|Mult0~466\ <= \A0|Mult0~405_RESULTA_bus\(61);
\A0|Mult0~467\ <= \A0|Mult0~405_RESULTA_bus\(62);
\A0|Mult0~468\ <= \A0|Mult0~405_RESULTA_bus\(63);
\ALT_INV_fpga_sw[3]~input_o\ <= NOT \fpga_sw[3]~input_o\;
\ALT_INV_fpga_sw[2]~input_o\ <= NOT \fpga_sw[2]~input_o\;
\ALT_INV_fpga_sw[1]~input_o\ <= NOT \fpga_sw[1]~input_o\;
\ALT_INV_fpga_sw[0]~input_o\ <= NOT \fpga_sw[0]~input_o\;
\ALT_INV_fpga_en_sw~input_o\ <= NOT \fpga_en_sw~input_o\;
\A0|ALT_INV_LessThan0~37_combout\ <= NOT \A0|LessThan0~37_combout\;
\A0|ALT_INV_LessThan0~36_combout\ <= NOT \A0|LessThan0~36_combout\;
\A0|ALT_INV_LessThan0~35_combout\ <= NOT \A0|LessThan0~35_combout\;
\A0|ALT_INV_LessThan0~34_combout\ <= NOT \A0|LessThan0~34_combout\;
\A0|ALT_INV_LessThan0~33_combout\ <= NOT \A0|LessThan0~33_combout\;
\A0|ALT_INV_LessThan0~32_combout\ <= NOT \A0|LessThan0~32_combout\;
\A0|ALT_INV_LessThan0~31_combout\ <= NOT \A0|LessThan0~31_combout\;
\A0|ALT_INV_LessThan0~30_combout\ <= NOT \A0|LessThan0~30_combout\;
\A0|ALT_INV_LessThan0~29_combout\ <= NOT \A0|LessThan0~29_combout\;
\A0|ALT_INV_LessThan0~28_combout\ <= NOT \A0|LessThan0~28_combout\;
\A0|ALT_INV_LessThan0~27_combout\ <= NOT \A0|LessThan0~27_combout\;
\A0|ALT_INV_LessThan0~26_combout\ <= NOT \A0|LessThan0~26_combout\;
\A0|ALT_INV_LessThan0~25_combout\ <= NOT \A0|LessThan0~25_combout\;
\A0|ALT_INV_LessThan0~24_combout\ <= NOT \A0|LessThan0~24_combout\;
\A0|ALT_INV_LessThan0~23_combout\ <= NOT \A0|LessThan0~23_combout\;
\A0|ALT_INV_LessThan0~22_combout\ <= NOT \A0|LessThan0~22_combout\;
\A0|ALT_INV_LessThan0~21_combout\ <= NOT \A0|LessThan0~21_combout\;
\A0|ALT_INV_LessThan0~20_combout\ <= NOT \A0|LessThan0~20_combout\;
\A0|ALT_INV_LessThan0~19_combout\ <= NOT \A0|LessThan0~19_combout\;
\A0|ALT_INV_LessThan0~18_combout\ <= NOT \A0|LessThan0~18_combout\;
\A0|ALT_INV_LessThan0~17_combout\ <= NOT \A0|LessThan0~17_combout\;
\A0|ALT_INV_LessThan0~16_combout\ <= NOT \A0|LessThan0~16_combout\;
\A0|ALT_INV_LessThan0~15_combout\ <= NOT \A0|LessThan0~15_combout\;
\A0|ALT_INV_LessThan0~14_combout\ <= NOT \A0|LessThan0~14_combout\;
\A0|ALT_INV_LessThan0~13_combout\ <= NOT \A0|LessThan0~13_combout\;
\A0|ALT_INV_LessThan0~12_combout\ <= NOT \A0|LessThan0~12_combout\;
\A0|ALT_INV_LessThan0~11_combout\ <= NOT \A0|LessThan0~11_combout\;
\A0|ALT_INV_LessThan0~10_combout\ <= NOT \A0|LessThan0~10_combout\;
\A0|ALT_INV_LessThan0~9_combout\ <= NOT \A0|LessThan0~9_combout\;
\A0|ALT_INV_LessThan0~8_combout\ <= NOT \A0|LessThan0~8_combout\;
\A0|ALT_INV_LessThan0~7_combout\ <= NOT \A0|LessThan0~7_combout\;
\A0|ALT_INV_LessThan0~6_combout\ <= NOT \A0|LessThan0~6_combout\;
\A0|ALT_INV_LessThan0~5_combout\ <= NOT \A0|LessThan0~5_combout\;
\A0|ALT_INV_LessThan0~4_combout\ <= NOT \A0|LessThan0~4_combout\;
\A0|ALT_INV_LessThan0~3_combout\ <= NOT \A0|LessThan0~3_combout\;
\A0|ALT_INV_LessThan0~2_combout\ <= NOT \A0|LessThan0~2_combout\;
\A0|ALT_INV_LessThan0~1_combout\ <= NOT \A0|LessThan0~1_combout\;
\A0|ALT_INV_LessThan0~0_combout\ <= NOT \A0|LessThan0~0_combout\;
\A0|ALT_INV_blink~q\ <= NOT \A0|blink~q\;
\A0|ALT_INV_Mult0~418\ <= NOT \A0|Mult0~418\;
\A0|ALT_INV_Mult0~417\ <= NOT \A0|Mult0~417\;
\A0|ALT_INV_Mult0~416\ <= NOT \A0|Mult0~416\;
\A0|ALT_INV_Mult0~415\ <= NOT \A0|Mult0~415\;
\A0|ALT_INV_Mult0~414\ <= NOT \A0|Mult0~414\;
\A0|ALT_INV_Mult0~413\ <= NOT \A0|Mult0~413\;
\A0|ALT_INV_Mult0~412\ <= NOT \A0|Mult0~412\;
\A0|ALT_INV_Mult0~411\ <= NOT \A0|Mult0~411\;
\A0|ALT_INV_Mult0~410\ <= NOT \A0|Mult0~410\;
\A0|ALT_INV_Mult0~409\ <= NOT \A0|Mult0~409\;
\A0|ALT_INV_Mult0~408\ <= NOT \A0|Mult0~408\;
\A0|ALT_INV_Mult0~407\ <= NOT \A0|Mult0~407\;
\A0|ALT_INV_Mult0~406\ <= NOT \A0|Mult0~406\;
\A0|ALT_INV_Mult0~405_resulta\ <= NOT \A0|Mult0~405_resulta\;
\A0|ALT_INV_Mult0~394_sumout\ <= NOT \A0|Mult0~394_sumout\;
\A0|ALT_INV_Mult0~390_sumout\ <= NOT \A0|Mult0~390_sumout\;
\A0|ALT_INV_Mult0~386_sumout\ <= NOT \A0|Mult0~386_sumout\;
\A0|ALT_INV_Mult0~382_sumout\ <= NOT \A0|Mult0~382_sumout\;
\A0|ALT_INV_Mult0~378_sumout\ <= NOT \A0|Mult0~378_sumout\;
\A0|ALT_INV_Mult0~374_sumout\ <= NOT \A0|Mult0~374_sumout\;
\A0|ALT_INV_Mult0~370_sumout\ <= NOT \A0|Mult0~370_sumout\;
\A0|ALT_INV_Mult0~366_sumout\ <= NOT \A0|Mult0~366_sumout\;
\A0|ALT_INV_counter\(22) <= NOT \A0|counter\(22);
\A0|ALT_INV_Mult0~362_sumout\ <= NOT \A0|Mult0~362_sumout\;
\A0|ALT_INV_counter\(23) <= NOT \A0|counter\(23);
\A0|ALT_INV_counter\(8) <= NOT \A0|counter\(8);
\A0|ALT_INV_counter\(10) <= NOT \A0|counter\(10);
\A0|ALT_INV_counter\(9) <= NOT \A0|counter\(9);
\A0|ALT_INV_counter\(11) <= NOT \A0|counter\(11);
\A0|ALT_INV_counter\(12) <= NOT \A0|counter\(12);
\A0|ALT_INV_counter\(13) <= NOT \A0|counter\(13);
\A0|ALT_INV_counter\(14) <= NOT \A0|counter\(14);
\A0|ALT_INV_counter\(2) <= NOT \A0|counter\(2);
\A0|ALT_INV_counter\(3) <= NOT \A0|counter\(3);
\A0|ALT_INV_counter\(0) <= NOT \A0|counter\(0);
\A0|ALT_INV_counter\(1) <= NOT \A0|counter\(1);
\A0|ALT_INV_counter\(5) <= NOT \A0|counter\(5);
\A0|ALT_INV_counter\(6) <= NOT \A0|counter\(6);
\A0|ALT_INV_counter\(7) <= NOT \A0|counter\(7);
\A0|ALT_INV_counter\(4) <= NOT \A0|counter\(4);
\A0|ALT_INV_counter\(15) <= NOT \A0|counter\(15);
\A0|ALT_INV_counter\(17) <= NOT \A0|counter\(17);
\A0|ALT_INV_counter\(16) <= NOT \A0|counter\(16);
\A0|ALT_INV_Mult0~358_sumout\ <= NOT \A0|Mult0~358_sumout\;
\A0|ALT_INV_counter\(18) <= NOT \A0|counter\(18);
\A0|ALT_INV_Mult0~55\ <= NOT \A0|Mult0~55\;
\A0|ALT_INV_Mult0~54\ <= NOT \A0|Mult0~54\;
\A0|ALT_INV_Mult0~53\ <= NOT \A0|Mult0~53\;
\A0|ALT_INV_Mult0~52\ <= NOT \A0|Mult0~52\;
\A0|ALT_INV_Mult0~51\ <= NOT \A0|Mult0~51\;
\A0|ALT_INV_Mult0~50\ <= NOT \A0|Mult0~50\;
\A0|ALT_INV_Mult0~49\ <= NOT \A0|Mult0~49\;
\A0|ALT_INV_Mult0~48\ <= NOT \A0|Mult0~48\;
\A0|ALT_INV_Mult0~47\ <= NOT \A0|Mult0~47\;
\A0|ALT_INV_Mult0~46\ <= NOT \A0|Mult0~46\;
\A0|ALT_INV_Mult0~45\ <= NOT \A0|Mult0~45\;
\A0|ALT_INV_Mult0~44\ <= NOT \A0|Mult0~44\;
\A0|ALT_INV_Mult0~43\ <= NOT \A0|Mult0~43\;
\A0|ALT_INV_Mult0~42\ <= NOT \A0|Mult0~42\;
\A0|ALT_INV_Mult0~41\ <= NOT \A0|Mult0~41\;
\A0|ALT_INV_Mult0~40\ <= NOT \A0|Mult0~40\;
\A0|ALT_INV_Mult0~39\ <= NOT \A0|Mult0~39\;
\A0|ALT_INV_Mult0~38\ <= NOT \A0|Mult0~38\;
\A0|ALT_INV_Mult0~37\ <= NOT \A0|Mult0~37\;
\A0|ALT_INV_Mult0~36\ <= NOT \A0|Mult0~36\;
\A0|ALT_INV_Mult0~35\ <= NOT \A0|Mult0~35\;
\A0|ALT_INV_Mult0~34\ <= NOT \A0|Mult0~34\;
\A0|ALT_INV_Mult0~33\ <= NOT \A0|Mult0~33\;
\A0|ALT_INV_Mult0~32\ <= NOT \A0|Mult0~32\;
\A0|ALT_INV_Mult0~31\ <= NOT \A0|Mult0~31\;
\A0|ALT_INV_Mult0~30\ <= NOT \A0|Mult0~30\;
\A0|ALT_INV_Mult0~29\ <= NOT \A0|Mult0~29\;
\A0|ALT_INV_Mult0~28\ <= NOT \A0|Mult0~28\;
\A0|ALT_INV_Mult0~27\ <= NOT \A0|Mult0~27\;
\A0|ALT_INV_Mult0~26\ <= NOT \A0|Mult0~26\;
\A0|ALT_INV_Mult0~25\ <= NOT \A0|Mult0~25\;
\A0|ALT_INV_Mult0~24_resulta\ <= NOT \A0|Mult0~24_resulta\;
\A0|ALT_INV_Mult0~13_sumout\ <= NOT \A0|Mult0~13_sumout\;
\A0|ALT_INV_counter\(19) <= NOT \A0|counter\(19);
\A0|ALT_INV_Mult0~9_sumout\ <= NOT \A0|Mult0~9_sumout\;
\A0|ALT_INV_counter\(20) <= NOT \A0|counter\(20);
\A0|ALT_INV_Mult0~5_sumout\ <= NOT \A0|Mult0~5_sumout\;
\A0|ALT_INV_counter\(21) <= NOT \A0|counter\(21);
\A0|ALT_INV_Mult0~1_sumout\ <= NOT \A0|Mult0~1_sumout\;

-- Location: IOOBUF_X89_Y11_N45
\fpga_led_pio[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|leds\(0),
	devoe => ww_devoe,
	o => ww_fpga_led_pio(0));

-- Location: IOOBUF_X89_Y9_N22
\fpga_led_pio[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|leds\(0),
	devoe => ww_devoe,
	o => ww_fpga_led_pio(1));

-- Location: IOOBUF_X86_Y0_N19
\fpga_led_pio[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|leds\(0),
	devoe => ww_devoe,
	o => ww_fpga_led_pio(2));

-- Location: IOOBUF_X88_Y0_N37
\fpga_led_pio[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|leds\(0),
	devoe => ww_devoe,
	o => ww_fpga_led_pio(3));

-- Location: IOOBUF_X78_Y0_N36
\fpga_led_pio[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|leds\(0),
	devoe => ww_devoe,
	o => ww_fpga_led_pio(4));

-- Location: IOOBUF_X86_Y0_N36
\fpga_led_pio[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|leds\(0),
	devoe => ww_devoe,
	o => ww_fpga_led_pio(5));

-- Location: IOIBUF_X89_Y25_N4
\fpga_clk_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk_50,
	o => \fpga_clk_50~input_o\);

-- Location: CLKCTRL_G10
\fpga_clk_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk_50~input_o\,
	outclk => \fpga_clk_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X83_Y19_N30
\A0|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~49_sumout\ = SUM(( \A0|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \A0|Add1~50\ = CARRY(( \A0|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(0),
	cin => GND,
	sumout => \A0|Add1~49_sumout\,
	cout => \A0|Add1~50\);

-- Location: IOIBUF_X89_Y21_N4
\fpga_sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_sw(0),
	o => \fpga_sw[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\fpga_sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_sw(1),
	o => \fpga_sw[1]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\A0|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add0~0_combout\ = ( !\fpga_sw[0]~input_o\ & ( \fpga_sw[1]~input_o\ ) ) # ( \fpga_sw[0]~input_o\ & ( !\fpga_sw[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_fpga_sw[0]~input_o\,
	dataf => \ALT_INV_fpga_sw[1]~input_o\,
	combout => \A0|Add0~0_combout\);

-- Location: IOIBUF_X89_Y21_N38
\fpga_sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_sw(2),
	o => \fpga_sw[2]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\A0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add0~1_combout\ = ( \fpga_sw[0]~input_o\ & ( \fpga_sw[1]~input_o\ & ( !\fpga_sw[2]~input_o\ ) ) ) # ( !\fpga_sw[0]~input_o\ & ( \fpga_sw[1]~input_o\ & ( \fpga_sw[2]~input_o\ ) ) ) # ( \fpga_sw[0]~input_o\ & ( !\fpga_sw[1]~input_o\ & ( 
-- \fpga_sw[2]~input_o\ ) ) ) # ( !\fpga_sw[0]~input_o\ & ( !\fpga_sw[1]~input_o\ & ( \fpga_sw[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fpga_sw[2]~input_o\,
	datae => \ALT_INV_fpga_sw[0]~input_o\,
	dataf => \ALT_INV_fpga_sw[1]~input_o\,
	combout => \A0|Add0~1_combout\);

-- Location: IOIBUF_X89_Y25_N55
\fpga_sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_sw(3),
	o => \fpga_sw[3]~input_o\);

-- Location: LABCELL_X88_Y21_N45
\A0|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add0~2_combout\ = ( \fpga_sw[0]~input_o\ & ( !\fpga_sw[3]~input_o\ $ (((!\fpga_sw[1]~input_o\) # (!\fpga_sw[2]~input_o\))) ) ) # ( !\fpga_sw[0]~input_o\ & ( \fpga_sw[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000001011111101000000000111111110000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fpga_sw[1]~input_o\,
	datac => \ALT_INV_fpga_sw[2]~input_o\,
	datad => \ALT_INV_fpga_sw[3]~input_o\,
	datae => \ALT_INV_fpga_sw[0]~input_o\,
	combout => \A0|Add0~2_combout\);

-- Location: LABCELL_X88_Y21_N48
\A0|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add0~3_combout\ = ( \fpga_sw[0]~input_o\ & ( (\fpga_sw[3]~input_o\ & (\fpga_sw[2]~input_o\ & \fpga_sw[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fpga_sw[3]~input_o\,
	datab => \ALT_INV_fpga_sw[2]~input_o\,
	datac => \ALT_INV_fpga_sw[1]~input_o\,
	datae => \ALT_INV_fpga_sw[0]~input_o\,
	combout => \A0|Add0~3_combout\);

-- Location: DSP_X86_Y18_N0
\A0|Mult0~24\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 17,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \A0|Mult0~24_AX_bus\,
	ay => \A0|Mult0~24_AY_bus\,
	resulta => \A0|Mult0~24_RESULTA_bus\);

-- Location: MLABCELL_X82_Y18_N45
\A0|LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~19_combout\ = ( \A0|Mult0~34\ & ( !\A0|counter\(10) ) ) # ( !\A0|Mult0~34\ & ( \A0|counter\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(10),
	dataf => \A0|ALT_INV_Mult0~34\,
	combout => \A0|LessThan0~19_combout\);

-- Location: MLABCELL_X82_Y18_N18
\A0|LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~18_combout\ = !\A0|Mult0~35\ $ (!\A0|counter\(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~35\,
	datac => \A0|ALT_INV_counter\(11),
	combout => \A0|LessThan0~18_combout\);

-- Location: LABCELL_X83_Y18_N42
\A0|LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~17_combout\ = ( \A0|Mult0~38\ & ( \A0|counter\(14) & ( (!\A0|Mult0~36\ & (!\A0|counter\(12) & (!\A0|Mult0~37\ $ (\A0|counter\(13))))) # (\A0|Mult0~36\ & (\A0|counter\(12) & (!\A0|Mult0~37\ $ (\A0|counter\(13))))) ) ) ) # ( !\A0|Mult0~38\ & ( 
-- !\A0|counter\(14) & ( (!\A0|Mult0~36\ & (!\A0|counter\(12) & (!\A0|Mult0~37\ $ (\A0|counter\(13))))) # (\A0|Mult0~36\ & (\A0|counter\(12) & (!\A0|Mult0~37\ $ (\A0|counter\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~36\,
	datab => \A0|ALT_INV_counter\(12),
	datac => \A0|ALT_INV_Mult0~37\,
	datad => \A0|ALT_INV_counter\(13),
	datae => \A0|ALT_INV_Mult0~38\,
	dataf => \A0|ALT_INV_counter\(14),
	combout => \A0|LessThan0~17_combout\);

-- Location: MLABCELL_X82_Y18_N21
\A0|LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~24_combout\ = ( \A0|Mult0~32\ & ( !\A0|counter\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(8),
	dataf => \A0|ALT_INV_Mult0~32\,
	combout => \A0|LessThan0~24_combout\);

-- Location: MLABCELL_X82_Y18_N12
\A0|LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~25_combout\ = ( \A0|LessThan0~24_combout\ & ( \A0|counter\(9) & ( (\A0|Mult0~33\ & (!\A0|LessThan0~19_combout\ & (!\A0|LessThan0~18_combout\ & \A0|LessThan0~17_combout\))) ) ) ) # ( \A0|LessThan0~24_combout\ & ( !\A0|counter\(9) & ( 
-- (!\A0|LessThan0~19_combout\ & (!\A0|LessThan0~18_combout\ & \A0|LessThan0~17_combout\)) ) ) ) # ( !\A0|LessThan0~24_combout\ & ( !\A0|counter\(9) & ( (\A0|Mult0~33\ & (!\A0|LessThan0~19_combout\ & (!\A0|LessThan0~18_combout\ & \A0|LessThan0~17_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000001100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~33\,
	datab => \A0|ALT_INV_LessThan0~19_combout\,
	datac => \A0|ALT_INV_LessThan0~18_combout\,
	datad => \A0|ALT_INV_LessThan0~17_combout\,
	datae => \A0|ALT_INV_LessThan0~24_combout\,
	dataf => \A0|ALT_INV_counter\(9),
	combout => \A0|LessThan0~25_combout\);

-- Location: MLABCELL_X82_Y18_N42
\A0|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~9_combout\ = !\A0|counter\(15) $ (!\A0|Mult0~39\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(15),
	datad => \A0|ALT_INV_Mult0~39\,
	combout => \A0|LessThan0~9_combout\);

-- Location: LABCELL_X83_Y18_N48
\A0|LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~22_combout\ = ( \A0|Mult0~38\ & ( \A0|counter\(14) & ( (!\A0|Mult0~37\ & (\A0|Mult0~36\ & (!\A0|counter\(12) & !\A0|counter\(13)))) # (\A0|Mult0~37\ & ((!\A0|counter\(13)) # ((\A0|Mult0~36\ & !\A0|counter\(12))))) ) ) ) # ( \A0|Mult0~38\ & ( 
-- !\A0|counter\(14) ) ) # ( !\A0|Mult0~38\ & ( !\A0|counter\(14) & ( (!\A0|Mult0~37\ & (\A0|Mult0~36\ & (!\A0|counter\(12) & !\A0|counter\(13)))) # (\A0|Mult0~37\ & ((!\A0|counter\(13)) # ((\A0|Mult0~36\ & !\A0|counter\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100111111111111111100000000000000000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~36\,
	datab => \A0|ALT_INV_counter\(12),
	datac => \A0|ALT_INV_Mult0~37\,
	datad => \A0|ALT_INV_counter\(13),
	datae => \A0|ALT_INV_Mult0~38\,
	dataf => \A0|ALT_INV_counter\(14),
	combout => \A0|LessThan0~22_combout\);

-- Location: MLABCELL_X82_Y18_N36
\A0|LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~23_combout\ = ( \A0|counter\(10) & ( \A0|Mult0~34\ & ( (!\A0|LessThan0~22_combout\ & ((!\A0|Mult0~35\) # ((!\A0|LessThan0~17_combout\) # (\A0|counter\(11))))) ) ) ) # ( !\A0|counter\(10) & ( \A0|Mult0~34\ & ( (!\A0|LessThan0~22_combout\ & 
-- ((!\A0|LessThan0~17_combout\) # ((!\A0|Mult0~35\ & \A0|counter\(11))))) ) ) ) # ( \A0|counter\(10) & ( !\A0|Mult0~34\ & ( (!\A0|LessThan0~22_combout\ & ((!\A0|Mult0~35\) # ((!\A0|LessThan0~17_combout\) # (\A0|counter\(11))))) ) ) ) # ( !\A0|counter\(10) & 
-- ( !\A0|Mult0~34\ & ( (!\A0|LessThan0~22_combout\ & ((!\A0|Mult0~35\) # ((!\A0|LessThan0~17_combout\) # (\A0|counter\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111011110000000011001110000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~35\,
	datab => \A0|ALT_INV_LessThan0~17_combout\,
	datac => \A0|ALT_INV_counter\(11),
	datad => \A0|ALT_INV_LessThan0~22_combout\,
	datae => \A0|ALT_INV_counter\(10),
	dataf => \A0|ALT_INV_Mult0~34\,
	combout => \A0|LessThan0~23_combout\);

-- Location: LABCELL_X83_Y19_N0
\A0|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~10_combout\ = ( \A0|Mult0~31\ & ( \A0|counter\(7) & ( (!\A0|counter\(6) & (!\A0|Mult0~30\ & (!\A0|counter\(5) $ (\A0|Mult0~29\)))) # (\A0|counter\(6) & (\A0|Mult0~30\ & (!\A0|counter\(5) $ (\A0|Mult0~29\)))) ) ) ) # ( !\A0|Mult0~31\ & ( 
-- !\A0|counter\(7) & ( (!\A0|counter\(6) & (!\A0|Mult0~30\ & (!\A0|counter\(5) $ (\A0|Mult0~29\)))) # (\A0|counter\(6) & (\A0|Mult0~30\ & (!\A0|counter\(5) $ (\A0|Mult0~29\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(6),
	datab => \A0|ALT_INV_counter\(5),
	datac => \A0|ALT_INV_Mult0~30\,
	datad => \A0|ALT_INV_Mult0~29\,
	datae => \A0|ALT_INV_Mult0~31\,
	dataf => \A0|ALT_INV_counter\(7),
	combout => \A0|LessThan0~10_combout\);

-- Location: LABCELL_X83_Y19_N24
\A0|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~15_combout\ = ( \A0|Mult0~31\ & ( \A0|counter\(7) & ( (!\A0|counter\(6) & (((!\A0|counter\(5) & \A0|Mult0~29\)) # (\A0|Mult0~30\))) # (\A0|counter\(6) & (!\A0|counter\(5) & (\A0|Mult0~30\ & \A0|Mult0~29\))) ) ) ) # ( \A0|Mult0~31\ & ( 
-- !\A0|counter\(7) ) ) # ( !\A0|Mult0~31\ & ( !\A0|counter\(7) & ( (!\A0|counter\(6) & (((!\A0|counter\(5) & \A0|Mult0~29\)) # (\A0|Mult0~30\))) # (\A0|counter\(6) & (!\A0|counter\(5) & (\A0|Mult0~30\ & \A0|Mult0~29\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001110111111111111111100000000000000000000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(6),
	datab => \A0|ALT_INV_counter\(5),
	datac => \A0|ALT_INV_Mult0~30\,
	datad => \A0|ALT_INV_Mult0~29\,
	datae => \A0|ALT_INV_Mult0~31\,
	dataf => \A0|ALT_INV_counter\(7),
	combout => \A0|LessThan0~15_combout\);

-- Location: LABCELL_X83_Y19_N15
\A0|LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~16_combout\ = ( !\A0|LessThan0~15_combout\ & ( (!\A0|LessThan0~10_combout\) # ((!\A0|Mult0~28\) # (\A0|counter\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~10_combout\,
	datac => \A0|ALT_INV_counter\(4),
	datad => \A0|ALT_INV_Mult0~28\,
	dataf => \A0|ALT_INV_LessThan0~15_combout\,
	combout => \A0|LessThan0~16_combout\);

-- Location: MLABCELL_X82_Y18_N24
\A0|LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~20_combout\ = ( !\A0|counter\(8) & ( \A0|Mult0~32\ ) ) # ( \A0|counter\(8) & ( !\A0|Mult0~32\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \A0|ALT_INV_counter\(8),
	dataf => \A0|ALT_INV_Mult0~32\,
	combout => \A0|LessThan0~20_combout\);

-- Location: MLABCELL_X82_Y18_N0
\A0|LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~21_combout\ = ( \A0|LessThan0~17_combout\ & ( \A0|Mult0~33\ & ( (!\A0|LessThan0~20_combout\ & (!\A0|LessThan0~19_combout\ & (!\A0|LessThan0~18_combout\ & \A0|counter\(9)))) ) ) ) # ( \A0|LessThan0~17_combout\ & ( !\A0|Mult0~33\ & ( 
-- (!\A0|LessThan0~20_combout\ & (!\A0|LessThan0~19_combout\ & (!\A0|LessThan0~18_combout\ & !\A0|counter\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~20_combout\,
	datab => \A0|ALT_INV_LessThan0~19_combout\,
	datac => \A0|ALT_INV_LessThan0~18_combout\,
	datad => \A0|ALT_INV_counter\(9),
	datae => \A0|ALT_INV_LessThan0~17_combout\,
	dataf => \A0|ALT_INV_Mult0~33\,
	combout => \A0|LessThan0~21_combout\);

-- Location: LABCELL_X83_Y19_N6
\A0|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~11_combout\ = ( \A0|Mult0~24_resulta\ & ( (!\A0|counter\(0) & ((!\A0|counter\(1)) # (\A0|Mult0~25\))) # (\A0|counter\(0) & (!\A0|counter\(1) & \A0|Mult0~25\)) ) ) # ( !\A0|Mult0~24_resulta\ & ( (!\A0|counter\(1) & \A0|Mult0~25\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011000000111111001100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(0),
	datac => \A0|ALT_INV_counter\(1),
	datad => \A0|ALT_INV_Mult0~25\,
	dataf => \A0|ALT_INV_Mult0~24_resulta\,
	combout => \A0|LessThan0~11_combout\);

-- Location: LABCELL_X83_Y19_N9
\A0|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~13_combout\ = ( \A0|Mult0~26\ & ( (!\A0|counter\(2) & ((!\A0|counter\(3)) # (\A0|Mult0~27\))) # (\A0|counter\(2) & (!\A0|counter\(3) & \A0|Mult0~27\)) ) ) # ( !\A0|Mult0~26\ & ( (!\A0|counter\(3) & \A0|Mult0~27\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(2),
	datac => \A0|ALT_INV_counter\(3),
	datad => \A0|ALT_INV_Mult0~27\,
	dataf => \A0|ALT_INV_Mult0~26\,
	combout => \A0|LessThan0~13_combout\);

-- Location: LABCELL_X83_Y19_N12
\A0|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~12_combout\ = ( \A0|Mult0~26\ & ( (\A0|counter\(2) & (!\A0|counter\(3) $ (\A0|Mult0~27\))) ) ) # ( !\A0|Mult0~26\ & ( (!\A0|counter\(2) & (!\A0|counter\(3) $ (\A0|Mult0~27\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(3),
	datac => \A0|ALT_INV_counter\(2),
	datad => \A0|ALT_INV_Mult0~27\,
	dataf => \A0|ALT_INV_Mult0~26\,
	combout => \A0|LessThan0~12_combout\);

-- Location: LABCELL_X83_Y19_N18
\A0|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~14_combout\ = ( \A0|LessThan0~10_combout\ & ( \A0|LessThan0~12_combout\ & ( (!\A0|LessThan0~11_combout\ & (\A0|LessThan0~13_combout\ & (!\A0|Mult0~28\ $ (\A0|counter\(4))))) # (\A0|LessThan0~11_combout\ & ((!\A0|Mult0~28\ $ 
-- (\A0|counter\(4))))) ) ) ) # ( \A0|LessThan0~10_combout\ & ( !\A0|LessThan0~12_combout\ & ( (\A0|LessThan0~13_combout\ & (!\A0|Mult0~28\ $ (\A0|counter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000001100000000000000000111000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~11_combout\,
	datab => \A0|ALT_INV_LessThan0~13_combout\,
	datac => \A0|ALT_INV_Mult0~28\,
	datad => \A0|ALT_INV_counter\(4),
	datae => \A0|ALT_INV_LessThan0~10_combout\,
	dataf => \A0|ALT_INV_LessThan0~12_combout\,
	combout => \A0|LessThan0~14_combout\);

-- Location: LABCELL_X83_Y18_N54
\A0|LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~26_combout\ = ( \A0|LessThan0~21_combout\ & ( \A0|LessThan0~14_combout\ & ( !\A0|LessThan0~9_combout\ ) ) ) # ( !\A0|LessThan0~21_combout\ & ( \A0|LessThan0~14_combout\ & ( (!\A0|LessThan0~9_combout\ & ((!\A0|LessThan0~23_combout\) # 
-- (\A0|LessThan0~25_combout\))) ) ) ) # ( \A0|LessThan0~21_combout\ & ( !\A0|LessThan0~14_combout\ & ( (!\A0|LessThan0~9_combout\ & (((!\A0|LessThan0~23_combout\) # (!\A0|LessThan0~16_combout\)) # (\A0|LessThan0~25_combout\))) ) ) ) # ( 
-- !\A0|LessThan0~21_combout\ & ( !\A0|LessThan0~14_combout\ & ( (!\A0|LessThan0~9_combout\ & ((!\A0|LessThan0~23_combout\) # (\A0|LessThan0~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110011001100010011000100110001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~25_combout\,
	datab => \A0|ALT_INV_LessThan0~9_combout\,
	datac => \A0|ALT_INV_LessThan0~23_combout\,
	datad => \A0|ALT_INV_LessThan0~16_combout\,
	datae => \A0|ALT_INV_LessThan0~21_combout\,
	dataf => \A0|ALT_INV_LessThan0~14_combout\,
	combout => \A0|LessThan0~26_combout\);

-- Location: DSP_X86_Y20_N0
\A0|Mult0~405\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 13,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 2,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 17,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \A0|Mult0~405_AX_bus\,
	ay => \A0|Mult0~405_AY_bus\,
	bx => \A0|Mult0~405_BX_bus\,
	by => \A0|Mult0~405_BY_bus\,
	resulta => \A0|Mult0~405_RESULTA_bus\);

-- Location: LABCELL_X85_Y18_N0
\A0|Mult0~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~358_sumout\ = SUM(( \A0|Mult0~405_resulta\ ) + ( \A0|Mult0~42\ ) + ( !VCC ))
-- \A0|Mult0~359\ = CARRY(( \A0|Mult0~405_resulta\ ) + ( \A0|Mult0~42\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_Mult0~405_resulta\,
	datac => \A0|ALT_INV_Mult0~42\,
	cin => GND,
	sumout => \A0|Mult0~358_sumout\,
	cout => \A0|Mult0~359\);

-- Location: MLABCELL_X84_Y18_N39
\A0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~1_combout\ = !\A0|Mult0~358_sumout\ $ (!\A0|counter\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~358_sumout\,
	datad => \A0|ALT_INV_counter\(18),
	combout => \A0|LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y18_N30
\A0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~2_combout\ = ( !\A0|counter\(17) & ( \A0|Mult0~41\ ) ) # ( \A0|counter\(17) & ( !\A0|Mult0~41\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \A0|ALT_INV_counter\(17),
	dataf => \A0|ALT_INV_Mult0~41\,
	combout => \A0|LessThan0~2_combout\);

-- Location: LABCELL_X85_Y18_N3
\A0|Mult0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~13_sumout\ = SUM(( \A0|Mult0~406\ ) + ( \A0|Mult0~43\ ) + ( \A0|Mult0~359\ ))
-- \A0|Mult0~14\ = CARRY(( \A0|Mult0~406\ ) + ( \A0|Mult0~43\ ) + ( \A0|Mult0~359\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~43\,
	datad => \A0|ALT_INV_Mult0~406\,
	cin => \A0|Mult0~359\,
	sumout => \A0|Mult0~13_sumout\,
	cout => \A0|Mult0~14\);

-- Location: LABCELL_X85_Y18_N6
\A0|Mult0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~9_sumout\ = SUM(( \A0|Mult0~407\ ) + ( \A0|Mult0~44\ ) + ( \A0|Mult0~14\ ))
-- \A0|Mult0~10\ = CARRY(( \A0|Mult0~407\ ) + ( \A0|Mult0~44\ ) + ( \A0|Mult0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_Mult0~44\,
	datac => \A0|ALT_INV_Mult0~407\,
	cin => \A0|Mult0~14\,
	sumout => \A0|Mult0~9_sumout\,
	cout => \A0|Mult0~10\);

-- Location: LABCELL_X85_Y18_N9
\A0|Mult0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~5_sumout\ = SUM(( \A0|Mult0~45\ ) + ( \A0|Mult0~408\ ) + ( \A0|Mult0~10\ ))
-- \A0|Mult0~6\ = CARRY(( \A0|Mult0~45\ ) + ( \A0|Mult0~408\ ) + ( \A0|Mult0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~45\,
	dataf => \A0|ALT_INV_Mult0~408\,
	cin => \A0|Mult0~10\,
	sumout => \A0|Mult0~5_sumout\,
	cout => \A0|Mult0~6\);

-- Location: LABCELL_X83_Y18_N27
\A0|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~9_sumout\ = SUM(( \A0|counter\(19) ) + ( GND ) + ( \A0|Add1~14\ ))
-- \A0|Add1~10\ = CARRY(( \A0|counter\(19) ) + ( GND ) + ( \A0|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(19),
	cin => \A0|Add1~14\,
	sumout => \A0|Add1~9_sumout\,
	cout => \A0|Add1~10\);

-- Location: LABCELL_X83_Y18_N30
\A0|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~5_sumout\ = SUM(( \A0|counter\(20) ) + ( GND ) + ( \A0|Add1~10\ ))
-- \A0|Add1~6\ = CARRY(( \A0|counter\(20) ) + ( GND ) + ( \A0|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(20),
	cin => \A0|Add1~10\,
	sumout => \A0|Add1~5_sumout\,
	cout => \A0|Add1~6\);

-- Location: FF_X83_Y18_N32
\A0|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~5_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(20));

-- Location: LABCELL_X83_Y18_N33
\A0|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~1_sumout\ = SUM(( \A0|counter\(21) ) + ( GND ) + ( \A0|Add1~6\ ))
-- \A0|Add1~2\ = CARRY(( \A0|counter\(21) ) + ( GND ) + ( \A0|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(21),
	cin => \A0|Add1~6\,
	sumout => \A0|Add1~1_sumout\,
	cout => \A0|Add1~2\);

-- Location: FF_X83_Y18_N35
\A0|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~1_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(21));

-- Location: MLABCELL_X84_Y18_N0
\A0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~0_combout\ = ( \A0|Mult0~9_sumout\ & ( \A0|counter\(20) & ( (!\A0|counter\(19) & (!\A0|Mult0~13_sumout\ & (!\A0|Mult0~5_sumout\ $ (\A0|counter\(21))))) # (\A0|counter\(19) & (\A0|Mult0~13_sumout\ & (!\A0|Mult0~5_sumout\ $ 
-- (\A0|counter\(21))))) ) ) ) # ( !\A0|Mult0~9_sumout\ & ( !\A0|counter\(20) & ( (!\A0|counter\(19) & (!\A0|Mult0~13_sumout\ & (!\A0|Mult0~5_sumout\ $ (\A0|counter\(21))))) # (\A0|counter\(19) & (\A0|Mult0~13_sumout\ & (!\A0|Mult0~5_sumout\ $ 
-- (\A0|counter\(21))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(19),
	datab => \A0|ALT_INV_Mult0~5_sumout\,
	datac => \A0|ALT_INV_Mult0~13_sumout\,
	datad => \A0|ALT_INV_counter\(21),
	datae => \A0|ALT_INV_Mult0~9_sumout\,
	dataf => \A0|ALT_INV_counter\(20),
	combout => \A0|LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y18_N33
\A0|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~8_combout\ = ( \A0|Mult0~40\ & ( !\A0|counter\(16) ) ) # ( !\A0|Mult0~40\ & ( \A0|counter\(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(16),
	dataf => \A0|ALT_INV_Mult0~40\,
	combout => \A0|LessThan0~8_combout\);

-- Location: MLABCELL_X84_Y18_N30
\A0|LessThan0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~36_combout\ = ( !\A0|LessThan0~8_combout\ & ( (\A0|LessThan0~26_combout\ & (!\A0|LessThan0~1_combout\ & (!\A0|LessThan0~2_combout\ & \A0|LessThan0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~26_combout\,
	datab => \A0|ALT_INV_LessThan0~1_combout\,
	datac => \A0|ALT_INV_LessThan0~2_combout\,
	datad => \A0|ALT_INV_LessThan0~0_combout\,
	dataf => \A0|ALT_INV_LessThan0~8_combout\,
	combout => \A0|LessThan0~36_combout\);

-- Location: LABCELL_X85_Y18_N12
\A0|Mult0~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~366_sumout\ = SUM(( \A0|Mult0~409\ ) + ( \A0|Mult0~46\ ) + ( \A0|Mult0~6\ ))
-- \A0|Mult0~367\ = CARRY(( \A0|Mult0~409\ ) + ( \A0|Mult0~46\ ) + ( \A0|Mult0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_Mult0~46\,
	datad => \A0|ALT_INV_Mult0~409\,
	cin => \A0|Mult0~6\,
	sumout => \A0|Mult0~366_sumout\,
	cout => \A0|Mult0~367\);

-- Location: LABCELL_X85_Y18_N15
\A0|Mult0~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~362_sumout\ = SUM(( \A0|Mult0~410\ ) + ( \A0|Mult0~47\ ) + ( \A0|Mult0~367\ ))
-- \A0|Mult0~363\ = CARRY(( \A0|Mult0~410\ ) + ( \A0|Mult0~47\ ) + ( \A0|Mult0~367\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~47\,
	datad => \A0|ALT_INV_Mult0~410\,
	cin => \A0|Mult0~367\,
	sumout => \A0|Mult0~362_sumout\,
	cout => \A0|Mult0~363\);

-- Location: LABCELL_X85_Y18_N18
\A0|Mult0~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~390_sumout\ = SUM(( \A0|Mult0~48\ ) + ( \A0|Mult0~411\ ) + ( \A0|Mult0~363\ ))
-- \A0|Mult0~391\ = CARRY(( \A0|Mult0~48\ ) + ( \A0|Mult0~411\ ) + ( \A0|Mult0~363\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_Mult0~48\,
	dataf => \A0|ALT_INV_Mult0~411\,
	cin => \A0|Mult0~363\,
	sumout => \A0|Mult0~390_sumout\,
	cout => \A0|Mult0~391\);

-- Location: LABCELL_X85_Y18_N21
\A0|Mult0~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~394_sumout\ = SUM(( \A0|Mult0~412\ ) + ( \A0|Mult0~49\ ) + ( \A0|Mult0~391\ ))
-- \A0|Mult0~395\ = CARRY(( \A0|Mult0~412\ ) + ( \A0|Mult0~49\ ) + ( \A0|Mult0~391\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~49\,
	datac => \A0|ALT_INV_Mult0~412\,
	cin => \A0|Mult0~391\,
	sumout => \A0|Mult0~394_sumout\,
	cout => \A0|Mult0~395\);

-- Location: LABCELL_X85_Y18_N24
\A0|Mult0~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~370_sumout\ = SUM(( \A0|Mult0~413\ ) + ( \A0|Mult0~50\ ) + ( \A0|Mult0~395\ ))
-- \A0|Mult0~371\ = CARRY(( \A0|Mult0~413\ ) + ( \A0|Mult0~50\ ) + ( \A0|Mult0~395\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_Mult0~50\,
	datac => \A0|ALT_INV_Mult0~413\,
	cin => \A0|Mult0~395\,
	sumout => \A0|Mult0~370_sumout\,
	cout => \A0|Mult0~371\);

-- Location: LABCELL_X85_Y18_N27
\A0|Mult0~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~374_sumout\ = SUM(( \A0|Mult0~51\ ) + ( \A0|Mult0~414\ ) + ( \A0|Mult0~371\ ))
-- \A0|Mult0~375\ = CARRY(( \A0|Mult0~51\ ) + ( \A0|Mult0~414\ ) + ( \A0|Mult0~371\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~51\,
	dataf => \A0|ALT_INV_Mult0~414\,
	cin => \A0|Mult0~371\,
	sumout => \A0|Mult0~374_sumout\,
	cout => \A0|Mult0~375\);

-- Location: LABCELL_X85_Y18_N30
\A0|Mult0~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~378_sumout\ = SUM(( \A0|Mult0~52\ ) + ( \A0|Mult0~415\ ) + ( \A0|Mult0~375\ ))
-- \A0|Mult0~379\ = CARRY(( \A0|Mult0~52\ ) + ( \A0|Mult0~415\ ) + ( \A0|Mult0~375\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_Mult0~52\,
	dataf => \A0|ALT_INV_Mult0~415\,
	cin => \A0|Mult0~375\,
	sumout => \A0|Mult0~378_sumout\,
	cout => \A0|Mult0~379\);

-- Location: LABCELL_X85_Y18_N33
\A0|Mult0~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~382_sumout\ = SUM(( \A0|Mult0~416\ ) + ( \A0|Mult0~53\ ) + ( \A0|Mult0~379\ ))
-- \A0|Mult0~383\ = CARRY(( \A0|Mult0~416\ ) + ( \A0|Mult0~53\ ) + ( \A0|Mult0~379\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~416\,
	datac => \A0|ALT_INV_Mult0~53\,
	cin => \A0|Mult0~379\,
	sumout => \A0|Mult0~382_sumout\,
	cout => \A0|Mult0~383\);

-- Location: LABCELL_X85_Y18_N36
\A0|Mult0~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~386_sumout\ = SUM(( \A0|Mult0~417\ ) + ( \A0|Mult0~54\ ) + ( \A0|Mult0~383\ ))
-- \A0|Mult0~387\ = CARRY(( \A0|Mult0~417\ ) + ( \A0|Mult0~54\ ) + ( \A0|Mult0~383\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~54\,
	datac => \A0|ALT_INV_Mult0~417\,
	cin => \A0|Mult0~383\,
	sumout => \A0|Mult0~386_sumout\,
	cout => \A0|Mult0~387\);

-- Location: LABCELL_X83_Y18_N36
\A0|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~93_sumout\ = SUM(( \A0|counter\(22) ) + ( GND ) + ( \A0|Add1~2\ ))
-- \A0|Add1~94\ = CARRY(( \A0|counter\(22) ) + ( GND ) + ( \A0|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(22),
	cin => \A0|Add1~2\,
	sumout => \A0|Add1~93_sumout\,
	cout => \A0|Add1~94\);

-- Location: FF_X83_Y18_N38
\A0|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~93_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(22));

-- Location: LABCELL_X83_Y18_N39
\A0|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~89_sumout\ = SUM(( \A0|counter\(23) ) + ( GND ) + ( \A0|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(23),
	cin => \A0|Add1~94\,
	sumout => \A0|Add1~89_sumout\);

-- Location: FF_X83_Y18_N41
\A0|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~89_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(23));

-- Location: LABCELL_X85_Y18_N48
\A0|LessThan0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~34_combout\ = ( \A0|counter\(23) & ( !\A0|Mult0~390_sumout\ & ( (!\A0|Mult0~394_sumout\ & ((!\A0|Mult0~366_sumout\) # ((!\A0|Mult0~362_sumout\) # (\A0|counter\(22))))) ) ) ) # ( !\A0|counter\(23) & ( !\A0|Mult0~390_sumout\ & ( 
-- (!\A0|Mult0~394_sumout\ & (!\A0|Mult0~362_sumout\ & ((!\A0|Mult0~366_sumout\) # (\A0|counter\(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000101010101000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~394_sumout\,
	datab => \A0|ALT_INV_Mult0~366_sumout\,
	datac => \A0|ALT_INV_counter\(22),
	datad => \A0|ALT_INV_Mult0~362_sumout\,
	datae => \A0|ALT_INV_counter\(23),
	dataf => \A0|ALT_INV_Mult0~390_sumout\,
	combout => \A0|LessThan0~34_combout\);

-- Location: LABCELL_X85_Y18_N54
\A0|LessThan0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~35_combout\ = ( !\A0|Mult0~374_sumout\ & ( !\A0|Mult0~370_sumout\ & ( (!\A0|Mult0~382_sumout\ & (!\A0|Mult0~378_sumout\ & (!\A0|Mult0~386_sumout\ & \A0|LessThan0~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~382_sumout\,
	datab => \A0|ALT_INV_Mult0~378_sumout\,
	datac => \A0|ALT_INV_Mult0~386_sumout\,
	datad => \A0|ALT_INV_LessThan0~34_combout\,
	datae => \A0|ALT_INV_Mult0~374_sumout\,
	dataf => \A0|ALT_INV_Mult0~370_sumout\,
	combout => \A0|LessThan0~35_combout\);

-- Location: MLABCELL_X82_Y18_N51
\A0|LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~27_combout\ = ( !\A0|counter\(17) & ( \A0|Mult0~41\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \A0|ALT_INV_counter\(17),
	dataf => \A0|ALT_INV_Mult0~41\,
	combout => \A0|LessThan0~27_combout\);

-- Location: MLABCELL_X84_Y18_N36
\A0|LessThan0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~37_combout\ = ( !\A0|LessThan0~31_combout\ & ( (!\A0|LessThan0~0_combout\) # ((!\A0|Mult0~358_sumout\ & ((!\A0|LessThan0~27_combout\) # (\A0|counter\(18)))) # (\A0|Mult0~358_sumout\ & (\A0|counter\(18) & !\A0|LessThan0~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110010111111111011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~358_sumout\,
	datab => \A0|ALT_INV_counter\(18),
	datac => \A0|ALT_INV_LessThan0~27_combout\,
	datad => \A0|ALT_INV_LessThan0~0_combout\,
	dataf => \A0|ALT_INV_LessThan0~31_combout\,
	combout => \A0|LessThan0~37_combout\);

-- Location: LABCELL_X85_Y18_N42
\A0|LessThan0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~33_combout\ = ( \A0|Mult0~362_sumout\ & ( (\A0|counter\(23) & (!\A0|Mult0~366_sumout\ $ (\A0|counter\(22)))) ) ) # ( !\A0|Mult0~362_sumout\ & ( (!\A0|counter\(23) & (!\A0|Mult0~366_sumout\ $ (\A0|counter\(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_Mult0~366_sumout\,
	datac => \A0|ALT_INV_counter\(22),
	datad => \A0|ALT_INV_counter\(23),
	dataf => \A0|ALT_INV_Mult0~362_sumout\,
	combout => \A0|LessThan0~33_combout\);

-- Location: MLABCELL_X82_Y18_N9
\A0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~3_combout\ = ( !\A0|counter\(15) & ( \A0|Mult0~39\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_Mult0~39\,
	datae => \A0|ALT_INV_counter\(15),
	combout => \A0|LessThan0~3_combout\);

-- Location: MLABCELL_X84_Y18_N42
\A0|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~4_combout\ = ( \A0|LessThan0~3_combout\ & ( \A0|Mult0~40\ & ( (\A0|LessThan0~0_combout\ & (!\A0|LessThan0~2_combout\ & !\A0|LessThan0~1_combout\)) ) ) ) # ( !\A0|LessThan0~3_combout\ & ( \A0|Mult0~40\ & ( (\A0|LessThan0~0_combout\ & 
-- (!\A0|counter\(16) & (!\A0|LessThan0~2_combout\ & !\A0|LessThan0~1_combout\))) ) ) ) # ( \A0|LessThan0~3_combout\ & ( !\A0|Mult0~40\ & ( (\A0|LessThan0~0_combout\ & (!\A0|counter\(16) & (!\A0|LessThan0~2_combout\ & !\A0|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000001000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~0_combout\,
	datab => \A0|ALT_INV_counter\(16),
	datac => \A0|ALT_INV_LessThan0~2_combout\,
	datad => \A0|ALT_INV_LessThan0~1_combout\,
	datae => \A0|ALT_INV_LessThan0~3_combout\,
	dataf => \A0|ALT_INV_Mult0~40\,
	combout => \A0|LessThan0~4_combout\);

-- Location: LABCELL_X85_Y18_N39
\A0|Mult0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Mult0~1_sumout\ = SUM(( \A0|Mult0~418\ ) + ( \A0|Mult0~55\ ) + ( \A0|Mult0~387\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_Mult0~418\,
	datac => \A0|ALT_INV_Mult0~55\,
	cin => \A0|Mult0~387\,
	sumout => \A0|Mult0~1_sumout\);

-- Location: MLABCELL_X87_Y18_N12
\A0|LessThan0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~38_combout\ = ( \A0|LessThan0~4_combout\ & ( \A0|Mult0~1_sumout\ ) ) # ( !\A0|LessThan0~4_combout\ & ( \A0|Mult0~1_sumout\ ) ) # ( \A0|LessThan0~4_combout\ & ( !\A0|Mult0~1_sumout\ & ( (\A0|LessThan0~35_combout\ & !\A0|LessThan0~33_combout\) 
-- ) ) ) # ( !\A0|LessThan0~4_combout\ & ( !\A0|Mult0~1_sumout\ & ( (\A0|LessThan0~35_combout\ & ((!\A0|LessThan0~33_combout\) # ((!\A0|LessThan0~36_combout\ & \A0|LessThan0~37_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000010001100110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~36_combout\,
	datab => \A0|ALT_INV_LessThan0~35_combout\,
	datac => \A0|ALT_INV_LessThan0~37_combout\,
	datad => \A0|ALT_INV_LessThan0~33_combout\,
	datae => \A0|ALT_INV_LessThan0~4_combout\,
	dataf => \A0|ALT_INV_Mult0~1_sumout\,
	combout => \A0|LessThan0~38_combout\);

-- Location: FF_X83_Y19_N32
\A0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~49_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(0));

-- Location: LABCELL_X83_Y19_N33
\A0|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~45_sumout\ = SUM(( \A0|counter\(1) ) + ( GND ) + ( \A0|Add1~50\ ))
-- \A0|Add1~46\ = CARRY(( \A0|counter\(1) ) + ( GND ) + ( \A0|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(1),
	cin => \A0|Add1~50\,
	sumout => \A0|Add1~45_sumout\,
	cout => \A0|Add1~46\);

-- Location: FF_X83_Y19_N35
\A0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~45_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(1));

-- Location: LABCELL_X83_Y19_N36
\A0|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~57_sumout\ = SUM(( \A0|counter\(2) ) + ( GND ) + ( \A0|Add1~46\ ))
-- \A0|Add1~58\ = CARRY(( \A0|counter\(2) ) + ( GND ) + ( \A0|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(2),
	cin => \A0|Add1~46\,
	sumout => \A0|Add1~57_sumout\,
	cout => \A0|Add1~58\);

-- Location: FF_X83_Y19_N38
\A0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~57_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(2));

-- Location: LABCELL_X83_Y19_N39
\A0|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~53_sumout\ = SUM(( \A0|counter\(3) ) + ( GND ) + ( \A0|Add1~58\ ))
-- \A0|Add1~54\ = CARRY(( \A0|counter\(3) ) + ( GND ) + ( \A0|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(3),
	cin => \A0|Add1~58\,
	sumout => \A0|Add1~53_sumout\,
	cout => \A0|Add1~54\);

-- Location: FF_X83_Y19_N41
\A0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~53_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(3));

-- Location: LABCELL_X83_Y19_N42
\A0|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~29_sumout\ = SUM(( \A0|counter\(4) ) + ( GND ) + ( \A0|Add1~54\ ))
-- \A0|Add1~30\ = CARRY(( \A0|counter\(4) ) + ( GND ) + ( \A0|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(4),
	cin => \A0|Add1~54\,
	sumout => \A0|Add1~29_sumout\,
	cout => \A0|Add1~30\);

-- Location: FF_X83_Y19_N44
\A0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~29_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(4));

-- Location: LABCELL_X83_Y19_N45
\A0|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~41_sumout\ = SUM(( \A0|counter\(5) ) + ( GND ) + ( \A0|Add1~30\ ))
-- \A0|Add1~42\ = CARRY(( \A0|counter\(5) ) + ( GND ) + ( \A0|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(5),
	cin => \A0|Add1~30\,
	sumout => \A0|Add1~41_sumout\,
	cout => \A0|Add1~42\);

-- Location: FF_X83_Y19_N47
\A0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~41_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(5));

-- Location: LABCELL_X83_Y19_N48
\A0|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~37_sumout\ = SUM(( \A0|counter\(6) ) + ( GND ) + ( \A0|Add1~42\ ))
-- \A0|Add1~38\ = CARRY(( \A0|counter\(6) ) + ( GND ) + ( \A0|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(6),
	cin => \A0|Add1~42\,
	sumout => \A0|Add1~37_sumout\,
	cout => \A0|Add1~38\);

-- Location: FF_X83_Y19_N50
\A0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~37_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(6));

-- Location: LABCELL_X83_Y19_N51
\A0|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~33_sumout\ = SUM(( \A0|counter\(7) ) + ( GND ) + ( \A0|Add1~38\ ))
-- \A0|Add1~34\ = CARRY(( \A0|counter\(7) ) + ( GND ) + ( \A0|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(7),
	cin => \A0|Add1~38\,
	sumout => \A0|Add1~33_sumout\,
	cout => \A0|Add1~34\);

-- Location: FF_X83_Y19_N53
\A0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~33_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(7));

-- Location: LABCELL_X83_Y19_N54
\A0|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~85_sumout\ = SUM(( \A0|counter\(8) ) + ( GND ) + ( \A0|Add1~34\ ))
-- \A0|Add1~86\ = CARRY(( \A0|counter\(8) ) + ( GND ) + ( \A0|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(8),
	cin => \A0|Add1~34\,
	sumout => \A0|Add1~85_sumout\,
	cout => \A0|Add1~86\);

-- Location: FF_X83_Y19_N56
\A0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~85_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(8));

-- Location: LABCELL_X83_Y19_N57
\A0|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~77_sumout\ = SUM(( \A0|counter\(9) ) + ( GND ) + ( \A0|Add1~86\ ))
-- \A0|Add1~78\ = CARRY(( \A0|counter\(9) ) + ( GND ) + ( \A0|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(9),
	cin => \A0|Add1~86\,
	sumout => \A0|Add1~77_sumout\,
	cout => \A0|Add1~78\);

-- Location: FF_X83_Y19_N59
\A0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~77_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(9));

-- Location: LABCELL_X83_Y18_N0
\A0|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~81_sumout\ = SUM(( \A0|counter\(10) ) + ( GND ) + ( \A0|Add1~78\ ))
-- \A0|Add1~82\ = CARRY(( \A0|counter\(10) ) + ( GND ) + ( \A0|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(10),
	cin => \A0|Add1~78\,
	sumout => \A0|Add1~81_sumout\,
	cout => \A0|Add1~82\);

-- Location: FF_X83_Y18_N2
\A0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~81_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(10));

-- Location: LABCELL_X83_Y18_N3
\A0|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~73_sumout\ = SUM(( \A0|counter\(11) ) + ( GND ) + ( \A0|Add1~82\ ))
-- \A0|Add1~74\ = CARRY(( \A0|counter\(11) ) + ( GND ) + ( \A0|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(11),
	cin => \A0|Add1~82\,
	sumout => \A0|Add1~73_sumout\,
	cout => \A0|Add1~74\);

-- Location: FF_X83_Y18_N5
\A0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~73_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(11));

-- Location: LABCELL_X83_Y18_N6
\A0|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~69_sumout\ = SUM(( \A0|counter\(12) ) + ( GND ) + ( \A0|Add1~74\ ))
-- \A0|Add1~70\ = CARRY(( \A0|counter\(12) ) + ( GND ) + ( \A0|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(12),
	cin => \A0|Add1~74\,
	sumout => \A0|Add1~69_sumout\,
	cout => \A0|Add1~70\);

-- Location: FF_X83_Y18_N8
\A0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~69_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(12));

-- Location: LABCELL_X83_Y18_N9
\A0|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~65_sumout\ = SUM(( \A0|counter\(13) ) + ( GND ) + ( \A0|Add1~70\ ))
-- \A0|Add1~66\ = CARRY(( \A0|counter\(13) ) + ( GND ) + ( \A0|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(13),
	cin => \A0|Add1~70\,
	sumout => \A0|Add1~65_sumout\,
	cout => \A0|Add1~66\);

-- Location: FF_X83_Y18_N11
\A0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~65_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(13));

-- Location: LABCELL_X83_Y18_N12
\A0|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~61_sumout\ = SUM(( \A0|counter\(14) ) + ( GND ) + ( \A0|Add1~66\ ))
-- \A0|Add1~62\ = CARRY(( \A0|counter\(14) ) + ( GND ) + ( \A0|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_counter\(14),
	cin => \A0|Add1~66\,
	sumout => \A0|Add1~61_sumout\,
	cout => \A0|Add1~62\);

-- Location: FF_X83_Y18_N14
\A0|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~61_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(14));

-- Location: LABCELL_X83_Y18_N15
\A0|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~25_sumout\ = SUM(( \A0|counter\(15) ) + ( GND ) + ( \A0|Add1~62\ ))
-- \A0|Add1~26\ = CARRY(( \A0|counter\(15) ) + ( GND ) + ( \A0|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(15),
	cin => \A0|Add1~62\,
	sumout => \A0|Add1~25_sumout\,
	cout => \A0|Add1~26\);

-- Location: FF_X83_Y18_N17
\A0|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~25_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(15));

-- Location: LABCELL_X83_Y18_N18
\A0|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~17_sumout\ = SUM(( \A0|counter\(16) ) + ( GND ) + ( \A0|Add1~26\ ))
-- \A0|Add1~18\ = CARRY(( \A0|counter\(16) ) + ( GND ) + ( \A0|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(16),
	cin => \A0|Add1~26\,
	sumout => \A0|Add1~17_sumout\,
	cout => \A0|Add1~18\);

-- Location: FF_X83_Y18_N20
\A0|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~17_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(16));

-- Location: LABCELL_X83_Y18_N21
\A0|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~21_sumout\ = SUM(( \A0|counter\(17) ) + ( GND ) + ( \A0|Add1~18\ ))
-- \A0|Add1~22\ = CARRY(( \A0|counter\(17) ) + ( GND ) + ( \A0|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(17),
	cin => \A0|Add1~18\,
	sumout => \A0|Add1~21_sumout\,
	cout => \A0|Add1~22\);

-- Location: FF_X83_Y18_N23
\A0|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~21_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(17));

-- Location: LABCELL_X83_Y18_N24
\A0|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|Add1~13_sumout\ = SUM(( \A0|counter\(18) ) + ( GND ) + ( \A0|Add1~22\ ))
-- \A0|Add1~14\ = CARRY(( \A0|counter\(18) ) + ( GND ) + ( \A0|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(18),
	cin => \A0|Add1~22\,
	sumout => \A0|Add1~13_sumout\,
	cout => \A0|Add1~14\);

-- Location: FF_X83_Y18_N26
\A0|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~13_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(18));

-- Location: FF_X83_Y18_N29
\A0|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|Add1~9_sumout\,
	sclr => \A0|LessThan0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|counter\(19));

-- Location: MLABCELL_X84_Y18_N18
\A0|LessThan0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~31_combout\ = ( \A0|Mult0~9_sumout\ & ( \A0|counter\(20) & ( (!\A0|Mult0~5_sumout\ & (!\A0|counter\(19) & (\A0|Mult0~13_sumout\ & !\A0|counter\(21)))) # (\A0|Mult0~5_sumout\ & ((!\A0|counter\(21)) # ((!\A0|counter\(19) & 
-- \A0|Mult0~13_sumout\)))) ) ) ) # ( !\A0|Mult0~9_sumout\ & ( \A0|counter\(20) & ( (\A0|Mult0~5_sumout\ & !\A0|counter\(21)) ) ) ) # ( \A0|Mult0~9_sumout\ & ( !\A0|counter\(20) & ( (!\A0|counter\(21)) # (\A0|Mult0~5_sumout\) ) ) ) # ( !\A0|Mult0~9_sumout\ & 
-- ( !\A0|counter\(20) & ( (!\A0|Mult0~5_sumout\ & (!\A0|counter\(19) & (\A0|Mult0~13_sumout\ & !\A0|counter\(21)))) # (\A0|Mult0~5_sumout\ & ((!\A0|counter\(21)) # ((!\A0|counter\(19) & \A0|Mult0~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100000010111111110011001100110011000000000011101100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(19),
	datab => \A0|ALT_INV_Mult0~5_sumout\,
	datac => \A0|ALT_INV_Mult0~13_sumout\,
	datad => \A0|ALT_INV_counter\(21),
	datae => \A0|ALT_INV_Mult0~9_sumout\,
	dataf => \A0|ALT_INV_counter\(20),
	combout => \A0|LessThan0~31_combout\);

-- Location: MLABCELL_X84_Y18_N48
\A0|LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~29_combout\ = (!\A0|counter\(18) & \A0|Mult0~358_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A0|ALT_INV_counter\(18),
	datad => \A0|ALT_INV_Mult0~358_sumout\,
	combout => \A0|LessThan0~29_combout\);

-- Location: LABCELL_X85_Y18_N45
\A0|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~6_combout\ = !\A0|counter\(19) $ (!\A0|Mult0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(19),
	datad => \A0|ALT_INV_Mult0~13_sumout\,
	combout => \A0|LessThan0~6_combout\);

-- Location: MLABCELL_X84_Y18_N12
\A0|LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~30_combout\ = ( \A0|Mult0~9_sumout\ & ( \A0|counter\(20) & ( (\A0|LessThan0~29_combout\ & (!\A0|LessThan0~6_combout\ & (!\A0|Mult0~5_sumout\ $ (\A0|counter\(21))))) ) ) ) # ( !\A0|Mult0~9_sumout\ & ( !\A0|counter\(20) & ( 
-- (\A0|LessThan0~29_combout\ & (!\A0|LessThan0~6_combout\ & (!\A0|Mult0~5_sumout\ $ (\A0|counter\(21))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000000000000000000000000000000000000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~29_combout\,
	datab => \A0|ALT_INV_Mult0~5_sumout\,
	datac => \A0|ALT_INV_LessThan0~6_combout\,
	datad => \A0|ALT_INV_counter\(21),
	datae => \A0|ALT_INV_Mult0~9_sumout\,
	dataf => \A0|ALT_INV_counter\(20),
	combout => \A0|LessThan0~30_combout\);

-- Location: MLABCELL_X84_Y18_N51
\A0|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~5_combout\ = !\A0|counter\(20) $ (!\A0|Mult0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_counter\(20),
	datad => \A0|ALT_INV_Mult0~9_sumout\,
	combout => \A0|LessThan0~5_combout\);

-- Location: MLABCELL_X84_Y18_N6
\A0|LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~28_combout\ = ( \A0|counter\(21) & ( !\A0|LessThan0~6_combout\ & ( (!\A0|LessThan0~5_combout\ & (!\A0|LessThan0~1_combout\ & (\A0|LessThan0~27_combout\ & \A0|Mult0~5_sumout\))) ) ) ) # ( !\A0|counter\(21) & ( !\A0|LessThan0~6_combout\ & ( 
-- (!\A0|LessThan0~5_combout\ & (!\A0|LessThan0~1_combout\ & (\A0|LessThan0~27_combout\ & !\A0|Mult0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~5_combout\,
	datab => \A0|ALT_INV_LessThan0~1_combout\,
	datac => \A0|ALT_INV_LessThan0~27_combout\,
	datad => \A0|ALT_INV_Mult0~5_sumout\,
	datae => \A0|ALT_INV_counter\(21),
	dataf => \A0|ALT_INV_LessThan0~6_combout\,
	combout => \A0|LessThan0~28_combout\);

-- Location: MLABCELL_X84_Y18_N54
\A0|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~7_combout\ = ( \A0|counter\(21) & ( !\A0|LessThan0~6_combout\ & ( (!\A0|LessThan0~5_combout\ & (!\A0|LessThan0~1_combout\ & (!\A0|LessThan0~2_combout\ & \A0|Mult0~5_sumout\))) ) ) ) # ( !\A0|counter\(21) & ( !\A0|LessThan0~6_combout\ & ( 
-- (!\A0|LessThan0~5_combout\ & (!\A0|LessThan0~1_combout\ & (!\A0|LessThan0~2_combout\ & !\A0|Mult0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~5_combout\,
	datab => \A0|ALT_INV_LessThan0~1_combout\,
	datac => \A0|ALT_INV_LessThan0~2_combout\,
	datad => \A0|ALT_INV_Mult0~5_sumout\,
	datae => \A0|ALT_INV_counter\(21),
	dataf => \A0|ALT_INV_LessThan0~6_combout\,
	combout => \A0|LessThan0~7_combout\);

-- Location: MLABCELL_X84_Y18_N24
\A0|LessThan0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|LessThan0~32_combout\ = ( \A0|LessThan0~7_combout\ & ( \A0|LessThan0~8_combout\ & ( (!\A0|LessThan0~31_combout\ & (!\A0|LessThan0~30_combout\ & !\A0|LessThan0~28_combout\)) ) ) ) # ( !\A0|LessThan0~7_combout\ & ( \A0|LessThan0~8_combout\ & ( 
-- (!\A0|LessThan0~31_combout\ & (!\A0|LessThan0~30_combout\ & !\A0|LessThan0~28_combout\)) ) ) ) # ( \A0|LessThan0~7_combout\ & ( !\A0|LessThan0~8_combout\ & ( (!\A0|LessThan0~31_combout\ & (!\A0|LessThan0~30_combout\ & (!\A0|LessThan0~26_combout\ & 
-- !\A0|LessThan0~28_combout\))) ) ) ) # ( !\A0|LessThan0~7_combout\ & ( !\A0|LessThan0~8_combout\ & ( (!\A0|LessThan0~31_combout\ & (!\A0|LessThan0~30_combout\ & !\A0|LessThan0~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~31_combout\,
	datab => \A0|ALT_INV_LessThan0~30_combout\,
	datac => \A0|ALT_INV_LessThan0~26_combout\,
	datad => \A0|ALT_INV_LessThan0~28_combout\,
	datae => \A0|ALT_INV_LessThan0~7_combout\,
	dataf => \A0|ALT_INV_LessThan0~8_combout\,
	combout => \A0|LessThan0~32_combout\);

-- Location: MLABCELL_X87_Y18_N30
\A0|blink~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|blink~0_combout\ = ( !\A0|blink~q\ & ( \A0|Mult0~1_sumout\ ) ) # ( \A0|blink~q\ & ( !\A0|Mult0~1_sumout\ & ( (!\A0|LessThan0~35_combout\) # ((\A0|LessThan0~33_combout\ & ((!\A0|LessThan0~32_combout\) # (\A0|LessThan0~4_combout\)))) ) ) ) # ( 
-- !\A0|blink~q\ & ( !\A0|Mult0~1_sumout\ & ( (\A0|LessThan0~35_combout\ & ((!\A0|LessThan0~33_combout\) # ((\A0|LessThan0~32_combout\ & !\A0|LessThan0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110000110011101100111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|ALT_INV_LessThan0~32_combout\,
	datab => \A0|ALT_INV_LessThan0~35_combout\,
	datac => \A0|ALT_INV_LessThan0~33_combout\,
	datad => \A0|ALT_INV_LessThan0~4_combout\,
	datae => \A0|ALT_INV_blink~q\,
	dataf => \A0|ALT_INV_Mult0~1_sumout\,
	combout => \A0|blink~0_combout\);

-- Location: FF_X87_Y18_N32
\A0|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \A0|blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|blink~q\);

-- Location: IOIBUF_X89_Y21_N21
\fpga_en_sw~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_en_sw,
	o => \fpga_en_sw~input_o\);

-- Location: MLABCELL_X87_Y18_N6
\A0|leds[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A0|leds\(0) = ( \fpga_en_sw~input_o\ & ( \A0|blink~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|ALT_INV_blink~q\,
	dataf => \ALT_INV_fpga_en_sw~input_o\,
	combout => \A0|leds\(0));

-- Location: LABCELL_X33_Y39_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


