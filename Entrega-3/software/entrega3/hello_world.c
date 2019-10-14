#include <stdio.h>
#include "system.h"
#include <alt_types.h>
#include <io.h>

#define PERIPHERAL_PS2_0_BASE 0x80000

volatile unsigned int *pio_ps2 = (unsigned int *) PERIPHERAL_PS2_0_BASE;
volatile unsigned int *pio_led = (unsigned int *) PERIPHERAL_LED_0_BASE;

void PS2_init(){
	printf("Initializing PS2...\n");
	*(pio_ps2+1) = 1;
	printf("PS2 Status is now: %d\n", *(pio_ps2+1)&0x01);
}

void PS2_halt(){
	printf("Stopping PS2...\n");
	*(pio_ps2+1) = 0;
	printf("PS2 Status is now: %d\n", *(pio_ps2+1)&0x01);
}

void PS2_read_clickLeft(){
	if((*(pio_ps2+2)&0x10000) == 0x10000){
		printf("PS2 Click Left\n");
	}
    usleep(99000);
}

void PS2_read_clickRight(){
	if((*(pio_ps2+2)&0x20000) == 0x20000){
		printf("PS2 Click Right\n");
	}
	usleep(99000);
}

void PS2_read_clickMid(){
	if((*(pio_ps2+2)&0x40000) == 0x40000){
		printf("PS2 Click Mid\n");
	}
	usleep(99000);
}

void PS2_read_x(){
	printf("PS2 X pos: %d\n", *(pio_ps2+2)&0x400FF);
	usleep(99000);
}

void PS2_read_y(){
	printf("PS2 Y pos: %d\n", *(pio_ps2+2)&0x4FF00);
	usleep(99000);
}


int main(void){
	PS2_init();

	while(1){
		PS2_read_clickLeft();
		PS2_read_clickRight();
		PS2_read_clickMid();
		PS2_read_x();
		PS2_read_y();
	};

	return 0;
}
