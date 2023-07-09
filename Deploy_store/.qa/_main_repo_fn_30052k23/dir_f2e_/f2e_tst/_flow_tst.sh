#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_f2e_/f2e_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

f2e_ dat >res
f2e_ dat0 >>res
cntl_c_cpjs | f2e_ notexist.file >>res

cd "$idir"

unset filename
