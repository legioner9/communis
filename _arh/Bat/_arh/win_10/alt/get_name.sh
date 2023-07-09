#!/bin/bash

. "$HOME/.bashrc"

filename="/home/st/ProjectRepo_2/_repo/communis/Bat/alt/get_name.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

up_lib_git

unset filename
pwd
# cdrepo communis
cd ../..
pwd
basename "$(pwd)"
