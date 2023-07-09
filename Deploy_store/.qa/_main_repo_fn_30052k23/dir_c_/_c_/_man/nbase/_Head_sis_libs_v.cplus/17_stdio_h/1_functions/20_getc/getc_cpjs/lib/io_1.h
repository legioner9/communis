#ifndef io_1
#define io_1

int getc_c(FILE *stream);
int fgetc_c(FILE *stream);
int fputs_c(const char *str, FILE *stream);
int fclose_c(FILE *stream);
char *fgets_c(char *str, int num, FILE *stream);
int fseek_c(FILE *pF, int offset, int endSet);
FILE *fopen_c(const char *path, const char *mode);


#endif