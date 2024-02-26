#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_sign_file.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

is_sign_file() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    local FNN=${FUNCNAME[0]}
    local ARGS=($@)
    echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    local NARGS=$#

    garg_ FNN $@ 1>/dev/null

    d_name=$(dirname "$HOME"/rel_path_file_with_fn)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help:
            MAIN: check [si]gn of [file]- first string mast be #>$1
            NAME: ${FUNCNAME[0]}()
            ARGS:
                \$1 sign at first string of the file
                \$2 file for check sign
            FLOW:
                is_sign_file exl file

            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi

    is_amount_arg ${NARGS} 2 2
    if [ "$?" -ne 0 ]; then
        qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN}"
        return 1
    fi

    sign=${ARGS[0]}
    echo -e "${GREEN}\$sign = $sign${NORMAL}" #print variable
    file=${ARGS[1]}
    echo -e "${GREEN}\$file = $file${NORMAL}" #print variable

    if [ $(is_root_01_ "$file") -ne 1 ]; then
        file="$(pwd)/$file"
    fi

    first_line=$(head -n 1 ${file})

    if [ "${first_line:2}" == "${sign}" ]; then
        return 0
    else
        return
    fi

}

cd "$idir"

unset filename
