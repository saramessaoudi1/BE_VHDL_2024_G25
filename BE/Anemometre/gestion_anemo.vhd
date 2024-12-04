library ieee;
use ieee.std_logic_1164.all;

entity gestion_anemo is
    port (
        raz_n : in std_logic;
        clk_50M : in std_logic;
        continu : in std_logic;
        start_stop : in std_logic;
        in_freq_anemo : in std_logic;
        data_valid : out std_logic;
        S_1Hz : out std_logic;
        data_anemometre : out std_logic_vector(7 downto 0)
    );
end gestion_anemo;

architecture arch_gestion_anemo of gestion_anemo is 

    component compteur
        port (
            clk_50M : in std_logic;
            in_freq_anemo : in std_logic;
            raz_n : in std_logic;
            frq : out integer range 0 to 255
        );
    end component;

    component mae
        port (
            S_1Hz : in std_logic;
            clk_50M : in std_logic;
            continu : in std_logic;
            start_stop : in std_logic;
            raz_n : in std_logic;
            frq : in integer range 0 to 255;
            data_valid : out std_logic;
            data_anemometre : out std_logic_vector(7 downto 0)
        );
    end component;

    component diviseur_1M
        port (
            clk_50M : in std_logic;
            S_1Hz : out std_logic
        );
    end component;

    signal internal_S_1Hz : std_logic;
    signal internal_frq : integer range 0 to 255;

begin
    S_1Hz <= internal_S_1Hz;

    compteur_inst : compteur
    port map (
        clk_50M => clk_50M,
        in_freq_anemo => in_freq_anemo,
        raz_n => raz_n,
		  frq => internal_frq
    );

    mae_inst : mae
    port map (
        S_1Hz => internal_S_1Hz,
        clk_50M => clk_50M,
        continu => continu,
        start_stop => start_stop,
        raz_n => raz_n,
        frq => internal_frq,
	     data_valid => data_valid,
        data_anemometre => data_anemometre
    );

    divseur_1M_inst : diviseur_1M
    port map (
        clk_50M => clk_50M,
        S_1Hz => internal_S_1Hz
    );
	 
end arch_gestion_anemo;