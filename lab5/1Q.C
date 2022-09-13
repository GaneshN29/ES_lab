#include <LPC17xx.h>
unsigned int i,j=0;
unsigned long LED = 0x00000010;
int main(void)
{
SystemInit();
 SystemCoreClockUpdate();
 LPC_PINCON->PINSEL0 = 0x0;
 LPC_GPIO0->FIODIR = 0XF0;
	while(1){
	for(j=0; j<16; j++){
 LPC_GPIO0->FIOPIN= j<<4;
 for(i=0; i<80000; i++);}
}
}