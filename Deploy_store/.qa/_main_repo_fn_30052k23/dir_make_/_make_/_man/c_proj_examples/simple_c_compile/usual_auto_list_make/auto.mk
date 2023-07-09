# .PHONY: clear
# del: 
# rm hello

main.bexe: $(patsubst %.c,%.o,$(wildcard *.c))
	gcc $^ -o $@

.c.o:
	gcc -c $<

include $(wildcard *.d)

clear:
	rm *.o
	rm main.bexe