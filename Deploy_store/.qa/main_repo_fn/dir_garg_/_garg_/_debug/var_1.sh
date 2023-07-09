#!/bin/bash

#. "/home/st/.bashrc"

filename="/home/st/communis/Deploy_store/.qa/main_repo_fn/dir_garg_/_garg_/_debug/var_1.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

echo ${#@}
echo ${@}
echo $@

cd "$idir"

unset filename