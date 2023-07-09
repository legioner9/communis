#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null
cd ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cp__/_cp__/_debug/v2

cp__ -r d1/ d2/ -d1 -d2    


cd "$idir"

unset filename