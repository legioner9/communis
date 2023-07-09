#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_make_/_make_/_man/using/change_files_flow/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
# file=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_make_/_make_/_man/using/change_files_flow/a.mk
file=a.mk

make -f "$file" check
unset filename