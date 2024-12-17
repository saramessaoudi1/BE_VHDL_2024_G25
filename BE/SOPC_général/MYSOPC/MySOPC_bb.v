
module MySOPC (
	avalon_anemo_0_conduit_end_beginbursttransfer,
	boutons_external_connection_export,
	clk_clk,
	leds_external_connection_export,
	pwm_0_conduit_end_1_writeresponsevalid_n,
	verin_avalon_0_clk_1m_writeresponsevalid_n,
	verin_avalon_0_cs_writeresponsevalid_n,
	verin_avalon_0_data_in_beginbursttransfer,
	verin_avalon_0_out_pwm_writeresponsevalid_n,
	verin_avalon_0_sens_out_writeresponsevalid_n);	

	input		avalon_anemo_0_conduit_end_beginbursttransfer;
	input	[1:0]	boutons_external_connection_export;
	input		clk_clk;
	output	[7:0]	leds_external_connection_export;
	output		pwm_0_conduit_end_1_writeresponsevalid_n;
	output		verin_avalon_0_clk_1m_writeresponsevalid_n;
	output		verin_avalon_0_cs_writeresponsevalid_n;
	input		verin_avalon_0_data_in_beginbursttransfer;
	output		verin_avalon_0_out_pwm_writeresponsevalid_n;
	output		verin_avalon_0_sens_out_writeresponsevalid_n;
endmodule
