	component MySOPC is
		port (
			avalon_anemo_0_conduit_end_beginbursttransfer : in  std_logic                    := 'X';             -- beginbursttransfer
			boutons_external_connection_export            : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk                                       : in  std_logic                    := 'X';             -- clk
			leds_external_connection_export               : out std_logic_vector(7 downto 0);                    -- export
			pwm_0_conduit_end_1_writeresponsevalid_n      : out std_logic;                                       -- writeresponsevalid_n
			verin_avalon_0_clk_1m_writeresponsevalid_n    : out std_logic;                                       -- writeresponsevalid_n
			verin_avalon_0_cs_writeresponsevalid_n        : out std_logic;                                       -- writeresponsevalid_n
			verin_avalon_0_data_in_beginbursttransfer     : in  std_logic                    := 'X';             -- beginbursttransfer
			verin_avalon_0_out_pwm_writeresponsevalid_n   : out std_logic;                                       -- writeresponsevalid_n
			verin_avalon_0_sens_out_writeresponsevalid_n  : out std_logic                                        -- writeresponsevalid_n
		);
	end component MySOPC;

	u0 : component MySOPC
		port map (
			avalon_anemo_0_conduit_end_beginbursttransfer => CONNECTED_TO_avalon_anemo_0_conduit_end_beginbursttransfer, --  avalon_anemo_0_conduit_end.beginbursttransfer
			boutons_external_connection_export            => CONNECTED_TO_boutons_external_connection_export,            -- boutons_external_connection.export
			clk_clk                                       => CONNECTED_TO_clk_clk,                                       --                         clk.clk
			leds_external_connection_export               => CONNECTED_TO_leds_external_connection_export,               --    leds_external_connection.export
			pwm_0_conduit_end_1_writeresponsevalid_n      => CONNECTED_TO_pwm_0_conduit_end_1_writeresponsevalid_n,      --         pwm_0_conduit_end_1.writeresponsevalid_n
			verin_avalon_0_clk_1m_writeresponsevalid_n    => CONNECTED_TO_verin_avalon_0_clk_1m_writeresponsevalid_n,    --       verin_avalon_0_clk_1m.writeresponsevalid_n
			verin_avalon_0_cs_writeresponsevalid_n        => CONNECTED_TO_verin_avalon_0_cs_writeresponsevalid_n,        --           verin_avalon_0_cs.writeresponsevalid_n
			verin_avalon_0_data_in_beginbursttransfer     => CONNECTED_TO_verin_avalon_0_data_in_beginbursttransfer,     --      verin_avalon_0_data_in.beginbursttransfer
			verin_avalon_0_out_pwm_writeresponsevalid_n   => CONNECTED_TO_verin_avalon_0_out_pwm_writeresponsevalid_n,   --      verin_avalon_0_out_pwm.writeresponsevalid_n
			verin_avalon_0_sens_out_writeresponsevalid_n  => CONNECTED_TO_verin_avalon_0_sens_out_writeresponsevalid_n   --     verin_avalon_0_sens_out.writeresponsevalid_n
		);

