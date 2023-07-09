#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_up_hostos_/up_hostos_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

up_hostos_ < dat > res

cd "$idir"

unset filename