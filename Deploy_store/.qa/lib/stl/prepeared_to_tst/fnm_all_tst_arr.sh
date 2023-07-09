#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/fnm_all_tst_arr.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

fnm_all_tst_arr() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
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

    clear

    for item in "${arr_dir_for_check_all_tst[@]}"; do

        fnm_all_tst "$item"

    done

}

unset filename
