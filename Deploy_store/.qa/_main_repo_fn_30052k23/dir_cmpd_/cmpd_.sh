#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_cmpd_/cmpd_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cmpd_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: $*, filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line:_$LINENO"
    #{def_const_reciver}

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
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS:
CNTL: [, -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "message in ${FNLOCK}" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE cmpd_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_cmpd_() {
        echo_cmpd_=0
        debug_cmpd_=0
        unset errmes_cmpd_
        unset outmes_cmpd_
        # any1_cmpd_=0
        qq_exit_cmpd_=0
        # unset any2_cmpd_
    }
    unset_autoargs_cmpd_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_cmpd_}
    #! use qq_exit_: qq_exit DPRK
    #
    #? qq_exit_ "message in ${FNLOCK}"
    #? echo "message in ${FNLOCK}" 1>&2
    #? return 1
    #
    echo_deb_ ${echo_cmpd_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_cmpd_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_cmpd_: "$errmes_cmpd_""
        echo "$outmes_cmpd_: "$outmes_cmpd_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    d1=$(stat -c%s "$1")
    d2=$(stat -c%s "$2")

    if ! [[ "$d1" -eq "$d2" ]]; then
        qq_exit_ "$d1 not equal $d2 in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
        return 1
    fi
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_cmpd_() {
    #     :
    # }
    # fedora_cmpd_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cmpd_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cmpd_
    # fi
    unset_autoargs_cmpd_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "message in ${FNLOCK}" 1>/dev/null

}

# cmpd_ @

unset filename
