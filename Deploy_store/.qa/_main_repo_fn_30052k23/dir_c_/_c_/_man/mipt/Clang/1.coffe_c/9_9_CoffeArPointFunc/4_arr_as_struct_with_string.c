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
//#include "lib/io_1.h"
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
void arrintcpy(int width_src, int dist[], int *src);

typedef struct COmm
{
    int co;
    char comm[];
} Comm;

typedef struct ArrInt
{
    int ai;
    int aint[];
} Arrint;

typedef struct SArr
{
    // int width;
    Comm comm;
    Arrint arrint;

} Sarrint;

Arrint new_arrint

Sarrint new_sarrint(Arrint ai ,Comm co)
{
    Sarrint res;
    res.width = width;
    int *dest = res.arrint;
    arrintcpy(width, dest, arrint);
    return res;
}

// void get_arrint(int width, int *arrint, char *comment)
// {
//     printf("%s:", comment);
//     for (int i = 0; i < width; i++)
//     {
//         printf("Enter %d item from %d ", i, width);
//         scanf("%d", arrint + i);
//     }
// }

// void get_sarrint(Sarrint *saint, char *comment)
// {
//     printf("%s\n enter width\n", comment);
//     scanf("%d", &(saint->width));
//     get_arrint(saint->width, (saint->arrint), "");
// }

// void arrintcpy(int width_src, int dest[], int src[])
// {
//     for (int i = 0; i < width_src; i++)
//     {
//         *(dest + i) = *(src + i);
//     }
// }

// void prn_arrint(int width_arr, int arrint[], char *comment)
// {
//     for (int i = 0; i < width_arr; i++)
//     {
//         printf("%s (%d: %d)\n", comment, i, *(arrint + i));
//     }
// }

// void prn_sarrint(Sarrint *saint, char *comment)
// {
//     printf("%s\nwidth: %d\n", comment, saint->width);
//     prn_arrint(saint->width, saint->arrint, "arr from sarrint");
// }

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    // int arr[2] = {3, 5};
    // int arr[2];
    // get_arrint(2, arr, "Enter int for arrint:\n");
    // int *cpy;

    // arrintcpy(2, cpy, arr);
    // prn_arrint(2, cpy, "cpy: ");

    // Sarrint iarr = new_sarrint(2, cpy);
    // prn_sarrint(&iarr, "iarr: ");

    // Sarrint saint_2;
    // get_sarrint(&saint_2, "saint_2: ");
    // prn_sarrint(&saint_2, "this saint_2");

    return 0;
}
