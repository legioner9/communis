#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_make_/_make_/_man/mxe/with_patsubst/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
cd ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_make_/_make_/_man/mxe/with_patsubst || qq_exit
make -f auto.mk

unset filename