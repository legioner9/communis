#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/argarr_2/union_arr_2.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

union_arr_2() {
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    echo -en "arr_1: "
    echo "${arr_1[@]}"
    echo -en "arr_2: "
    echo "${arr_2[@]}"
    
    local i
    i=0
    
    for item_1 in ${arr_1[@]}; do
        
        _union_arr_2_[i]=$item_1
        ((i++))
        
    done
    
    for item_min in ${arr_2[@]}; do
        
        local q
        q=0
        
        # echo -e "${GREEN}\$item_min = $item_min${NORMAL}" #print variable
        
        for item_sub in ${arr_1[@]}; do
            # echo -e "${GREEN}\$item_sub = $item_sub${NORMAL}" #print variable
            
            if [ "$item_sub" = "$item_min" ]; then q=1; fi
        done
        if [ $q -eq 0 ]; then
            _union_arr_2_[i]=$item_min
            ((i++))
        fi
    done
    
    # echo -en "_union_arr_2_: "
    # echo ${_union_arr_2_[@]}
    
    export _union_arr_2_
    
}

# export union_arr_2

#          A              B             C              D               E
# subtraction_arr_2 ${#subtrahend[@]} ${subtrahend[@]} ${#minuend[@]} "${minuend[@]}" # my_out

arr_1=("1" "2" "3" "8")

arr_2=("1" "2" "5" "7")

union_arr_2 ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

echo -en "_union_arr_2_: "
echo ${_union_arr_2_[@]}

unset _union_arr_2_

unset filename
unset arr_1
unset arr_2