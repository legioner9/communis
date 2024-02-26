#!/bin/bash

# "$HOME/.bashrc"

# filename="$PATH_OS/.qa/lib/user/c_f.sh"

filename="$PWD/c_f.sh"


echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

# cd_h $PATH_OS/.qa/_debag/test_c_f

c_f(){ # $1 = name for search
    echo -e "${CYAN}---c_f() $*---${NORMAL}" #started functions
    PPWD=$(pwd)

        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d PATH_OS/.qa/lib/user/c_f.sh) # FILENAME==="filename"
        path_ext=$PPW/$FNN
    
        # amount_arg $# 1 1
    
        if [ "-h" == "$1" ]; then
            echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
            return 0
        fi
    
        if [ "man" == "$1" ]; then
            edit_ "$path_ext".man
            return 0
        fi
    
        if [ "lst" == "$1" ]; then
            edit_ "$path_ext".lst
            return 0
        fi
    
        if [ "_go" == "$1" ]; then
            edit_ "$PPW"
            return 0
        fi
    
        # amount_arg $# min_args max_args
    
    # echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable
    
    flag="false"
    
    for item in *; do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        item_path=$PPWD/$item
        if [ -f "$item_path" ] && [ "$item" = "$1" ] ; then
            echo -e "${ULINE}source "$item_path"/$1${NORMAL}" #repit commands
            flag="true"
            source "$item_path"
            break
            elif [ -d $item ]; then
            cd_h  $PPWD/$item
            c_f "$1"
            PPWD=$(dirname "$PPWD")
        fi
        
        # if  [ -n "$res" ] && [ -z "$repeat" ]; then
        #     repeat=1
        #     echo -e "${ULINE}source $res${NORMAL}" #repit commands
        #     source "${res}"
        #     unset repeat
        # fi
        
    done

}

# c_f b.sh

#up_lib_git

unset filename
