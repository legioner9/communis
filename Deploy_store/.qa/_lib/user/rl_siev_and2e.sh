#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/rl_siev_and2e.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

rl_siev_and2e() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/rl_siev_and2e.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: [r]ead [l]ine siev echo: line coontane all substrs \$@
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:
            DEBUG: 
            file://${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_deb_rl_siev_and2e/deb_1.sh
    
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

    while IFS= read -r line; do
        flag=1
        for match in $@; do
            # echo $line $match
            if ! [ 1 -eq $(sins_01 "${match}" "${line}") ]; then
                flag=0
                break
            fi
        done

        if [ 1 -eq ${flag} ]; then
            echo ${line}
        fi
    done

}

cd "$idir"

unset filename
