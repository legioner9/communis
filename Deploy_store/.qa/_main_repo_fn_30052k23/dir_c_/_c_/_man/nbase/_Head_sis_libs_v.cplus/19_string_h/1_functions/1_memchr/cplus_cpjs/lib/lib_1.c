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

#define DEBUG false

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to

*/

/*#*/ void *malloc_c(size_t size, const char *file, const int line)
{
    char *buf = malloc(size);
    if (buf == NULL)

    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from malloc_c size = %d, errno = %d\n", size, errno);
        perror("exit(1) with");
        exit(1);
    }
    return buf;
}