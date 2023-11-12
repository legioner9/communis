#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ins_last_s.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

ins_last_s() {

    local FNN=${FUNCNAME[0]}
    local ARGS=($@)
    local NARGS=$#

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() ${ARGS[@]} ---${NORMAL}" #started functions

# garg_ ${FNN} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/ins_last_s.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
            MAIN: read, continue
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
    arg0_73568="$1"
    arg1_54366243="$2"
    if [ -z "${arg1_54366243}" ]; then
        plt_info "in ins_last_s(): EMPTY : \$2"
        return 1
    fi
    if [ -f "${arg0_73568}" ]; then
        {
            "${_f2e}" "$arg0_73568"
            echo "${arg1_54366243}"
        } >"$arg0_73568"~
        cp "$arg0_73568"~ "$arg0_73568"
        rm "$arg0_73568"~
    else
        plt_err "in ins_last_s(): NOT_FILE : file://"${arg0_73568}" return 1"
        return 1
    fi

    #-----------------------------------
    #------------------------------------------------------------------

}

cd "$idir"

unset filename
