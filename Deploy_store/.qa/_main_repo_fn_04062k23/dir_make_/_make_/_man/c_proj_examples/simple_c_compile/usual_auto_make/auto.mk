# .PHONY: clear
# del: 
# rm hello

main.bexe: main.o lc_0.o
	gcc $^ -o $@

.c.o:
	gcc -c $<

main.o: lc_0.h

clear:
	rm *.o
	rm main.bexe
