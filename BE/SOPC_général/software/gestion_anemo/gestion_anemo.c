/* 
 * "Small Hello World" example. 
 * 
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example 
 * designs. It requires a STDOUT  device in your system's hardware. 
 *
 * The purpose of this example is to demonstrate the smallest possible Hello 
 * World application, using the Nios II HAL library.  The memory footprint
 * of this hosted application is ~332 bytes by default using the standard 
 * reference design.  For a more fully featured Hello World application
 * example, see the example titled "Hello World".
 *
 * The memory footprint of this example has been reduced by making the
 * following changes to the normal "Hello World" example.
 * Check in the Nios II Software Developers Manual for a more complete 
 * description.
 * 
 * In the SW Application project (small_hello_world):
 *
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 * In System Library project (small_hello_world_syslib):
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 *    - Define the preprocessor option ALT_NO_INSTRUCTION_EMULATION 
 *      This removes software exception handling, which means that you cannot 
 *      run code compiled for Nios II cpu with a hardware multiplier on a core 
 *      without a the multiply unit. Check the Nios II Software Developers 
 *      Manual for more details.
 *
 *  - In the System Library page:
 *    - Set Periodic system timer and Timestamp timer to none
 *      This prevents the automatic inclusion of the timer driver.
 *
 *    - Set Max file descriptors to 4
 *      This reduces the size of the file handle pool.
 *
 *    - Check Main function does not exit
 *    - Uncheck Clean exit (flush buffers)
 *      This removes the unneeded call to exit when main returns, since it
 *      won't.
 *
 *    - Check Don't use C++
 *      This builds without the C++ support code.
 *
 *    - Check Small C library
 *      This uses a reduced functionality C library, which lacks  
 *      support for buffering, file IO, floating point and getch(), etc. 
 *      Check the Nios II Software Developers Manual for a complete list.
 *
 *    - Check Reduced device drivers
 *      This uses reduced functionality drivers if they're available. For the
 *      standard design this means you get polled UART and JTAG UART drivers,
 *      no support for the LCD driver and you lose the ability to program 
 *      CFI compliant flash devices.
 *
 *    - Check Access device drivers directly
 *      This bypasses the device file system to access device drivers directly.
 *      This eliminates the space required for the device file system services.
 *      It also provides a HAL version of libc services that access the drivers
 *      directly, further reducing space. Only a limited number of libc
 *      functions are available in this configuration.
 *
 *    - Use ALT versions of stdio routines:
 *
 *           Function                  Description
 *        ===============  =====================================
 *        alt_printf       Only supports %s, %x, and %c ( < 1 Kbyte)
 *        alt_putstr       Smaller overhead than puts with direct drivers
 *                         Note this function doesn't add a newline.
 *        alt_putchar      Smaller overhead than putchar with direct drivers
 *        alt_getchar      Smaller overhead than getchar with direct drivers
 *
 */
// essai projet leds boutons
#include "sys/alt_stdio.h"
#include "io.h"
#include <stdio.h>
#include <stdint.h>
#include "system.h"
#include "altera_avalon_pio_regs.h" // pour �viter de renseigner les adresses physiques des p�riph�riques
#include "unistd.h" 				// pour la fonction d�lai

#define boutons (volatile char *) BOUTONS_BASE
#define leds (unsigned int*)LEDS_BASE
#define freq (unsigned int *)PWM_0_BASE
#define duty (unsigned int *)(PWM_0_BASE+ 4)
#define PWM_CTRL_ADDR (unsigned int*)(PWM_0_BASE + 8)
#define config_anemo (unsigned int*)(AVALON_ANEMO_0_BASE)
#define code (unsigned int*)(AVALON_ANEMO_0_BASE + 4)

#define butee_d (int *)(VERIN_AVALON_0_BASE+12)
#define butee_g (int *)(VERIN_AVALON_0_BASE+8)
//#define freq (int *)VERIN_AVALON_0_BASE
//#define duty (int *)(VERIN_AVALON_0_BASE+4)
#define config (int *)(VERIN_AVALON_0_BASE+16)
#define angle_barre (int *)(VERIN_AVALON_0_BASE+20)

unsigned int a,b;

int main() {
    alt_putstr("Salut ext!\n");
    alt_putstr("D�marrage du programme Nios II\n");

       // Initialisation des param�tres du PWM
       *freq = 0x0400;          // Fr�quence PWM : diviseur 1024 (48 kHz)
       *duty = 0x0200;          // Rapport cyclique � 50 %
       *PWM_CTRL_ADDR = 0x03;   // Activer le PWM avec les param�tres d�finis

       // Configuration initiale du registre de l'an�mom�tre
       *config_anemo = 0x0003; // b2=0 (Start/Stop d�sactiv�), b1=1 (mode continu), b0=1 (raz_n actif)
        unsigned int c,d;

         *butee_d=1320;
         *butee_g=410;
         *freq= 2000;
         *duty=1500;
         *config=1; // circuit gestion_verin actif, sortie pwm inactive

int data=0;
int i=0xFF;

  while (1) {
	  alt_putstr("Lecture des donn�es\n");

			// Lecture de l'�tat des boutons
			a = *boutons & 3; // Masquage pour ne lire que les deux premiers bits
			printf("Boutons = %u\n", a);

			// Lecture des donn�es de l'an�mom�tre
			b = *code;
			data=i&b;
			printf("data_anemometre = %d\n  config_anemo = %x\n", data,*config_anemo);
        switch (a) {
            case 0: *leds = 0; break;
            case 1: *leds = 0; break;
            case 2: break;
            case 3: *leds = *leds + 1; break;
            default: *leds = 0; break;
        }

        //pause de 1 seconde
      //  usleep(1000000);

          c=*freq;
          printf("freq= %d\n", c);
          d=*duty;
          printf("duty= %d\n", d);
          c=*butee_d;
          printf("butee_d= %d\n", c);
          d=*butee_g;
          printf("butee_g= %d\n", d);
          c=*config;
          printf("config= %d\n", c);
          d=*angle_barre;
          printf("angle_barre= %d\n", d);
          usleep(100000);

    }

    return 0;
}



