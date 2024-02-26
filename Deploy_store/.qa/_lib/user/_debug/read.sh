#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/read.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

    _ques_(){
        echo "Repeat that(y)?"
        read -r yes
        echo -e "${GREEN}\$yes = $yes${NORMAL}" #print variable
        if [ $yes = "y" ];then
            echo -e "${BLUE}---true do---${NORMAL}" #sistem info mesage
        fi
    }

_ques_



unset filename