#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/using/change_files_flow/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
# file=${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/using/change_files_flow/a.mk
file=a.mk

make -f "$file" check
unset filename