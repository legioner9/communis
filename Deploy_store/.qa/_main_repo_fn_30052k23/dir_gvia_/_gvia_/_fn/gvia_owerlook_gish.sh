#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gvia_/_gvia_/_fn/gvia_owerlook_gish.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

gvia_owerlook_gish(){
        echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        
        garg_ ${FUNCNAME[0]} $@ 1> /dev/null
        
        d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_gvia_/_gvia_/_fn/gvia_owerlook_gish.sh)
        
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

        edit_ ${PATH_CANONS_DIR}/.gitfnlist.md
        
}



cd "$idir"

unset filename