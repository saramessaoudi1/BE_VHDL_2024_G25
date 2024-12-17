
module MySOPC (
	avalon_anemo_0_conduit_end_beginbursttransfer,
	boutons_external_connection_export,
	clk_clk,
	leds_external_connection_export,
	pwm_0_conduit_end_1_writeresponsevalid_n);	

	input		avalon_anemo_0_conduit_end_beginbursttransfer;
	input	[1:0]	boutons_external_connection_export;
	input		clk_clk;
	output	[7:0]	leds_external_connection_export;
	output		pwm_0_conduit_end_1_writeresponsevalid_n;
endmodule
