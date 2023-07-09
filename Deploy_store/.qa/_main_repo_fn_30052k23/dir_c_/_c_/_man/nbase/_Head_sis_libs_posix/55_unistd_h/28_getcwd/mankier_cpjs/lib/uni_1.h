#ifndef uni_1
#define uni_1

int chdir_сb(int cb(char *), char *path);
int chdir_с(char *path, const char *file, const int line);
int access_cb(int cb(char *, int), char *path, int amode);
int access_c(const char *path, int amode, const char *file, const int line);


#endif