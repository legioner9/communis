#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/choice_repo_flatpak_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

choice_repo_flatpak_(){
    
    arr=()
    res=()
    arr+=("--if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo")
    arr+=("--if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo")
    # arr+=("telegram-desktop")
    # arr+=("telegram-desktop")
    # arr+=("telegram-desktop")
    # arr+=("telegram-desktop")
    # arr+=("telegram-desktop")

    
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        echo "$item"
        break
        
    done
    
}

export choice_prog_rpm_

# choice_prog_

unset filename