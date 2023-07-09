#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/cp_command/cp__suffix/cp_.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
cd "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/cp_command/cp__suffix/ || qq_exit

cp --suffix "~2~"  a b
unset filename