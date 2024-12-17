library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity verin_avalon is
    port (
        clk         : in std_logic;
        reset_n     : in std_logic;
        chipselect  : in std_logic;
		  data_in     : in  std_logic;
        write_n     : in std_logic;
        writedata   : in std_logic_vector(31 downto 0);
        address     : in std_logic_vector(2 downto 0); -- 6 registres => 3 bits pour les adresses
		  --frequence   : in std_logic_vector (15 downto 0);
		  sens        : in std_logic;
		  out_sens    : out std_logic;
        readdata    : out std_logic_vector(31 downto 0);
        Cs_n        : out std_logic;      -- Signal chip select pour l'ADC
        clk_adc     : out std_logic;      -- Horloge pour l'ADC
        out_pwm     : out std_logic;      -- Sortie PWM
		  
        fin_course_g   : out std_logic;    -- Fin de course gauche                   
        fin_course_d   : out std_logic    -- Fin de course gauche
    );
end entity verin_avalon;

architecture arch of verin_avalon is
    -- Déclaration des registres
    signal freq          : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 0
    signal duty          : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 1
    signal butee_g       : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 2
    signal butee_d       : std_logic_vector(15 downto 0) := (others => '0'); -- Adresse 3
    signal config        : std_logic_vector(4 downto 0)  := (others => '0'); -- Adresse 4
    signal angle_barre   : std_logic_vector(11 downto 0) := (others => '0'); -- Adresse 5
		
		
 component GestionADC
       
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
	 sens       	 : in std_logic;                       
	 enable       : in std_logic;                       

    fin_course_g   : out std_logic;                       -- Fin de course gauche
    fin_course_d   : out std_logic                        
);
end component;
	
begin       
		  
		    -- Instanciation de GestionADC
   GestionADC_inst : GestionADC
    port map (
        clk_50MHz    => clk,
        raz_n        => reset_n,
        data_in      => data_in,
        sens         => sens,
        enable       => '1', -- Activer la gestion ADC (peut être modifié selon le besoin)
        clk_1M       => open,
        cs           => cs_n,
        start_conv   => open,
        data_out     => angle_barre,
        out_pwm      => out_pwm,
        sens_out     =>  out_sens,                 
		  fin_course_d => fin_course_d,
		  fin_course_g => fin_course_g
    );


    -- Processus pour gérer l'écriture dans les registres
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            freq        <= (others => '0');
            duty        <= (others => '0');
            butee_g     <= (others => '0');
            butee_d     <= (others => '0');
            config      <= (others => '0');
        elsif rising_edge(clk) then
            if chipselect = '1' and write_n = '0' then
                case address is
                    when "000" => freq <= writedata(15 downto 0);
                    when "001" => duty <= writedata(15 downto 0);
                    when "010" => butee_g <= writedata(15 downto 0);
                    when "011" => butee_d <= writedata(15 downto 0);
                    when "100" => config <= writedata(4 downto 0);
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
                when "000" => readdata <= (31 downto 16 => '0') & freq; -- Adresse 0 : fréquence
                when "001" => readdata <= (31 downto 16 => '0') & duty; -- Adresse 1 : rapport cyclique
                when "010" => readdata <= (31 downto 16 => '0') & butee_g; -- Adresse 2 : butée gauche
                when "011" => readdata <= (31 downto 16 => '0') & butee_d; -- Adresse 3 : butée droite
                when "100" => readdata <= (31 downto 5 => '0') & config; -- Adresse 4 : configuration
                when "101" => readdata <= (31 downto 12 => '0') & angle_barre; -- Adresse 5 : angle de la barre
                when others => readdata <= (others => '0');
            end case;
        end if;
    end process;
   
    -- Assignation des sorties
     config <= config;
	  freq   <=freq;       
     duty   <= duty;      
     butee_g  <= butee_g;     
     butee_d   <= butee_d;         
     angle_barre<=  angle_barre;

end architecture arch;

