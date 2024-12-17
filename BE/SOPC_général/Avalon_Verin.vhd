library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Avalon_Verin is
    port (
        clk         : in std_logic;
        reset_n     : in std_logic;
        chipselect  : in std_logic;
        write_n     : in std_logic;
        writedata   : in std_logic_vector(31 downto 0);
        address     : in std_logic_vector(2 downto 0); -- 6 registres => 3 bits pour les adresses
        readdata    : out std_logic_vector(31 downto 0);
        Cs_n        : out std_logic;      -- Signal chip select pour l'ADC
        clk_adc     : out std_logic;      -- Horloge pour l'ADC
        pwm_out     : out std_logic       -- Sortie PWM
    );
end entity Avalon_Verin;

architecture arch of Avalon_Verin is
    -- Déclaration des registres
    signal reg_freq          : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 0
    signal reg_duty          : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 1
    signal reg_butee_g       : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 2
    signal reg_butee_d       : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 3
    signal reg_config        : std_logic_vector(31 downto 0) := (others => '0'); -- Adresse 4
    signal reg_angle_barre   : std_logic_vector(11 downto 0) := (others => '0'); -- Adresse 5

    -- Signaux internes connectés à Gestion_Verin
    signal pwm_signal        : std_logic := '0';
    signal fin_course_g      : std_logic := '0';
    signal fin_course_d      : std_logic := '0';
    signal clk_1MHz          : std_logic := '0';

    -- Diviseur d'horloge pour générer clk_1MHz
    signal clk_counter       : unsigned(5 downto 0) := (others => '0'); -- Diviseur pour 50 MHz -> 1 MHz
	 
	 component Gestion_Verin
        port (
        clk_50MHz     : in std_logic;       
        reset_n       : in std_logic;      
        pwm_out       : out std_logic;      
        fin_course_g  : out std_logic;      
        fin_course_d  : out std_logic;      
        angle_barre   : in std_logic_vector(11 downto 0);  
        butee_g       : in std_logic_vector(11 downto 0);  
        butee_d       : in std_logic_vector(11 downto 0); 
        clk_1M        : out std_logic;     
        clk_adc       : out std_logic;
        start_conv    : out std_logic;    
        Cs_n          : out std_logic 
        );
		  
		end component;

begin
    -- Diviseur d'horloge pour clk_1MHz
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            clk_counter <= (others => '0');
            clk_1MHz <= '0';
        elsif rising_edge(clk) then
            if clk_counter = 49 then -- 50 MHz / 1 MHz = 50 cycles
                clk_counter <= (others => '0');
                clk_1MHz <= not clk_1MHz;
            else
                clk_counter <= clk_counter + 1;
            end if;
        end if;
    end process;

    -- Instanciation de Gestion_Verin
    Gestion_Verin_inst : entity work.Gestion_Verin
        port map (
            clk_50MHz     => clk,
            reset_n       => reset_n,
            pwm_out       => pwm_signal,
            fin_course_g  => fin_course_g,
            fin_course_d  => fin_course_d,
            angle_barre   => reg_angle_barre,
            butee_g       => reg_butee_g(11 downto 0),
            butee_d       => reg_butee_d(11 downto 0),
            start_conv    => open,
            Cs_n          => Cs_n,
            clk_adc       => clk_adc,
            clk_1M        => clk_1MHz
        );

    -- Processus pour gérer l'écriture dans les registres
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            reg_freq        <= (others => '0');
            reg_duty        <= (others => '0');
            reg_butee_g     <= (others => '0');
            reg_butee_d     <= (others => '0');
            reg_config      <= (others => '0');
        elsif rising_edge(clk) then
            if chipselect = '1' and write_n = '0' then
                case address is
                    when "000" => reg_freq <= writedata(15 downto 0);
                    when "001" => reg_duty <= writedata(15 downto 0);
                    when "010" => reg_butee_g <= writedata(15 downto 0);
                    when "011" => reg_butee_d <= writedata(15 downto 0);
                    when "100" => reg_config <= writedata;
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    -- Processus synchrone pour gérer la lecture des registres
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            readdata <= (others => '0');
        elsif rising_edge(clk) then
            case address is
                when "000" => readdata <= (others => '0') & reg_freq; -- Adresse 0 : fréquence
                when "001" => readdata <= (others => '0') & reg_duty; -- Adresse 1 : rapport cyclique
                when "010" => readdata <= (others => '0') & reg_butee_g; -- Adresse 2 : butée gauche
                when "011" => readdata <= (others => '0') & reg_butee_d; -- Adresse 3 : butée droite
                when "100" => readdata <= reg_config; -- Adresse 4 : configuration
                when "101" => readdata <= (others => '0') & reg_angle_barre; -- Adresse 5 : angle de la barre
                when others => readdata <= (others => '0');
            end case;
        end if;
    end process;

    -- Connecter le signal PWM à la sortie
    pwm_out <= pwm_signal;

end architecture arch;

