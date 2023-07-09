#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/sis_apps/sis_git.2/git_pre_push_fns.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

git_pre_push_bck_hooks(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    
    # echo "IN: $(pwd)" # ${COMMUNIS_PATH}
    
    echo "--- RUN: cp -a "$(pwd)"/.git/hooks/ "$(pwd)"/Git_store -----------------------------"
    
    cp -a "$(pwd)"/.git/hooks/ "$(pwd)"/Git_store


}

unset filename