#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_debug/_deb.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_debug/rbl_rr_tail.list rr

cd "$idir"

unset filename