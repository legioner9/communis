#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_fed_/_fed_/_sh/dnf_fedora_up_version_.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

dnf_fedora_up_version_(){
        echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        
        d_name=$(dirname "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_fed_/_fed_/_sh/dnf_fedora_up_version_.sh)
        if [ "man" == "$1" ]; then
            edit_ "$d_name/${FUNCNAME[0]}".man
            return 0
        fi
        
        if [ "lst" == "$1" ]; then
            edit_ "$d_name/${FUNCNAME[0]}".lst
            return 0
        fi
        
        if [ "test" == "$1" ]; then
            ${FUNCNAME[0]}test
            return 0
        fi

sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=$(($(rpm -E %fedora) + 1))
sudo dnf system-upgrade reboot   
        
}

unset filename