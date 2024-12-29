LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY gestion_bouton IS
    PORT (
        clk          : in std_logic;
        reset_n      : in std_logic;
        BP_Babord    : in std_logic;
        BP_Tribord   : in std_logic;
        BP_STBY      : in std_logic;
        ledSTBY      : out std_logic;
        ledTribord   : out std_logic;
		  ledBabord		: out std_logic;
        codeFonction : out std_logic_vector(3 downto 0)
    );
END gestion_bouton;

ARCHITECTURE simple OF gestion_bouton IS
    -- Déclaration des états
    TYPE etat_type IS (IDLE, ALLUMAGE, WAIT_BT, WAIT_BABORD, GO_BABORD, WAIT_TRIBORD, GO_TRIBORD, MODE_AUTO);
    SIGNAL etat : etat_type := IDLE;

    -- Signal pour activer la temporisation
    SIGNAL enable : std_logic := '0';
    SIGNAL fin    : std_logic := '0';
BEGIN
    -- Machine à états pour gérer les boutons
    process(clk, reset_n)
    BEGIN
        IF reset_n = '0' THEN
            etat <= IDLE;
        ELSIF rising_edge(clk) THEN
            CASE etat IS
                WHEN IDLE =>
                    IF BP_STBY = '0' THEN
                        etat <= ALLUMAGE;
                    ELSE
							   etat <= IDLE;
                    end if;
						  
                WHEN ALLUMAGE =>
                    IF fin = '1' THEN
                        etat <= WAIT_BT;
						  ELSE
								etat <= ALLUMAGE;
                    END IF;

                WHEN WAIT_BT =>
					IF BP_Babord = '0' AND BP_Tribord = '0' AND BP_STBY = '1' THEN
						etat <= MODE_AUTO;
					ELSIF BP_Babord = '0' AND BP_Tribord = '1' AND BP_STBY = '1' THEN
						etat <= WAIT_BABORD;
					ELSIF BP_Tribord = '0' AND BP_Babord = '1' AND BP_STBY = '1' THEN
						etat <= WAIT_TRIBORD;
					ELSE
						etat <= WAIT_BT;
                    END IF;

                WHEN WAIT_BABORD =>
                    IF fin = '1' THEN
                       etat <= GO_BABORD;
						  ELSE
							  etat <= WAIT_BABORD;
                    END IF;

                WHEN GO_BABORD =>
                    IF BP_Babord = '1' THEN
                        etat <= WAIT_BT;
						  ELSE
								etat <= GO_BABORD;
                    END IF;

                WHEN WAIT_TRIBORD =>
                    IF fin = '1' THEN
                        etat <= GO_TRIBORD;
						  ELSE
							   etat <= WAIT_TRIBORD;
                    END IF;

                WHEN GO_TRIBORD =>
                    IF BP_Tribord = '1' THEN
                        etat <= WAIT_BT;
						  ELSE
								etat <= GO_TRIBORD;
                    END IF;

					WHEN MODE_AUTO =>
						IF BP_STBY = '0' THEN
							etat <= WAIT_BT;
						ELSE
							etat <= MODE_AUTO;
						END IF;
						  
            END CASE;
        END IF;
    END PROCESS;

    -- Gestion des sorties
    process(etat)
    BEGIN       

        CASE etat IS
            WHEN IDLE =>
                enable <= '0';
					 ledSTBY      <= '0';
					 ledBabord			<= '0';
					 ledTribord   <= '0';
					 codeFonction <= "0000";

            WHEN ALLUMAGE =>
                enable <= '1';
                ledSTBY <= '1';

            WHEN WAIT_BT =>
                enable <= '0';
                ledSTBY <= '1';
					 ledBabord<='0';
					 ledTribord<='0';
					 codeFonction<= "0000";


            WHEN WAIT_BABORD =>
                enable <= '1';

            WHEN GO_BABORD =>
                enable <= '0';
                ledSTBY <= '1';
					 ledBabord <= '1';
                codeFonction <= "0001";

            WHEN WAIT_TRIBORD =>
                enable <= '1';

            WHEN GO_TRIBORD =>
                enable <= '0';
                ledSTBY <= '1';
                ledTribord <= '1';
                codeFonction <= "0010";

            WHEN MODE_AUTO =>
                enable <= '0';
                ledSTBY <= '1';
					 ledBabord <= '1';
                ledTribord <= '1';
                codeFonction <= "0011";

            WHEN OTHERS =>
                enable <= '0';
        END CASE;
    END PROCESS;

    -- Génération de la temporisation (20ms)
    process(clk, reset_n)
        VARIABLE temp : integer RANGE 0 TO 1000000 := 0;
    BEGIN
        IF reset_n = '0' THEN
            fin <= '0';
            temp := 0;
        ELSIF rising_edge(clk) THEN
            IF enable = '1' THEN
                IF temp = 1000000 THEN  
                    fin <= '1';
                    temp := 0;
                ELSE
                    temp := temp + 1;
                    fin <= '0';
                END IF;
            ELSE
                temp := 0;
                fin <= '0';
            END IF;
        END IF;
    END PROCESS;
END simple;
