#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_is_gcached_/is_gcached_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

is_gcached_ < dat &>> res

cd "$idir"

unset filename