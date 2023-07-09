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

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to

*/

/*access*/
/*#*/ int access_c(const char *path, int amode, const char *file, const int line)
{
    int a = access(path, amode);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from access_c pathname = %s,mode = %d errno = %d\n", path, amode, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int access_cb(int cb(char *, int), char *path, int amode)
{
    int a = access(path, amode);
    if (-1 == a)
    {
        cb(path, amode);
    }
    return a;
}

/*alarm*/
/*#*/
/*chdir*/
/*#*/ int chdir_с(char *path, const char *file, const int line)
{
    int a = chdir(path);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from chdir_с pathname = %s, errno = %d\n", path, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int chdir_сb(int cb(char *), char *path)
{
    int a = chdir(path);
    if (-1 == a)
    {
        cb(path);
    }
    return a;
}

/*chown*/
/*#*/ int chown_с(const char *path, uid_t owner, gid_t group, const char *file, const int line)
{
    int a = chown(path, owner, group);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from chown_с path = %s, owner = %d, owner = %d, errno = %d\n", path, owner, group, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int chown_сb(int cb(char *, uid_t, uid_t), char *path, uid_t owner, gid_t group)
{
    int a = chown(path, owner, group);
    if (-1 == a)
    {
        cb(path, owner, group);
    }
    return a;
}

/*close*/
/*#*/ int close_с(int fildes, const char *file, const int line, int st__mo, int st__if, int st__re)
{


    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = close(fildes);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from close_с fildes = %d, errno = %d\n", fildes, errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                    printf("return -1");
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                    printf("exit(errno): ");
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                    printf("return original error");
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from close_с fildes = %d, errno = %d\n", fildes, errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_ONE exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/

} 
// int close_с(int fildes, const char *file, const int line)
// {
//     int a = close(fildes);
//     if (-1 == a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from close_с fildes = %d, errno = %d\n", fildes, errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }

/*#*/ int close_сb(int cb(int), int fildes)
{
    int a = close(fildes);
    if (-1 == a)
    {
        cb(fildes);
    }
    return a;
}

/*confstr*/
/*crypt*/
/*dup*/
/*#*/ int dup_с(int oldfd, const char *file, const int line)
{
    int a = dup(oldfd);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from dup_с oldfd = %d, errno = %d\n", oldfd, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int dup_сb(int cb(int), int oldfd)
{
    int a = dup(oldfd);
    if (-1 == a)
    {
        cb(oldfd);
    }
    return a;
}
/*dup2*/
/*_exit*/
/*encrypt*/
/*execl*/
/*execle*/
/*execlp*/
/*execv*/
/*execve*/
/*execvp*/
/*faccessat*/
/*fchdir*/
/*fchown*/
/*fchownat*/
/*fdatasync*/
/*fexecve*/
/*fork*/
/*#*/ pid_t fork_с(const char *file, const int line)
{
    pid_t a = fork();
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fork_с pid_t = %d, errno = %d\n", a, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ pid_t fork_сb(int cb(pid_t))
{
    pid_t a = fork();
    if (-1 == a)
    {
        cb(a);
    }
    return a;
}
/*fpathconf*/
/*fsync*/
/*#*/ int fsync_с(int fildes, const char *file, const int line)
{
    int a = fsync(fildes);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fsync_с fildes = %d, errno = %d\n", fildes, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int fsync_сb(int cb(int), int fildes)
{
    int a = fsync(fildes);
    if (-1 == a)
    {
        cb(fildes);
    }
    return a;
}
/*ftruncate*/
/*getcwd*/
/*getegid*/
/*geteuid*/
/*getgid*/
/*getgroups*/
/*#*/ int getgroups_с(int gidsetsize, gid_t grouplist[], const char *file, const int line)
{
    int a = getgroups(gidsetsize, grouplist);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from getgroups_с errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int getgroups_сb(int cb(void), int gidsetsize, gid_t grouplist[])
{
    int a = getgroups(gidsetsize, grouplist);
    if (-1 == a)
    {
        cb();
    }
    return a;
}
/*gethostid*/
/*gethostname*/
/*#*/ int gethostname_с(char *name, size_t namelen, const char *file, const int line)
{
    int a = gethostname(name, namelen);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from gethostname_с errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int gethostname_сb(int cb(void), char *name, size_t namelen)
{
    int a = gethostname(name, namelen);
    if (-1 == a)
    {
        cb();
    }
    return a;
}
/*getlogin*/
/*#*/ char *getlogin_с(const char *file, const int line)
{
    char *a = getlogin();
    if (NULL == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from getlogin_с errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ char *getlogin_сb(int cb())
{
    char *a = getlogin();
    if (NULL == a)
    {
        cb();
    }
    return a;
}
/*getlogin_r*/
/*#*/ int getlogin_r_с(char *name, size_t namesize, const char *file, const int line)
{
    int a = getlogin_r(name, namesize);
    if (0 != a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from getlogin_r_с errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int getlogin_r_сb(int cb(void), char *name, size_t namesize)
{
    int a = getlogin_r(name, namesize);
    if (0 != a)
    {
        cb();
    }
    return a;
}
/*getopt*/
/*getpgid*/
/*getpgrp*/
/*getpid*/
/*getppid*/
/*getsid*/
/*#*/ int getsid_с(pid_t pid, const char *file, const int line)
{
    int a = getsid(pid);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from getsid_с pid = %u, errno = %d\n", pid, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int getsid_сb(int cb(pid_t), pid_t pid)
{
    int a = getsid(pid);
    if (-1 == a)
    {
        cb(pid);
    }
    return a;
}
/*getuid*/
/*isatty*/
/*lchown*/
/*link*/
/*linkat*/
/*lockf*/
/*#*/ off_t lockf_с(int fildes, int function, off_t size, const char *file, const int line)
{
    off_t a = lockf(fildes, function, size);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from lockf_с fildes = %d,function = %ld,size = %ld, errno = %d\n", fildes, function, size, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ off_t lockf_сb(int cb(int, int, off_t), int fildes, int function, off_t size)
{
    off_t a = lockf(fildes, function, size);
    if (-1 == a)
    {
        cb(fildes, function, size);
    }
    return a;
}
/*lseek*/
/*#*/ int lseek_с(int fildes, off_t offset, int where, const char *file, const int line)
{
    int a = lseek(fildes, offset, where);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from lockf_с fildes = %d,function = %d,size = %d, errno = %d\n", fildes, offset, where, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int lseek_сb(int cb(int, off_t, int), int fildes, off_t offset, int where)
{
    int a = lseek(fildes, offset, where);
    if (-1 == a)
    {
        cb(fildes, offset, where);
    }
    return a;
}
/*nice*/
/*pathconf*/
/*pause*/
/*pipe*/
/*pread*/
/*pwrite*/
/*read*/
/*#*/ ssize_t read_с(int fildes, void *buf, size_t nbyte, const char *file, const int line)
{
    ssize_t a = read(fildes, buf, nbyte);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from read_с fildes = %d, nbyte = %ld, errno = %d\n", fildes, nbyte, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

int read_сb(int cb(int, size_t), int fildes, void *buf, size_t nbyte)
{
    ssize_t a = read(fildes, buf, nbyte);
    if (-1 == a)
    {
        cb(fildes, nbyte);
    }
    return a;
}

/*readlink*/
/*readlinkat*/
/*rmdir*/
/*setegid*/
/*seteuid*/
/*setgid*/
/*setpgid*/
/*setpgrp*/
/*setregid*/
/*setreuid*/
/*setsid*/
/*setuid*/
/*sleep*/
/*swab*/
/*symlink*/
/*symlinkat*/
/*sync*/
/*sysconf*/
/*tcgetpgrp*/
/*tcsetpgrp*/
/*truncate*/
/*ttyname*/
/*ttyname_r*/
/*unlink*/
/*#*/ int unlink_с(int fd, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)

    {
        int a = unlink(fd);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from unlink_с fd = %d, errno = %d\n", fd, errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                    printf("return -1");
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                    printf("exit(errno): ");
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                    printf("return original error");
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from unlink_с fd = %d, errno = %d\n", fd, errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_ONE exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/
}
/*unlinkat*/
/*write*/
/*#*/ int write_с(int fildes, const void *buf, size_t nbyte, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = write(fildes, buf, nbyte);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from write_с fildes = %d, errno = %d\n", fildes, errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                    printf("return -1");
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                    printf("exit(errno): ");
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                    printf("return original error");
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from write_с fildes = %d, errno = %d\n", fildes, errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_ONE exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/
}