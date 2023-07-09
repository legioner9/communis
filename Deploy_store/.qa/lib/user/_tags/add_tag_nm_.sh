#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/add_tag_nm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

add_tag_nm_(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
    
    unset _choice_tag_
    choice_tag
    
    f_tag=$_choice_tag_
    unset _choice_tag_
    
    unset _f2a_
    f2a "$PATH_FN/dir_$1/_$1/_config/mane_$1.tag"
    
    echo -e "${GREEN}\$adds = $adds${NORMAL}" #print variable
    echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable
    
    unset flag
    
    unset item
    for item in "${_f2a_[@]}" ; do
        
        if [ $item = $f_tag ];then
            # qq_pause "${BLUE}---$adds allready in tags---${NORMAL}"
            flag="false"
            break
        fi
    done
    unset item
    unset _f2a_
    
    if [ -z $flag ];then
        echo -e "${BLUE}---NOT Found---${NORMAL}" #sistem info mesage
        qq_pause "${BLUE}---$f_tag add to tags mane_$1.tag?---${NORMAL}"
        
        if_f_h "$PATH_FN/dir_$1/_$1/_config/mane_$1.tag"
        echo "$f_tag" >> "$PATH_FN/dir_$1/_$1/_config/mane_$1.tag"
    else
        echo -e "${BLUE}---find---${NORMAL}" #sistem info mesage
        qq_pause "${BLUE}---$f_tag  allready in tags---${NORMAL}"
        echo "bye)))"
    fi
    # echo "$adds" > "$PATH_FN/dir_hh_/_hh_/_config/mane_hh_.tag"
    
    
    unset _f2a_
    
    # less $PATH_FN/dir_hh_/_hh_/_config/mane_hh_.tag
}

unset filename