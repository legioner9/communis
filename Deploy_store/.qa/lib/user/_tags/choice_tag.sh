#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/search_tag.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

choice_tag() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
    
    unset _choice_tag_file_
    choice_tag_file "$PATH_TAG"
    full_path=$_choice_tag_file_
    
    # echo -e "${GREEN}\$full_path = $full_path${NORMAL}" #print variable
    
    unset _f2a_
    
    f2a "$_choice_tag_file_"
    # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable
    
    unset _choice_tag_file_
    
    PS3="eligendi actiones: "
    
    unset tag
    select tag in "${_f2a_[@]}"; do
        
        adds=$tag
        break
        
    done
    unset tag
    
    # echo -e "${GREEN}\$adds = $adds${NORMAL}" #print variable
    # echo -e "${GREEN}\$PATH_TAG = $PATH_TAG${NORMAL}" #print variable
    
    f_tag=$(echo "$full_path/$adds" | sed 's|'$PATH_TAG'||')
    # echo -e "${GREEN}\$f_tag = $f_tag${NORMAL}" #print variable
    
    _choice_tag_=$f_tag
    
    export _choice_tag_
    
}

unset filename
