# .PHONY: all
# check: file_time.tme
# cp file_time.tme check 
override compile_flags := -pipe $(compile_flags) # without override NOT add -pipe to compile_flags
all:
	echo "$(compile_flags)" 
