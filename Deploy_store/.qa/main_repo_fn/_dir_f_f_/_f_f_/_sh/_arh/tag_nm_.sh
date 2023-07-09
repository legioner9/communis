#!/bin/bash

#. "/home/st/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/tags/tag_nm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

tag_nm_(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
    less "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_config/mane_$1.tag"
}

unset filename