.PHONY: clear 

source_dirs := . lib

search_wildcards := $(addsuffix /*.c,$(source_dirs)) 

main.bexe: $(notdir $(patsubst %.c,%.o,$(wildcard $(search_wildcards))))
	gcc @gcc-options_ $^ -o $@ -lm

VPATH := $(source_dirs)
	
%.o: %.c
	gcc @gcc-options_ -c -MD $(addprefix -I ,$(source_dirs)) $< -lm

include $(wildcard *.d) 

clear:
	rm *.o
	rm main.bexe