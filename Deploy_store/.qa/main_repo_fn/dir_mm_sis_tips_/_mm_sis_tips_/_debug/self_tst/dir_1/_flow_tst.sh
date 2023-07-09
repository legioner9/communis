#!/bin/bash

#. "$HOME/.bashrc"

filename=${PATH_MAIN_REPO_FN_DIR}/dir_mm_sis_tips_/_mm_sis_tips_/_debug/self_tst/dir_1//_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename