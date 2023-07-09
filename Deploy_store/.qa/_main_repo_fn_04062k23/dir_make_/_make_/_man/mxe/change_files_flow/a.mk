# .PHONY: check
# del: 
# 	rm hello

# check: ${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/using/change_files_flow/file_time.tme
check: file_time.tme
	cp file_time.tme check 
	cat check
	cat file_time.tme