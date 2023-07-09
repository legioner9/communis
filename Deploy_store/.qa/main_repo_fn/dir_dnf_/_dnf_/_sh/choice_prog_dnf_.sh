#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_dnf_/choice_prog_dnf_dnf_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

choice_prog_dnf_(){
    
    arr=()
    res=()
    arr+=("putty")
    arr+=("telegram-desktop")
    arr+=("code")
    # res+=("ls -a $*")
    arr+=("lshw")
    arr+=("lshw-gui")
    arr+=("hdparm")
    arr+=("hwinfo")
    arr+=("lsscsi")
    arr+=("inxi")
    arr+=("lsb")
    arr+=("gvim")
    arr+=("backintime-qt4")
    # arr+=("vim-gtk")
    
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        echo "$item"
        break
        
    done
    
}

export choice_prog_dnf_

# choice_prog_dnf_

unset filename