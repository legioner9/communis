#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_shfn_/cr_shfn_tst/_flow_tst_without_echo.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

wrp_fifs1_ rm _e.sh -cf1

cr_shfn_ _e.sh


. _e.sh

_e &>> res

cd "$idir"

unset filename