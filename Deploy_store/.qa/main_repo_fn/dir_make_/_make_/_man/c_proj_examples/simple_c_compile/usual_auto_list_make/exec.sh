#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/mxe/simple_c_compile/usual_auto_list_make/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

make -f auto.mk

./main.bexe

make -f auto.mk clear

unset filename