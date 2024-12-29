library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

                             
entity PWM is
    port (
        clk_50Mhz      : in std_logic;                      -- clk d'entrée
        reset_n    : in std_logic;                      -- Reset asynchrone (actif bas)
       -- n_freq   : in integer := 30; 
       -- n_duty: in integer :=50 ; -- Sélection du rapport cyclique 
        pwm_out    : out std_logic                      -- Sortie PWM
    );
end entity PWM;


architecture Beh of PWM is
    signal counter   : std_logic_vector(7 downto 0) := (others => '0'); 
	-- constant n_freq   : integer := 1531;   
    --constant n_duty: integer :=50 ; 
			signal clk  : std_logic := '0';    
     signal data: std_logic ;

begin

    -- Process for clock division 
    p1: process (clk_50Mhz, reset_n)
        variable clk_1s : std_logic;  -- Counter variable for division
    begin
        if (reset_n = '1') then
            counter <= (others => '0');
        elsif (rising_edge(clk_50Mhz)) then
            counter <= counter + 1;

            if (counter =200) then  
                clk_1s := not clk_1s;  
                counter <= (others => '0');
            end if;
        end if;
        clk <= clk_1s;
    end process;
    
    
    -- Process to generate the PWM signal
    p3: process (counter)
    begin
        if (counter < 50) then
            data <= '1';  -- PWM is high if counter is less than the duty cycle
        else
            data <= '0';  -- PWM is low otherwise
        end if;
    end process;
	  pwm_out <= data;

end architecture Beh;
