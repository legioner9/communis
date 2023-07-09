#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// lc_

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

#include "st_mode_1.h"

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to

*/

/*clearerr**/
/*fclose*/
/*#*/ int fclose_c(FILE *stream, const char *file, const int line)
{
    int a = fclose(stream);
    if (a == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fclose_c ftell(stream) = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*feof**/
/*ferror**/
/*fflush**/
/*fgetc*/
/*#*/ int fgetc_c(FILE *stream, const char *file, const int line)
{
    int c = fgetc(stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetc_c ftell(stream) = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}
/*fgetpos*/
/*#*/ int fgetpos_c(FILE *stream, fpos_t *pos, const char *file, const int line)
{
    int a = fgetpos(stream, pos);
    if (0 != a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetpos_c ftell(stream) = %ld, pos = %lu, errno = %d\n", ftell(stream), pos, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*fgets*/
/*#*/ char *fgets_c(char *str, int num, FILE *stream, const char *file, const int line)
{
    char *a = fgets(str, num, stream);
    if (a == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgets_s ftell(stream) = %ld, str = %s, num = %d, errno = %d\n", ftell(stream), str, num, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*fopen*/
/*#*/ FILE *fopen_c(const char *path, const char *mode, const char *file, const int line)
{
    FILE *stream = fopen(path, mode);
    if (stream == NULL)

    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fopen_c path = %s, mode = %s, errno = %d\n", path, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }

    return stream;
}
/*fprintf*/
/*fputc*/
/*#*/ int fputc_c(int character, FILE *stream, const char *file, const int line)
{
    int c = fputc(character, stream);
    if (character != c)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fputc_c ftell(stream) = %ld, character = %d, errno = %d\n", ftell(stream), character, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}
/*fputs*/
/*#*/ int fputs_c(const char *str, FILE *stream, const char *file, const int line)
{
    int a = fputs(str, stream);
    if (a == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fputs_s ftell(stream) = %ld,  str = %s errno = %d\n", ftell(stream), str, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*fread*/
/*#*/ size_t fread_c(void *ptr, size_t size, size_t count, FILE *stream, const char *file, const int line)
{
    size_t a = fread(ptr, size, count, stream);
    if (a != count)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        // fprintf(stderr, "from fread_c ftell(stream) = %ld,size = %d,count = %d errno = %d\n", ftell(stream), size, count, errno);
        fprintf(stderr, "from fread_c size = %lu,count = %ld errno = %d\n", size, count, errno);

        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*freopen*/
/*#*/ FILE *freopen_c(const char *filename, const char *mode, FILE *stream, const char *file, const int line)
{
    FILE *stream_out = freopen(filename, mode, stream);
    if (stream_out == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from freopen_s filename = %s, mode = %s, errno = %d\n", filename, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }

    return stream_out;
}
/*fscanf*/
/*fseek*/
/*#*/ int fseek_c(FILE *stream, int offset, int endSet, const char *file, const int line)
{
    int a = fseek(stream, offset, endSet);
    if (a != 0)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fseek_s ftell(stream) = %ld, offset = %d, errno = %d\n", ftell(stream), offset, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*fsetpos*/
/*#*/ int fsetpos_c(FILE *stream, fpos_t *pos, const char *file, const int line)
{
    int a = fsetpos(stream, pos);
    if (0 != a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fsetpos_c ftell(stream) = %ld, pos = %lu, errno = %d\n", ftell(stream), pos, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*ftell*/
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
/*fwrite*/
/*#*/ size_t fwrite_c(const void *ptr, size_t size, size_t count, FILE *stream, const char *file, const int line)
{
    size_t a = fwrite(ptr, size, count, stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fwrite_c ftell(stream) = %ld,size = %lu,count = %ld errno = %d\n", ftell(stream), size, count, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*getc*/
/*#*/ int getc_c(FILE *stream, const char *file, const int line)
{
    int c = getc(stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetc_c ftell(stream) = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}
/*getchar*/
/*#*/ int getchar_c(const char *file, const int line)
{
    int c = getchar();
    if (ferror(stdin))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from getchar_c errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}
/*gets**/
/*perror*/
/*printf*/
/*putc*/
/*#*/ int putc_c(int character, FILE *stream, const char *file, const int line)
{
    int c = putc(character, stream);
    if (character != c)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from putc_c ftell(stream) = %ld, character = %d, errno = %d\n", ftell(stream), character, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}
/*putchar*/
/*#*/ int putchar_c(int character, const char *file, const int line)
{
    int c = putchar(character);
    if (character != c)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from putchar_c character = %d, errno = %d\n", character, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}
/*puts*/
/*#*/ int puts_c(const char *str, const char *file, const int line)
{
    int a = puts(str);
    if (a == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from puts_s str = %s errno = %d\n", str, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
/*remove*/
// int remove_c(const char *filename, const char *file, const int line)
// {
//     int a = remove(filename);
//     if (a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from remove_c filename = %s, errno = %d\n", filename, errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }

/*#*/ int remove_с(char *filename, const char *file, const int line, int st__mo, int st__if, int st__re)
{


    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = remove(filename);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from remove_с filename = %s, errno = %d\n", filename, errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                    printf("return -1");
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                    printf("exit(errno): ");
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                    printf("return original error");
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from remove_с filename = %s, errno = %d\n", filename, errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_ONE exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/
  
}
/*rename*/
/*rewind*/
/*scanf*/
/*setbuf**/
/*setvbuf**/
/*snprintf**/
/*sprintf*/
/*sscanf*/
/*tmpfile*/
/*tmpnam*/
/*ungetc*/
/*vfprintf*/
/*vfscanf*/
/*vprintf*/
/*vscanf*/
/*vsnprintf*/
/*vsprintf*/
/*vsscanf*/

/*#*/ int is_ist_c(const char *filename, const char *file, const int line)
{
    int a = access(filename, 0);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from is_ist_c filename = %s, errno = %d\n", filename, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int or_ist_(const char *filename)
{
    return (access(filename, 0) != -1);
}

/*#*/ void prpos_(FILE *stream, const char *info)
{
    printf("\ninfo:%s, ftell(stream) = %ld\n", info, ftell(stream));
}

// int main(int argc, char const *argv[])
// {
//     return 0;
// }