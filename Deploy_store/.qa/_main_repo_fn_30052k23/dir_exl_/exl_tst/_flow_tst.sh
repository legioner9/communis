#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_exl_/exl_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

> res
echo | exl_ --list $(pwd)/a.exl &>> res
echo | exl_ --list $(pwd)/b.exl &>> res

# echo | exl_ --list $(pwd)/a.exl
# echo | exl_ --list $(pwd)/b.exl

cd "$idir"

unset filename