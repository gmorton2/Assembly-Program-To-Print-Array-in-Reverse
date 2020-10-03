#Garinn Morton
#Assembly MW 1-2:50
#Assignment 4

rm *.o
rm *.out

nasm -f elf64 -l manage.lis -o manage.o manage.asm

nasm -f elf64 -l reverse.lis -o reverse.o reverse.asm

g++ -c -m64 -Wall -std=c++14 -o main.o -fno-pie -no-pie main.cpp

g++ -c -m64 -Wall -std=c++14 -o getData.o -fno-pie -no-pie getData.cpp

g++ -c -m64 -Wall -std=c++14 -o showArray.o -fno-pie -no-pie showArray.cpp

g++ -m64 -std=c11 -o main.out main.o manage.o reverse.o getData.o showArray.o -fno-pie -no-pie

./main.out

