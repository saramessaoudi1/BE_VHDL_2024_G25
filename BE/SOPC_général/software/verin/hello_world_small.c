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

#define PWM_CTRL_ADDR (unsigned int*)(PWM_0_BASE + 8)
#define config_anemo (unsigned int*)(AVALON_ANEMO_0_BASE)
#define code (unsigned int*)(AVALON_ANEMO_0_BASE + 4)

#define freq (unsigned int *)VERIN_AVALON_0_BASE
#define duty (unsigned int *)(VERIN_AVALON_0_BASE+ 4)
#define butee_d (int *)(VERIN_AVALON_0_BASE+12)
#define butee_g (int *)(VERIN_AVALON_0_BASE+8)
#define verin_freq (int *)VERIN_AVALON_0_BASE
#define verin_duty (int *)(VERIN_AVALON_0_BASE+4)
#define config (int *)(VERIN_AVALON_0_BASE+16)
#define angle_barre (int *)(VERIN_AVALON_0_BASE+20)

unsigned int a,b;

int main() {
	unsigned int a,c,d;
	 unsigned char b;

	 printf("Hello from Nios II!\n");
	 *butee_d=1320;
	 *butee_g=410;
	 *freq= 2000;
	 *duty=1500;
	 //*config=1; // circuit gestion_verin actif, sortie pwm inactive

	 while (1)
	 {
	 //test bp en mode manuel seul
	 b=*boutons;
	 printf("code_fonction= %d\n", b);
	 switch(b)
	 {
	 case 1: *config=1;break;
	 case 0: *config=0;break;
	 //case 2: *config=3;break;
	 default:*config=1;
	 }

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
