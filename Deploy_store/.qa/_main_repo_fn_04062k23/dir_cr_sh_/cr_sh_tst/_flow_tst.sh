#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_sh_/cr_sh_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

echo | cr_sh_ res 

cd "$idir"

unset filename