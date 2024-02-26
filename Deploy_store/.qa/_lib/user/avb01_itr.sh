#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/avb01_itr.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

avb01_itr() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/
    path_ext=$PPW$FNN

    # amount_arg $# 1 1

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: [av]aila[b]ility \$1 returning as [0] or [1] from [it]e[r]ator \$2
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1 match
            \$2 iterator
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

    amount_arg $# 2 2

    for item in $($2); do
        # empty itteration protection
        if [ -z "$item" ]; then
            echo 0
            return
        fi
        # search
        if [ "$1" == "$item" ]; then
            echo 1
            return
        fi
    done
    echo 0
    return
}

cd "$idir"

unset filename
