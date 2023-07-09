#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_debug/name_fun.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

rrrr(){
    echo -e "${BLUE}---message from rrrr---${NORMAL}" #sistem info mesage
}

# if ! rrrr ;then
#     echo -e "${BLUE}---exsist fn---${NORMAL}" #sistem info mesage
# else
#     echo -e "${BLUE}---not exist fn---${NORMAL}" #sistem info mesage
# fi

if_name(){ # $1 check fn
    echo -e "${CYAN}---if_name() $*---${NORMAL}" #started functions
    
    if $1 ;then
        echo 1 #sistem info mesage
    fi
}

export if_name

if_name_err_do(){
    echo -e "${CYAN}---if_name_err_do() $*---${NORMAL}" #started functions
    
    if [ -n "$(if_name "$1")" ];then
        echo -e "${BLUE}---exist fn---${NORMAL}" #sistem info mesage
        $3
    else
        echo -e "${BLUE}---not exsist fn---${NORMAL}" #sistem info mesage
        $2
    fi
}

export if_name_err_do


if [ -n "$(if_name rrrr)" ];then
    echo -e "${BLUE}---exist fn---${NORMAL}" #sistem info mesage
else
    echo -e "${BLUE}---not exsist fn---${NORMAL}" #sistem info mesage
fi

echo -e "${BLUE}---after if---${NORMAL}" #sistem info mesage

unset filename
unset rrrr

ls