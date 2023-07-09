#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_ret_true_fail_/ret_true_fail_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

ret_true_fail_ < dat > res

cd "$idir"

unset filename