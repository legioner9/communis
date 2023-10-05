#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/rand3e.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

rand3e() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/rand3e.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: [rand]om number with \$1 digit [2]to [e]cho
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1 value digit of result (but really no more whan 5 digit)
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi

    local arg=$1
    local val=$#

    if is_amount_arg "$val" 1 1; then

        if is_num "${arg}"; then
            cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c "${arg}"
            echo
        else
            qq_pause "in ${FNN} args: $arg not number"
            return 1
        fi

    else
        qq_pause "in ${FNN} args: $# not 1"
        return 1
    fi

}

cd "$idir"

unset filename
