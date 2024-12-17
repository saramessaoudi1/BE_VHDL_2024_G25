library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all; -- Utilisé pour les comparaisons numériques

entity Gest_PWM is
    port (
        clk_50MHz, raz_n : in std_logic; -- Horloge principale et reset actif bas
        enable           : in std_logic; -- Activation du moteur
        sens             : in std_logic; -- Direction du moteur
        S_SENS           : out std_logic; -- Direction pour le moteur
        S_PWM            : out std_logic  -- Signal PWM pour le moteur
    );
end entity;

architecture arch_pwm of Gest_PWM is
    signal counter : unsigned(31 downto 0) := (others => '0'); -- Compteur pour la fréquence
    signal PWM_n   : std_logic := '0'; -- Signal PWM interne
    signal freq    : unsigned(15 downto 0) := to_unsigned(2000, 16); -- Fréquence PWM
    signal duty    : unsigned(15 downto 0) := to_unsigned(1500, 16); -- Rapport cyclique (duty cycle)
begin

    -- Gestion de la fréquence PWM
    divide: process (clk_50MHz, raz_n)
    begin
        if raz_n = '0' then
            counter <= (others => '0'); -- Réinitialiser le compteur
        elsif rising_edge(clk_50MHz) then
            if counter >= freq then
                counter <= (others => '0'); -- Réinitialisation du compteur
            else
                counter <= counter + 1; -- Incrémentation du compteur
            end if;
        end if;
    end process;

    -- Gestion du rapport cyclique et du signal PWM
    compare: process (clk_50MHz, raz_n)
    begin
        if raz_n = '0' then
            PWM_n <= '0'; -- Désactiver le PWM au reset
        elsif rising_edge(clk_50MHz) then
            if enable = '0' then
                PWM_n <= '0'; -- Désactiver le PWM si non activé
            else
                if counter >= duty then
                    PWM_n <= '0'; -- Cycle désactivé après le rapport cyclique
                else
                    PWM_n <= '1'; -- Cycle actif pendant le rapport cyclique
                end if;
            end if;
        end if;
    end process;

    -- Assignation des sorties
    S_PWM <= PWM_n when enable = '1' else '0'; -- Activer le PWM seulement si enable est actif
    S_SENS <= sens; -- Utiliser directement l'entrée `sens` pour définir la direction

end architecture;
