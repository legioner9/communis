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

/*#*/ int fseek_s(FILE *pF, int offset, int endSet)
{
    if ((fseek(pF, offset, endSet)) != 0)
    {
        printf("from fseek_s offset = %d, errno = %d\n", offset, errno);
        perror("exit(1) with");
        exit(1);
    }
}
/*#*/ char *fgets_s(char *str, int num, FILE *stream)
{
    if (fgets(str, num, stream) == NULL)
    {
        printf("from fgets_s str = %s, num = %d, errno = %d\n", str, num, errno);
        perror("exit(1) with");
        exit(1);
    }
}

/*#*/ int fclose_s(FILE *stream)
{
    if (fclose(stream) == EOF)
    {
        printf("from fclose_s errno = %d\n", errno);
        perror("exit(1) with");
        exit(1);
    }
}

/*#*/ int fputs_s(const char *str, FILE *stream)
{
    if (fputs(str, stream) == EOF)
    {
        printf("from fputs_s str = %s errno = %d\n", str, errno);
        perror("exit(1) with");
        exit(1);
    }
}