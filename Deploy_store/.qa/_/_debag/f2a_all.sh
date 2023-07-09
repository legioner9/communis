#!/bin/bash

# . "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/f2a.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f2a_all "$HOME/.gitrepo"

echo "${_f2a_all_[@]}"

unset filename