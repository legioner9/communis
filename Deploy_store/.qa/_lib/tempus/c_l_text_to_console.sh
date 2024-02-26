#!/bin/bash

# . "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/c_l.sh"
# filename="$PWD/c_l.sh"


echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

c_l_text_to_console(){
    echo -e "${CYAN}---c_l() $*---${NORMAL}" #started functions
    
    cd_h $PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console
    
    c_f "$1".sh

    if [ $flag = "false" ]; then
        qq_exit "c_f error : $1 file not found" "$filename" "$LINENO"
        unset flag
    fi
    unset flag
}

# c_l "test_"

#up_lib_git

unset filename