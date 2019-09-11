#include <stdio.h>
#include "system.h"
#include <alt_types.h>
#include <io.h>
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_timer_regs.h"

volatile int edge_capture;
unsigned int flag = 1;
unsigned int led = 0;
unsigned int counter = 0;
unsigned int *p_pio0 = (unsigned int *) PIO_0_BASE;

void handleTimerInterrupt (void* context, alt_u32 id)
{
	unsigned int factor = (IORD_32DIRECT(PIO_1_BASE, 0) & 0x0f) + 1;
	unsigned int flag = IORD_32DIRECT(PIO_1_BASE, 0) & 0x10;

	counter++;
	if(counter >= 10000/factor){
		if (flag){
		  if (led <= 5){
			  *(p_pio0+0) = 0x01 << led++;
		  }
		  else{
			  led = 0;
		  }
		}
		counter = 0;
	}
    IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE, 0);                             // Clear the interrupt flag
}


int main(void){
  alt_irq_register(TIMER_0_BASE, 0, handleTimerInterrupt);                       // Register the ISR for timer

  while(1){};
  return 0;
}
