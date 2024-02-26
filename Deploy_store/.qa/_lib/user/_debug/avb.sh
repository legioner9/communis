#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/avb.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"
avb() { # $1 match $2 iterator
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$HOME/--DIR_with_fn--
    path_ext=$PPW$FNN

    # amount_arg $# 1 1

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
        MAIN: 
        NAME: ${FUNCNAME[0]}()
        ARGS: 
        FLOW:

        ${NORMAL}"
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

    for item in $($2); do

        if [ $1 == $item ]; then
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            echo 1
            return
        fi

    done
    echo 0
    return

}

avb "snap2" "ls -a"

avb_res=$(avb "snap2" "ls -a")

if [ 1 == $avb_res ]; then
    echo -e "${BLUE}--- snap is present from ls -a ---${NORMAL}" #sistem info mesage
elif [ 0 == $avb_res ]; then
    echo -e "${RED}--- snap1 is not present from ls -a ---${NORMAL}" #exit 1
fi

cd "$idir"

unset filename
