
module niosHello (
	clk_clk,
	dat_export,
	keys_export,
	leds_name,
	ps2_clk_export,
	reset_reset_n);	

	input		clk_clk;
	inout		dat_export;
	input	[4:0]	keys_export;
	output	[3:0]	leds_name;
	inout		ps2_clk_export;
	input		reset_reset_n;
endmodule
