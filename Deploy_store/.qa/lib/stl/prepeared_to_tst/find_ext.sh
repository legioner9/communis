#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/find_ext.sh"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

find_ext() {
    # echo -e "${CYAN}---c_up() \$1 = $1---${NORMAL}" #started functions
    IFS=$IIFS

    # cd_h "$1" "$filename" "$LINENO"
    cd "$1" || qq_exit "$1 not exist"

    local dir
    dir=$(pwd)

    for item in *; do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        local item_path=$dir/$item
        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" = "$2" ]; then
            # echo "---------- "${item##*.}" ---------------"
            # if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]; then
            # echo "$item_path"
            # read -r e
            echo "$item_path"

        elif
            [ -d "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "$item_path" != "." ] && [ "$item_path" != ".." ] 
        then

            find_ext "$item_path" "$2"

        fi

    done
}

export find_ext

unset filename
