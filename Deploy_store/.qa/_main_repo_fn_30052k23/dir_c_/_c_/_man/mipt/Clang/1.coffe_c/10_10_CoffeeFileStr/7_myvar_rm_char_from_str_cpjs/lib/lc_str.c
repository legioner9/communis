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

#include <sys/stat.h>
#include <sys/types.h>

#include <dirent.h>
#include <fcntl.h>
#include <unistd.h>

#include "st_mode_1.h"

/*#*/ int cp_str_lc_str(char *to, char *from)
{
    int i = 0;
    while ((to[i] = from[i]) != '\0')
        ++i;
    return i;
}

/*#*/ int unseal_cntchar_lc_str(char *s)
{
    int i;
    int c;
    for (i = 0; i < strlen(s) + 1; ++i)
    {
        c = (int)s[i];
        if (c == '\0')
        {
            printf("\\0");
        }
        else if (c == '\n')
        {
            printf("\\n");
            putchar(c);
        }
        else if (c == '\f')
        {
            printf("\\f");
            putchar(c);
        }
        else if (c == '\t')
        {
            printf("\\t");
            putchar(c);
        }
        else if (c == '\v')
        {
            printf("\\v");
            putchar(c);
        }
        else if (c == '\a')
        {
            printf("\\a");
            putchar(c);
        }
        else if (c == '\b')
        {
            printf("\\b");
            putchar(c);
        }
        else
            putchar(c);
    }

    return 0;
}

/*#*/ int unseal_cntcharn_lc_str(char *s, int n)
{
    int i;
    int c;
    for (i = 0; i < n; ++i)
    {
        c = (int)s[i];
        if (c == '\0')
        {
            printf("\\0");
        }
        else if (c == '\n')
        {
            printf("\\n");
            putchar(c);
        }
        else if (c == '\f')
        {
            printf("\\f");
            putchar(c);
        }
        else if (c == '\t')
        {
            printf("\\t");
            putchar(c);
        }
        else if (c == '\v')
        {
            printf("\\v");
            putchar(c);
        }
        else if (c == '\a')
        {
            printf("\\a");
            putchar(c);
        }
        else if (c == '\b')
        {
            printf("\\b");
            putchar(c);
        }
        else
            putchar(c);
    }

    return 0;
}

/*#*/ char *l2a_free_lc_str(char *literal)
{ // mirror strdup
    size_t len = strlen(literal) + 1;
    char *arr = malloc(len);
    if (arr == NULL)
        return NULL;
    // strncpy(arr, literal, len);
    memcpy(arr, literal, len);
    // char arr[len];
    return arr;
}

/*#*/ char *strcat_lc_str(char *dest, char *src)
{
    size_t full_len_src = strlen(src) + 1;
    size_t len_dist = strlen(dest);

    for (size_t i = 0; i < full_len_src; i++)
    {
        dest[len_dist + i] = src[i];
    }

    return dest;
}

/*#*/ size_t strlen_lc_str(char *str)
{
    size_t i;
    for (i = 0; str[i] != '\0' && i < 1000; ++i)
    {
    }
    if (i == 999)
    {
        return -1;
    }
    return i;
}
/*#*/ char *rm_charn_lc_str(char *str, char removed, int n)
{
    size_t len_arg_str = strlen(str);
    int i = 1;
    // создадим два указателя на char
    char *p;     // отвечает за начало группы #
    char *pnext; // отвечает за конец группы #
    // указатель p получает адрес начала строки
    p = str;

    while (i < len_arg_str)
    {
        pnext = p;
        while (pnext[0] == removed)
        {
            pnext++;
            i++;
        }

        if (pnext != p)
        {
            p[0] = '\0';
            strcat(str, pnext);
        }
        i++;
        p++;
    }

    return str;
}
/*#*/
/*#*/
/*#*/