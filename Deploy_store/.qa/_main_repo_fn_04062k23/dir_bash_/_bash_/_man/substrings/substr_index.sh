#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/substrings/substr_index.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

echo `expr index "cs ewfe" "x"`
# $ 0
echo `expr index "cs ewfe" " "`
# $ 3

cd "$idir"

unset filename