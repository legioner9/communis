#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/shifter_w_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

shifter_w_() { # $1:mask for shift

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/shifter_w_.sh") # FILENAME==="filename"
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

    _shiter_md_=()

    if [ -n "$1" ]; then
        ARG=$1
    else
        ARG="^#"
    fi

    echo -e "${BLUE}---Mask = $1---${NORMAL}" #sistem info mesage

    echo -e "${GREEN}\$ARG = $ARG${NORMAL}" #print variable

    for ((i = 0; i < ${#_g_s_m_[@]}; i++)); do
        echo -e "${GREEN}\${_g_s_m_[$i]} = ${_g_s_m_[$i]}${NORMAL}" #print variable
        if string_contain_ "$ARG" "${_g_s_m_[$i]}"; then

            _shiter_md_+=("${_g_s_m_[$i]}")

            # echo -e "${ULINE}unset ${_g_s_m_[$i]}${NORMAL}" #repit commands
            # unset ${_g_s_m_[$i]}
        fi

    done
    _g_s_m_=()
    _g_s_m_=("${_shiter_md_[@]}")

}

unset filename
