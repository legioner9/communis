#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/cd.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

aai_cd(){
    
    arr=()
    res=()
    arr+=("cd -P - позволяет следовать по символическим ссылкам перед тем, как будут обработаны все переходы ..;")
    res+=("cd -P $*")
    arr+=("cd -L - переходит по символическим ссылкам только после того, как были обработаны ..")
    res+=("cd -L $*")
    arr+=("cd -e - если папку, в которую нужно перейти не удалось найти - выдает ошибку.")
    res+=("cd -e $*")
    
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
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
        
    esac
    
}

export aai_cd

unset filename