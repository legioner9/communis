#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_debag/argarr_2_strong/search_in_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

indexOf_arr(){
    echo -e "CYAN---argvararr()---NORMAL" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare var=${argv[0]}                        # Length of first array passad
    declare -a arr=("${argv[@]:1}")           # First array
    
    # Show passed arrays
    echo -en "var: "
    echo "$var"
    echo -en "arr: "
    echo "${arr[@]}"
    
    #-------------------------------------------------
    
    _indexOf_arr_=
    
    
    for (( i=0; i<${#arr[@]}; i++ ))
    do
        [[ "${arr[i]}" ==  "$var" ]] && { _indexOf_arr_="$i" ;}
    done
    
    
    
    #-------------------------------------------------
    
    
    
    # export _indexOfarr # return function
    
    echo "$_indexOf_arr_"
    
}

# export argvararr

var="5"

arr=("7888")

arr_=("1" "2" "5" "7")
# indexOf_arr "$var" "${arr[@]}"

di=$(indexOf_arr "$var" "${arr_[@]}")

# declare -p di
echo -e "${GREEN}\$di = $di${NORMAL}" #print variable
echo -e "${GREEN}\$arr = ${arr[@]}${NORMAL}" #print variable
unset filename