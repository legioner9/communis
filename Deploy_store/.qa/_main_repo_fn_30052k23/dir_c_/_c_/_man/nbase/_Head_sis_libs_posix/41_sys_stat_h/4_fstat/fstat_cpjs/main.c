
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

// lc_

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

#include "st_mode_1.h"

int main(int argc, char const *argv[])
{
    char *path_file = "a.file";
    FILE *filep = open_с(path_file, O_RDWR, S_IRWXU, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    char *path_file_2 = "a_.file";
    FILE *filep_2 = open_с(path_file_2, O_RDWR | O_CREAT, S_IRWXU, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    char *path_file_3 = "b_.file";
    // DIR *dird = opendir_с("dir_b", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);
    DIR *dirp = opendir_с("dir_b", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);
    int dird = dirfd_с(dirp, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    FILE *filed_3 = openat_с(dird, path_file_3, O_RDWR | O_CREAT, S_IRWXU, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    struct stat buf;
    int res_fopen = fstat_с(filed_3, &buf, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    printf("path_file_3 = %s\n\
res_fopen = %d\n\
st_mode = 0x%o\n\
st_size = %d\n\
filed_3 = %d\n",
           path_file_3, res_fopen, buf.st_mode, buf.st_size, filed_3); // ^1^
    return 0;
}
