Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity ChipSelect is
	port(
		start_c : in std_logic;
		clk_1M : in std_logic;
		raz_n : in std_logic;
		cs : out std_logic);
end ChipSelect;

architecture arch_chipselect of ChipSelect is
	signal stop : std_logic; -- Signal interne pour contrôler l'état d'arrêt/démarrage

	begin 

		process(clk_1M, raz_n) is
			variable compt1 : integer range 0 to 32:=0;
			variable compt2 : integer range 0 to 17:=0;

			begin
				if start_c = '0' then
					stop <= '0'; -- Arrêt si `start_c` est à 0
				else stop <='1';
				end if;
				if raz_n ='0' then
					compt1 := 0 ; -- Réinitialisation du compteur
				elsif stop = '0' then
					if rising_edge(clk_1M) then
						compt1 := compt1 + 1;
						if compt1 >= 15 then
							cs <= '0';
							compt2 := compt2 + 1;
							if compt2 = 17 then
								cs <= '1';
								compt1 := 0;
								compt2 := 0;
							end if;
						end if;
					end if;
				end if;
			end process;

end architecture arch_chipselect;



