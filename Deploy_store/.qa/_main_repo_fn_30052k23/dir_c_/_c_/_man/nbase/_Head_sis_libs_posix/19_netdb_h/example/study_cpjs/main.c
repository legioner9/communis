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
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#define N 6

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
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
#include <gdbm.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
#define MAX_BUF 10000
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int buflen, erange_cnt, s;
    struct protoent result_buf;
    struct protoent *result;
    char buf[MAX_BUF];
    char **p;

    if (argc < 2)
    {
        printf("Usage: %s proto-name [buflen]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    buflen = 1024;
    if (argc > 2)
        buflen = atoi(argv[2]);

    if (buflen > MAX_BUF)
    {
        printf("Exceeded buffer limit (%d)\n", MAX_BUF);
        exit(EXIT_FAILURE);
    }

    erange_cnt = 0;
    do
    {
        s = getprotobyname_r(argv[1], &result_buf, buf, buflen, &result);
        if (s == ERANGE)
        {
            if (erange_cnt == 0)
                printf("ERANGE! Retrying with larger buffer\n");
            erange_cnt++;

            /* Increment a byte at a time so we can see exactly
               what size buffer was required */

            buflen++;

            if (buflen > MAX_BUF)
            {
                printf("Exceeded buffer limit (%d)\n", MAX_BUF);
                exit(EXIT_FAILURE);
            }
        }
    } while (s == ERANGE);

    printf("getprotobyname_r() returned: %s  (buflen=%d)\n",
           (s == 0)        ? "0 (success)"
           : (s == ENOENT) ? "ENOENT"
                           : strerror(s),
           buflen);

    if (s != 0 || result == NULL)
    {
        printf("Call failed/record not found\n");
        exit(EXIT_FAILURE);
    }

    printf("p_name=%s; p_proto=%d; aliases=", result_buf.p_name, result_buf.p_proto);
    for (p = result_buf.p_aliases; *p != NULL; p++)
        printf("%s ", *p);
    printf("\n");

    return 0;
}
