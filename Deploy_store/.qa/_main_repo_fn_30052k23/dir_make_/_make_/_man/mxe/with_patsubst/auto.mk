all:
	echo $(patsubst %.c, %.o, $(wildcard *.c))