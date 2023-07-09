#!/bin/bash

. "$HOME/.bashrc"

filename="/home/st/.qa/debag/circusup/circusup.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

c_up() {
    echo -e "${CYAN}---c_up() \$1 = $1---${NORMAL}" #started functions
    IFS=$IIFS

    cd_h "$1" "$filename" "$LINENO"

    local dir
    dir=$(pwd)

    for item in *; do
        # echo -e "${GREEN}\$item = $item${NORMAL}"             #print variable
        # echo -e "${GREEN}\${item:0:1} = ${item:0:1}${NORMAL}" #print variable
        local item_path=$dir/$item
        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]; then
            . "$item_path"
            elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

            c_up "$item_path"

        fi

    done
}

c_up /home/st/.qa/_debag/circusup/d1


unset filename
