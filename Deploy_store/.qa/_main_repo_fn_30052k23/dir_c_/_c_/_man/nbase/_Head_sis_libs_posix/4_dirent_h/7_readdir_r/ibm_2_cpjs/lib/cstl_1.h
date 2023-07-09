#ifndef cstl_1
#define cstl_1
#include "h_1.h"

int cstl_1_ls_cb(char *dir_path, int cb(char *), const char *file, const int line);
int cstl_1_ls_b(char const *dir_path, int cb(char *), const char *file, const int line);
int cstl_1_ls_c(char const *dir_path, const char *file, const int line);
int cstl_1_ls(char const *dir_path, const char *file, const int line);


#endif