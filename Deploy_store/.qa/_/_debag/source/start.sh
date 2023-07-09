#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_/_debag/source/start.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fn(){

    . "$1".sh
}

path="$PATH_OS/.qa/_/_debag/source/dir/sorc"

fn "$path"

unset filename