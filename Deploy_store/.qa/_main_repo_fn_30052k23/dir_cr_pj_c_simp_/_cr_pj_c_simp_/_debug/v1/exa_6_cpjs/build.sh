#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_pj_c_simp_/_cr_pj_c_simp_/_debug/v1/exa_6_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


# valgrind --leak-check=full --track-origin=yes --leak-check=yes --log-file=filename ./main.bexe
# valgrind --track-origins=yes --log-file=log.vgd ./main.bexe
 

cd "$idir"