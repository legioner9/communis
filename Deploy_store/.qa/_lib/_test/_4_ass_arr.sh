#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/_4_ass_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

arg_ass_2_arr() {
    echo -e "CYAN---arg_2_arr()---NORMAL" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    echo -en "arr_1: "
    echo "${arr_1[@]}"
    echo -en "arr_2: "
    echo "${arr_2[@]}"
    
    #-------------------------------------------------
    
    declare -A _arg_ass_2_arr_
    
    i=0
    
    while [ $i -le ${#arr_1[@]} ]; do
        
        index=${arr_1[i]}
        echo -e "${GREEN}\$index = $index${NORMAL}" #print variable
        value=${arr_2[i]}
        echo -e "${GREEN}\$value = $value${NORMAL}" #print variable

        _arg_ass_2_arr_["$index"]="$value"
        
    done
    
    
    
    
    
    #-------------------------------------------------
    
    
    
    export _arg_ass_2_arr_ # return function
    
}

# export arg_2_arr

arr_1=("1" "2" "3" "8")

arr_2=("1" "2" "5" "7")

arg_ass_2_arr "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"

# echo -en "_arg_2_arr_: "

# unset _arg_2_arr_

# unset filename
# unset arr_1
# unset arr_2

unset filename