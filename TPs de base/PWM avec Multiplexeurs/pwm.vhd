library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

                                  
entity PWM is
    port (
        clk        : in std_logic;                      -- clk d'entrée
        reset_n    : in std_logic;                      -- Reset asynchrone (actif bas)
        mux_freq   : in std_logic_vector(1 downto 0);   -- Sélection de la fréquence 
        mux_rapport: in std_logic_vector(1 downto 0);   -- Sélection du rapport cyclique 
        pwm_out    : out std_logic                      -- Sortie PWM
    );
end entity PWM;


architecture Beh of PWM is
    signal counter   : std_logic_vector(7 downto 0) := (others => '0');  -- Compteur 8 bits
    signal clk_div   : std_logic := '0';                                 -- clk divisée
    signal div_count : integer := 0;                                     -- Compteur
    signal freq_limit: integer := 25000;                                 -- Limite division de fréquence
    signal DUTY      : std_logic_vector(7 downto 0) := (others => '0');  -- Rapport cyclique sélectionné via MUX
    
	 begin

    -- Sélection de la fréquence 
    process (mux_freq)
    begin
        case mux_freq is
            when "00" => freq_limit <= 25000; 
            when "01" => freq_limit <= 12500;  
            when "10" => freq_limit <= 6250; 
            when "11" => freq_limit <= 3125;   
            when others => freq_limit <= 25000;
        end case;
    end process;

    -- Sélection du rapport cyclique 
    process (mux_rapport)
    begin
        case mux_rapport is
            when "00" => DUTY <= "01000000";    -- 25% (64)
            when "01" => DUTY <= "10000000";    -- 50% (128)
            when "10" => DUTY <= "11000000";    -- 75% (192)
            when "11" => DUTY <= "11111111";    -- 100% (255)
            when others => DUTY <= "10000000";  
        end case;
    end process;

    -- Processus pour diviser l'horloge selon la freq
    
process (clk, reset_n)
    begin 
		 if reset_n = '0' then
            div_count <= 0;
            clk_div <= '0';
        elsif rising_edge(clk) then
            if div_count < freq_limit then
                div_count <= div_count + 1;
            else
                clk_div <= not clk_div;  -- Inversion de l'horloge divisée
                div_count <= 0;
            end if;
        end if;
    end process;
	 
	 
    -- compteur PWM (basé sur clk_div pour ajuster la fréquence)
    process (clk_div, reset_n)
    begin
        if reset_n = '0' then
            counter <= (others => '0');  -- Raz du compteur
        elsif rising_edge(clk_div) then  -- Incrémentation du compteur
            counter <= counter + 1;
        end if;
    end process;
	 

    -- génération de la PWM
    process (counter, DUTY)
    begin
        if counter < DUTY then
            pwm_out <= '1';              -- PWM à 1 si compteur < DUTY
        else
            pwm_out <= '0';              -- PWM à 0 si compteur > DUTY
        end if;
    end process;

end architecture Beh;