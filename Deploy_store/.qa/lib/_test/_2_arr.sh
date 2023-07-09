#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/_test/2_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

unset filename

sub=("1" "2" "3" "8")

min=("1" "2" "5" "7")

arr_1=("1" "2" "3" "8")

arr_2=("1" "2" "5" "7")

union_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"

echo -en "_union_arr_2_: "
echo "${_union_arr_2_[@]}"
unset _union_arr_2_

subtraction_arr_2 "${#sub[@]}" "${sub[@]}" "${#min[@]}" "${min[@]}"

echo -en "_subtraction_arr_2_: "
echo "${_subtraction_arr_2_[@]}"
unset _subtraction_arr_2_

notcrossing_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"

echo -en "_notcrossing_arr_2_: "
echo "${_notcrossing_arr_2_[@]}"
unset _notcrossing_arr_2_

crossing_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"

echo -en "_crossing_arr_2_: "
echo "${_crossing_arr_2_[@]}"
unset _crossing_arr_2_

unset filename
unset arr_1
unset arr_2

