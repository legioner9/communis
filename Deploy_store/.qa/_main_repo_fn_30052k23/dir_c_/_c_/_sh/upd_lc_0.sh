#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_sh/upd_lc_0.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

upd_lc_0() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    qq_pause "Update dir_c_/_c_/_lib/lc_0.c : create lc_0.h ?"

    #sed -i 's/00000/'$1'/g' $PWD/dir_$1/$1.sh

}

#up_lib_git ${FUNCNAME[0]}

unset filename
