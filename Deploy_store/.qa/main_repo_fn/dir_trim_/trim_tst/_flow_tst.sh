#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_trim_/trim_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# trim_ < dat > res

>res

IFS='
'

for item in $(cat dat); do

    echo "$item" >> res
    # trim_ "${item}"
    trim_ "${item}" >> res

done

IFS=$IIFS

cat res

cd "$idir"

unset filename
