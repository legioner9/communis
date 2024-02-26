#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/exl_info.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

exl_info(){
        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        
        garg_ ${FUNCNAME[0]} $@ 1> /dev/null
        
        d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/exl_info.sh)
        
        if [ "-h" == "$1" ]; then
            echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:
    
            ${NORMAL}"
            return 0
        fi
    
        if [ "_man" == "$1" ]; then
            edit_ "$d_name/${FUNCNAME[0]}".man
            return 0
        fi
        
        if [ "_go" == "$1" ]; then
            edit_ "$d_name/${FUNCNAME[0]}".sh
            return 0
        fi
        
        if [ "_lst" == "$1" ]; then
            edit_ "$d_name/${FUNCNAME[0]}".lst
            return 0
        fi
        
        if [ "_test" == "$1" ]; then
            ${FUNCNAME[0]}test
            return 0
        fi
        
        # amount_arg $# 1 1
            echo -e "${CYAN}-------- $@ --------${NORMAL}" #sistem info mesage
}

cd "$idir"

unset filename