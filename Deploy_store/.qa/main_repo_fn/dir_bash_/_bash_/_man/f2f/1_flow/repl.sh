#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/f2f/1_flow/repl.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

for str in $(cat $(pwd)/src); do
    echo -e "${GREEN}\$str = $str${NORMAL}" #print variable
    sed -i '/<<<<</i '"$str"'' $(pwd)/dist
done

unset filename
