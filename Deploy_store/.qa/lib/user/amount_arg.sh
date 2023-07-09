#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/amount_arg.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

amount_arg() { # $1=$# $2 corrent min amount args $3 corrent max amount args $4 hint
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/amount_arg.sh)
    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
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

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1=\$#
            \$2 corrent min amount args
            \$3 corrent max amount args
            \$4 hint
            FLOW:${NORMAL}"
        return 0
    fi

    # if [ $# -le 3 ]; then
    #     qq_exit "$4:exit in fn amount_arg: $# <= 3"
    # fi

    if [ ! "$1" -ge "$2" ] || [ ! "$1" -le "$3" ]; then
        qq_exit "$4: EXIT amount args = $1: not >= $2 or <= $3"
    fi

}

unset filename
