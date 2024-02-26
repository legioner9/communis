#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_grep/deb_grep_1.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

f() {

    #echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_grep/
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
    PPWD=${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_grep/
    cd $PPWD

    # arg=$1
    # if [ -n $arg ]; then
    #     arg=""
    # fi

    for item in $(ls ../ | grep "$1"); do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
    done

}

f $1
cd "$idir"

unset filename
