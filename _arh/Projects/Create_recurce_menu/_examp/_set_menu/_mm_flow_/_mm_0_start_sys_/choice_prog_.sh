#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/.qa/menus/_set_menu/_mm_flow/_mm_0_start_sys/choice_prog.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

choice_prog(){
    
    arr=()
    res=()
    arr+=("putty")
    # res+=("ls -a $*")
    arr+=("code")
    # res+=("ls -a $*")
    arr+=("lshw")
    arr+=("lshw-gui")
    arr+=("hdparm")
    arr+=("hwinfo")
    arr+=("lsscsi")
    arr+=("inxi")

    
    
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        echo "$item"
        break
        
    done
    
}

unset filename