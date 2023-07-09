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

/*#*/ FILE *fopen_c(const char *path, const char *mode, const char *file, const int line)
{
    FILE *stream;
    if ((stream = fopen(path, mode)) != NULL)
    {
        return stream;
    }
    else if (stream == NULL)

    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fopen_s path = %s, mode = %s, errno = %d\n", path, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fseek_c(FILE *stream, int offset, int endSet, const char *file, const int line)
{
    if ((fseek(stream, offset, endSet)) != 0)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fseek_s position = %ld, offset = %d, errno = %d\n", ftell(stream), offset, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ char *fgets_c(char *str, int num, FILE *stream, const char *file, const int line)
{
    if (fgets(str, num, stream) == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgets_s position = %ld, str = %s, num = %d, errno = %d\n", ftell(stream), str, num, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fclose_c(FILE *stream, const char *file, const int line)
{
    if (fclose(stream) == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fclose_s position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fputs_c(const char *str, FILE *stream, const char *file, const int line)
{
    if (fputs(str, stream) == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fputs_s position = %ld,  str = %s errno = %d\n", ftell(stream), str, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fgetc_c(FILE *stream, const char *file, const int line)
{
    int c = fgetc(stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetc_c position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ int getc_c(FILE *stream, const char *file, const int line)
{
    int c = getc(stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetc_c position = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ int fputc_c(int character, FILE *stream, const char *file, const int line)
{
    int c = fputc(character, stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fputc_c position = %ld, character = %d, errno = %d\n", ftell(stream), character, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ long int ftell_c(FILE *stream, const char *file, const int line)
{
    long int a = ftell(stream);
    if (-1L == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from ftell_s errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ size_t fwrite_c(const void *ptr, size_t size, size_t count, FILE *stream, const char *file, const int line)
{
    size_t a = fwrite(ptr, size, count, stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fwrite_c position = %ld,size = %d,count = %d errno = %d\n", ftell(stream), size, count, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ size_t fread_c(void * restrict ptr, size_t size, size_t count, FILE *stream, const char *file, const int line)
{
    size_t a = fread(ptr, size, count, stream);
    if (a != count)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fread_c position = %ld,size = %d,count = %d errno = %d\n", ftell(stream), size, count, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
