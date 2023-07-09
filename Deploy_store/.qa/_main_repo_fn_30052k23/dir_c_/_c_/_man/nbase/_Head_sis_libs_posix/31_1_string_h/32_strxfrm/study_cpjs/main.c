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
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    setlocale(LC_COLLATE, "cs_CZ.iso88592");

    const char *in1 = "hrnec";
    char out1[1 + strxfrm(NULL, in1, 0)];
    strxfrm(out1, in1, sizeof out1);

    const char *in2 = "chrt";
    char out2[1 + strxfrm(NULL, in2, 0)];
    strxfrm(out2, in2, sizeof out2);

    printf("In the Czech locale: ");
    if (strcmp(out1, out2) < 0)
        printf("%s before %s\n", in1, in2);
    else
        printf("%s before %s\n", in2, in1);

    printf("In lexicographical comparison: ");
    if (strcmp(in1, in2) < 0)
        printf("%s before %s\n", in1, in2);
    else
        printf("%s before %s\n", in2, in1);
    return 0;
}

// Possible output:

// In the Czech locale: hrnec before chrt
// In lexicographical comparison: chrt before hrnec
