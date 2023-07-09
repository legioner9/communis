#!/bin/bash

. "$HOME/.bashrc"

filename="$PATH_OS/.qa/sis_git.2/_git_update_all.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

# e_exer "Questions? See far!" "$filename" "$LINENO"

# up_lib_git

# get_exsist_repo(){
#     echo -e "${CYAN}---get_exsist_repo()---${NORMAL}" #started functions
#     cd_h "$repo_path/_repo"

#     local i
#     i=0

#     for item in * ; do

#     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

#     _get_exsist_repo_[i]="$item"
#     ((i++))

#     done

#     export _get_exsist_repo_
#     # echo "${_get_exsist_repo_[@]}"
#     declare -p _get_exsist_repo_

# }

# # export exsist_repo

# get_exsist_repo

# echo "${_get_exsist_repo_[@]}"

# maybe_add_arr_repo(){
#     # allowed_arr_repo extr exsist_arr_repo
    
#     subtraction_arr_2 ${#exsist_arr_repo[@]} ${exsist_arr_repo[@]} ${#allowed_arr_repo[@]} ${allowed_arr_repo[@]}
    
#     _maybe_add_arr_repo_=(${_subtraction_arr_2_[@]})

#     _subtraction_arr_2_=()
    
#     export _maybe_add_arr_repo_
    
    
# }

# export maybe_add_arr_repo

unset filename