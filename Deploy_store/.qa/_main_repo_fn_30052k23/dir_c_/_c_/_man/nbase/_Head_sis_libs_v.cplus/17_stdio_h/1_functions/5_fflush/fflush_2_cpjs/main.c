#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>
#include <errno.h>
#include <unistd.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

int main(int argc, char const *argv[])
{
  char buffer[BUFSIZ];
  FILE *pFile1, *pFile2;

  pFile1=fopen ("myfile1.txt","w");
  pFile2=fopen ("myfile2.txt","a");

  setbuf ( pFile1 , buffer );
  fputs ("This is sent to a buffered stream",pFile1);
  fflush (pFile1);

  setbuf ( pFile2 , NULL );
  fputs ("This is sent to an unbuffered stream",pFile2);

  fclose (pFile1);
  fclose (pFile2);

  return 0;
}

// В этом примере для записи открываются два файла. Поток, связанный с файлом myfile1.txt устанавливается в выделенный пользователем 
// буфер; выполняется операция записи в него; данные логически являются частью потока, но не записываются на устройство до тех пор, пока не будет вызвана функция fflush.
// Второй буфер в примере, связанный с файлом myfile2.txt, имеет значение unbuffered, поэтому последующая операция вывода записывается на устройство как можно скорее.
// Однако конечное состояние одинаково как для буферизованных, так и для небуферизованных потоков после закрытия файлов (закрытие файла очищает его буфер).
