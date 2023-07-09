#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/.qa/menus/_set_menu/mm_flow_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

mm_flow_(){
    echo -e "${CYAN}---mm_flow_() $*---${NORMAL}" #started functions
    
    c_up "$HOME/.qa/menus/_set_menu/_mm_flow_"
    
    
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("mm_0_start_sys - open devise")
    res+=("mm_0_start_sys")
    arr+=("mm_1_conq - unus cheat sheet ")
    res+=("mm_1_conq")
    
    # arr+=("22222 arg - send echo_request to network hosts")
    # res+=("22222 $arg")
    
    # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
    # read -r arg
    # echo -e "${BLUE}---${res[33333]} $arg---${NORMAL}" #sistem info mesage
    # ${res[33333]} "$arg"
    
    # arg=$(choice_44444)
    # echo -e "${BLUE}---${res[33333]} $arg---${NORMAL}" #sistem info mesage
    # ${res[33333]} "$arg"
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        dilectus=$item
        break
        
    done
    
    case $dilectus in
        
        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}
            
        ;;
        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            mm_flow_ "$@"
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            mm_flow_ "$@"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            mm_flow_ "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            mm_flow_ "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            mm_flow_ "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            mm_flow_ "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            mm_flow_ "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            mm_flow_ "$@"
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            mm_flow_ "$@"
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            mm_flow_ "$@"
            
        ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            mm_flow_ "$@"
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            mm_flow_ "$@"
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            mm_flow_ "$@"
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            mm_flow_ "$@"
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            mm_flow_ "$@"
        ;;
        
        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            mm_flow_ "$@"
        ;;
        
        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            mm_flow_ "$@"
        ;;
        
        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            mm_flow_ "$@"
        ;;
        
        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            mm_flow_ "$@"
        ;;
        
        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            mm_flow_ "$@"
            
        ;;
        
        
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
    export mm_flow_
}

unset filename