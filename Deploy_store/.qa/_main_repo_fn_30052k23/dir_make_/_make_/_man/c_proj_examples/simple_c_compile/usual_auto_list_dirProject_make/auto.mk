.PHONY: clear echo
# del: 
# rm hello

# echo:
# 	echo "source_dirs = $(source_dirs)"
# echo "search_wildcards = $(addsuffix /*.c,$(source_dirs))"
# 	echo "notdir = $(notdir $(patsubst %.c, %.o, $(wildcard $(search_wildcards))))"
# 	echo "patsubst = $(patsubst %.c, %.o, $(wildcard $(search_wildcards)))"
# 	echo "wildcard = $(wildcard $(search_wildcards))"

source_dirs := . lib

search_wildcards := $(addsuffix /*.c,$(source_dirs)) 

main.bexe: $(notdir $(patsubst %.c,%.o,$(wildcard $(search_wildcards))))
	gcc $^ -o $@ 

VPATH := $(source_dirs)
	
%.o: %.c
	gcc -c -MD $(addprefix -I ,$(source_dirs)) $<

include $(wildcard *.d) 

clear:
	rm *.o
	rm main.bexe