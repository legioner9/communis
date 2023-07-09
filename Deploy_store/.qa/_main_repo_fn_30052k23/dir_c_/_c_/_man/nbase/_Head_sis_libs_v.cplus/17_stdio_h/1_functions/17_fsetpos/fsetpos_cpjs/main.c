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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

int main(int argc, char const *argv[])
{
  FILE *pFile;
  fpos_t position;

  pFile = fopen_c("myfile.txt", "w", __FILE__, __LINE__);
  fgetpos_c(pFile, &position, __FILE__, __LINE__);
  fprintf(stdout, "fgetpos = %d\n", position);
  fprintf(stdout, "ftell_c = %d\n", ftell_c(pFile, __FILE__, __LINE__));

  fputs_c("That is a sample", pFile, __FILE__, __LINE__);
  fprintf(stdout, "ftell_c = %d\n", ftell_c(pFile, __FILE__, __LINE__));
  fsetpos_c(pFile, &position, __FILE__, __LINE__);
  fprintf(stdout, "ftell_c = %d\n", ftell_c(pFile, __FILE__, __LINE__));

  fputs_c("This", pFile, __FILE__, __LINE__);
  fgetpos_c(pFile, &position, __FILE__, __LINE__);
  fprintf(stdout, "fgetpos = %d\n", position);
  fprintf(stdout, "ftell_c = %d\n", ftell_c(pFile, __FILE__, __LINE__));
  fclose_c(pFile, __FILE__, __LINE__);
  return 0;
}
