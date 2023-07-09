#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/sis_wst/sis_wst_init.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

wst_(){
    cd_s /home/st/PROGS1/IDEA_Linux/WebStorm-2020.1.4/WebStorm-201.8743.9/bin/
    ./webstorm.sh&
}

#up_lib_git

unset filename