#!/bin/bash

# . "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/c_f.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

cd_h /home/st/.qa/_/_debag/test_c_f

c_f(){ # $1 = name for search
    echo -e "${CYAN}---c_f() $*---${NORMAL}" #started functions
    PPWD=$(pwd)
    # echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable
    
    for item in *; do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        item_path=$PPWD/$item
        if [ -f "$item_path" ] && [ "$item" = "$1" ] ; then
            echo -e "${ULINE}. $PPWD/$1${NORMAL}" #repit commands
            res=$item_path
            
            elif [ -d $item ]; then
            cd_h  $PPWD/$item
            c_f $1
            PPWD=$(dirname "$PPWD")
        fi
        
        if  [ -n "$res" ] && [ -z "$repeat" ]; then
            repeat=1
            echo -e "${ULINE}source $res${NORMAL}" #repit commands
            source "${res}"
        fi
        
    done
}

c_f b.sh

#up_lib_git

unset filename
