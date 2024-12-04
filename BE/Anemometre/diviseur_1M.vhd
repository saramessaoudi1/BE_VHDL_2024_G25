library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity diviseur_1M is
    port (
        clk_50M : in std_logic; 
        S_1Hz : out std_logic 
    );
end diviseur_1M;

architecture arch_diviseur_1M of diviseur_1M is
   signal temp: std_logic := '0'; 
	begin
		process (clk_50M) is
			variable cnt: integer := 0;
			begin
				if rising_edge(clk_50M) then 
					cnt := cnt + 1; 
					if cnt = 25000000 then 
						temp <= not temp; 
						cnt := 0; 
					end if;
				end if;
				
        S_1Hz <= temp; 
		  
		end process;
end arch_diviseur_1M;