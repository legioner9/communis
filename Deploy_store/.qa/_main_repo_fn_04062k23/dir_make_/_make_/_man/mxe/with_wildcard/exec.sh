#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/mxe/with_wildcard/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
cd ${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/mxe/with_wildcard/ || qq_exit
make -f auto.mk

unset filename