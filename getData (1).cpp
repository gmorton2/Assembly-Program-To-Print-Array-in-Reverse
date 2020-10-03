#include <stdio.h>
#include <iostream>
#include <string>
#include <cstring>

extern "C" long getData(unsigned long[], long);

using namespace std;
long getData(unsigned long myArray[], long size)
{
	unsigned long input;
	int i = 0;
	long sizeA = 0;

	while(!cin.eof())
	{
		cin >> input;
		myArray[i] = input;
		sizeA++;
		i++;
	}	
	cin.clear();
	return sizeA;
}