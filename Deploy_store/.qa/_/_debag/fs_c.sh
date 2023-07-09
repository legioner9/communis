#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/_/_debag/fs_c.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

fs_ -c

echo -e "${GREEN}\$_fs_path_file_ = $_fs_path_file_${NORMAL}" #print variable

unset filename