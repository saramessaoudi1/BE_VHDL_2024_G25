Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registre_decalage is
	port(
		start_conv : in std_logic;
		cs         : in std_logic;
		clk_1M     : in std_logic;
		raz_n      : in std_logic;
		data_in    : in std_logic;
		data_out   : out std_logic_vector(11 downto 0)
	);
end registre_decalage;

architecture dec of registre_decalage is
	signal data_buffer : std_logic_vector(14 downto 0) := (others => '0'); -- Tampon pour les données
	signal counter     : integer range 0 to 15 := 0;                      -- Compteur pour le décalage
begin

	process(clk_1M, raz_n)
	begin
		if raz_n = '0' then
			-- Réinitialisation en cas de reset
			data_buffer <= (others => '0');
			data_out <= (others => '0');
			counter <= 0;
		elsif rising_edge(clk_1M) then
			if start_conv = '0' and cs = '0' then -- L'ADC est prêt
				if counter < 15 then
					data_buffer <= data_buffer(13 downto 0) & data_in; -- Décalage des bits
					counter <= counter + 1;
				end if;
			elsif cs = '1' then -- ADC inactif, transfert des données
				data_out <= data_buffer(11 downto 0); -- Transfert des 12 bits vers la sortie
				counter <= 0; -- Réinitialisation du compteur
			end if;
		end if;
	end process;

end architecture dec;
