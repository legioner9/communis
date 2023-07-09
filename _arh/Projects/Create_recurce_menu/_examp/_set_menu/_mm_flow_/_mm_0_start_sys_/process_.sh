#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/.qa/menus/_set_menu/_mm_flow/_mm_0_start_sys/process_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

process_(){
    echo -e "${CYAN}---process_() $*---${NORMAL}" #started functions
    
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("top - realtime runing proceses")
    res+=("top $*")
    arr+=("ifconfig -a - Network Interfaces")
    res+=("ifconfig -a $*")
    arr+=("ping arg - send echo_request to network hosts")
    res+=("ping $arg")
    
    
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
            # echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            # ${res[1]}
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            # process_ "$@"
        ;;
        
        "${arr[2]}")
            # echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            # ${res[2]}
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]} | less
            # process_ "$@"
        ;;
        
        "${arr[3]}")
            # echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            # ${res[3]} | less
            # process_ "$@"
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            echo -e "${BLUE}---enter ip for ping---${NORMAL}" #sistem info mesage
            read -r arg
            ${res[3]} "$arg"
            process_ "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]} "$arg"
            process_ "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            process_ "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            process_ "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            process_ "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            
        ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
        ;;
        
        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
        ;;
        
        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
        ;;
        
        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
        ;;
        
        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
        ;;
        
        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            
        ;;
        
        
        *)
            echo -e "BLUE---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}

export process_

unset filename