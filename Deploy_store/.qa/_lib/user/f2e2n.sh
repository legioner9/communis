#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2e2n.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

f2e2n() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2e2n.sh)

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
        ${FUNCNAME[0]}test
        return 0
    fi

    if [ $# -ne 2 ]; then
        echo "illegal number of parameters"
        return 1
    fi

    IFS='
'
    if [ -n "$2" ]; then

        for item in $(cat "$1"); do

            # echo $item
            fs="${item:0:1}"
            fs2="${item:1:1}"

            if [ "$fs" != "#" ] && [ "$item" != "" ] && [ "$fs" == "$2" ] && [ "$fs2" == "@" ]; then
                res_item="${item:2}"
                echo "$res_item"
            fi

        done

    fi

    IFS=$' \t\n'
    
}

unset filename
