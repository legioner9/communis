#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_q2_exit_/q2_exit_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

q2_exit_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

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
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS: 
$1
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: (return 1| exit 1| -qq_exit| )
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE q2_exit_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_q2_exit_() {
        echo_q2_exit_=0
        debug_q2_exit_=0
        unset errmes_q2_exit_
        unset outmes_q2_exit_
        # any1_q2_exit_=0
        qq_exit_q2_exit_=0
        # unset any2_q2_exit_
    }
    unset_autoargs_q2_exit_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_q2_exit_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_q2_exit_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_q2_exit_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_q2_exit_: "$errmes_q2_exit_""
        echo "$outmes_q2_exit_: "$outmes_q2_exit_""
    fi
    exit_q2_exit_() {
        unset_autoargs_0000
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_q2_exit_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_q2_exit_() {
    #     :
    # }
    # fedora_q2_exit_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_q2_exit_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_q2_exit_
    # fi
    unset_autoargs_q2_exit_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# q2_exit_ @

unset filename
