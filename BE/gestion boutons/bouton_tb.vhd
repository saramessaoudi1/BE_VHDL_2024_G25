LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bouton_tb IS
-- Pas de ports dans un testbench
END bouton_tb ;

ARCHITECTURE behavior OF bouton_tb  IS
    -- Composant à tester
    COMPONENT gestion_bouton
        PORT (
            clk          : in std_logic;
            reset_n      : in std_logic;
            BP_Babord    : in std_logic;
            BP_Tribord   : in std_logic;
            BP_STBY      : in std_logic;
            ledSTBY      : out std_logic;
            ledTribord   : out std_logic;
            ledBabord    : out std_logic;
            codeFonction : out std_logic_vector(3 downto 0)
        );
    END COMPONENT;

    -- Signaux pour simuler les ports du composant
    SIGNAL clk          : std_logic := '0';
    SIGNAL reset_n      : std_logic := '0';
    SIGNAL BP_Babord    : std_logic := '1';
    SIGNAL BP_Tribord   : std_logic := '1';
    SIGNAL BP_STBY      : std_logic := '1';
    SIGNAL ledSTBY      : std_logic;
    SIGNAL ledTribord   : std_logic;
    SIGNAL ledBabord    : std_logic;
    SIGNAL codeFonction : std_logic_vector(3 downto 0);

    -- Constante pour la période de l'horloge (20ns = 50MHz)
    CONSTANT clk_period : time := 20 ns;

BEGIN
    -- Instanciation du composant
    uut: gestion_bouton
        PORT MAP (
            clk          => clk,
            reset_n      => reset_n,
            BP_Babord    => BP_Babord,
            BP_Tribord   => BP_Tribord,
            BP_STBY      => BP_STBY,
            ledSTBY      => ledSTBY,
            ledTribord   => ledTribord,
            ledBabord    => ledBabord,
            codeFonction => codeFonction
        );

    -- Génération de l'horloge
    clk_process : PROCESS
    BEGIN
        WHILE TRUE LOOP
            clk <= '0';
            WAIT FOR clk_period / 2;
            clk <= '1';
            WAIT FOR clk_period / 2;
        END LOOP;
    END PROCESS;

    -- Stimuli pour tester le composant
    stim_process : PROCESS
    BEGIN
        -- Reset du système
        reset_n <= '0';
        WAIT FOR 20 ms; -- Maintenir le reset pendant 20 ms
        reset_n <= '1';
        WAIT FOR 20 ms;

        -- Test de l'état ALLUMAGE
        BP_STBY <= '0'; -- Appui sur BP_STBY
        WAIT FOR 50 ms;
        BP_STBY <= '1'; -- Relâchement de BP_STBY
        WAIT FOR 100 ms;

        -- Test de Babord (BP_Babord activé)
        BP_Babord <= '0'; -- Appui sur BP_Babord
        WAIT FOR 30 ms; 
        BP_Babord <= '1'; -- Relâchement de BP_Babord
        WAIT FOR 100 ms;

        -- Test de Tribord (BP_Tribord activé)
        BP_Tribord <= '0'; -- Appui sur BP_Tribord
        WAIT FOR 30 ms;
        BP_Tribord <= '1'; -- Relâchement de BP_Tribord
        WAIT FOR 100 ms;

        -- Test du Mode Auto (BP_babord + BP_tribord activé à la fois)
        BP_Babord <= '0' ;
		  BP_Tribord <= '0'; -- Appui
        WAIT FOR 50 ms;
        BP_Babord <= '1';
		  BP_Tribord <= '1'; -- Relâchement 
        WAIT FOR 100 ms;
		  -- SOrtie du mode auto (BP stby)
		  BP_STBY <= '0'; -- Appui sur BP_STBY
        WAIT FOR 50 ms;
        BP_STBY <= '1'; -- Relâchement de BP_STBY
        WAIT FOR 100 ms;
        -- Fin du test
        WAIT;
    END PROCESS;
END behavior;
