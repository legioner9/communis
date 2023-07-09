#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_grg_fn_/grg_fn_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

grg_fn_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    # if [ "_man" == "$1" ]; then
    #     edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
    #     return 0
    # fi

    # if [ "_tst" == "$1" ]; then
    #     . "$ORIGO_DIR"/"$FNN"tst/exec.tst
    #     return 0
    # fi

    # if [ "_lst" == "$1" ]; then
    #     edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
    #     return 0
    # fi

    # if [ "_go" == "$1" ]; then
    #     edit_ "$PATH_FN"/dir_"$FNN"/
    #     return 0
    # fi

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
    #{ctrl_args_reciver}

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
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
    # amount_arg $# min_args max_args "in $FNN :: $*"
    # USE grg_fn_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_grg_fn_=0
    debug_grg_fn_=0
    clang_grg_fn_=0
    bash_grg_fn_=0

    unset name_fn_grg_fn_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_grg_fn_} "cntl echo_deb_ mode in ${FNN}"
    if [ ${debug_grg_fn_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi

    mst_dir=${PATH_FN}/dir_${name_fn_grg_fn_}
    mst_name=${name_fn_grg_fn_}

    qq_pause "(${mst_name}) create !!! in (${PATH_FN}/dir_${mst_name}/) file (${mst_name}.sh) dir (_${mst_name}) ?" "${filename}" "{$LINENO}"


    wrp_fifs2_ cp -rf ${ORIGO_DIR}/_tml/_dir_fn_tml ${mst_dir} -d1 -d2

    # bld_cntl_arg_ ${mst_name}
    ## 

    if [ 1 -eq ${clang_grg_fn_} ]; then
        bld_pj_clang_ ${mst_name} ${mst_dir}/_pgu_do_
    fi

    if [ 1 -eq ${bash_grg_fn_} ]; then
        bld_pj_bash_ ${mst_name} ${mst_dir}/_pgu_do_
    fi

    # altlinux_grg_fn_() {
    #     :
    # }

    # fedora_grg_fn_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_grg_fn_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_grg_fn_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# grg_fn_ @

unset filename
