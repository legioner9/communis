#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/communis/Deploy_store/.qa/lib/user/_debug/ch_file_in_dir.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
ch_file_in_dir_ "$HOME"
echo -e "${GREEN}\$_ch_file_in_dir_ = $_ch_file_in_dir_${NORMAL}" #print variable
unset filename