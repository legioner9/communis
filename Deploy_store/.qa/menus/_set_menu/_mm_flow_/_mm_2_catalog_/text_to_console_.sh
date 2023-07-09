#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_2_catalog_/text_to_console_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

text_to_console_(){
    echo -e "${CYAN}---text_to_console_() $*---${NORMAL}" #started functions
    
    c_up "$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_2_catalog_/_text_to_console_/"
    path_man_1="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_2_catalog_/_text_to_console_/_man_1"
    
    unset arr
    unset res
    
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("man_1 - man ru")
    res+=("man_is $path_man_1")
    
    ls_f_arr $PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console
    
    for item in ${_ls_f_arr_[@]};do
        arr+=("$item")
        res+=("$item")
    done
    
    # echo -e "${GREEN}\${_ls_f_arr_[@]} = ${_ls_f_arr_[*]}${NORMAL}" #print variable
    
    # union_arr_2 "${#arr[@]}" "${arr[@]}" "${#_ls_f_arr_[@]}" "${_ls_f_arr_[@]}"
    
    # echo -e "${GREEN}\${_union_arr_2_[@]} = ${_union_arr_2_[*]}${NORMAL}" #print variable
    
    # arr=${_union_arr_2_[@]}
    
    # arr_1=("1" "2" "3" "8")
    
    # arr_2=("1" "2" "5" "7")
    
    # union_arr_2 ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}
    
    # echo -en "_union_arr_2_: "
    # echo ${_union_arr_2_[@]}
    
    
    echo -e "${GREEN}\${arr[@]} = ${arr[*]}${NORMAL}" #print variable
    echo -e "${GREEN}\${res[@]} = ${res[*]}${NORMAL}" #print variable
    
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
            text_to_console_ "$@"
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[2]}
            ${res[2]}
            text_to_console_ "$@"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[3]}
            ${res[3]}
            text_to_console_ "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[4]}
            ${res[4]}
            text_to_console_ "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[5]}
            ${res[5]}
            text_to_console_ "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[6]}
            ${res[6]}
            text_to_console_ "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[7]}
            ${res[7]}
            text_to_console_ "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[8]}
            ${res[8]}
            text_to_console_ "$@"
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[9]}
            ${res[9]}
            text_to_console_ "$@"
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[10]}
            ${res[10]}
            text_to_console_ "$@"
            
        ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[11]}
            ${res[11]}
            text_to_console_ "$@"
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[12]}
            ${res[12]}
            text_to_console_ "$@"
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[13]}
            ${res[13]}
            text_to_console_ "$@"
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[14]}
            ${res[14]}
            text_to_console_ "$@"
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[15]}
            ${res[15]}
            text_to_console_ "$@"
        ;;
        
        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[16]}
            ${res[16]}
            text_to_console_ "$@"
        ;;
        
        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[17]}
            ${res[17]}
            text_to_console_ "$@"
        ;;
        
        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[18]}
            ${res[18]}
            text_to_console_ "$@"
        ;;
        
        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[19]}
            ${res[19]}
            text_to_console_ "$@"
        ;;
        
        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[20]}
            ${res[20]}
            text_to_console_ "$@"
            
        ;;

                "${arr[21]}")
            echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[21]}
            ${res[21]}
            text_to_console_ "$@"
            
        ;;

                "${arr[22]}")
            echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[22]}
            ${res[22]}
            text_to_console_ "$@"
            
        ;;

                "${arr[23]}")
            echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[23]}
            ${res[23]}
            text_to_console_ "$@"
            
        ;;

                "${arr[24]}")
            echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[24]}
            ${res[24]}
            text_to_console_ "$@"
            
        ;;

                "${arr[25]}")
            echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[25]}
            ${res[25]}
            text_to_console_ "$@"
            
        ;;

                "${arr[26]}")
            echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[26]}
            ${res[26]}
            text_to_console_ "$@"
            
        ;;

                "${arr[27]}")
            echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[27]}
            ${res[27]}
            text_to_console_ "$@"
            
        ;;

                "${arr[28]}")
            echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[28]}
            ${res[28]}
            text_to_console_ "$@"
            
        ;;

                "${arr[29]}")
            echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[29]}
            ${res[29]}
            text_to_console_ "$@"
            
        ;;

                "${arr[30]}")
            echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[30]}
            ${res[30]}
            text_to_console_ "$@"
            
        ;;

                "${arr[31]}")
            echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[31]}
            ${res[31]}
            text_to_console_ "$@"
            
        ;;

                "${arr[32]}")
            echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[32]}
            ${res[32]}
            text_to_console_ "$@"
            
        ;;

                "${arr[33]}")
            echo -e "${CYAN}---${res[33]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[33]}
            ${res[33]}
            text_to_console_ "$@"
            
        ;;

                "${arr[34]}")
            echo -e "${CYAN}---${res[34]}---${NORMAL}" #started functions
            c_l_text_to_console ${res[34]}
            ${res[34]}
            text_to_console_ "$@"
            
        ;;
        
        
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}
export text_to_console_

unset filename