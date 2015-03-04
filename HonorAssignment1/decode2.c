#include <stdio.h>
//NAME ALEXANDER FEHSENFELD
//this code is supposed to have the same effect as the IA32 code in from problem 3.54


int decode2(int x, int y, int z)
{
  int a = (y-z); //a at %edx
  int b = a; //b @ %eax
  b = ((b<<31)>>31); //b still at %eax
  a = a * x;
  a = a ^ b; //xorl %edx, %eax
  return a;
}

int main()
{
  printf("%d", decode2(8,10,10));
}
