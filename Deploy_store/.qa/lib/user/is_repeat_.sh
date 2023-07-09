#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_repeat_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

is_repeat_() {

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_repeat_.sh") # FILENAME==="filename"
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


    echo -e "${RED}---Repeat $1 (y)?---${NORMAL}" #exit 1
    unset y
    read -r y
    echo -e "${GREEN}\$y = $y${NORMAL}" #print variable
    if [ "y" = "$y" ]; then
        echo -e "${GREEN}\$1 = $1${NORMAL}" #print variable
        if_not_v_h $1
        $1

    fi
}

# is_repeat_ ls

unset filename
