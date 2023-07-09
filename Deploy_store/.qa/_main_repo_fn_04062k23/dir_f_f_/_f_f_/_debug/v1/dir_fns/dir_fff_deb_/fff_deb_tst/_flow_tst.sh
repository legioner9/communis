#!/bin/bash

#. "$HOME/.bashrc"

filename=${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/dir_fns/dir_fff_deb_/fff_deb_tst//_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename