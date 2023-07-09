#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/name_var_as_var/args_scr/use_orig.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

cd ${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/name_var_as_var/args_scr

. orig.sh 3 switch

cd "$idir"

unset filename