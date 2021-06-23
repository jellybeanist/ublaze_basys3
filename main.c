
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
		for (u32 i=0; i<64; i = i + 4)
		{
			((u32*)(BRAM_WRITE_BASE_ADDRESS + (i)))[0] = HIGH;
		}
		sleep(2);
		for (u32 i=0; i<64; i = i + 4)
		{
			((u32*)(BRAM_WRITE_BASE_ADDRESS + (i)))[0] = LOW;
		}
		sleep(2);
	}
	return 0;
}
