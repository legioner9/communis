#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_sandboxes/f2out_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/
echo -e "${RED}--- START ./main.bexe ---${NORMAL}" #exit 1
./main.bexe content
echo -e "${RED}--- END ./main.bexe ---${NORMAL}" #exit 1

# valgrind --leak-check=full --track-origin=yes --leak-check=yes --log-file=filename ./main.bexe
# valgrind --track-origins=yes --log-file=log.vgd ./main.bexe
 

cd "$idir"