#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/00000/main.tst"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

if_exit_1(){
    exit 1
}

# if_exit_1 this FAIL ALL TST

echo "INIT patch with EXIT 0"

exit 0

unset filename