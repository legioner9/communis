#!/bin/bash

# . "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/c_l.sh"
# filename="$PWD/c_l.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

c_l() {
    echo -e "${CYAN}---c_l() $*---${NORMAL}" #started functions

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "$PATH_OS/.qa/lib/user/c_l.sh") # FILENAME==="filename"
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

    cd_h $PATH_OS/.qa/include_libs/_incl_lib_1

    c_f "$1".sh

    if [ $flag = "false" ]; then
        qq_exit "c_f error : $1 file not found" "$filename" "$LINENO"
        unset flag
    fi
    unset flag
}

# c_l "test_"

#up_lib_git

unset filename
