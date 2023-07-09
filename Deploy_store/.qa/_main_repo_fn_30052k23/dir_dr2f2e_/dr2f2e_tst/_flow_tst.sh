#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_dr2f2e_/dr2f2e_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

echo | dr2f2e_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_dr2f2e_/_dr2f2e_/_debug/v1/d0 -qq_exit &>> res
echo $? &>> res
echo | dr2f2e_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_dr2f2e_/_dr2f2e_/_debug/v1/d0x -qq_exit &>> res
echo $? &>> res
echo | dr2f2e_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_dr2f2e_/_dr2f2e_/_debug/v1/d0x &>> res
echo $? &>> res

cd "$idir"

unset filename