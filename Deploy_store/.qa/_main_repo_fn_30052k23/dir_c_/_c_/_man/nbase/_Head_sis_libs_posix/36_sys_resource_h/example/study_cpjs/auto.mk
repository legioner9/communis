.PHONY: clear 

source_dirs := . lib

search_wildcards := $(addsuffix /*.c,$(source_dirs)) 

main.bexe: $(notdir $(patsubst %.c,%.o,$(wildcard $(search_wildcards))))
	gcc -g @gcc-options_ $^ -o $@ -lm -ldl -lcrypt -lrt -lpthread -lc

VPATH := $(source_dirs)
	
%.o: %.c
	gcc -g @gcc-options_ -c -MD $(addprefix -I ,$(source_dirs)) $< -lm -lcrypt -lrt -lpthread -lc

include $(wildcard *.d) 

clear:
	rm *.o *.d