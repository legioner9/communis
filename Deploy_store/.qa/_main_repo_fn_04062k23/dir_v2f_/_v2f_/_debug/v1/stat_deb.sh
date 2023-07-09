#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_v2f_/_v2f_/_debug/v1/stat_deb.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

pre_place_file=${PATH_MAIN_REPO_FN_DIR}/dir_v2f_/_v2f_/_debug/v1/file_pre_place

v2f_ Z "$pre_place_file" 00000

cat "$pre_place_file"

v2f_ 00000 "$pre_place_file" Z

cat "$pre_place_file"

cd "$idir"

unset filename