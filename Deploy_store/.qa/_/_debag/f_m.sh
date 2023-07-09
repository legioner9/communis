#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_/_debag/f_m.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_m(){
    
    if ! [ $# -eq 1 ] ; then
        qq_exit "num arg != 1" "$filename" "$LINENO"
    fi
    
    echo -e "${CYAN}---f_m() $*---${NORMAL}" #started functions
    
    qq_pause "($1) create in ($PWD) file ($1.sh) dir (_$1) with file (man_1) ?" "$filename" "$LINENO"
    
    cp_h "$PATH_OS/.qa/_templates_sys/menu_1" "$PWD/$1.sh" "$filename" "$LINENO"
    mkdir_h "$PWD/_$1" "$filename" "$LINENO"
    touch "$PWD/_$1/man_1"
    
}

export f_m

unset filename