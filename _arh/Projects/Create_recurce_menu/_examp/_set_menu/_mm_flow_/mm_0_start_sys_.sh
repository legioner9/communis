#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/.qa/menus/_set_menu/_mm_flow/mm_0_start_sys.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

mm_0_start_sys(){
    echo -e "${CYAN}---mm_0_start_sys() $*---${NORMAL}" #started functions
    
    c_up "$HOME/.qa/menus/_set_menu/_mm_flow_/_mm_1_conq_"
    
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("pwd - you catalog")
    res+=("pwd $*")
    arr+=("clear - clear and exit")
    res+=("clear $*")
    arr+=("mm_3_fs_ - directory composition")
    res+=("mm_3_fs_ $*")
    arr+=("process_ - operating process")
    res+=("process_")
    arr+=("dnf_ - dnf package management")
    res+=("dnf_")
    arr+=("sys_info_ - about system constants")
    res+=("sys_info_")
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        dilectus=$item
        break
        
    done
    
    case $dilectus in
        
        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}
            # mm_0_start_sys "$@"
            
        ;;
        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            mm_0_start_sys "$@"
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            mm_0_start_sys "$@"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            # mm_0_start_sys "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            mm_0_start_sys "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            mm_0_start_sys "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            mm_0_start_sys "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            mm_0_start_sys "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            mm_0_start_sys "$@"
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
        "${arr[21]}")
            echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
            ${res[21]}
        ;;
        
        "${arr[22]}")
            echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
            ${res[22]}
        ;;
        
        "${arr[23]}")
            echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
            ${res[23]}
        ;;
        
        "${arr[24]}")
            echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
            ${res[24]}
        ;;
        
        "${arr[25]}")
            echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
            ${res[25]}
        ;;
        
        "${arr[26]}")
            echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
            ${res[26]}
        ;;
        
        "${arr[27]}")
            echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
            ${res[27]}
        ;;
        
        "${arr[28]}")
            echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
            ${res[28]}
        ;;
        
        "${arr[29]}")
            echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
            ${res[29]}
        ;;
        
        "${arr[30]}")
            echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
            ${res[30]}
            
        ;;
        "${arr[31]}")
            echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
            ${res[31]}
        ;;
        
        "${arr[32]}")
            echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
            ${res[32]}
        ;;
        
        "${arr[33]}")
            echo -e "${CYAN}---${res[33]}---${NORMAL}" #started functions
            ${res[33]}
        ;;
        
        "${arr[34]}")
            echo -e "${CYAN}---${res[34]}---${NORMAL}" #started functions
            ${res[34]}
        ;;
        
        "${arr[35]}")
            echo -e "${CYAN}---${res[35]}---${NORMAL}" #started functions
            ${res[35]}
        ;;
        
        "${arr[36]}")
            echo -e "${CYAN}---${res[36]}---${NORMAL}" #started functions
            ${res[36]}
        ;;
        
        "${arr[37]}")
            echo -e "${CYAN}---${res[37]}---${NORMAL}" #started functions
            ${res[37]}
        ;;
        
        "${arr[38]}")
            echo -e "${CYAN}---${res[38]}---${NORMAL}" #started functions
            ${res[38]}
        ;;
        
        "${arr[39]}")
            echo -e "${CYAN}---${res[39]}---${NORMAL}" #started functions
            ${res[39]}
        ;;
        
        
        
        
        
        
        *)
            echo -e "BLUE---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}

export mm_0_start_sys

unset filename