#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_tst_/_tst_/_debug/start_deb.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

up_err_ tst "${PATH_MAIN_REPO_FN_DIR}/dir_tst_/_tst_/_debug/tst.list"

cd "$idir"

unset filename