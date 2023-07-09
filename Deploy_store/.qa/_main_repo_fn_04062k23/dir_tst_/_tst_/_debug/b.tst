#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_tst_/_tst_/_debug/b.tst" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

up_err_ tsd "${PATH_MAIN_REPO_FN_DIR}/dir_tst_/_tst_/_debug/check_dir"

cd "$idir"

unset filename