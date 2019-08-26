library IEEE;
use IEEE.std_logic_1164.all;

entity toplevel is
  port(
    fpga_clk_50     : in std_logic;
    fpga_en_sw      : in std_logic;
    fpga_sw         : in std_logic_vector(3 downto 0);
    fpga_led_pio    : out std_logic_vector(5 downto 0)
  );
end entity toplevel;

architecture rtl of toplevel is

component LED_peripheral
  port (
    clk     : in  std_logic;
    enab    : in  std_logic;
    freq    : in  std_logic_vector(3 downto 0);
    leds    : out std_logic_vector(5 downto 0)
  );
end component;

begin
  A0: LED_peripheral port map (fpga_clk_50, fpga_en_sw, fpga_sw, fpga_led_pio);
  
end architecture;