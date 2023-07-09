#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.os"
filename="$PATH_OS/.qa"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

unset filename
str="PATH_OS/.os"
repl="PATH_OS/.os"

sed -i 's|'$str'|'$repl'|' ${COMMUNIS_PATH}/Deploy_store/.qa*

str="PATH_OS/.os"
repl="PATH_OS/.os"

sed -i 's|'$str'|'$repl'|' ${COMMUNIS_PATH}/Deploy_store/.qa*