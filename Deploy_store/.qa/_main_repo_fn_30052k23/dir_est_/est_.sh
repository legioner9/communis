#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_est_/est_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

est_() {

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
MAIN: check item_fs is_dir is_file is_exist is_no_empty is_empty
NAME: ${FUNCNAME[0]}()
ARGS:
\$1 full_path
CNTL: 
-d check is_dir
-f check is_file
-e check is_exist
-n check is_no_empty
-z check is_empty

[, -echo, -debug ...]
TAGS:
FLOW:
DEBUG:
EXAMP:est_ \$HOME --errmes "fn: \${FUNCNAME[0]}, with args: \$*, filename: \$filename, line: \$LINENO"
${NORMAL}"
        return 0
    fi

    #{ctrl_args_reciver}

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    amount_arg $# 2 10 "in $FNN :: $*"
    # USE est_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    unset_est_() {
        echo_est_=0
        debug_est_=0
        d_est_=0
        f_est_=0
        unset errmes_est_
        unset outmes_est_rr
    }

    unset_est_

    echo_est_=0
    debug_est_=0

    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    echo_deb_ ${echo_est_} "cntl echo_deb_ mode in ${FNN}"
    if [ ${debug_est_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "\$errmes_est_: \"$errmes_est_\""
        echo "\$outmes_est_: \"$outmes_est_\""
    fi

    cntl_args=(-d -f -e -n -z)



    if [ $(is_root_01_ "$1") -ne 1 ]; then
        unset_est_
        qq_exit_ " \$1: \"$1\" not root path :: \$errmes_est: $errmes_est"
    fi

    if [ -z ${d_est_} ] && [ -z ${f_est_} ]; then
        unset_est_
        qq_exit_ "not present -d or -f :: \$errmes_est: $errmes_est"
    fi

    if [ ${d_est_} -eq 1 ] && ! [ -d "$1" ]; then
        unset_est_
        qq_exit_ "\$1: \"$1\" not dir :: \$errmes_est: $errmes_est"
    fi

    if [ ${f_est_} -eq 1 ] && ! [ -f "$1" ]; then
        unset_est_
        qq_exit_ " \$1: \"$1\" not file :: \$errmes_est: $errmes_est"
    fi

    # altlinux_est_() {
    #     :
    # }

    # fedora_est_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_est_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_est_
    # fi

    unset_est_

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# est_ @

unset filename
