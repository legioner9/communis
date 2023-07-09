#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg_/_garg_/_debug/var_as_name_var.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# n_1="first"
# declare "$n_1"_2="tow"
# echo "$n_1"_2

a=3
b="fwef"

z="$b"_port
eval $z=$a
# последующее использование
echo "значение переменной с именем $z равно ${!z}"

unset filename