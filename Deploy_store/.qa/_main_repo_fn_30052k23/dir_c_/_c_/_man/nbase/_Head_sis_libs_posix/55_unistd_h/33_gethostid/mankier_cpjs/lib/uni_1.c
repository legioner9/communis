#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>
#include <errno.h>
#include <unistd.h>

#define DEBUG false

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
/*#*/ int close_с(int fildes, const char *file, const int line)
{
    int a = close(fildes);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from close_с fildes = %d, errno = %d\n", fildes, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

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
/*getlogin*/
/*getlogin_r*/
/*getopt*/
/*getpgid*/
/*getpgrp*/
/*getpid*/
/*getppid*/
/*getsid*/
/*getuid*/
/*isatty*/
/*lchown*/
/*link*/
/*linkat*/
/*lockf*/
/*lseek*/
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
        fprintf(stderr, "from read_с nbyte = %ld, errno = %d\n", nbyte, errno);
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
/*unlinkat*/
/*write*/