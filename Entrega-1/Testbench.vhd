library IEEE;
use IEEE.std_logic_1164.all;
 
entity tb_LED_peripheral is
end tb_LED_peripheral;
 
ARCHITECTURE behavior OF tb_LED_peripheral is
 
-- Component Declaration for the Unit Under Test (UUT)
 
component LED_peripheral
  port (
    clk     : in  std_logic;
    enab    : in  std_logic;
    freq    : in  std_logic_vector(3 downto 0);
    leds    : out std_logic_vector(5 downto 0)
  );
end component;
 
--Inputs
signal clk, enab		: std_logic;
signal freq				: std_logic_vector(3 downto 0);

--Outputs
signal leds				: std_logic_vector(5 downto 0);
 
-- Clock period definitions
constant clock_period : time := 20 ns;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: LED_peripheral PORT MAP (
	clk => clk,
	enab => enab,
	freq => freq,
	leds => leds
);


stimulus: process
begin
    enab <= '0';
	 freq <= "0000";
    wait for 100 ns;
    enab <= '1';
	 wait;
  end process;

clock_process :process
begin
	clk <= '0';
	wait for clock_period/2;
	clk <= '1';
	wait for clock_period/2;
end process;
end;