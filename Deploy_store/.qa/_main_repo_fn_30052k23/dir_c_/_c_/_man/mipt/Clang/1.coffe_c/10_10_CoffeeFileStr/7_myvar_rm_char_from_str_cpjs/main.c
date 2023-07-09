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
#include "lib/dirent_1.h"
#include "lib/fcntl_1.h"
#include "lib/io_1.h"
#include "lib/l3p_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lc_in.h"
#include "lib/lc_io.h"
#include "lib/lc_num.h"
#include "lib/lc_pipe.h"
#include "lib/lc_str.h"
#include "lib/lc_time.h"
#include "lib/lib_1.h"
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

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

char *rm_charn(char *str, char removed, int n);

/*---------------------------------------------------------------------*/
/*-----------------------------------------------------------*/
/*-------------------------------------------------*/

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    char buf[10];    // buffer for pipe
    size_t len_read; // length of read string

    FILE *fd_in = fopen_c("in", "r", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);
    FILE *fd_out = fopen_c("out", "w", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);

    while (fgets(buf, 9, fd_in) != NULL)
    {
        len_read = strlen_lc_str(buf);
        if (len_read != -1)
            buf[len_read] = '\0';
        // {
        //     if (len_read < 9)
        //         buf[len_read] = '\0';
        //     else
        //         buf[9] = '\0';
        // }
        rm_charn_lc_str(buf, '#', 10);
        fputs(buf, fd_out);
    }

    return 0;
}

/*-------------------------------------------------*/
/*-----------------------------------------------------------*/
/*---------------------------------------------------------------------*/

char *rm_charn(char *str, char removed, int n)
{
    size_t len_arg_str = strlen_lc_str(str);
    int i = 1;
    // создадим два указателя на char
    char *p;     // отвечает за начало группы #
    char *pnext; // отвечает за конец группы #
    // указатель p получает адрес начала строки
    p = str;

    unseal_cntcharn_lc_str(str, n);
    printf("\n");

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
            strcat_lc_str(str, pnext);
            unseal_cntcharn_lc_str(str, n);
            printf("\n");
        }
        i++;
        p++;
    }

    return str;
}