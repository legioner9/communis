#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_COMMUNIS}/Deploy_store/.qa/lib/user/cr_cexa.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

cr_cexa() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${PATH_COMMUNIS}/Deploy_store/.qa/lib/user/cr_cexa.sh") # FILENAME==="filename"
    path_ext=$PPW/$FNN

    # amount_arg $# 1 1

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: create ${PATH_VEXILLUM_DIR}/name._cexa in pwd or $1
            NAME: ${FUNCNAME[0]}()
            ARGS: [, $1: dest_dir]
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
        dir_pwd="$1"
    else
        dir_pwd=$(pwd)
    fi

    echo -e "${GREEN}\$dir_pwd = $dir_pwd${NORMAL}" #print variable

    if [ -f "$dir_pwd"/name._cexa ]; then
        qq_exit "$dir_pwd/name._cexa allready exist"
    else
        cp "${HOME}"/${PATH_VEXILLUM_DIR}/name._cexa "$dir_pwd"
        # edit_ "$dir_pwd/name._cexa"
    fi

}


cd "$idir"

unset filename
