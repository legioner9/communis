#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/2_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

crossing_arr_2() {
    echo -e "${CYAN}---crossing_arr_2()---${NORMAL}" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    # echo -en "arr_1: "
    # echo "${arr_1[@]}"
    # echo -en "arr_2: "
    # echo "${arr_2[@]}"
    
    local i
    i=0
    
    for item_2 in ${arr_2[@]}; do
        
        local q
        q=0
        
        # echo -e "${GREEN}\$item_min = $item_min${NORMAL}" #print variable
        
        for item_1 in ${arr_1[@]}; do
            # echo -e "${GREEN}\$item_sub = $item_sub${NORMAL}" #print variable
            
            if [ "$item_1" = "$item_2" ]; then
                
                _crossing_arr_2_[i]=$item_1
                ((i++))
            fi
        done
    done
    
    # echo -en "_crossing_arr_2_: "
    # echo ${_crossing_arr_2_[@]}
    
    export _crossing_arr_2_
    
    unset i
    unset q
    
}

#          A              B             C              D               E
# subtraction_arr_2 ${#subtrahend[@]} ${subtrahend[@]} ${#minuend[@]} "${minuend[@]}" # my_out

# arr_1=("1" "2" "3" "8")

# arr_2=("1" "2" "5" "7")

# crossing_arr_2 ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

export crossing_arr_2

subtraction_arr_2() {
    echo -e "${CYAN}---subtraction_arr_2()---${NORMAL}" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    # echo -en "sub: "
    # echo "${arr_1[@]}"
    # echo -en "min: "
    # echo "${arr_2[@]}"
    
    local i
    i=0
    
    for item_min in ${arr_2[@]}; do
        
        local q
        q=0
        
        # echo -e "${GREEN}\$item_min = $item_min${NORMAL}" #print variable
        
        for item_sub in ${arr_1[@]}; do
            # echo -e "${GREEN}\$item_sub = $item_sub${NORMAL}" #print variable
            
            if [ "$item_sub" = "$item_min" ]; then q=1; fi
        done
        if [ $q -eq 0 ]; then
            
            # echo -e "${GREEN}\$i = $i${NORMAL}" #print variable
            # echo -e "${GREEN}\$item_min = $item_min${NORMAL}" #print variable
            _subtraction_arr_2_[i]=$item_min
            ((i++))
        fi
    done
    
    export _subtraction_arr_2_
    
    unset i
    unset q
    
}

export subtraction_arr_2

# sub=("1" "2" "3" "8")

# min=("1" "2" "5" "7")

# subtraction_arr_2 ${#sub[@]} ${sub[@]} ${#min[@]} "${min[@]}"

# echo -en "_subtraction_arr_2_: "
# echo ${_subtraction_arr_2_[@]}

union_arr_2() {
    echo -e "${CYAN}---union_arr_2()---${NORMAL}" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    # echo -en "arr_1: "
    # echo "${arr_1[@]}"
    # echo -en "arr_2: "
    # echo "${arr_2[@]}"
    
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
    
    export _union_arr_2_
    
}

export union_arr_2

#          A              B             C              D               E
# subtraction_arr_2 ${#subtrahend[@]} ${subtrahend[@]} ${#minuend[@]} "${minuend[@]}" # my_out

# arr_1=("1" "2" "3" "8")

# arr_2=("1" "2" "5" "7")

# union_arr_2 ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

# echo -en "_union_arr_2_: "
# echo ${_union_arr_2_[@]}

notcrossing_arr_2() {
    echo -e "${CYAN}---notcrossing_arr_2()---${NORMAL}" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    # echo -en "arr_1: "
    # echo "${arr_1[@]}"
    # echo -en "arr_2: "
    # echo "${arr_2[@]}"
    
    declare i
    i=0
    
    subtraction_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"
    
    for item in "${_subtraction_arr_2_[@]}"; do
        
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        _notcrossing_arr_2_[i]=$item
        ((i++))
        
    done
    
    unset _subtraction_arr_2_
    
    subtraction_arr_2 "${#arr_2[@]}" "${arr_2[@]}" "${#arr_1[@]}" "${arr_1[@]}"
    
    for item in "${_subtraction_arr_2_[@]}"; do
        
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        _notcrossing_arr_2_[i]=$item
        ((i++))
        
    done
    
    unset _subtraction_arr_2_
    
    
    
    # echo -en "_notcrossing_arr_2_: "
    # echo "${_notcrossing_arr_2_[@]}"
    
    export _notcrossing_arr_2_
    
}

export notcrossing_arr_2

#          A              B             C              D               E
# subtraction_arr_2 ${#subtrahend[@]} ${subtrahend[@]} ${#minuend[@]} "${minuend[@]}" # my_out

# arr_1=("1" "2" "3" "8")

# arr_2=("1" "2" "5" "7")

# notcrossing_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"

# echo -en "_notcrossing_arr_2_: "
# echo "${_notcrossing_arr_2_[@]}"


# export union_arr_2

#          A              B             C              D               E
# subtraction_arr_2 ${#subtrahend[@]} ${subtrahend[@]} ${#minuend[@]} "${minuend[@]}" # my_out

# arr_1=("1" "2" "3" "8")

# arr_2=("1" "2" "5" "7")

# union_arr_2 ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

# echo -en "_union_arr_2_: "
# echo ${_union_arr_2_[@]}

unset filename