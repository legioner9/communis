#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/seer_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

unset filename

seer_() {
        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/seer_.sh") # FILENAME==="filename"
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
    
    echo -e "${BLUE}---Result:---${NORMAL}" #sistem info mesage
    unset seer_item

    # echo -e "${GREEN}\${_g_s_m_[@]} = ${_g_s_m_[*]}${NORMAL}" #print variable

    for seer_item in "${_g_s_m_[@]}"; do
        echo -e "${GREEN}\$seer_item = $seer_item${NORMAL}" #print variable

    done
    
}
