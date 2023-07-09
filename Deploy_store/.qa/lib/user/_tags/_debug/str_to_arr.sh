#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/_debug/str_to_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

string="jj_ _jj_ _config mane_jj_.tag: tabu.tag 0"

read -r -a array <<< "$string"

echo -e "${GREEN}\$array[0] = ${array[0]}${NORMAL}" #print variable

unset filename