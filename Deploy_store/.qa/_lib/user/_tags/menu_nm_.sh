#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/menu_nm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

menu_nm_(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
    
    
    arr=()
    res=()
    arr+=("leave menu $1")
    res+=("echo bye)))")
    
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
            menu_nm_ "$1"
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            menu_nm_ "$1"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            menu_nm_ "$1"
        ;;
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
        
    esac
    
}


unset filename