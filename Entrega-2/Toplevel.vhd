library IEEE;
use IEEE.std_logic_1164.all;

entity topLevel is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        fpga_sw         : in std_logic_vector(4 downto 0);
		  fpga_led_pio    : out std_logic_vector(5 downto 0)
    );
end entity topLevel;

architecture rtl of topLevel is

component niosHello is
  port (
		clk_clk       : in  std_logic                    := 'X';             -- clk
		keys_export   : in  std_logic_vector(4 downto 0) := (others => 'X'); -- export
		leds_export   : out std_logic_vector(5 downto 0);                    -- export
		reset_reset_n : in  std_logic                    := 'X'              -- reset_n
  );
end component niosHello;

begin

u0 : component niosHello
	port map (
		clk_clk       => fpga_clk_50,       --   clk.clk
		keys_export   => fpga_sw,   --  keys.export
		leds_export   => fpga_led_pio,   --  leds.export
		reset_reset_n => '1'  -- reset.reset_n
	);

end rtl;

    

    