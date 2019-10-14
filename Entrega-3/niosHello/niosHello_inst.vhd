	component niosHello is
		port (
			clk_clk        : in    std_logic                    := 'X';             -- clk
			dat_export     : inout std_logic                    := 'X';             -- export
			keys_export    : in    std_logic_vector(4 downto 0) := (others => 'X'); -- export
			leds_name      : out   std_logic_vector(3 downto 0);                    -- name
			ps2_clk_export : inout std_logic                    := 'X';             -- export
			reset_reset_n  : in    std_logic                    := 'X'              -- reset_n
		);
	end component niosHello;

	u0 : component niosHello
		port map (
			clk_clk        => CONNECTED_TO_clk_clk,        --     clk.clk
			dat_export     => CONNECTED_TO_dat_export,     --     dat.export
			keys_export    => CONNECTED_TO_keys_export,    --    keys.export
			leds_name      => CONNECTED_TO_leds_name,      --    leds.name
			ps2_clk_export => CONNECTED_TO_ps2_clk_export, -- ps2_clk.export
			reset_reset_n  => CONNECTED_TO_reset_reset_n   --   reset.reset_n
		);

