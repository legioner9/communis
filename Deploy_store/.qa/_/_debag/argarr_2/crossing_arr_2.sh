#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/argarr_2.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

argarr_2() {
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    #  declare __ret_array_name=${argv[(totlen - 1)]}     # Name of array to be returned
    
    # Show passed arrays
    echo -en "Array 1: "
    show_array "${arr_1[@]}"
    echo -en "Array 2: "
    show_array "${arr_2[@]}"
    
    # Create array to be returned with given name (by concatenating passed arrays in opposite order)
    #  eval ${__ret_array_name}='("${arr_2[@]}" "${arr_1[@]}")'
}

# declare -a array_1=(Only 1 word @ the time)                                       # 6 elements
# declare -a array_2=("Space separated words," sometimes using "string paretheses") # 4 elements
# declare -a my_out # Will contain output from array_demo()

# A: Length of array_1
# B: First array, not necessary with string parentheses here
# C: Length of array_2
# D: Second array, necessary with string parentheses here
# E: Name of array that should be returned from function.
#          A              B             C              D               E
# argarr_2 ${#array_1[@]} ${array_1[@]} ${#array_2[@]} "${array_2[@]}" # my_out

# crossing_arr_2() {
#     declare -a argv=("${@}")                           # All arguments in one big array
#     declare -i len_1=${argv[0]}                        # Length of first array passad
#     declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
#     declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
#     declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
#     declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)

#     # Show passed arrays
#     echo -en "arr_1: "
#     echo "${arr_1[@]}"
#     echo -en "arr_2: "
#     echo "${arr_2[@]}"

#     local i
#     i=0

#     for item_2 in ${arr_2[@]}; do

#         local q
#         q=0

#         # echo -e "${GREEN}\$item_min = $item_min${NORMAL}" #print variable

#         for item_1 in ${arr_1[@]}; do
#             # echo -e "${GREEN}\$item_sub = $item_sub${NORMAL}" #print variable

#             if [ "$item_1" = "$item_2" ]; then

#                 _crossing_arr_2_[i]=$item_1
#                 ((i++))
#             fi
#         done
#     done

#     echo -en "_crossing_arr_2_: "
#     echo ${_crossing_arr_2_[@]}

#     export _crossing_arr_2_

# }

#          A              B             C              D               E
# subtraction_arr_2 ${#subtrahend[@]} ${subtrahend[@]} ${#minuend[@]} "${minuend[@]}" # my_out

arr_1=("1" "2" "3" "8")

arr_2=("1" "2" "5" "7")

crossing_arr_2 ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

echo -en "_crossing_arr_2_: "
echo ${_crossing_arr_2_[@]}

unset filename
unset arr_1
unset arr_2
