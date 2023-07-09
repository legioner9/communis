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
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

#define NAMEDPIPE_NAME "tmp/my_named_pipe"
#define BUFSIZE 50

// В соседнем терминальном окне выполняем:
// $ echo 'Hello, my named pipe!' > tmp/my_named_pipe

// int mknod(const char *path, mode_t mode, dev_t dev);
// The file type for path is OR'ed into the mode argument, and the
// application shall select one of the following symbolic constants:

// ┌───────────┬──────────────────────────────────┐
// │   Name    │           Description            │
// ├───────────┼──────────────────────────────────┤
// │S_IFIFO    │ FIFO-special                     │
// │S_IFCHR    │ Character-special (non-portable) │
// │S_IFDIR    │ Directory (non-portable)         │
// │S_IFBLK    │ Block-special (non-portable)     │
// │S_IFREG    │ Regular (non-portable)           │
// └───────────┴──────────────────────────────────┘

int main(int argc, char **argv)
{
    int fd, len;
    char buf[BUFSIZE];
    remove_с(NAMEDPIPE_NAME, __FILE__, __LINE__, 0, STIF_ONE, STRE_ERR);

    // get dev
    int fdes = open_с("file.tmp", O_RDWR | O_CREAT, S_IRWXU, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    struct stat enety;
    fstat_с(fdes, &enety, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    prn_stat_lc_1_path_с("file.tmp", __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    printf("enety.st_rdev = %d", enety.st_rdev);

    // if (mkfifo_с(NAMEDPIPE_NAME, 0777, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI))
    if (mknod_с(NAMEDPIPE_NAME, S_IFIFO | S_IRUSR | S_IWUSR, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI)) /*#*/ // work exa
    {
        perror("mknod_c");
        return 1;
    }
    printf("%s is created\n", NAMEDPIPE_NAME);

    // if ((fd = open(NAMEDPIPE_NAME, O_RDONLY)) <= 0)
    // {
    //     perror("open");
    //     return 1;
    // }
    fd = open_с(NAMEDPIPE_NAME, O_RDONLY, S_IRWXU, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    printf("%s is opened\n", NAMEDPIPE_NAME);

    do
    {
        // memset(buf, '\0', BUFSIZE);
        len = read_с(fd, buf, BUFSIZE - 1, __FILE__, __LINE__);
        // if ((len = read_с(fd, buf, BUFSIZE - 1,__FILE__, __LINE__)) <= 0)
        if (len == 0)
        {
            // perror("read");
            close(fd);
            remove(NAMEDPIPE_NAME);
            return 0;
        }
        printf("Incomming message (%d): %s\n", len, buf);
    } while (1);
    remove(NAMEDPIPE_NAME);
}
