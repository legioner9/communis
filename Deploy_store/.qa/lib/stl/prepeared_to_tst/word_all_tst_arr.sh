#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/word_all_tst_arr.sh"

echo -e "${HLIGHT}---start file: file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

word_all_tst_arr() { # $1 match

    flag=1

    clear

    for item in "${arr_dir_for_check_all_tst[@]}"; do

        word_all_tst "$item" "$1"

        # if ! [ "$(word_all_tst "$item")" ]; then
        #     flag=0
        # fi

    done

    # if [ 0 -eq $flag ]; then
    #     echo "IN check_all_tst_arr() tst FAIL" >&2
    # fi

    # if [ 1 -eq $flag ]; then
    #     echo "IN check_all_tst_arr() tst TRUE"
    # fi
}

unset filename
