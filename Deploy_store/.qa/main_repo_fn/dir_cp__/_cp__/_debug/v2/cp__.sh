#!/bin/bash

#. "/home/st/.bashrc"

filename="/home/st/" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null
cd ${PATH_MAIN_REPO_FN_DIR}/dir_cp__/_cp__/_debug/v2

cp__ -r d1/ d2/ -d1 -d2    


cd "$idir"

unset filename