#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_fif_/fif_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

_ptr_if_=1
fif_ _ptr_if_
echo $_ptr_if_ &>> res

# fif_ < dat &>> res

cd "$idir"

unset filename