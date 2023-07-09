#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_dr1f2e_/dr1f2e_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res
dr1f2e_ $(pwd)/d0
echo $?
dr1f2e_ $(pwd)/d0x -qq_exit
echo $?
echo | dr1f2e_ $(pwd)/d0 >> res

echo | dr1f2e_ $(pwd)/d0x >> res

echo | dr1f2e_ $(pwd)/d0x  >> res


cd "$idir"

unset filename