#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/assets/equal.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

a="e"
b="e"

if [ "$a" -eq "$b" ];then
echo -e "${BLUE}---1--${NORMAL}" #sistem info mesage
elif [ $a -eq $b ];then
echo -e "${BLUE}---2---${NORMAL}" #sistem info mesage
elif [ "$a" = "$b" ];then
echo -e "${BLUE}---3---${NORMAL}" #sistem info mesage
elif  [ $a = $b ];then
echo -e "${BLUE}---4---${NORMAL}" #sistem info mesage
fi




#up_lib_git

unset filename