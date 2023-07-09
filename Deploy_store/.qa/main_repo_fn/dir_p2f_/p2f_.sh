#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_p2f_/p2f_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

p2f_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: create full path from args: --path using --pwd 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            --pwd \$(pwd) [[necessary]]
            --path \$path [[optional]]
            CNTL: [, -echo, -debug ...]
            TAGS:
            FLOW:
            DEBUG:
            EXAMP:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    # amount_arg $# min_args max_args "in $FNN :: $*"
    # USE p2f_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_p2f_=0
    debug_p2f_=0
    unset pwd_p2f_
    unset path_p2f_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_p2f_ "cntl echo_deb_ mode in ${FNN}"
    if [ $debug_p2f_ -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi

    if [ -z ${pwd_p2f_} ]; then
        qq_exit "--pwd arg necessary" "$filename ${FNN}" "$LINENO"
    fi

    if [ $(is_root_01_ "${pwd_p2f_}") -eq 0 ]; then
        qq_exit "\$pwd_p2f_=${pwd_p2f_} is not root: impossible" "$filename ${FNN}" "$LINENO"
    fi

    if [ $(is_root_01_ "${path_p2f_}") -eq 1 ]; then
        qq_exit "\$path_p2f_=${path_p2f_} is root: you wrong" "$filename ${FNN}" "$LINENO"
    fi

    if [ -z "${path_p2f_}" ]; then
        echo "${pwd_p2f_}"
        return 0
    fi

    if [ -n "${path_p2f_}" ]; then
        echo "${pwd_p2f_}"/"${path_p2f_}"
        return 0
    fi

    unset pwd_p2f_
    unset path_p2f_

    # altlinux_p2f_() {
    #     :
    # }

    # fedora_p2f_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_p2f_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_p2f_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# p2f_ @

unset filename
