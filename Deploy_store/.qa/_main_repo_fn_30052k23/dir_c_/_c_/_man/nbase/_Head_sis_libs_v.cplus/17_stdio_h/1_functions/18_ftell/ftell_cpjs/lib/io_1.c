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

/*#*/ FILE *fopen_s(const char *path, const char *mode)
{
    FILE *pF;
    if ((pF = fopen(path, mode)) != NULL)
    {
        return pF;
    }
    else if (pF == NULL)
    {
        printf("from fopen_s path = %s, mode = %s, errno = %d\n", path, mode, errno);
        perror("exit(1) with");
        exit(1);
    }
}
