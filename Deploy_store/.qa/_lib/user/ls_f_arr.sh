#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/ls_f_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

ls_f_arr() {
    # echo -e "${CYAN}---ls_f_arr() $*---${NORMAL}" #started functions

    #echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "$PATH_OS/.qa/lib/user/ls_f_arr.sh") # FILENAME==="filename"
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

    # echo -e "${GREEN}\${list[@]} = ${list[*]}${NORMAL}" #print variable
    unset _ls_f_arr_
    for item in *.sh; do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        _ls_f_arr_+=("${item%.*}")
    done

    # echo -e "${GREEN}\${_ls_f_arr_[@]} = ${_ls_f_arr_[*]}${NORMAL}" #print variable

    export _ls_f_arr_

}

export ls_f_arr

unset filename
