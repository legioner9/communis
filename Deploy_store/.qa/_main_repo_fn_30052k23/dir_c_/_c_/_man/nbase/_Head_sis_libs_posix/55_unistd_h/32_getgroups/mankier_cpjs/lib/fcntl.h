#ifndef fcntl
#define fcntl

int openat_сb(int cb(int,char *, int, mode_t), int dirdes, char *path, int oflag, mode_t mode);
int openat_с(int dirdes, char *path, int oflag, mode_t mode, const char *file, const int line);
int open_сb(int cb(char *, int, mode_t), char *path, int oflag, mode_t mode);
int open_с(char *path, int oflag, mode_t mode, const char *file, const int line);


#endif