#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/_debug/if_command.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git


if ! cd "r" ;then
echo -e "${RED}---error cd "r"---${NORMAL}" #exit 1
fi
unset filename

if_git_exist "$filename" "$LINENO"