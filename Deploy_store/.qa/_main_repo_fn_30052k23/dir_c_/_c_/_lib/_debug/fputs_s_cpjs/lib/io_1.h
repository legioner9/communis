#ifndef io_1
#define io_1

int fputs_s(const char *str, FILE *stream);
int fclose_s(FILE *stream);
char *fgets_s(char *str, int num, FILE *stream);
int fseek_s(FILE *pF, int offset, int endSet);
FILE *fopen_s(const char *path, const char *mode);


#endif