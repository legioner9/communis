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

/*fileno*/
/*#*/ int fileno_c(FILE *stream, const char *file, const int line)
{
    int a = fileno(stream);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fileno_c errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int fileno_cb(int cb(void), FILE *stream)
{
    int a = fileno(stream);
    if (-1 == a)
    {
        cb();
    }
    return a;
}