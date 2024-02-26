#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/d2e.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

d2e() { # $1 root dir $2 extend files for filter
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    if_v_h "$1"

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/d2e.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
        return 0
    fi
    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "test" == "$1" ]; then
        "${FUNCNAME[0]}"test
        return 0
    fi

    #     IFS='
    # '

    if [ -n "$2" ]; then

        for item in $(ls "$1"); do
            # ls "$1" | IFS= read -r item ; do

            # [[ -e "$item" ]] || break

            if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ] && [ "$(prs_f -e "$1/$item")" == "$2" ]; then
                echo "$item"
            fi

        done

    elif [ -z "$2" ]; then

        for item in $(ls "$1"); do

            # [[ -e "$item" ]] || break

            if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                echo "$item"
            fi

        done

    fi

    IFS=$' \t\n'

}

unset filename
