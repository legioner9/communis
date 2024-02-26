#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/gtt_communis.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

gtt_communis() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/gittag.sh") # FILENAME==="filename"
        path_ext=$PPW/$FNN
    
        # amount_arg $# 1 1
    
        if [ "-h" == "$1" ]; then
            echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
            return 0
        fi
    
        if [ "man" == "$1" ]; then
            edit_ "$path_ext".man
            return 0
        fi
    
        if [ "lst" == "$1" ]; then
            edit_ "$path_ext".lst
            return 0
        fi
    
        if [ "_go" == "$1" ]; then
            edit_ "$PPW"
            return 0
        fi
    
        # amount_arg $# min_args max_args
    

    edit_ "${COMMUNIS_PATH}/.gittag"

    # echo -e "${ULINE}find_files=$(find ~ -type f -name ".gittag")${NORMAL}" #repit commands
    # find_files=$(find ~ -type f -name ".gittag")

    # echo -e "${GREEN}\${find_files[@]} = ${find_files[*]}${NORMAL}" #print variable

    # PS3="eligendi actiones: "

    # select item in $find_files; do

    #     dilectus=$item
    #     break

    # done
    # edit_ "$dilectus"

}


unset filename
