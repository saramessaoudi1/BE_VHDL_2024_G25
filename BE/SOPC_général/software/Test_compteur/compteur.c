// essai projet leds boutons
#include "sys/alt_stdio.h"
#include "io.h"
#include <stdio.h>
#include <stdint.h>
#include "system.h"
#include "altera_avalon_pio_regs.h" // pour éviter de renseigner les adresses physiques des périphériques
#include "unistd.h" 				// pour la fonction délai

#define boutons (volatile char *) BOUTONS_BASE
#define leds (unsigned int*)LEDS_BASE
#define freq (unsigned int *)PWM_0_BASE
#define duty (unsigned int *)(PWM_0_BASE+ 4)
#define PWM_CTRL_ADDR (unsigned int*)(PWM_0_BASE + 8)
#define config_anemo (unsigned int*)(AVALON_ANEMO_0_BASE)
#define data_anemometre (unsigned int*)(AVALON_ANEMO_0_BASE + 4)
unsigned int a,b;

int main() {
    alt_putstr("Salut ext!\n");
    *freq = 0x0400; // divise clk par 1024 (48 kHz)
    *duty = 0x0200; // RC = 50%
    *PWM_CTRL_ADDR = 0x03;

    // Configuration initiale du registre de l'anémomètre
    *config_anemo = 0x0003; // b2=Start/Stop, b1=continu, b0=raz_n (0000 0101)


    while (1) {
        alt_putstr("Salut int!\n");
        a = *boutons & 3;
        b= *data_anemometre;
        printf("boutons = %u \n", a);
        printf("data_anemometre = %u \n", b);

        // Lire et afficher la valeur de data_anemometre (avec b9=valid)

                 uint16_t data = IORD_16DIRECT(AVALON_ANEMO_0_BASE, 4);
                 uint8_t valid = (data >> 9) & 1; // Extraction du bit de validité (b9)
                 uint8_t data_value = data & 0xFF; // Extraction des bits b7..b0

       // Afficher la valeur seulement si le bit de validité est à 1
                 if (valid) {
                     printf("Fréquence lue : %u (valide)\n", data_value);
                 } else {
                     printf("Fréquence non valide\n");
                 }


        usleep(1000000);

        switch (a) {
            case 0: *leds = 0; break;
            case 1: *leds = 0; break;
            case 2: break; // Peut-être ajouter un commentaire ici pour la clarté
            case 3: *leds = *leds + 1; break;
            default: *leds = 0; break;
        }
    }

    return 0;
}
