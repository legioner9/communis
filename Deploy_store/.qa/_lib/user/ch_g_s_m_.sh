#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ch_g_s_m_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

ch_g_s_m_() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ch_g_s_m_.sh") # FILENAME==="filename"
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
    

    flag_null="false"

    PS3="eligendi actiones: "

    if [ -n "${_g_s_m_[0]}" ]; then

        select item in "${_g_s_m_[@]}"; do

            dilectus=$item
            break

        done

        IFS=$'%@' read -r -a dilectus_arr <<<"$dilectus"

        # echo -e "${GREEN}\${dilectus_arr[@]} = ${dilectus_arr[*]}${NORMAL}" #print variable

        # echo -e "${ULINE}edit_ ${dilectus_arr[0]} ${dilectus_arr[2]}${NORMAL}"

        # local edit_this="edit_ ${dilectus_arr[0]} ${dilectus_arr[2]}"

        ques_ edit_ ${dilectus_arr[0]} ${dilectus_arr[2]}

    else
        echo -e "${BLUE}---result NULL---${NORMAL}" #sistem info mesage
        flag_null="true"

        # ques_arg_ s_w_
        ques_ s_w_
    fi

}

unset filename
