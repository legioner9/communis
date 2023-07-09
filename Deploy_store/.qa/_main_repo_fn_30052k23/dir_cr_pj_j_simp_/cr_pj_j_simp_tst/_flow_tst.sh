#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_cr_pj_j_simp_/cr_pj_j_simp_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_pj_j_simp_ < dat &>> res

cd "$idir"

unset filename