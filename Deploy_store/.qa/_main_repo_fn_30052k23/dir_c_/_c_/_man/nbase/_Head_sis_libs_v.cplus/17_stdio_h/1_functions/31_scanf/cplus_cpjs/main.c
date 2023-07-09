#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>
#include <errno.h>
#include <unistd.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    char str[80];
    int i;

    printf("Enter your family name: ");
    scanf("%79s", str);
    printf("Enter your age: ");
    scanf("%d", &i);
    printf("Mr. %s , %d years old.\n", str, i);
    printf("Enter a hexadecimal number: ");
    scanf("%x", &i);
    printf("You have entered %#x (%d).\n", i, i);
    return 0;
}

// Вывод:
// Rudolph -> 12

// %[*][width][length]specifier

// specifier:
// i	Integer	Any number of digits, optionally preceded by a sign (+ or -).
// Decimal digits assumed by default (0-9), but a 0 prefix introduces octal digits (0-7), and 0x hexadecimal digits (0-f).
// Signed argument.
// d or u	Decimal integer	Any number of decimal digits (0-9), optionally preceded by a sign (+ or -).
// d is for a signed argument, and u for an unsigned.
// o	Octal integer	Any number of octal digits (0-7), optionally preceded by a sign (+ or -).
// Unsigned argument.
// x	Hexadecimal integer	Any number of hexadecimal digits (0-9, a-f, A-F), optionally preceded by 0x or 0X, and all optionally preceded by a sign (+ or -).
// f, e, g	Floating point number	A series of decimal digits, optionally containing a decimal point, optionally preceeded by a sign (+ or -) and optionally followed by the e or E character and a decimal integer (or some of the other sequences supported by strtod).
// Implementations complying with C99 also support hexadecimal floating-point format when preceded by 0x0X.
// a
// c	Character	The next character. If a width other than 1 is specified, the function reads exactly width characters and stores them in the successive locations of the array passed as argument. No null character is appended at the end.
// s	String of characters	Any number of non-whitespace characters, stopping at the first whitespace character found. A terminating null character is automatically added at the end of the stored sequence.
// p	Pointer address	A sequence of characters representing a pointer. The particular format used depends on the system and library implementation, but it is the same as the one used to format %p in fprintf.
// [characters]	Scanset	Any number of the characters specified between the brackets.
// A dash (-) that is not the first character may produce non-portable behavior in some library implementations.
// [^characters]	Negated scanset	Any number of characters none of them specified as characters between the brackets.
// n	Count	No input is consumed.
// The number of characters read so far from stdin is stored in the pointed location.
// %	%	A % followed by another % matches a single %.

// sub-specifier:
// *	An optional starting asterisk indicates that the data is to be read from the stream but ignored (i.e. it is not stored in the location pointed by an argument).
// width	Specifies the maximum number of characters to be read in the current reading operation (optional).
// length	One of hh, h, l, ll, j, z, t, L (optional).
// This alters the expected type of the storage pointed by the corresponding argument (see below).

// length:
// (none)	int*	unsigned int*	float*	char*	void**	int*
// hh	signed char*	unsigned char*				signed char*
// h	short int*	unsigned short int*				short int*
// l	long int*	unsigned long int*	double*	wchar_t*		long int*
// ll	long long int*	unsigned long long int*				long long int*
// j	intmax_t*	uintmax_t*				intmax_t*
// z	size_t*	size_t*				size_t*
// t	ptrdiff_t*	ptrdiff_t*				ptrdiff_t*
// L			long double*	

// %% – Читает знак «%»
// %[] – Производит чтение набора сканируемых символов
// %a – Читает значение с плавающей точкой в шестнадцатеричной системе исчисления
// %c – Производит чтение одиночного символа
// %d – Производит чтение десятичного целого числа (тип int)
// %e, %f, %g – Читают числа с плавающей точкой
// %hd – Считывает короткое целое число (shortint)
// %hhd – Считывает десятичное число и записывает в переменную типа char
// %hhu – Считывает десятичное число без знака и записывает в переменную типа unsignedchar
// %hu – Считывает короткое целое число без знака (unsignedshortint)
// %i – Может читать числа и в десятичном, и в восьмеричном, и в шестнадцатеричном формате
// %lf – Считывается значение типа double
// %Lf – Считывается длинное вещественное число (тип longdouble)
// %n – Принимает значение, которое равное количеству считанных символов
// %о – Считывает число в восьмеричной системе
// %p – Считывает указатель (pointer)
// %s – Считывается последовательность символов без пробелов и записывается в тип char* или char[]
// %u – Производит чтение десятичного целого числа без знака (тип unsignedint)
