#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_ch_arg_/_ch_arg_/_debug/_ch_arg_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

zch_arg_() {

    unset _ch_arg_
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    unset item

    PS3="eligendi actiones: "

    select item in "$@"; do

        zch_arg_=$item
        break

    done
    echo -e "${GREEN}\$zch_arg_ = $zch_arg_${NORMAL}" #print variable
    export $zch_arg_

}

ch_arg_ 

# _ch_arg_ "a" "b" "c"

unset filename
