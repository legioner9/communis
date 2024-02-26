#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_sins.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

is_sins() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_sins.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: define usbstr in string return errno 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1 substr
            \$2 str
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "go" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".sh
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi

    # amount_arg $# 1 1

    if [ -z "$1" ] || { [ -z "${2##*$1*}" ] && [ -n "$2" ]; }; then
        return 0
    else
        return 1
    fi

}

cd "$idir"

unset filename
