#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_/_debag/add_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

unset filename

arr_1=("1" "2" "3" "8")

arr_2=("1" "2" "5" "7")

union_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"

echo -en "_union_arr_2_: "
echo ${_union_arr_2_[@]}
#_union_arr_2_: 1 2 3 8 5 7