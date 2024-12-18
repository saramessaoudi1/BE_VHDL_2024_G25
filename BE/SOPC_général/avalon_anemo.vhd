library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity avalon_anemo is
    port (
        clk : in std_logic;
        reset_n : in std_logic;
		  chipselect, write_n: in std_logic;
		  writedata : in std_logic_vector (31 downto 0);
		  address: in std_logic_vector (1 downto 0);
		  in_freq_anemo : in std_logic;
		  readdata : out std_logic_vector (31 downto 0)
    );
end entity avalon_anemo;

architecture vitesse of avalon_anemo is
	 
	 signal   raz_n : std_logic;
    signal   clk_50M : std_logic;
    signal   continu : std_logic;
    signal   start_stop : std_logic;
    signal   data_valid : std_logic;
    signal   S_1Hz : std_logic;
	 signal config : std_logic_vector(2 downto 0); -- b2=start_stop, b1=continu, b0=raz_n
    signal code : std_logic_vector(9 downto 0);   -- b9=valid, b7..b0=data_anemometre
    signal valid : std_logic;                     -- Bit de validité (extrait de l'anémomètre)
    signal data_anemometre : std_logic_vector(7 downto 0); -- Données de l'anémomètre

	 
	

component anemometre2 is
    port (
        raz_n : in std_logic;
        clk_50M : in std_logic;
        continu : in std_logic;
        start_stop : in std_logic;
        in_freq_anemo : in std_logic;
        data_valid : out std_logic;
        S_1Hz : out std_logic;
        data_anemometre : out std_logic_vector(7 downto 0)
    );
   end component;
       
   
begin
	 
	 
	 anemometre2_inst : anemometre2
    port map (
        clk_50M => clk,
        raz_n => config(0),                -- reset_n
        start_stop => config(2),           -- start/stop
        continu => config(1),              -- mode continu
        in_freq_anemo => in_freq_anemo,    -- entrée fréquence
        data_valid => valid,               -- validité des données
        data_anemometre => data_anemometre -- valeur de la fréquence mesurée
    );
	 
	 

    -- Processus d'écriture
    process(clk, reset_n)
begin
    if reset_n = '0' then
        config <= (others => '0');
    elsif rising_edge(clk) then
        if chipselect = '1' and write_n = '0' then
            if address = "00" then
                config <= writedata(2 downto 0); -- Écriture des bits de contrôle
            end if;
        end if;
    end if;
end process;


    -- Processus de lecture
   process(address, config, valid, data_anemometre)
begin
    case address is
        when "00" => -- Lecture du registre `config`
            readdata <= (31 downto 3 => '0') & config; -- Zéro-remplissage
        when "01" => -- Lecture du registre `code`
             readdata <= (31 downto 9 => '0') & valid & data_anemometre;

        when others =>
            readdata <= (others => '0'); -- Par défaut, tout à zéro
    end case;
end process;


    -- Assignation des sorties
    start_stop <= config(2);
    raz_n <= config(0);
    continu <= config(1);

end architecture vitesse;
