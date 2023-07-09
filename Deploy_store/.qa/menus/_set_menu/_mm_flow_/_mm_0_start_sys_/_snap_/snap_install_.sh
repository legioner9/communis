#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_snap_/snap_install_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

snap_install_(){
    
    
    case $1 in
        
        "code")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            sudo snap install --classic code
        ;;
        # ← put one or more switches here. Use snippet "switch" or snippet "switch multi"
        *) # This catches all cases that weren't previously listed. That's why it has the wildcard "*" operator.
            # ← put your command here
            sudo snap install $1
        ;;
    esac
    
    
}

#up_lib_git

unset filename