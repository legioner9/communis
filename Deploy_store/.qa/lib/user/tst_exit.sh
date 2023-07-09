#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/tst_exit.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

tst_exit() {
    #echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/tst_exit.sh") # FILENAME==="filename"
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

    bsh_() {
        . $HOME/.bashrc
    }

    arr_dir_for_check_all_tst=()
    readarray -t arr_dir_for_check_all_tst <"$PATH_TST_FILE"

    if [ "$(check_all_tst_arr)" ]; then
        echo -e "${BLUE}---INIT0 patch with EXIT 0---${NORMAL}" #sistem info mesage
        # exit 0
    else
        echo -e "${RED}---INIT0 patch with EXIT 1---${NORMAL}" #sistem info mesage
        qq_exit "tst_ fail"
    fi

}

cd "$idir"

unset filename
