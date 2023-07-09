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
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/socket_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <aio.h>
#include <signal.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>

#define _XOPEN_SOURCE 500
// #define _GNU_SOURCE

int main(int argc, char *argv[])
{

    // create transcoder from iso-8859-1 to utf8
    iconv_t foo = iconv_open("UTF-8", "ISO-8859-1");
    if ((int)foo == -1)
    {
        if (errno == EINVAL)
        {
            fprintf(stderr,
                    "Conversion is not supported");
        }
        else
        {
            fprintf(stderr, "Initialization failure:\n");
        }
    }
    // calloc fills memory with 0 bytes. we alloc two -
    // one for the 'ö' and one for the ending delimeter
    char *iso = calloc(2, sizeof(char));
    iso[0] = 0xF6; // iso-8859-1 'ö'

    // the converted string can be four times larger
    // then the original, as the largest known char width is 4 bytes.
    char *converted = calloc(5, sizeof(char));

    // we need to store an additional pointer that targets the
    // start of converted. (iconv modifies the original 'converted')
    char *converted_start = converted;

    size_t ibl = 2; // len of iso
    size_t obl = 5; // len of converted

    // do it!
    int ret = iconv(foo, &iso, &ibl, &converted, &obl);

    // if iconv fails it returns -1
    if (ret == (iconv_t)-1)
    {
        perror("iconv");
        iconv_close(foo);
        return 1;
    }
    else
    {
        // other wise the number of converted bytes
        printf("%i bytes converted\n", ret);
        printf("result: '%s'\n", converted_start);
        iconv_close(foo);
        return 0;
    }
}