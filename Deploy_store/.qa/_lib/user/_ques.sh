#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ques.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

ques_() {
    echo -e "${BLUE}---Exec $FNN (y) ?---${NORMAL}" #sistem info mesage
    unset y
    read -r y
    if [ "$y" = "y" ]; then
        if_v_h "$1"
        "$1" "$2"
    fi

}

unset filename
