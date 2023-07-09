#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ch_prefile_in_dir_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

ch_prefile_in_dir_() {                                   # $1 - work dir or this_dir if $1 is empty
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ch_prefile_in_dir_.sh") # FILENAME==="filename"
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
    

    if [ -n "$1" ]; then
        cd_h "$1"
    fi

    echo -e "${GREEN}\$(pwd) = $(pwd)${NORMAL}" #print variable

    arr_L=()

    for item in *; do
        pref=${item:0:1}
        if [ -f "$(pwd)/$item" ]; then
            if [ "$pref" != "_" ]; then
                arr_L+=("$item")

            fi
        fi
    done

    select item_1 in "${arr_L[@]}"; do

        _ch_prefile_in_dir_=$item_1
        break

    done

    export _ch_prefile_in_dir_

}

unset filename
