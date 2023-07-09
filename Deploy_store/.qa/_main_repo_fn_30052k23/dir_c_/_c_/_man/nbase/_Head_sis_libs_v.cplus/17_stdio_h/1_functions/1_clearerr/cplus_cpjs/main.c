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
  FILE * pFile;
  pFile = fopen_c("myfile.txt","r", __FILE__, __LINE__);
  if (pFile==NULL) perror ("Error opening file");
  else {
    fputc('x',pFile);
    if (ferror (pFile)) {
      printf ("Error Writing to myfile.txt\n");
      clearerr (pFile);
    }
    fgetc_c (pFile, __FILE__, __LINE__);
    if (!ferror (pFile))
      printf ("No errors reading myfile.txt\n"); 
    fclose_c (pFile, __FILE__, __LINE__);
  }
    return 0;
}

// Эта программа открывает существующий файл под названием myfile.txt для чтения и вызывает ошибку ввода-вывода при попытке записи на него. Эта ошибка очищается с помощью clearerr, поэтому вторая проверка ошибок возвращает false.

// Выход:
// Error Writing to myfile.txt
// No errors reading myfile.txt

