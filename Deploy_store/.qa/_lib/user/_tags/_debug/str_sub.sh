#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/_debug/str_sub.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

str="dir_ferfe"

v=${str:0:4}
echo -e "${GREEN}\$v = $v${NORMAL}" #print variable

unset filename