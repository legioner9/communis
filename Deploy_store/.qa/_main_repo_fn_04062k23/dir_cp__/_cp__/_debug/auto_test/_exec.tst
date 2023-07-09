#!/bin/bash

#. "/home/st/.bashrc"

filename="/home/st/st/${PATH_MAIN_REPO_FN_DIR}/dir_cp__/_cp__/_debug/auto_test/_exec.tst" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

dir=$(prs_f -d "$filename")
cd "$dir" || qq_exit
. "$dir"/cp_debug_1 &>res

# cd "$dir"/use/ || qq_exit

# ./main.bexe &>res

flag=1
if ! diff -q ""$dir"/pre" ""$dir"/res" >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "ANY in $dir fail" >&2
else
    echo "ALL in $dir true"
fi



cd "$idir"

unset filename