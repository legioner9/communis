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
#include <unistd.h>
#include <wchar.h>
#include <wctype.h>

// LIB FROM HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
//#include "lib/dirent_1.h"
//#include "lib/fcntl_1.h"
// #include "lib/io_1.h"
//#include "lib/l3p_1.h"
//#include "lib/lc_0.h"
//#include "lib/lc_1.h"
//#include "lib/lc_in.h"
//#include "lib/lc_io.h"
//#include "lib/lc_pipe.h"
//#include "lib/lc_str.h"
//#include "lib/lc_time.h"
//#include "lib/lib_1.h"
//#include "lib/libgen_1.h"
//#include "lib/socket_1.h"
//#include "lib/st_mode_1.h"
//#include "lib/sys_stat_1.h"
//#include "lib/uni_1.h"

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/ipc.h>
#include <sys/mman.h>
#include <sys/msg.h>
#include <sys/resource.h>
#include <sys/select.h>
#include <sys/sem.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <sys/wait.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <getopt.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <mqueue.h>
#include <poll.h>
#include <pthread.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <search.h>
#include <semaphore.h>
#include <signal.h>
#include <spawn.h>
#include <stdarg.h>
#include <stddef.h>
#include <threads.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
#define N 7
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

// _GCC_DB from makefile
/* schema

main(){
    int a {{side of rect}}
    int b {{side of rect}}
    int perimetr {{perimetr of rect}}

    perimetr = (a+b)*2
}

*/

char *strcat_z(char *dest, char *src);
size_t strlen_z(char *str);
int unseal_cntchar_lc_str(char *s);
int unseal_cntcharn_lc_str(char *s, int n);
char *rm_charn(char *str, int n);

/*---------------------------------------------------------------------*/
int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    char buf[10]; // buffer for pipe
    size_t len_read; // length of read string
    FILE * fd_in = fopen("7_myvar.in", "r");
    FILE * fd_out = fopen("7_myvar.out", "w");

    return 0;
}
/*---------------------------------------------------------------------*/
char *rm_charn(char *str, int n)
{
    size_t len = strlen_z(str);
    int i = 1;
    // создадим два указателя на char
    char *p;     // отвечает за начало группы #
    char *pnext; // отвечает за конец группы #
    // указатель p получает адрес начала строки
    p = str;

    unseal_cntcharn_lc_str(str, n);

    while (i < len)
    {
        pnext = p;
    }

    return str;
}

char *strcat_z(char *dest, char *src)
{
    size_t full_len_src = strlen_z(src) + 1;
    size_t len_dist = strlen(dest);

    for (size_t i = 0; i < full_len_src; i++)
    {
        dest[len_dist + i] = src[i];
    }

    return dest;
}

size_t strlen_z(char *str)
{
    size_t i;
    for (i = 0; str[i] != '\0' && i < 1000; ++i)
    {
    }
    return i;
}

int unseal_cntchar(char *s)
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
        else
            putchar(c);
    }

    return 0;
}

int unseal_cntcharn(char *s, int n)
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
        else
            putchar(c);
    }

    return 0;
}
