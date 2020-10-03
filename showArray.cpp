#include <stdio.h>

extern "C" void showArray(unsigned long[], long);

void showArray(unsigned long arr[], long size)
{
	printf("\n");
	for(long i = 0; i < size; i++)
	{
		printf("%ld ", arr[i]);
		printf("\n");
	}
	printf("\n");
}