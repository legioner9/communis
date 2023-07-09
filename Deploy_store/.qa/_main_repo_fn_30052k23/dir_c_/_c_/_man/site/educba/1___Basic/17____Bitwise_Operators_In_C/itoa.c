#define _OPEN_SYS_ITOA_EXT
#include <stdio.h>
#include <stdlib.h>

typedef unsigned char byt;

int main() {
  byt b = 93;  // Или любое другое
  for (int i = 0; i < 8; i++) {
    printf("%c", (b & 0x80) ? '1' : '0');
    b <<= 1;
  }
  printf("\n");
  return 0;
}