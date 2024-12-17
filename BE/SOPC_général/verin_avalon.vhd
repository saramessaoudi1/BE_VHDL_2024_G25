library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity verin_avalon is
    port (
        clk          : in  std_logic; -- Horloge
        chipselect_in   : in  std_logic; -- Sélection du périphérique
        write_n      : in  std_logic; -- Signal d'écriture
        reset_n      : in  std_logic; -- Reset actif bas
		  data_in     : in  std_logic;  -- Données d'entrée série
		  un_M :  OUT  STD_LOGIC;
		  cs          : out std_logic;      -- Signal chip select pour l'ADC
        writedata    : in  std_logic_vector(31 downto 0); -- Données écrites
        address      : in  std_logic_vector(3 downto 0);  -- Adresse pour lire/écrire
        readdata     : out std_logic_vector(31 downto 0); -- Données lues 
        sens_out     : out std_logic; 
		  enable       : in std_logic;                       

		  out_pwm  : out std_logic -- Sortie pwm
		
    );
end verin_avalon;
  
architecture bhv of verin_avalon is
signal fin_course_g :  STD_LOGIC;
signal fin_course_d :  STD_LOGIC;
signal raz_n :  STD_LOGIC;
signal sens :   STD_LOGIC;
signal butee_d :  STD_LOGIC_VECTOR(11 DOWNTO 0);
signal butee_g :  STD_LOGIC_VECTOR(11 DOWNTO 0);
signal duty :  STD_LOGIC_VECTOR(31 DOWNTO 0);
signal freq :  STD_LOGIC_VECTOR(31 DOWNTO 0);
signal Angle_barre :  STD_LOGIC_VECTOR(11 DOWNTO 0); --
signal config : std_logic_vector(31 downto 0);


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
				--frequence, C_duty : in std_logic_vector (31	downto 0);
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
 -- Assignation des sorties
    un_M      <= clk_1MHz_signal;
    cs          <= cs_signal;
    Angle_barre    <= data_out_signal;
	 
    -- Instanciation du composant Sig_1MHz
    sig_1MHz_inst : Sig_1MHz
        port map (
            clk_50 => clk,
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
            clk_50MHz => clk,
            raz_n => raz_n,
				enable => enable,       -- Activation
				sens => sens,         -- Direction
            S_PWM     => pwm_in_signal,
            S_SENS    => sens_out   -- Sens moteur en sortie
            --frequence => frequence,
            --C_duty => C_duty,
        );
	 
  
process_write: process (clk, reset_n)
begin
	if reset_n = '0' then
		freq <= (others => '0');
		duty <= (others => '0');
		raz_n <= '0';
	elsif clk'event and clk = '1' then
			if chipselect_in ='1' and write_n = '0' then
				if address = "0000" then
					freq <= writedata;
				end if;
				if address = "0001" then
					duty <= writedata;
				end if;
				if address = "0010" then
					butee_g <= writedata (11 downto 0);
				end if;
				if address = "0011" then
					butee_d <= writedata (11 downto 0);
				end if;
				if address = "0100" then
					config <= writedata;
					fin_course_g <= config(4);
					fin_course_d <= config(3);
					sens <= config(2);
					raz_n <= config(0);
				end if;
			end if;
	end if;

end process;
  
  
process_Read:
PROCESS(angle_barre, freq, duty,butee_g , butee_d, config)

BEGIN
	case address is
		when "0000" => readdata <= freq ;
		when "0001" => readdata <= duty ;
		when "0010" => readdata(11 downto 0) <= butee_g ;
		when "0011" => readdata(11 downto 0) <= butee_d ;
		when "0100" => readdata <= config ;
		when "0101" => readdata <= X"00000"&Angle_barre ;
		when others => readdata <= (others => '0');
	end case;

END PROCESS process_Read ;
  
end bhv;
