#ifndef io_1
#define io_1

size_t fwrite_c(const void *ptr, size_t size, size_t count, FILE *stream);
long int ftell_c(FILE *stream);
int fputc_c(int character, FILE *stream);
int getc_c(FILE *stream);
int fgetc_c(FILE *stream);
int fputs_c(const char *str, FILE *stream);
int fclose_c(FILE *stream);
char *fgets_c(char *str, int num, FILE *stream);
int fseek_c(FILE *stream, int offset, int endSet);
FILE *fopen_c(const char *path, const char *mode, const char *file, const int line);


#endif