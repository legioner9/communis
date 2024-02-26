#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/namespaces.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

if_name(){ # $1 check fn
    echo -e "${CYAN}---if_name() $*---${NORMAL}" #started functions

    $1 1>"$a" 2>"$b"

    echo -e "${GREEN}\$a = $a${NORMAL}" #print variable
    echo -e "${GREEN}\$b = $b${NORMAL}" #print variable
    
    if [ -n "$a" ] ;then
        echo 1 #sistem info mesage
    fi
}

export if_name

if_name_err_do(){
    echo -e "${CYAN}---if_name_err_do() $*---${NORMAL}" #started functions

    echo -e "${GREEN}\$(if_name "$1") = $(if_name "$1")${NORMAL}" #print variable
    
    if [ "$(if_name "$1")" -eq 1 ];then
        echo -e "${BLUE}---exist fn---${NORMAL}" #sistem info mesage
        $3
    else
        echo -e "${BLUE}---not exsist fn---${NORMAL}" #sistem info mesage
        $2
    fi
}

export if_name_err_do

unset filename