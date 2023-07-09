// Циклы for, while и do while
/*
for ( инициализация переменной; условие; изменение значения переменной ) {
  // тело цикла (тут находится код который будет повторяться)
}
*/

#include <stdio.h>

int main(int argc, char const *argv[])
{

  printf("for\n");
  int i;

  for (i = 0; i < 10; i++)
  {
    printf("%d\n", i);
  }
  // getchar();
}
