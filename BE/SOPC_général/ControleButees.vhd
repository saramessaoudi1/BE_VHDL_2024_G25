library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity ControleButees is
port (
    pwm_in       : in std_logic;                          -- Entrée PWM
    angle_barre  : in std_logic_vector(11 downto 0);      -- Position de la barre
    out_pwm      : out std_logic;                        -- PWM de sortie
    fin_course_g : out std_logic;                        -- Fin de course gauche
    fin_course_d : out std_logic                         -- Fin de course droite
);
end entity;

architecture butee of ControleButees is
    signal butee_d : std_logic_vector(11 downto 0) := "101010001001"; -- 2697
    signal butee_g : std_logic_vector(11 downto 0) := "010111010101"; -- 1493
begin
    process (angle_barre)
    begin
        -- Réinitialisation des signaux par défaut
        out_pwm <= '0';
        fin_course_g <= '0';
        fin_course_d <= '0';

        -- Gestion des butées
        if (unsigned(angle_barre) < unsigned(butee_g)) then
            fin_course_g <= '1'; -- Activer fin de course gauche
        elsif (unsigned(angle_barre) > unsigned(butee_d)) then
            fin_course_d <= '1'; -- Activer fin de course droite
        else
            out_pwm <= pwm_in; -- Autoriser le PWM si entre les butées
        end if;
    end process;
end butee;
