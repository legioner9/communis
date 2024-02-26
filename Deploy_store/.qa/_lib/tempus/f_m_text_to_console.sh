#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/f_m.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_m_text_to_console(){ # $2 rel path to template

    cd_h "$PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console"

    f_m_arg "$1" ".qa/_templates_sys/tempus/menu_1_text_to_console"

    # cd_h $PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console
    
    # if ! [ $# -eq 1 ] ; then
    #     qq_exit " $# num arg != 1" "$filename" "$LINENO"
    # fi
    
    # echo -e "${CYAN}---f_m_text_to_console() $*---${NORMAL}" #started functions
    
    # qq_pause "($1) create in ($PWD) file ($1.sh) dir (_$1) with file (man_1) ?" "$filename" "$LINENO"
    
    # cp_c "$PATH_OS/.qa/_templates_sys/tempus/menu_1_text_to_console" "$PWD/$1.sh" "$filename" "$LINENO"
    # mkdir_h "$PWD/_$1" "$filename" "$LINENO"
    # touch "$PWD/_$1/_man_1"
    # sed -i 's/00000/'$1'/g' $PWD/$1.sh
}

export f_m_text_to_console

unset filename