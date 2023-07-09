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

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    printf("\nflow [%%f]\n");

    double item;

    item = 10.12304;

    printf("[%%f]: [%f]\n", item);
    printf("[%%10f]: [%10f]\n", item);
    printf("[%%012f]: [%012f]\n", item);

    printf("\nflow [%%n]\n");

    int count;

    printf("this%%n is a test\n");
    printf("this%n is a test\n", &count);
    printf("count before %%n: %d\n", count);

    printf("\nflow [%%p]\n");

    int sample;
    printf("&sample: %%p\n");
    printf("&sample: %p\n", &sample);

    printf("\nflow [%%o], [%%x], [%%X]\n");

    unsigned num;

    printf("  %%d  %%o  %%x  %%X  %%a  %%A\n");
    for (num = 0; num < 32; num++)
    {
        printf("%2d= ", num);
        printf("%2o  ", num);
        printf("%2x  ", num);
        printf("%2X  ", num);
        printf("%2a  ", num);
        printf("%2A\n ", num);
    }
    printf("%2A\n ", 10.);

    printf("\nflow [%%g]\n");

    double f;

    printf("             %%f        %%g\n");

    for (f = 2.25; f < 1.0e+10; f = f * 10)
    {
        printf("%15.2f= ", f);
        printf("%8g\n", f);
    }

    printf("\nflow [%%m$]\n");

    int width;
    int num_2;
    float value;

    width = 1;
    num_2 = 2;
    value = 3.;

    printf("%%d %%d %%f:\n");
    printf("%d %d %f\n", width, num_2, value);
    printf("%%2$d:\n");
    printf("%2$d\n", width, num_2);
    printf("%%2$d %%1$d:\n");
    printf("%2$d %1$d\n", width, num_2);
    printf("[%%2$d] [%%3$5.1f] [%%1$d]:\n");
    printf("[%2$d] [%3$5.1f] [%1$d]\n", width, num_2, value);

    return 0;
}
