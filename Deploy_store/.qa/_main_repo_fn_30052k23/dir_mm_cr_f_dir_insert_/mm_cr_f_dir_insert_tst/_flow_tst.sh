#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_mm_cr_f_dir_insert_/mm_cr_f_dir_insert_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

mm_cr_f_dir_insert_ < dat &>> res

cd "$idir"

unset filename