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
    
    # cp_h "$PATH_OS/.qa/_templates_sys/for_f_f/f_f_menu" "$PWD/dir_$1/_$1/_sh/menu_$1.sh"
    # cp_h "$PATH_OS/.qa/_templates_sys/for_f_f/f_f_magic" "$PWD/dir_$1/_$1/_sh/magic_$1.sh"
    # cp_h "$PATH_OS/.qa/_templates_sys/for_f_f/f_f_add_tag" "$PWD/dir_$1/_$1/_sh/add_tag_$1.sh"
    # cp_h "$PATH_OS/.qa/_templates_sys/for_f_f/f_f_tag" "$PWD/dir_$1/_$1/_sh/tag_$1.sh"
    
    mv "$PATH_OS/.qa/main_repo_fn/dir_$1/_$1/_config/mane_.tag" "$HOME/.qa/main_repo_fn/dir_$1/_$1/_config/mane_$1.tag"
    
    r=".qa/main_repo_fn/dir_$1"
    
    sed -i 's/00000/'$1'/g' $PWD/dir_$1/$1.sh
    # sed -i 's|22222|'$r'|g' $PWD/dir_$1/$1.sh
    # sed -i 's/00000/'$1'/g' $PWD/dir_$1/_$1/_sh/menu_$1.sh
    # sed -i 's/00000/'$1'/g' $PWD/dir_$1/_$1/_sh/magic_$1.sh
    # sed -i 's/00000/'$1'/g' $PWD/dir_$1/_$1/_sh/add_tag_$1.sh
    # sed -i 's/00000/'$1'/g' $PWD/dir_$1/_$1/_sh/tag_$1.sh

    
    
    
}

export f_f

unset filename