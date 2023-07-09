// Циклы for, while и do while
/*
for ( инициализация переменной; условие; изменение значения переменной ) {
  // тело цикла (тут находится код который будет повторяться)
}
*/

#include <stdio.h>

int main(int argc, char const *argv[])
{

  printf("while\n");
  int i;

  while (i < 10)
  {
    printf("%d\n", i);
    i++;
  }
  // getchar();
}
