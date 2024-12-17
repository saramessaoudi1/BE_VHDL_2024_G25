library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GestionADC is
Port (
    clk_50MHz      : in std_logic;                        -- Horloge principale 50 MHz
    raz_n          : in std_logic;                        -- Signal de reset actif bas
    data_in        : in std_logic;                        -- Données d'entrée série
    clk_1M         : out std_logic;                       -- Signal horloge 1 MHz
    cs             : out std_logic;                       -- Signal de sélection de puce
    start_conv     : out std_logic;                       -- Signal de démarrage de conversion
    data_out       : out std_logic_vector(11 downto 0);   -- Données de sortie (12 bits)
    out_pwm        : out std_logic;                       -- PWM de sortie
    sens_out     : out std_logic;                      -- Sens de sortie
	 --frequence, C_duty : in std_logic_vector (15 downto 0);
	 sens       	 : in std_logic;                       
	 enable       : in std_logic;                       

    fin_course_g   : out std_logic;                       -- Fin de course gauche
    fin_course_d   : out std_logic                        -- Fin de course droite
);
end GestionADC;

architecture adc of GestionADC is
    -- Déclaration des composants
    component Sig_1MHz
        port (
            clk_50 : in std_logic;
            raz_n  : in std_logic;
            clk_1M : out std_logic
        );
    end component;

    component Sig_10Hz
        port (
            raz_n      : in std_logic;
            clk_1M     : in std_logic;
            start_conv : out std_logic
        );
    end component;

    component ChipSelect
        port (
            start_c : in std_logic;
            clk_1M  : in std_logic;
            raz_n   : in std_logic;
            cs      : out std_logic
        );
    end component;

    component registre_decalage
        port (
            start_conv : in std_logic;
            cs         : in std_logic;
            clk_1M     : in std_logic;
            raz_n      : in std_logic;
            data_in    : in std_logic;
            data_out   : out std_logic_vector(11 downto 0)
        );
    end component;
	 
	 component Gest_PWM
        port (
            clk_50MHz, raz_n: in std_logic;
				--frequence, C_duty : in std_logic_vector (15 downto 0);
				enable    : in std_logic;
				sens      : in std_logic;        
				S_SENS  : out std_logic;
				S_PWM : out std_logic
        );
    end component;

    component ControleButees
        port (
        pwm_in       : in std_logic;
       -- enable       : in std_logic;
       -- butee_g      : in std_logic_vector(15 downto 0);
       -- butee_d      : in std_logic_vector(15 downto 0);
        angle_barre  : in std_logic_vector(11 downto 0);
        out_pwm      : out std_logic;
        fin_course_g : out std_logic;
        fin_course_d : out std_logic
    );
    end component;

    -- Déclaration des signaux internes
    signal clk_1MHz_signal      : std_logic;
    signal start_conv_signal    : std_logic;
    signal cs_signal            : std_logic;
    signal data_out_signal      : std_logic_vector(11 downto 0);
    signal pwm_in_signal        : std_logic;
    --signal enable_signal        : std_logic;
  --  signal butee_g_signal       : std_logic_vector(15 downto 0);
   -- signal butee_d_signal       : std_logic_vector(15 downto 0);

begin
    -- Instanciation du composant Sig_1MHz
    sig_1MHz_inst : Sig_1MHz
        port map (
            clk_50 => clk_50MHz,
            raz_n  => raz_n,
            clk_1M => clk_1MHz_signal
        );

    -- Instanciation du composant Sig_10Hz
    sig_10Hz_inst : Sig_10Hz
        port map (
            raz_n      => raz_n,
            clk_1M     => clk_1MHz_signal,
            start_conv => start_conv_signal
        );

    -- Instanciation du composant ChipSelect
    chipselect_inst : ChipSelect
        port map (
            start_c => start_conv_signal,
            clk_1M  => clk_1MHz_signal,
            raz_n   => raz_n,
            cs      => cs_signal
        );

    -- Instanciation du composant registre_decalage
    registre_decalage_inst : registre_decalage
        port map (
            start_conv => start_conv_signal,
            cs         => cs_signal,
            clk_1M     => clk_1MHz_signal,
            raz_n      => raz_n,
            data_in    => data_in,
            data_out   => data_out_signal
        );

    -- Instanciation du composant ControleButee
    controlbutee_inst : ControleButees
        port map (
            pwm_in       => pwm_in_signal,       -- Entrée PWM
          --  butee_g      => butee_g_signal,      -- Limite gauche
           -- butee_d      => butee_d_signal,      -- Limite droite
            angle_barre  => data_out_signal,     -- Angle provenant du registre de décalage
            out_pwm      => out_pwm,            -- Signal PWM de sortie
            fin_course_g => fin_course_g,       -- Signal de fin de course gauche
            fin_course_d => fin_course_d        -- Signal de fin de course droite
        );
 -- Instanciation du module Gest_PWM
    GestPWM_inst: Gest_PWM
        port map (
            clk_50MHz => clk_50MHz,
            raz_n => raz_n,
				enable => enable,       -- Activation
				sens => sens,         -- Direction
            S_PWM     => pwm_in_signal,
            S_SENS    => sens_out   -- Sens moteur en sortie
            --frequence => frequence,
            --C_duty => C_duty,
        );
    -- Assignation des sorties
    clk_1M      <= clk_1MHz_signal;
    cs          <= cs_signal;
    data_out    <= data_out_signal;


end adc;
