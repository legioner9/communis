#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/cp_command/cp_n/cp_.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

cd ${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/cp_command/cp_n/ || qq_exit

cp -n a b

unset filename