#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_locus_fn_/cr_locus_fn_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_locus_fn_() {

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
            MAIN: create tunica .locus_fn in pwd dir
            NAME: ${FUNCNAME[0]}()
            ARGS:
            CNTL: [, -echo, -deb ...]
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
    # USE cr_locus_fn_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_cr_locus_fn_=0
    deb_cr_locus_fn_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_cr_locus_fn_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
    if [ $deb_cr_locus_fn_ -eq 1 ]; then
        echo "DEBUG MODE in ${FUNCNAME[0]}"
    fi

    # altlinux_cr_locus_fn_() {
    #     :
    # }

    # fedora_cr_locus_fn_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_locus_fn_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_locus_fn_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# cr_locus_fn_ @

unset filename
