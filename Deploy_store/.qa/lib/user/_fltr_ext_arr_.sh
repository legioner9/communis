#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/fltr_ext_arr_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

fltr_ext_arr_(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
}

#up_lib_git ${FUNCNAME[0]}

unset filename