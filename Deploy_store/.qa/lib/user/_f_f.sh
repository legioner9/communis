#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/f_f.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_f(){
    echo -e "${CYAN}---f_f() $*---${NORMAL}" #started functions
    
    if ! [ $# -eq 1 ] ; then
        qq_exit " $# num arg != 1" "$filename" "$LINENO"
    fi
    
    cd_h "$PATH_OS/.qa/main_repo_fn"
    
    qq_pause "($1) create !!! in ($PWD/dir_$1/) file ($1.sh) dir (_$1) ?" "$filename" "$LINENO"
    
    mkdir_h_ifnotexsist_h "$PWD/dir_$1" "$filename" "$LINENO"
    
    cp_h "$PATH_OS/.qa/_templates_sys/for_f_f/f_f" "$PWD/dir_$1/$1.sh" "$filename" "$LINENO"
    
    cp_h "$PATH_OS/.qa/_templates_sys/for_f_f/_00000"   "$PWD/dir_$1/_$1"
    
    mv "$PATH_OS/.qa/main_repo_fn/dir_$1/_$1/_config/mane_.tag" "$HOME/.qa/main_repo_fn/dir_$1/_$1/_config/mane_$1.tag"
    
    sed -i 's/00000/'$1'/g' $PWD/dir_$1/$1.sh
    
}

ques_arg

export f_f

unset filename