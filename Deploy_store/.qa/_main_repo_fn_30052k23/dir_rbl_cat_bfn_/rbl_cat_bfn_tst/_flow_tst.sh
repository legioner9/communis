#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_rbl_cat_bfn_/rbl_cat_bfn_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

rbl_cat_bfn_ < dat > res

cd "$idir"

unset filename