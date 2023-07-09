#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/plt_exit.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

plt_exit() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    local FNN=${FUNCNAME[0]}
    local ARGS=($@)
    local NARGS=$#

    # garg_ ${FNN} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/plt_exit.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
            MAIN: read, return 1
            NAME: ${FNN}()
            ARGS: 
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "${d_name}/${FNN}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${d_name}/${FNN}".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "${d_name}/${FNN}".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        ${FNN}test
        return 0
    fi

    #is_amount_arg ${NARGS} min_equ max_equ

    #if [ "$?" -ne 0 ]; then
    #    qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN}"
    #    return 1
    #fi

    #! arg_path -> absolut path
    # arg_path=$(abs_path $(pwd) arg_path)

    #------------------------------------------------------------------
    #-----------------------------------

    echo -e "${RED}--------plt_exit: ${ARGS[@]}--------${NORMAL}" >&2 #sistem info mesage
    echo -e "${RED}be return 1${NORMAL}" >&2
    echo -e "${RED}^C - exit, ENTER - return to process \nafter usually return 1 from parent thread${NORMAL}" >&2
    read
    # read </dev/tty
    return 1

    #-----------------------------------
    #------------------------------------------------------------------

}

cd "$idir"

unset filename
