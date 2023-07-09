#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/_debug/_logic.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"



zz_lib_case_5(){
    
    arr=()
    res=()
    arr+=("ls -a - отображать все файлы, включая скрытые")
    res+=("ls -a $*")
    arr+=("ls -a - отображать все файлы, включая скрытые")
    res+=("ls -a $*")
    arr+=("ls -a - отображать все файлы, включая скрытые")
    res+=("ls -a $*")
    arr+=("ls -a - отображать все файлы, включая скрытые")
    res+=("ls -a $*")
    arr+=("ls -a - отображать все файлы, включая скрытые")
    res+=("ls -a $*")
    
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
        ;;
        
       "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
        ;;
        
       "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
        ;;
        
       "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
        ;;
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;

    esac
    
}
zz_lib_case_5 -F

unset filename