#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_cr_bin_/cr_bin_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_bin_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: create cr_pj_c_simp_() in ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec and cd to that dir
            NAME: ${FUNCNAME[0]}()
            ARGS:
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
    amount_arg $# 1 1 "in $FNN :: $*"
    # USE cr_bin_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_cr_bin_=0
    debug_cr_bin_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_cr_bin_ "cntl echo_deb_ mode in ${FNN}"
    if [ $debug_cr_bin_ -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi

    exec_dir=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec

    cd "${exec_dir}" || qq_exit "cd $exec_dir impossible" " $filename ${FNN}" "$LINENO"

    cr_pj_c_simp_ "$1"

    edit_ "${exec_dir}"

    # altlinux_cr_bin_() {
    #     :
    # }

    # fedora_cr_bin_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_bin_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_bin_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# cr_bin_ @

unset filename
