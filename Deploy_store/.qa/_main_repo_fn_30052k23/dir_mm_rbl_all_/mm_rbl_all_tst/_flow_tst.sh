#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_mm_rbl_all_/mm_rbl_all_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

mm_rbl_all_ < dat > res

cd "$idir"

unset filename