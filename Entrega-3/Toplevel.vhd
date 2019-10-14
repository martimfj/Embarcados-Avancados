library IEEE;
use IEEE.std_logic_1164.all;

entity topLevel is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        fpga_sw         : in std_logic_vector(4 downto 0);
		  fpga_led_pio    : out std_logic_vector(3 downto 0);
		  PS2_CLK         : inout  std_logic; 
		  PS2_DAT         : inout  std_logic
    );
end entity topLevel;

architecture rtl of topLevel is

component niosHello is
        port (
            clk_clk        : in    std_logic                    := 'X';             -- clk
            ps2_clk_export : inout std_logic                    := 'X';             -- export
            dat_export     : inout std_logic                    := 'X';             -- export
            leds_name      : out   std_logic_vector(3 downto 0);                    -- name
            reset_reset_n  : in    std_logic                    := 'X'              -- reset_n
        );
end component niosHello;

begin

u0 : component niosHello
   port map (
		clk_clk        => fpga_clk_50,        --     clk.clk
		ps2_clk_export => PS2_CLK, -- ps2_clk.export
		dat_export     => PS2_DAT,     --     dat.export
		leds_name      => fpga_led_pio,      --    leds.name
		reset_reset_n  => '1'   --   reset.reset_n
	);


end rtl;