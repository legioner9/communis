#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/repo_arr_diff.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

get_other_repo(){
    echo -e "${CYAN}---repo_arr_diff()---${NORMAL}" #started functions
    
    f2a_all "$HOME/.gitrepo"
    
    echo ${_f2a_all_[@]}
    
    get_exsist_repo
    
    echo ${_exsist_repo_[@]}

    local i
    i=0

    for 
}

get_other_repo

unset filename