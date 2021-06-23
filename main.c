
#include "main.h"
#include <stdio.h>
#include <sleep.h>
u32 HIGH = 1;
u32 LOW = 0;
u32 address = 0;

int main (void)
{
	while (1)
	{
		for (int i=0; i<16; i = i++)
		{
			((u32*)(BRAM_WRITE_BASE_ADDRESS + (address+i)))[0] = HIGH;
		}
		sleep(2);
		for (int i=0; i<16; i = i++)
		{
			((u32*)(BRAM_WRITE_BASE_ADDRESS + (address+i)))[0] = LOW;
		}
		sleep(2);
	}
	return 0;
}
