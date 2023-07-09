#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_dnf_/dnf_instll_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"


dnf_install_(){
    
    
    case $1 in
        
        "code")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
            sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
            dnf check-update
            sudo dnf install code
        ;;
        # ← put one or more switches here. Use snippet "switch" or snippet "switch multi"
        *) # This catches all cases that weren't previously listed. That's why it has the wildcard "*" operator.
            # ← put your command here
            sudo dnf install $1
        ;;
    esac
    
    
}

#up_lib_git

unset filename