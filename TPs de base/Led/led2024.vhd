
-- declaration des libraries
 
library ieee ; 
   use ieee.std_logic_1164.all;
   use ieee.std_logic_unsigned.all;
	use ieee.std_logic_arith.all;
	
-- entity

entity led2024 is 
 
         -- port (declaration de ports entree et sortie ) 
		port (
				clk_50Mhz : in std_logic;
				rst : in std_logic ; 
				clk_1hz : out std_logic );
end entity;


-- architecture

architecture  Beh of led2024 is


begin
	p1: process (clk_50Mhz,rst)
 
	variable temp: integer range 0 to 25000000;
   variable clk_int: std_logic;	
	
	begin 
		
		if (rst = '0') then
			temp := 0;
			clk_int :='0';
		elsif rising_edge(clk_50Mhz) then
			
				if (temp =25000000) then
					temp:=0;
					clk_int:=not clk_int ;
					
				else	
					temp:=temp+1;
				end if;
		end if;
		
		clk_1hz <= clk_int;
		
	end process;
		
 
end Beh; 