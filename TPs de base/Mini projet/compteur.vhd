-- Library Declaration
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity Declaration
entity Compteur is
    Port ( 
        clk_50Mhz: in STD_LOGIC;         -- Horloge
        rst : in STD_LOGIC;         -- Reset
        dout:buffer std_logic_vector(3 downto 0) ;
        dout_7_seg : out std_logic_vector( 6 downto 0)
    );
end entity;

-- Architecture Declaration
architecture Beh of Compteur is

	signal clk_1s : std_logic:='0'; 
	
begin

    p1:process (clk_50Mhz, rst) 

	 variable temp : integer range 0 to 50000000 ;
	  
    begin
	 if (rst='0') then 
		temp :=0 ; 
		clk_1s <= '0' ;
	 elsif (rising_edge(clk_50Mhz))then 
		temp:=temp+1;
		if (temp=50000000)then 
			clk_1s<='1' ; 
			temp:= 0 ; 
		else 
			clk_1s<='0';
		end if ;
	 end if ; 
	 end process ;
	 

	 p2:process (clk_1s, rst) 
	 variable data : std_logic_vector(3 downto 0) ;
	--  variable clk_1s : std_logic:='0'; 

    begin
	 if (rst='0') then 
		data := (others=> '0') ; 
	 elsif (rising_edge(clk_1s))then 
		if (clk_1s ='1') then
			data :=data+1 ;
			if (data= "1111")then 
				data := (others=> '0') ; 
			end if ; 
		end if ;
	 end if ; 
		dout <= data ;
	 end process ;
	 
	p3:process(dout) 

    begin
		case dout is 
			when "0000" => dout_7_seg <= "1000000";
			when "0001" => dout_7_seg <= "1111001";
			when "0010" => dout_7_seg <= "0100100";
			when "0011" => dout_7_seg <= "0110000";
			when "0100" => dout_7_seg <= "0011001";
			when "0101" => dout_7_seg <= "0010010";
			when "0110" => dout_7_seg <= "0000010";
			when "0111" => dout_7_seg <= "1111000";
			when "1000" => dout_7_seg <= "0000000";
			when "1001" => dout_7_seg <= "0010000";
			when OTHERS => dout_7_seg <= "1111111";

			
		end case;
    end process ;
    
	

end Beh;

