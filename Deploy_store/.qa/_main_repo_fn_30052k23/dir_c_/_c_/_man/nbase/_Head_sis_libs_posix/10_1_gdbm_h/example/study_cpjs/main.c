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
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    GDBM_FILE gdbf;     /* Database file object pointer */
    datum key, content; /* Key and content data */
    int status = 0;     /* Exit status of the program: 0 - OK, 1 - key
                           not found, 2 - error. */

    /*
     * Validate arguments.
     */
    if (argc != 3)
    {
        fprintf(stderr, "usage: %s DBFILE KEY\n", argv[0]);
        return 2;
    }

    /*
     * Open the database.  The GDBM_READER flag indicates that we only
     * intend to read from it.
     */
    gdbf = gdbm_open(argv[1], 0, GDBM_READER, 0, NULL);
    if (gdbf == NULL)
    {
        fprintf(stderr, "can't open database: %s\n", gdbm_strerror(gdbm_errno));
    }

    /*
     * Prepare the lookup key.  Notice, that the terminating \0 character
     * is not counted in the dsize computation.
     */
    key.dptr = argv[2];
    key.dsize = strlen(argv[2]);

    /*
     * Look up the key in the database.
     */
    content = gdbm_fetch(gdbf, key);

    /*
     * Analyze the return.
     */
    if (content.dptr != NULL)
    {
        /*
         * The key is found.  Print the content on the stdout and
         * indicate success.
         */
        fwrite(content.dptr, content.dsize, 1, stdout);
        putchar('\n');
        status = 0;
    }
    else if (gdbm_errno == GDBM_ITEM_NOT_FOUND)
    {
        /*
         * There is no such key in the database.
         */
        fprintf(stderr, "no such key\n");
        status = 1;
    }
    else
    {
        /*
         * An error occurred.
         */
        fprintf(stderr, "%s\n", gdbm_db_strerror(gdbf));
        status = 2;
    }

    /*
     * Close the database and return.
     */
    gdbm_close(gdbf);
    return 0;
}
