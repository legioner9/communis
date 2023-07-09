#ifndef uni_1
#define uni_1
#include "h_1.h"

int write_с(int fildes, const void *buf, size_t nbyte, const char *file, const int line, int st__mo, int st__if, int st__re);
int unlink_с(int fd, const char *file, const int line, int st__mo, int st__if, int st__re);
ssize_t read_с(int fildes, void *buf, size_t nbyte, const char *file, const int line);
int lseek_сb(int cb(int, off_t, int), int fildes, off_t offset, int where);
int lseek_с(int fildes, off_t offset, int where, const char *file, const int line);
off_t lockf_сb(int cb(int, int, off_t), int fildes, int function, off_t size);
off_t lockf_с(int fildes, int function, off_t size, const char *file, const int line);
int getsid_сb(int cb(pid_t), pid_t pid);
int getsid_с(pid_t pid, const char *file, const int line);
int getlogin_r_сb(int cb(void), char *name, size_t namesize);
int getlogin_r_с(char *name, size_t namesize, const char *file, const int line);
char *getlogin_сb(int cb());
char *getlogin_с(const char *file, const int line);
int gethostname_сb(int cb(void), char *name, size_t namelen);
int gethostname_с(char *name, size_t namelen, const char *file, const int line);
int getgroups_сb(int cb(void), int gidsetsize, gid_t grouplist[]);
int getgroups_с(int gidsetsize, gid_t grouplist[], const char *file, const int line);
int fsync_сb(int cb(int), int fildes);
int fsync_с(int fildes, const char *file, const int line);
pid_t fork_сb(int cb(pid_t));
pid_t fork_с(const char *file, const int line);
int dup_сb(int cb(int), int oldfd);
int dup_с(int oldfd, const char *file, const int line);
int close_сb(int cb(int), int fildes);
int close_с(int fildes, const char *file, const int line, int st__mo, int st__if, int st__re);
int chown_сb(int cb(char *, uid_t, uid_t), char *path, uid_t owner, gid_t group);
int chown_с(const char *path, uid_t owner, gid_t group, const char *file, const int line);
int chdir_сb(int cb(char *), char *path);
int chdir_с(char *path, const char *file, const int line);
int access_cb(int cb(char *, int), char *path, int amode);
int access_c(const char *path, int amode, const char *file, const int line);


#endif