#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_iff_/iff_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

_ptr_if_=0
iff_ _ptr_if_ echo
echo $_ptr_if_ &>>res

_ptr_if_=0
iff_ _ptr_if_ rm x
echo $_ptr_if_ &>>res

cd "$idir"

unset filename
