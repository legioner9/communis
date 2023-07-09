#ifndef dirent_1
#define dirent_1
#include "h_1.h"

int scandir_с(const char *dir_path, struct dirent ***namelist, int (*select)(const struct dirent *), int (*compare)(const struct dirent **, const struct dirent **), const char *file, const int line);
int readdir_r_e(DIR *restrict dirp, struct dirent *restrict entry, struct dirent **restrict result, const char *file, const int line);
struct dirent *readdir_с(DIR *dirp, const char *file, const int line);
DIR *opendir_с(char *dirname, const char *file, const int line);
int dirfd_с(DIR *dirp, const char *file, const int line);


#endif