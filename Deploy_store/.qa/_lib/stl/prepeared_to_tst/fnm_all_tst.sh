#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/fnm_all_tst.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

fnm_all_tst() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/
    path_ext=$PPW$FNN

    if [ "man" == "$1" ]; then
        edit_ "$path_ext".man
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$path_ext".lst
        return 0
    fi

    if [ "go" == "$1" ]; then
        edit_ "$PPW"
        return 0
    fi

    dir=$1
    # find_ext "$dir" "tst"

    for item_ in $(find_ext "$dir" "fnm"); do
        echo -e "${GREEN}\$item_ = file://$item_${NORMAL}" #print variable
        echo -e "${BLUE}------${NORMAL}"                   #sistem info mesage
        cat "$item_"
        echo -e "${BLUE}------${NORMAL}" #sistem info mesage
    done
}
unset filename
