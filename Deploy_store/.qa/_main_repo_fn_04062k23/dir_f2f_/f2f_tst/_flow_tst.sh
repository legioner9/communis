#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f2f_/f2f_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

cat file_with_preplacer > res

PW=$(pwd)

f2f_ $PW/file_for_insert  $PW/res 00000

cd "$idir"

unset filename