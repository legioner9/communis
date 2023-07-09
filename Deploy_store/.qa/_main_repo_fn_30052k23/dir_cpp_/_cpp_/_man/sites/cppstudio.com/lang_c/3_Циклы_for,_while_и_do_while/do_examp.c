// Циклы for, while и do while
/*
for ( инициализация переменной; условие; изменение значения переменной ) {
  // тело цикла (тут находится код который будет повторяться)
}
*/

#include <stdio.h>

int main(int argc, char const *argv[])
{
  printf("do\n");
  int i;

  do
  {
    printf("%d\n", i);
    i++;
  } while (i < 10);

  //  getchar();
}
