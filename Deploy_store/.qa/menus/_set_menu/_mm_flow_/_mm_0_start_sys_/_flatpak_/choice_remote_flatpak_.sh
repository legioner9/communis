#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/choice_remote_flatpak_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

remote_flatpak_(){
    
    echo "remote_flatpak_ started"
    
    (flatpak remotes) 1>$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/_debug/remotes.md
    
    IFS=$'\n'
    
    for item in $(cat $PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/_debug/remotes.md);do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # arr[i]="$item"
        # i=$((i+1))
        
        IFS=$IIFS
        i=0
        
        for item_2 in $item;do
            # echo -e "${GREEN}\$item_2 = $item_2${NORMAL}" #print variable
            arr[i]="$item_2"
            i=$((i+1))
            
        done
        _remote_flatpak_+=( "${arr[0]}" )
        unset arr
        
    done
    # echo -e "${GREEN}\${_choice_remote_flatpak_[@]} = ${_choice_remote_flatpak_[*]}${NORMAL}" #print variable
    
    export _remote_flatpak_
    
}

export remote_flatpak_

choice_remote_flatpak_(){
    echo -e "${CYAN}---choice_remote_flatpak_() $*---${NORMAL}" #started functions
    
    remote_flatpak_
    
    PS3="eligendi actiones: "
    
    select item in "${_remote_flatpak_[@]}";do
        
        echo "$item"
        break
        
    done
    
    unset _remote_flatpak_
    
}

unset filename