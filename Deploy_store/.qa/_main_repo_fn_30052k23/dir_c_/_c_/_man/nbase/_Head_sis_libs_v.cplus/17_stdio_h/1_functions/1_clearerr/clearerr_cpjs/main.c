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
  FILE *pFile; 

  // pFile = fopen_c("myfile.txt", "r", __FILE__, __LINE__);
  pFile = fopen_c("myfile.txt", "r", __FILE__, __LINE__);

  fputc('x', pFile);

  fprintf(stdout, " ftell_c(pFile) = %ld,ferror(pFile) = %d, errno = %d\n", ftell_c(pFile, __FILE__, __LINE__), ferror(pFile), errno);

  perror("before clearerr: ");
  clearerr(pFile);
  perror("after clearerr: "); 
  fprintf(stdout, " ftell_c(pFile) = %ld,ferror(pFile) = %d, errno = %d\n", ftell_c(pFile, __FILE__, __LINE__), ferror(pFile), errno);

  fseek_c(pFile, 0, SEEK_END, __FILE__, __LINE__); 
  perror("after fseek_s: ");
  fprintf(stdout, " ftell_c(pFile) = %ld,ferror(pFile) = %d, errno = %d\n", ftell_c(pFile, __FILE__, __LINE__), ferror(pFile), errno);

  // char a = fgetc(pFile);


  fprintf(stdout, " ftell_c(pFile) = %ld,ferror(pFile) = %d, errno = %d\n", ftell_c(pFile, __FILE__, __LINE__), ferror(pFile), errno);
  perror("after fgetc");
  if (!ferror(pFile))
    printf("No errors reading myfile.txt\n");
  fclose(pFile);   

  // fprintf(stdout, " ftell_c(pFile) = %d, errno = %d", ftell_c(pFile, __FILE__, __LINE__), errno);

  return 0; 
}
