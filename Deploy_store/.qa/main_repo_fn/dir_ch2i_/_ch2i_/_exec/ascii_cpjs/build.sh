#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_ch2i_/_ch2i_/_exec/ascii_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


# valgrind --leak-check=full --track-origin=yes --leak-check=yes --log-file=filename ./main.bexe
# valgrind --track-origins=yes --log-file=log.vgd ./main.bexe
 

cd "$idir"