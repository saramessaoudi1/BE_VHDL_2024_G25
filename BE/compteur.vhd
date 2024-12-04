library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur is
    port(
        clk_50M : in std_logic; 
        in_freq_anemo : in std_logic; 
        raz_n : in std_logic;   
        frq : out integer range 0 to 255 
    );
end compteur;

architecture arch_compteur of compteur is
    signal compteur1 : integer := 0; 
    signal compteur2 : integer range 0 to 255 := 0; 
    signal stop : std_logic := '0'; 

begin 

    -- Processus 1 : Gestion du compteur principal
    
    clk : process(clk_50M, raz_n)
    begin
        if raz_n = '0' then 					-- Remise à zéro asynchrone.
            compteur1 <= 0;						-- Réinitialisation du compteur principal.
        elsif rising_edge(clk_50M) then
            compteur1 <= compteur1 + 1; 	-- Incrémentation du compteur principal.
            if compteur1 > 50000000 then	-- 50000000 cycles == 1 seconde
                stop <= '1';
                if compteur2 = 0 then		-- Si aucune impulsion n'a été capturée.
                    stop <= '0';
                    compteur1 <= 0;
                end if;
            end if;
        end if;
    end process clk;
	 
    -- Processus 1: Calcul de la fréquence à partir des impulsions
	 
    freq : process(clk_50M, raz_n)
    begin
        if raz_n = '0' then
            compteur2 <= 0;
        elsif rising_edge(in_freq_anemo) then
            if stop = '0' then					-- Si la mesure est active (stop = 0).
                compteur2 <= compteur2 + 1;	-- Incrémente le compteur d'impulsions.
            else 
                frq <= compteur2;				-- Stocker le nombre d'impulsions dans frq
                compteur2 <= 0;					-- Réinitialise le compteur d'imp pour la prochaine mesure.
            end if;
        end if;
    end process freq;
	 
end arch_compteur;