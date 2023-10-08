#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/site2d.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

site2d() { #$1 string $2 delimer $3 num of sequence
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/site2d.sh") # FILENAME==="filename"
    path_ext=$PPW/$FNN

    # amount_arg $# 1 1

    local ar1="$1"
    local ar2="$2"
    local PW
    PW=$(pwd)

    if [ "-h" == "${ar1}" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: download site to pwd dir
            NAME: ${FUNCNAME[0]}()
            ARGS: 
                \$1 url site
            CNTL: 

            FLOW:${NORMAL}"
        return 0
    fi

    if [ "man" == "${ar1}" ]; then
        edit_ "$path_ext".man
        return 0
    fi

    if [ "lst" == "${ar1}" ]; then
        edit_ "$path_ext".lst
        return 0
    fi

    if [ "_go" == "${ar1}" ]; then
        edit_ "$PPW"
        return 0
    fi

    if [ -z "$ar1" ]; then
        plt_err "\${ar1} not exist"
        return 1
    fi
    plt_pause "download? : ${ar1} to dir ${PW}"
    plt_pause "do? : wget -r -l3 -k -p -E -nc ${ar1}"
    # amount_arg $# min_args max_args
    wget -r -l3 -k -p -E -nc "${ar1}"

}

unset filename
