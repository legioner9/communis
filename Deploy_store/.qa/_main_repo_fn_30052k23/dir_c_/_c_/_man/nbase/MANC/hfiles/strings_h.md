### UP
[strings.h](##strings.h)
[MAIN](##MAIN)
[MAIN_ru](##MAIN_ru)
[ANCORS](##ANCORS)
[ISU](##ISU)
[inet](##A_inet)
[inet](##books_inet)
[inet](##examples_inet)
[inet](##classic_inet)
[inet](##enters_inet)
[inet](##issue_code_inet)
[H_FILE](##H_FILE)
[H_SYNOPSIS](##H_SYNOPSIS)
[H_BUGS](##H_BUGS)
[H_DESCRIPTION_ru](##H_DESCRIPTION_ru)
[H_DESCRIPTION](##H_DESCRIPTION)
[H_ERRORS](##H_ERRORS)
[H_MIRRORS](##H_MIRRORS)
[H_EXAMPLES](##H_EXAMPLES)
[H_CODE_h](##H_CODE_h)
[H_CODE_c](##H_CODE_c)
[H_CODE_m](##H_CODE_m)
[H_BOOKS](##H_BOOKS)
[H_BOOKS_ru](##H_BOOKS_ru)
[H_SUBSTANCES](##H_SUBSTANCES)

[cat_hfiles](../cat_hfiles.md)
[cat_utils](../cat_utils.md)
[cat_structs](../cat_structs.md)
[cat_param](../cat_params.md)
[cat_macros](../cat_macross.md)
[cat_const](../cat_consts.md)
[cat_type](../cat_types.md)
[cat_any](../cat_anys.md)

[UP](###UP)
## MAIN
:strings.h:
[next](##MAIN_ru)

<<MAIN>>
[MAIN](../fills/strings_h/MAIN)


[UP](###UP)
## MAIN_ru
:strings.h:
[next](##ANCORS)

----------------------------------------------------- 
-------------------------------------- 
#include <strings.h>
int strcasecmp(const char *s1, const char *s2);
Сравнение строк s1 и s2 без учета регистра.
int strncasecmp(const char *s1, const char *s2, size_t n);
Сравнивает первые n символов строк s1 и s2 без учета регистра.
char *index(const char *s, int c);
Возвращает указатель на местонахождение первого совпадения с символом c в строке s.
char *rindex(const char *s, int c);
Возвращает указатель на местонахождение последнего совпадения с символом c в строке s.
#include <string.h>
char *stpcpy(char *dest, const char *src);
Копирует строку из src в dest, возвращая указатель на конец строки результата в dest.
char *strcat(char *dest, const char *src);
Добавляет строку src к строке dest, возвращая указатель на dest.
char *strchr(const char *s, int c);
Возвращает указатель на местонахождение первого совпадения с символом c в строке s.
int strcmp(const char *s1, const char *s2);
Сравнивает строки s1 и s2.
int strcoll(const char *s1, const char *s2);
Сравнивает строки s1 и s2, применяя правила текущей локали.
char *strcpy(char *dest, const char *src);
Копирует строку src в dest, возвращая указатель на начало строки в dest.
size_t strcspn(const char *s, const char *reject);
Вычисляет длину начального сегмента строки s, состоящего только из байт, не указанных в строке reject,
char *strdup(const char *s);
Возвращает копию строки s, память для которой выделяется с помощью malloc(3).
char *strfry(char *string);
Переставляет символы в string в произвольном порядке.
size_t strlen(const char *s);
Возвращает длину строки s.
char *strncat(char *dest, const char *src, size_t n);
Добавляет не более n символов из строки src в строку dest, возвращая указатель на dest.
int strncmp(const char *s1, const char *s2, size_t n);
Сравнивает не более n байт строк s1 и s2.
char *strncpy(char *dest, const char *src, size_t n);
Копирует не более n байт из строки src в строку dest, возвращая указатель на dest.
char *strpbrk(const char *s, const char *accept);
Возвращает первое появление в строке s любых байтов из строки accept.
char *strrchr(const char *s, int c);
Возвращает указатель на местонахождение последнего совпадения с символом c в строке s.
char *strsep(char **stringp, const char *delim);
Извлекает начальный токен из stringp, который отделён одним из байтов из delim.
size_t strspn(const char *s, const char *accept);
Вычисляет длину начального сегмента из строки s, состоящего только из байт, указанных в accept.
char *strstr(const char *haystack, const char *needle);
Ищет первое соответствие подстроки needle в строке haystack и возвращает указатель на найденную подстроку.
char *strtok(char *s, const char *delim);
Извлекает токены из строки s, которые отделены одним из байтов из delim.
size_t strxfrm(char *dest, const char *src, size_t n);
Преобразует src в текущую локаль и копирует первые n символов в dest.
-------------------------------------- 
----------------------------------------------------- 
<<MAIN_ru>>
[MAIN_ru](../fills/strings_h/MAIN_ru)


[UP](###UP)
## ANCORS
:strings.h:
[next](##ISU)

<<ANCORS>>
[ANCORS](../fills/strings_h/ANCORS)


[UP](###UP)
## ISU
:strings.h:
[next](##H_FILE)

<<ISU>>
only read
:strings.h:
[ISU](../contents)
[next](##inet)


[UP](###UP)
## inet
:strings.h:
[next](##H_FILE)

[UP](###UP)
## A_inet
[manpages.org](https://www.google.ru/search?q=strings.h+site%3Ahttps%3A%2F%2Fmanpages.org)
[reposcope.com_ru](https://www.google.ru/search?q=strings.h+site%3Ahttps%3A%2F%2Freposcope.com%2Fmanpages%2Fru)
[pubs.opengroup.org](https://www.google.com/search?q=strings.h+https%3A%2F%2Fpubs.opengroup.org)
[manpages.debian.org](https://yandex.ru/search/?text=strings.h+site%3Ahttps%3A%2F%2Fmanpages.debian.org%2F)
[www.opennet.ru](http://www.opennet.ru/man.shtml?category=2&topic=strings.h)
[man7.org](https://www.google.ru/search?q=strings.h+site%3Ahttps%3A%2F%2Fman7.org%2Flinux%2Fman-pages)
[en.cppreference.com](https://www.google.com/search?q=strings.h+en.cppreference.com)
[www.mankier.com](https://www.mankier.com/?q=strings.h)
[www.codecogs.com](https://www.google.ru/search?q=strings.h+https%3A%2F%2Fwww.codecogs.com%2Flibrary%2Fcomputing%2F)
[digitalmars.com](https://www.google.ru/search?q=strings.h+https%3A%2F%2Fdigitalmars.com%2Frtl%2F)


[UP](###UP)
## books_inet
[cpp.com.ru](https://yandex.ru/search/?text=strings.h+site%3Ahttps%3A%2F%2Fcpp.com.ru)
[linuxhint.com](https://www.google.ru/search?q=strings.h+site%3Ahttps%3A%2F%2Flinuxhint.com)
[gnu.org](https://www.google.ru/search?q=strings.h+site%3Ahttps%3A%2F%2Fwww.gnu.org%2Fsoftware%2Flibc%2Fmanual)

[UP](###UP)
## examples_inet
[yandex:examples](https://yandex.ru/search/?text=strings.h+example+in+c)
[docs.oracle.com](https://www.google.com/search?q=strings.h+https%3A%2F%2Fdocs.oracle.com)
[manpages.debian.org](https://yandex.ru/search/?text=strings.h+site%3Ahttps%3A%2F%2Fmanpages.debian.org%2F)
[osr507doc.xinuos.com](https://www.google.com/search?q=strings.h+http%3A%2F%2Fosr507doc.xinuos.com%2Fen%2Fman)
[cpp.hotexamples.com](https://cpp.hotexamples.com/examples/-/-/strings.h/cpp-strings.h-function-examples.html)
[all-ht.ru](https://yandex.ru/search/?text=strings.h+site%3Ahttp%3A%2F%2Fall-ht.ru%2Finf%2Fprog%2Fc%2F)
[cppreference.com](https://yandex.ru/search/?text=strings.h+site%3Ahttps%3A%2F%2Fen.cppreference.com%2Fw%2Fc%2F)

[UP](###UP)
## classic_inet
[bogatyrev_c_unix](https://www.google.com/search?q=strings.h+site%3Ahttps%3A%2F%2Fcpp.com.ru%2Fbogatyrev_c_unix)
[kr_cbook](https://www.google.com/search?q=strings.h+site%3Ahttps%3A%2F%2Fcpp.com.ru%2Fkr_cbook)

[UP](###UP)
## enters_inet
[pubs.opengroup.org](https://pubs.opengroup.org/onlinepubs/9699919799/idx/head.html)

[UP](###UP)
## issue_code_inet
[code.woboq.org](https://www.google.com/search?h=&sitesearch=https%3A%2F%2Fcode.woboq.org%2Fuserspace%2Fglibc%2F&q=strings.h)


[UP](###UP)
## H_FILE [strings_h.md](strings_h.md)
:strings.h:
[next](##H_SYNOPSIS)

[UP](###UP)
## H_SYNOPSIS
:strings.h:
[next](##H_DESCRIPTION_ru)

<<SYNOPSIS>>
[SYNOPSIS](../fills/strings_h/SYNOPSIS)


[UP](###UP)
## H_DESCRIPTION_ru
:strings.h:
[next](##H_DESCRIPTION)

<<DESCRIPTION_ru>>
[DESCRIPTION_ru](../fills/strings_h/DESCRIPTION_ru)


[UP](###UP)
## H_DESCRIPTION
:strings.h:
[next](##H_ERRORS)

<<DESCRIPTION>>
[DESCRIPTION](../fills/strings_h/DESCRIPTION)


[UP](###UP)
## H_ERRORS
:strings.h:
[next](##H_MIRRORS)

<<ERRORS>>
[ERRORS](../fills/strings_h/ERRORS)


[UP](###UP)
## H_MIRRORS
:strings.h:
[next](##H_BUGS)

<<MIRRORS>>
[MIRRORS](../fills/strings_h/MIRRORS)


[UP](###UP)
## H_BUGS
:strings.h:
[next](##H_EXAMPLES)

<<BUGS>>
[BUGS](../fills/strings_h/BUGS)


[UP](###UP)
## H_EXAMPLES
:strings.h:
[next](##H_CODE)

<<EXAMPLES>>
[EXAMPLES](../fills/strings_h/EXAMPLES)


[UP](###UP)
## H_CODE_h
:strings.h:
[next](##H_CODE_c)

<<CODE_h>>
[CODE_h](../fills/strings_h/CODE_h)


[UP](###UP)
## H_CODE_c
:strings.h:
[next](##H_CODE_m)

<<CODE_c>>
[CODE_c](../fills/strings_h/CODE_c)


[UP](###UP)
## H_CODE_m
:strings.h:
[next](##H_BOOKS)

<<CODE_m>>
[CODE_m](../fills/strings_h/CODE_m)


[UP](###UP)
## H_BOOKS
:strings.h:
[next](##H_BOOKS_ru)

<<BOOKS>>
[BOOKS](../fills/strings_h/BOOKS)


[UP](###UP)
## H_BOOKS_ru
:strings.h:
[next](##H_SUBSTANCES)

<<BOOKS_ru>>
[BOOKS_ru](../fills/strings_h/BOOKS_ru)


[UP](###UP)
## H_SUBSTANCES
:strings.h:
[UP](###UP)
p[strcasecmp](../utils/strcasecmp/strcasecmp.man)
p[strcasecmp_l](../utils/strcasecmp_l/strcasecmp_l.man)
p[strncasecmp](../utils/strncasecmp/strncasecmp.man)
p[strncasecmp_l](../utils/strncasecmp_l/strncasecmp_l.man)
p[ffs](../utils/ffs/ffs.man)
p[ffsl](../utils/ffsl/ffsl.man)
p[ffsll](../utils/ffsll/ffsll.man)
