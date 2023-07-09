#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_root.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

is_root() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    local FNN=${FUNCNAME[0]}
    local ARGS=($@)
    local NARGS=$#

    garg_ ${FNN} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_root.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
            MAIN: echo 1 if \$1 is /... or echo 0
            NAME: ${FNN}()
            ARGS: 
            \$1 name value path
            \$2 mast be \$(pwd)
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "$d_name/FNN".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$d_name/FNN".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$d_name/FNN".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        FNNtest
        return 0
    fi

    is_amount_arg ${NARGS} 1 1
    if [ "$?" -ne 0 ]; then
        qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN}"
        return 1
    fi

    #------------------------------------------------------------------
    #-----------------------------------
    arg1="$1"

    if [[ -z "${arg1}" ]]; then
        return 1
    fi
    
    if [[ "/" == "${arg1:0:1}" ]]; then
        return 0
    else
        return 1
    fi

    #-----------------------------------
    #------------------------------------------------------------------

}

cd "$idir"

unset filename
