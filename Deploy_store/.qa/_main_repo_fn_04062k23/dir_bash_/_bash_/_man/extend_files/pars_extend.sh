#!/bin/bash

#. "/home/st/.bashrc"

# filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/extend_files/pars_extend.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

unset filename



FILE="example.tar.gz"
echo -e "${GREEN}\$FILE = $FILE${NORMAL}" #print variable
echo "${FILE%%.*}"
# example
echo "${FILE%.*}"
# example.tar
echo "${FILE#*.}"
# tar.gz
echo "${FILE##*.}"
# gz