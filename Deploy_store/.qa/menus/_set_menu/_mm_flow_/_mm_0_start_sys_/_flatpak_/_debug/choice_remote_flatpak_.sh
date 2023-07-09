#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/_debug/choice_remote_flatpak_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

choice_remote_flatpak_(){
    
    (flatpak remotes) 1>$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/_debug/remotes.md
    
    IFS=$'\n'
    
    for item in $(cat $PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_flatpak_/_debug/remotes.md);do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # arr[i]="$item"
        # i=$((i+1))
        
        IFS=$IIFS
        i=0
        
        for item_2 in $item;do
            echo -e "${GREEN}\$item_2 = $item_2${NORMAL}" #print variable
            arr[i]="$item_2"
            i=$((i+1))
            
        done
        _choice_remote_flatpak_+=( "${arr[0]}" )
        
    done
    # echo -e "${GREEN}\${_choice_remote_flatpak_[@]} = ${_choice_remote_flatpak_[*]}${NORMAL}" #print variable
    
    export _choice_remote_flatpak_

    unset arr
}

# choice_remote_flatpak_
# echo -e "${GREEN}\${_choice_remote_flatpak_[@]} = ${_choice_remote_flatpak_[*]}${NORMAL}" #print variable

unset arr

unset filename