#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_fifs2_bash_pref_dist_src_/fifs2_bash_pref_dist_src_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

fifs2_bash_pref_dist_src_ < dat > res

cd "$idir"

unset filename