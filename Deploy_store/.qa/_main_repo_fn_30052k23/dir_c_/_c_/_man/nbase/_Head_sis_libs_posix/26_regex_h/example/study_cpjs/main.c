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
#include "lib/lc_in.h"
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
#include <poll.h>
#include <pwd.h>
#include <regex.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
// #define _GNU_SOURCE

#define ARRAY_SIZE(arr) (sizeof((arr)) / sizeof((arr)[0]))
static const char *const str = "1) John Driverhacker;\n2) John Doe;\n3) John Foo;\n";
static const char *const re = "John.*o";

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{

    static const char *s = str;

    regex_t regex;

    regmatch_t pmatch[1];

    regoff_t off, len;

    if (regcomp(&regex, re, REG_NEWLINE))

        exit(EXIT_FAILURE);

    printf("String = \"%s\"\n", str);

    printf("Matches:\n");

    for (int i = 0;; i++)
    {

        if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))

            break;

        off = pmatch[0].rm_so + (s - str);

        len = pmatch[0].rm_eo - pmatch[0].rm_so;

        printf("#%d:\n", i);

        printf("offset = %jd; length = %jd\n", (intmax_t)off,

               (intmax_t)len);

        printf("substring = \"%.*s\"\n", len, s + pmatch[0].rm_so);

        s += pmatch[0].rm_eo;
    }

    return 0;
}
