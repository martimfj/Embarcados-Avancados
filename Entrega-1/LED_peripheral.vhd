library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity led_peripheral is
	generic (
		init_counter		: natural := 0;
		last_counter		: natural := 10000000;
		fact_counter		: natural := 1000000
	);
   port (
      clk       : in  std_logic;
      enab      : in  std_logic;
      freq      : in  std_logic_vector(3 downto 0);
      leds      : out std_logic_vector(5 downto 0)
	);
end entity led_peripheral;

architecture led of led_peripheral is

signal blink: std_logic := '0';
signal multiplier: integer := 0;

begin

	multiplier <= to_integer(unsigned(freq)) + 1;


   process(clk)
      variable counter : integer range init_counter to last_counter := 0;
      begin
         if (rising_edge(clk)) then

						
            if (counter < (multiplier * fact_counter)) then
               counter := counter + 1;
            else
               blink <= not blink;
					counter := 0;
            end if;
         end if;
   end process;

   leds(0) <= blink and enab;
   leds(1) <= blink and enab;
   leds(2) <= blink and enab;
   leds(3) <= blink and enab;
   leds(4) <= blink and enab;
   leds(5) <= blink and enab;
  
end architecture;