#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/_vex/gf.fn/_gf_/_man/man.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

man_is(){
    echo -e "${CYAN}---started() $*---${NORMAL}" #started functions

    if [ "$1" ]; then
        
        cd_h "$1"
        
    fi
    
    PPWD=$PWD
    echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable
    PS3="eligendi actiones gvim -v pages: "
    select item in *;do
        
        gvim -v $PPWD/$item
        break
    done
    
}

unset filename