#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/err_.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

err_() { # $1 = (-i|-p|-e) $2 = $? , $3 = from

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/
    path_ext=$PPW$FNN

    # echo -e "${GREEN}\$# = $#${NORMAL}" #print variable

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} 
        MAIN: check \$? error
        NAME: ${FUNCNAME[0]}() 
        ARGS: \$1: (-i|-p|-e), \$2: $?, \$3: message
        FLOW:
        err_ -i : red info err_: \$3
        err_ -p : qq_pause err_: \$3
        err_ -e : qq_exit err_: \$3${NORMAL}"
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

    amount_arg $# 3 3

    if [ 0 -ne $2 ]; then

        if [ "-i" == "$1" ]; then
            echo -e "${RED}--- err_: $3 ---${NORMAL}" #exit 1
            return 0
        fi
        if [ "-p" == "$1" ]; then
            qq_pause "err_: $3"
            return 0
        fi
        if [ "-e" == "$1" ]; then
            qq_exit "err_: $3"
            return 0
        fi
    fi

}

cd "$idir"

unset filename
