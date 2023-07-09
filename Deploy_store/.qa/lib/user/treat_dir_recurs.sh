#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/treat_dir_recurs.sh"

# "$PATH_OS/.os"
# "$PATH_OS/.qa"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

treat_dir_recurs() { # $2 single!!! command as cat possible

    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/treat_dir_recurs.sh") # FILENAME==="filename"
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

    cd_h "$1"
    for item in *; do
        path_item="$1"/"$item"
        if [ -f "$path_item" ]; then
            "$2" "$path_item"
        else
            [ -d "$path_item" ]
            cd_h "$path_item"
            if [ -n "$(ls)" ]; then
                treat_dir_recurs "$path_item" "$2"
                cd ..
            fi

        fi
    done

}

# unset filename
# str="PATH_OS/.os"
# repl="PATH_OS/.os"
# path_="${COMMUNIS_PATH}/Deploy_store/.qa/"

# # sed -i -r 's|'$str'|'$repl'|' ${COMMUNIS_PATH}/Deploy_store/.qa/*

# cd_h $

# str="PATH_OS/.qa"
# repl="PATH_OS/.qa"

# sed -i -r 's|'$str'|'$repl'|' ${COMMUNIS_PATH}/Deploy_store/.qa/*
