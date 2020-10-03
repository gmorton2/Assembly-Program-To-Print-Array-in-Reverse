#include <stdio.h>

extern "C" long int ctrl();

int main()
{
	long int result = -999;
	printf("%s\n", "This is the CS 240 midterm written by Garinn Morton");
	result = ctrl();
	printf("%s%ld%s\n", "The main program received this number : ", result, " and will now return to the operating system.");
	return result;
	
	
}