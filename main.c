#include "main.h"
#include <stdio.h>
#include <sleep.h>
u32 address = 0;

int main (void)
{
	while (1)
	{

		//switches are being used to change value (HIGH or LOW) of the LEDs, controlled by registers.
		for (int i=0; i<16; i++)
		{
			((u32*)(BRAM_WRITE_BASE_ADDRESS + 4*(address+i)))[0] = ((u32*)(BRAM_READ_BASE_ADDRESS + 4*(address+i)))[0];
		}

	}

	return 0;
}
