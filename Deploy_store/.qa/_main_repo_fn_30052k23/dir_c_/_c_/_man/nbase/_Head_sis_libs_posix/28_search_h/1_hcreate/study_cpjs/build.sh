#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/28_search_h/1_hcreate/hcreate_cpjs/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


./main.bexe
 

cd "$idir"