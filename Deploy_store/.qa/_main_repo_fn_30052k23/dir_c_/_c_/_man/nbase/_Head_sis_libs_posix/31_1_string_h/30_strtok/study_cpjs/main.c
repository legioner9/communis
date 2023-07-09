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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/dirent_1.h"
#include "lib/fcntl_1.h"
#include "lib/io_1.h"
#include "lib/l3p_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lc_io.h"
#include "lib/lc_pipe.h"
#include "lib/lc_str.h"
#include "lib/lib_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#define N 6

#include <aio.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
// #define __STDC_WANT_LIB_EXT1__ 1
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

char *lta_free(char *literal)
{
    size_t len = strlen(literal);
    char *arr = malloc(len + 1);
    strncpy(arr, literal,len + 1);
    // char arr[len];
    return arr;
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    printf(" используем версию языка %ld\n", __STDC_VERSION__);
    // Массив со строкой для поиска
    //    char *str=" test1/test2/test3/test4";
    //    unseal_cntchar_lc_str(str);
    char *str = " test1/test2/test3/test4";
    // size_t len = strlen(str);
    // char astr[len + 1];
    // strcpy(astr, str);

    // char *astr = strdup(str);
    char *astr = l2a_free_lc_str(str);

    unseal_cntchar_lc_str(astr);
    putc('\n', stdout);

    // Набор символов, которые должны входить в искомый сегмент
    char sep[] = "/";
    // Переменная, в которую будут заноситься начальные адреса частей
    // строки str
    char *istr;

    printf("Исходная строка: %s\n", str);
    printf("Результат разбиения:\n");
    // Выделение первой части строки
    istr = strtok(astr, sep);

    // Выделение последующих частей
    while (istr != NULL)
    {
        // Вывод очередной выделенной части
        printf("%s\n", istr);
        // Выделение очередной части строки
        istr = strtok(NULL, sep);
    }
    free(astr);
    return 0;
}
