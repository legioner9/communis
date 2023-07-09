#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_v2f_/v2f_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"
PW=$(pwd)
# pre_place_file=${PATH_MAIN_REPO_FN_DIR}/dir_v2f_/v2f_tst/file_pre_place
cat $PW/file_pre_place > $PW/dat

v2f_ Z $PW/dat 00000

cat $PW/dat
echo

v2f_ 00000 $PW/dat Z

cat $PW/dat
echo

cd "$idir"

unset filename