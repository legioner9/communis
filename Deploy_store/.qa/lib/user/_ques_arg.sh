#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ques_arg.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

ques_arg() {
    echo -e "${BLUE}---Exec $FNN (y) ?---${NORMAL}" #sistem info mesage
    unset y
    read -r y
    if [ "$y" = "y" ]; then
        if_v_h "$1"
        echo -e "${BLUE}---Enter arg for exec $1 ---${NORMAL}" #sistem info mesage
        unset arg
        read -r arg
        if_v_s $arg
        "$1" $arg
    fi

}

#up_lib_git ${FUNCNAME[0]}

unset filename
