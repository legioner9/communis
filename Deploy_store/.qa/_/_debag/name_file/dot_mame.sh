#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/name_file/dot_mame.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fn.dot(){
    echo -e "${CYAN}---fn.dot() $*---${NORMAL}" #started functions
}

fn.dot @

unset filename