#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_dr1f2e_/dr1f2e_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

echo | dr1f2e_ $(pwd)/d0 -qq_exit &>> res
echo $? >> res
echo | dr1f2e_ $(pwd)/d0x -qq_exit &>> res
echo $? >> res
echo | dr1f2e_ $(pwd)/d0x &>> res
echo $? >> res

cd "$idir"

unset filename