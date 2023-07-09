#!/bin/bash

. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/_debug/aa_ls.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

aa_ls_(){
    echo -e "${CYAN}---aa_ls() $*---${NORMAL}" #started functions
    
    arr=()
    res=()
    arr+=("ls -a - отображать все файлы, включая скрытые")
    res+=("ls -a $*")
    arr+=("ls -b - выводить Escape последовательности")
    res+=("ls -b $*")
    arr+=("ls -g - показывать подробную информацию, но кроме владельца файла;")
    res+=("ls -g $*")
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        dilectus=$item
        break
        
    done
    
    case $dilectus in
        
        "${arr[0]}")
            echo -e "${CYAN}---ls -a $*---${NORMAL}" #started functions
            ${res[0]}
        ;;
        "${arr[1]}")
            echo -e "${CYAN}---ls -b $*---${NORMAL}" #started functions
            ${res[1]}
        ;;
                
        "${arr[2]}")
            echo -e "${CYAN}---ls -a $*---${NORMAL}" #started functions
            ${res[2]}
        ;;
        
        
        *)
            echo -e "${BLUE}---error---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}




unset filename