#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/home/st/.qa/_debag/argarr_2_strong/sub_strong.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

unset filename


sbtraction_arr_2() {
    echo -e "${CYAN}---union_arr_2()---${NORMAL}" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    echo -en "sub: "
    echo "${arr_1[@]}"
    echo -en "min: "
    echo "${arr_2[@]}"
    
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

sub_strong() {
    echo -e "CYAN---sub_strong()---NORMAL" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    echo -en "sub: "
    echo "${arr_1[@]}"
    echo -en "min: "
    echo "${arr_2[@]}"
    
    #-------------------------------------------------
    
    tmp=()
    
    for ((i=0;i<${#arr_2[@]};i++)){
        skip=
        for ((j=0;j<${#arr_1[@]};j++)){

    
        }
    }
    
    
    
    
    #-------------------------------------------------
    
    
    
    export _sub_strong_ # return function
    
}


sub=("1" "2" "3" )

min=("1" "2" "2" "7")

sub_strong ${#sub[@]} ${sub[@]} ${#min[@]} "${min[@]}"

declare -p _sub_strong_

# echo -en "_sub_strong_2_: "
# echo ${_subtraction_arr_2_[@]}