#ifndef 3p_1
#define 3p_1

int fileno_cb(int cb(void), FILE *stream);
int fileno_c(FILE *stream, const char *file, const int line);


#endif