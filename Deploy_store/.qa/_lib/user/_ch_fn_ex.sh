#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ch_fn_ex.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

ch_fn_ex() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    # External API arr_name_fn[@]

        #echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ch_fn_ex.sh") # FILENAME==="filename"
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
    

    if ! [ ${#arr_name_fn[@]} = 0 ]; then

        PS3="eligendi actiones: "

        select item in "${arr_name_fn[@]}"; do

            dilectus=$item
            break

        done

        echo "Will be call $dilectus, enter args:"
        read -r args
        echo -e "${ULINE}$dilectus "$args"${NORMAL}" #repit commands
        $dilectus "$args"
    else
        "Search is empty"
        ques_ s_s_
    fi
}

unset filename
