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

#define wigth_pic 20
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

/*---------------------------------------------------------------------*/
/*-----------------------------------------------------------*/
/*-------------------------------------------------*/

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{

#define wigth_pic 25
    int before = 0; // flag: exist * before point
    int count = 0;  // numerus rectangle
    char buf_out[wigth_pic] = {};

    uns_ns_lc_str(buf_out, wigth_pic, "char buf_out[wigth_pic] = {}; => buf_out:");
    // char * current_str, priore_str, posterior_str;
    char *curr_str, *prio_str, *post_str;

    FILE *fdpic = fopen_c("pict", "r", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI); // fd picture

    fscanf(fdpic, "%s", buf_out);
    size_t buf_len = strlen(buf_out);

    uns_ns_lc_str(buf_out, wigth_pic, "fscanf(fdpic, \"%s\", buf_out) => buf_out:");

    prio_str = (char *)calloc(buf_len, sizeof(char));
    curr_str = (char *)calloc(buf_len, sizeof(char));
    uns_ns_lc_str(curr_str, buf_len, "curr_str = (char *)calloc(buf_len, sizeof(char)); => curr_str:");
    uns_ns_lc_str(prio_str, buf_len, "prio_str = (char *)calloc(buf_len, sizeof(char)); => prio_str:");

    memset(prio_str, '.', sizeof(char) * buf_len);
    uns_ns_lc_str(prio_str, buf_len, "memset(prio_str, '.', sizeof(char) * buf_len); => prio_str:");

    do
    {

        memcpy(curr_str, buf_out, buf_len);
        // unseal_cntcharns_lc_str(curr_str, buf_len, "memcpy(curr_str, buf_out, buf_len); => curr_str:");

        for (int i = 0; i < buf_len; i++)
        {
            // если встртился "верхний левый угол" прямоугольника
            // сосчитаем его
            if (curr_str[i] == '*')
            {
                if (before == 0 && prio_str[i] == '.')
                {
                    count++;
                    printf("i: %d, count: %d\n", i, count);
                }
                before = 1;
            }
            else if (curr_str[i] == '.')
            {
                before = 0;
            }
        }

        memcpy(prio_str, curr_str, buf_len);
        uns_ns_lc_str(prio_str, buf_len, "memcpy(prio_str, curr_str, buf_len); => prio_str:");

    } while (fscanf(fdpic, "%s", buf_out) != EOF);

    printf("count: %d\n", count);

    free(prio_str);
    free(curr_str);
    free(fdpic);

    return 0;
}

/*-------------------------------------------------*/
/*-----------------------------------------------------------*/
/*---------------------------------------------------------------------*/
