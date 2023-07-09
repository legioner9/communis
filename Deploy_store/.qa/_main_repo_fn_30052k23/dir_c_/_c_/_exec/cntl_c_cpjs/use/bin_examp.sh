#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec/cntl_c_cpjs/use/bin_examp.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

./main.bexe | . wate_ctrl_c.sh 

cd "$idir"

unset filename