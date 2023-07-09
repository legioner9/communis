#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console/split_"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

split_(){
    echo -e "${CYAN}---split_() $*---${NORMAL}" #started functions
 
    c_up "$PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console/_split_/"
    path_man_1="$PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console/_split_/_man_1"
    
    arr=()
    res=()
    arr+=("leave menu split_")
    res+=("echo bye)))")
    arr+=("man_1 - man ru")
    res+=("man_is $path_man_1")

    # arr+=("22222 - отображать все файлы, включая скрытые, это те, перед именем которых стоит точка;")
    # res+=("22222")
    
    # arr+=("&&&&&&&&& enter arg - &&&&&&&&& snap package management")
    # res+=("&&&&&&&&&")
    # arr+=("&&&&&&&&& choice arg - &&&&&&&&& snap package management")
    # res+=("&&&&&&&&&")
    
    # arr+=("22222 arg - send echo_request to network hosts")
    # res+=("22222 $arg")
    # arr+=("dnf --enablerepo=ARG1 install ARG2 - dnf позволяет установить любой конкретный пакет (скажем, phpmyadmin) из определённого репозитория (к примеру, epel) ")
    # res+=("---")
    
    # echo -e "${BLUE}---enter ARG1---${NORMAL}" #sistem info mesage
    # read -r ARG1
    # echo -e "${BLUE}---enter ARG2---${NORMAL}" #sistem info mesage
    # read -r ARG2
    # echo -e "${BLUE}---dnf --enablerepo=ARG1 install ARG2---${NORMAL}" #sistem info mesage
    # dnf --enablerepo=$ARG1 install $\ARG2
    
    # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
    # read -r arg
    # echo -e "${BLUE}---${res[33333]} $arg---${NORMAL}" #sistem info mesage
    # ${res[33333]} $arg

    # arg=$(choice_44444)
    # echo -e "${BLUE}---${res[33333]} $arg---${NORMAL}" #sistem info mesage
    # ${res[33333]} $arg
    
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
            split_ "$@"
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            split_ "$@"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            split_ "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            split_ "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            split_ "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            split_ "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            split_ "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            split_ "$@"
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            split_ "$@"
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            split_ "$@"
            
        ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            split_ "$@"
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            split_ "$@"
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            split_ "$@"
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            split_ "$@"
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            split_ "$@"
        ;;
        
        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            split_ "$@"
        ;;
        
        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            split_ "$@"
        ;;
        
        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            split_ "$@"
        ;;
        
        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            split_ "$@"
        ;;
        
        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            split_ "$@"
            
        ;;
        
        
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}
export split_    

unset filename