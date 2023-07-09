#ifndef uni_1
#define uni_1

ssize_t read_с(int fildes, void *buf, size_t nbyte, const char *file, const int line);
int dup_сb(int cb(int), int oldfd);
int dup_с(int oldfd, const char *file, const int line);
int close_сb(int cb(int), int fildes);
int close_с(int fildes, const char *file, const int line);
int chdir_сb(int cb(char *), char *path);
int chdir_с(char *path, const char *file, const int line);
int access_cb(int cb(char *, int), char *path, int amode);
int access_c(const char *path, int amode, const char *file, const int line);


#endif