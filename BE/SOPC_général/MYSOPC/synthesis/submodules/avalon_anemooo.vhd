library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity avalon_anemooo is
    port (
        clk            : in std_logic;
        reset_n        : in std_logic;
        chipselect     : in std_logic;
        write_n        : in std_logic;
        writedata      : in std_logic_vector(31 downto 0);
        address        : in std_logic_vector(1 downto 0);
        readdata       : out std_logic_vector(31 downto 0)
    );
end entity avalon_anemooo;

architecture arch of avalon_anemooo is

    -- Signaux internes
    signal raz_n          : std_logic;
    signal clk_50M        : std_logic;
    signal continu        : std_logic;
    signal start_stop     : std_logic;
    signal data_valid     : std_logic;
    signal S_1Hz          : std_logic;
    signal config         : std_logic_vector(2 downto 0); -- b1=continu, b2=start_stop, b0=raz_n
    signal code           : std_logic_vector(9 downto 0); -- b9=valid, b7..b0=data_anemometre
    signal valid          : std_logic;                   -- Bit de validité (extrait de l'anémomètre)
    signal data_anemometre: std_logic_vector(7 downto 0); -- Données de l'anémomètre

    -- Signaux PWM
    signal pwm_freq       : unsigned(31 downto 0) := (others => '0'); -- Fréquence (cycles)
    signal pwm_duty       : unsigned(31 downto 0) := (others => '0'); -- Rapport cyclique (cycles)
    signal pwm_out        : std_logic;                                -- Sortie PWM

    -- Composants externes
    component anemometre2 is
        port (
            raz_n           : in std_logic;
            clk_50M         : in std_logic;
            continu         : in std_logic;
            start_stop      : in std_logic;
            in_freq_anemo   : in std_logic;
            data_valid      : out std_logic;
            S_1Hz           : out std_logic;
            data_anemometre : out std_logic_vector(7 downto 0)
        );
    end component;

    component pwm is
        port (
            clk       : in std_logic;
            reset_n   : in std_logic;
            freq      : in unsigned(31 downto 0);
            duty      : in unsigned(31 downto 0);
            out_pwm   : out std_logic
        );
    end component;

begin

    -- Instance du module PWM
    pwm_inst : pwm
        port map (
            clk       => clk,
            reset_n   => reset_n,
            freq      => pwm_freq,
            duty      => pwm_duty,
            out_pwm   => pwm_out
        );

    -- Instance du module anémomètre
    anemometre2_inst : anemometre2
        port map (
            clk_50M         => clk,
            raz_n           => config(0),             -- reset_n
            start_stop      => config(2),             -- start/stop
            continu         => config(1),             -- mode continu
            in_freq_anemo   => pwm_out,               -- Sortie PWM comme fréquence d'entrée
            data_valid      => valid,                 -- validité des données
            data_anemometre => data_anemometre        -- valeur de la fréquence mesurée
        );

    -- Processus d'écriture
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            config <= (others => '0');
            pwm_freq <= (others => '0');
            pwm_duty <= (others => '0');
        elsif rising_edge(clk) then
            if chipselect = '1' and write_n = '0' then
                case address is
                    when "00" => -- Écriture des bits de contrôle
                        config <= writedata(2 downto 0);
                    when "01" => -- Configuration de la fréquence PWM
                        pwm_freq <= unsigned(writedata);
                    when "10" => -- Configuration du rapport cyclique PWM
                        pwm_duty <= unsigned(writedata);
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    -- Processus de lecture
    process(address, config, valid, data_anemometre)
    begin
        case address is
            when "00" => -- Lecture du registre `config`
                readdata <= (31 downto 3 => '0') & config; -- Zéro-remplissage
            when "01" => -- Lecture de la fréquence PWM
                readdata <= std_logic_vector(pwm_freq);
            when "10" => -- Lecture du rapport cyclique PWM
                readdata <= std_logic_vector(pwm_duty);
            when "11" => -- Lecture des données de l'anémomètre
                readdata <= (31 downto 9 => '0') & valid & data_anemometre;
            when others =>
                readdata <= (others => '0'); -- Par défaut, tout à zéro
        end case;
    end process;

    -- Assignation des sorties
    start_stop <= config(2);
    raz_n      <= config(0);
    continu    <= config(1);

end architecture arch;

