#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_fff2_/fff2_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

fff2_ < dat &>> res

cd "$idir"

unset filename