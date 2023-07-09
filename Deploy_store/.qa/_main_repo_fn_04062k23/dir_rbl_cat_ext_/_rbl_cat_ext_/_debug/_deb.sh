#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_rbl_cat_ext_/_rbl_cat_ext_/_debug/_deb.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

rbl_cat_ext_ ${PATH_MAIN_REPO_FN_DIR}/dir_rbl_cat_ext_/_rbl_cat_ext_/_debug/rbl_rr_tail.list rr

cd "$idir"

unset filename