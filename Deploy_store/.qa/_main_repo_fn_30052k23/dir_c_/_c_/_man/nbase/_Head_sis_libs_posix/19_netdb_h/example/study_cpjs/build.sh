#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/19_netdb_h/example/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/

echo -e "${BLUE}--- ./main.bexe ---${NORMAL}" #sistem info mesage
./main.bexe
echo -e "${BLUE}--- ./main.bexe tcp 1 ---${NORMAL}" #sistem info mesage
./main.bexe tcp 1
echo -e "${BLUE}--- ./main.bexe xxx 1 ---${NORMAL}" #sistem info mesage
./main.bexe xxx 1

 

cd "$idir"