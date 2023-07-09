#ifndef dirent_1
#define dirent_1
#include "h_1.h"

struct dirent * readdir_сb(int cb(DIR *), DIR *dirp);
struct dirent *readdir_с(DIR *dirp, const char *file, const int line);
DIR *opendir_сb(int cb(char *), char *dirname);
DIR *opendir_с(char *dirname, const char *file, const int line);
int dirfd_сb(int cb(DIR *), DIR *dirp);
int dirfd_с(DIR *dirp, const char *file, const int line);


#endif