// #include <assert.h>
// #include <ctype.h>
// #include <errno.h>
// #include <fenv.h>
// #include <float.h>
// #include <inttypes.h>
// #include <iso646.h>
// #include <limits.h>
// #include <locale.h>
// #include <math.h>
// #include <setjmp.h>
// #include <signal.h>
// #include <stdarg.h>
// #include <stdbool.h>
// #include <stddef.h>
// #include <stdint.h>
// #include <stdio.h>
// #include <stdlib.h>
// #include <string.h>
// #include <tgmath.h>
// #include <time.h>
// #include <uchar.h>
// #include <wchar.h>
// #include <wctype.h>

// // LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
// #include "lib/lc_0.h"
// #include "lib/lc_1.h"
// #include "lib/l3p_1.h"
// #include "lib/io_1.h"
// #include "lib/lib_1.h"
// #include "lib/uni_1.h"
// #include "lib/fcntl_1.h"
// #include "lib/dirent_1.h"
// #include "lib/socket_1.h"
// #include "lib/sys_stat_1.h"
// #include "lib/st_mode_1.h"

// #define N 6

// #include <sys/stat.h>
// #include <sys/types.h>
// #include <sys/socket.h>
// #include <sys/un.h>
// #include <netinet/in.h>
// #include <arpa/inet.h>
// #include <aio.h>
// #include <signal.h>

// #include <unistd.h>
// #include <fcntl.h>
// #include <dirent.h>
// #include <wordexp.h>
// #include <fmtmsg.h>

#define _XOPEN_SOURCE 500
#include <ftw.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
static int
display_info(const char *fpath, const struct stat *sb,
             int tflag, struct FTW *ftwbuf)
{
    printf("%-3s %2d %7jd   %-40s %d %s\n",
        (tflag == FTW_D) ?   "d"   : (tflag == FTW_DNR) ? "dnr" :
        (tflag == FTW_DP) ?  "dp"  : (tflag == FTW_F) ?   "f" :
        (tflag == FTW_NS) ?  "ns"  : (tflag == FTW_SL) ?  "sl" :
        (tflag == FTW_SLN) ? "sln" : "???",
        ftwbuf->level, (intmax_t) sb->st_size,
        fpath, ftwbuf->base, fpath + ftwbuf->base);
    return 0;           /* указать nftw() продолжать */
}
int
main(int argc, char *argv[])
{
    int flags = 0;
    if (argc > 2 && strchr(argv[2], 'd') != NULL)
        flags |= FTW_DEPTH;
    if (argc > 2 && strchr(argv[2], 'p') != NULL)
        flags |= FTW_PHYS;
    if (nftw((argc < 2) ? "." : argv[1], display_info, 20, flags)
            == -1) {
        perror("nftw");
        exit(EXIT_FAILURE);
    }
    exit(EXIT_SUCCESS);
}