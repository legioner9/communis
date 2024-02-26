#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2f.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

f2f() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2f.sh)

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

    # readarray rows <"$1"
    if [ -s $1 ]; then
        IFS='
'

        for str in $(cat $1); do
            # echo -e "${GREEN}\$str = $str${NORMAL}" #print variable
            echo -e $str
            if [ -z $str ]; then
                str=""
            fi
            sed -i '/'"$3"'/i '"$str"'' "$2"
        done

        IFS=$' \t\n'
    fi
}

unset filename
