library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mae is
    port (
        S_1Hz : in std_logic;            							-- Signal d'entrée cadencé à 1HZ
        clk_50M : in std_logic;         							-- Horloge d'entrée à 50MHz
        continu : in std_logic;        							-- Signal pour le mode continu
        frq : in integer range 0 to 255; 							-- Fréquence d'entrée
        start_stop : in std_logic;     							-- Signal pour démarrer/arrêter
        raz_n : in std_logic;          							-- Signal de remise à zéro
        data_anemometre : out std_logic_vector(7 downto 0); -- Données de l'anémomètre
        data_valid : out std_logic     							-- Indicateur de validité des données
    );
end entity mae;

architecture arch_mae of mae is
begin
    -- Processus principal
    process(clk_50M, S_1Hz)
    begin
        if raz_n = '0' then
            data_valid <= '0';
            data_anemometre <= (others => '0');
        elsif rising_edge(S_1Hz) then 
            if continu = '0' then
                if start_stop = '0' then
                    data_valid <= '0';
                else 
                    data_valid <= '1';
						  -- Conversion de la fréquence en vecteur std_logic sur 8 bits.
                    data_anemometre <= std_logic_vector(to_unsigned(frq, 8));
                end if;
            else
                data_anemometre <= std_logic_vector(to_unsigned(frq, 8));
                data_valid <= '1';
            end if;
        end if;
    end process;
end architecture arch_mae;