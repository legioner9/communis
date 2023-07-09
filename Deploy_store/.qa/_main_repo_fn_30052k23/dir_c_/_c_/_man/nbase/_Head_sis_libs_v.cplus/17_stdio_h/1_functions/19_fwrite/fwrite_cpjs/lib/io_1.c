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

/*#*/ FILE *fopen_c(const char *path, const char *mode)
{
    FILE *stream;
    if ((stream = fopen(path, mode)) != NULL)
    {
        return stream;
    }
    else if (stream == NULL)
    {
        printf("from fopen_s position = %ld, path = %s, mode = %s, errno = %d\n", ftell(stream), path, mode, errno);
        perror("exit(1) with");
        exit(1);
    }
}

/*#*/ int fseek_c(FILE *stream, int offset, int endSet)
{
    if ((fseek(stream, offset, endSet)) != 0)
    {
        printf("from fseek_s position = %ld, offset = %d, errno = %d\n", ftell(stream), offset, errno);
        perror("exit(1) with");
        exit(1);
    }
}
/*#*/ char *fgets_c(char *str, int num, FILE *stream)
{
    if (fgets(str, num, stream) == NULL)
    {
        printf("from fgets_s position = %ld, str = %s, num = %d, errno = %d\n", ftell(stream), str, num, errno);
        perror("exit(1) with");
        exit(1);
    }
}

/*#*/ int fclose_c(FILE *stream)
{
    if (fclose(stream) == EOF)
    {
        printf("from fclose_s position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(1) with");
        exit(1);
    }
}

/*#*/ int fputs_c(const char *str, FILE *stream)
{
    if (fputs(str, stream) == EOF)
    {
        printf("from fputs_s position = %ld,  str = %s errno = %d\n", ftell(stream), str, errno);
        perror("exit(1) with");
        exit(1);
    }
}

/*#*/ int fgetc_c(FILE *stream)
{
    int c = fgetc(stream);
    if (ferror(stream))
    {
        printf("from fgetc_c position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(1) with");
        exit(1);
    }
    return c;
}

/*#*/ int getc_c(FILE *stream)
{
    int c = getc(stream);
    if (ferror(stream))
    {
        printf("from fgetc_c position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(1) with");
        exit(1);
    }
    return c;
}

/*#*/ int fputc_c(int character, FILE *stream)
{
    int c = fputc(character, stream);
    if (ferror(stream))
    {
        printf("from fputc_c position = %ld, character = %d, errno = %d\n", ftell(stream), character, errno);
        perror("exit(1) with");
        exit(1);
    }
    return c;
}

/*#*/ size_t fwrite_c(const void *ptr, size_t size, size_t count, FILE *stream)
{
    size_t a = fwrite(ptr, size, count, stream);
    if (ferror(stream))
    {
        printf("from fwrite_c position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(1) with");
        exit(1);
    }
    return a;
}