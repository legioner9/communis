#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/9_9_CoffeArPointFunc/6_arr222d_scanf.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

cd $(prs_f -d $filename)/res_cpp
./6_arr222d_scanf.bexe < fill.list

cd "$idir"

unset filename