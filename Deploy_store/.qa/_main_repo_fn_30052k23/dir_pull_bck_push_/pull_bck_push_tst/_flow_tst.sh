#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_pull_bck_push_/pull_bck_push_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

pull_bck_push_ < dat &>> res

cd "$idir"

unset filename