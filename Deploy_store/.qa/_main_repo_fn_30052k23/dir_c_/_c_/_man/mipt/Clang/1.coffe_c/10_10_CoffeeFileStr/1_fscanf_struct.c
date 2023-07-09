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

typedef struct Aint{
    int x,y;
} Ai;

Ai get_struct_from_fill (FILE *fd){
    Ai res;
    fscanf(fd,"%d%d",&(res.x),&(res.y))
    return ret;
}

main(){
    FILE *fdn = NULL;
    fdn = fopen("list.fill","r");
    int width_sarr; {{width Ai array}}
    fscanf(fdn,"%d",&width_sarr);

    Ai sarr[width_sarr];

    for(int i = 0;i<width_sarr;i++){
        sarr[i] = get_struct_from_fill(fdn);
    }

}

*/

typedef struct Aint
{
    int x, y;
} Ai;

Ai get_struct_from_fill(FILE *fd)
{
    Ai res;
    fscanf(fd, "%d%d", &(res.x), &(res.y));
    return res;
}

void prn_sarr(int width, Ai sarr[], char *comment)
{

    printf("%s\n", comment);
    for (int i = 0; i < width; i++)
    {
        printf("x[%d] = %d,y[%d] = %d\n", i, sarr[i].x, i, sarr[i].y);
    }
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    FILE *fdn;
    int width_sarr;

    if ((fdn = fopen("list.fill", "r")) == NULL)
    {
        perror("list.fill not open:");
        exit(1);
    }

    fscanf(fdn, "%d", &width_sarr);
    printf("width sarr: %d", width_sarr);

    Ai sarr[width_sarr];

    for (int i = 0; i < width_sarr; i++)
    {
        sarr[i] = get_struct_from_fill(fdn);
    }

    prn_sarr(width_sarr, sarr, "that sarr:\n");
    fclose(fdn);
    return 0;
}
