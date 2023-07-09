#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_tmp/ls1.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

arg_var_arr(){
    echo -e "CYAN---arg_var_arr()---NORMAL" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare var=${argv[0]}                        # Length of first array passad
    declare -a arr=("${argv[@]:1}")           # First array
    
    # Show passed arrays
    echo -en "var: "
    echo "$var"
    echo -en "arr: "
    echo "${arr[@]}"
    
    #-------------------------------------------------
    
    
    
    
    
    #-------------------------------------------------
    
    
    
    export _arg_var_arr_ # return function
    
}

# export arg_var_arr

# var="1"

# arr=("1" "2" "5" "7")

# arg_var_arr "var" "${arr[@]}"

echo -e "${CYAN}---started() $.1=$1 $\2=$2 $\3=$3 $\4=$4----${NORMAL}" #started functions