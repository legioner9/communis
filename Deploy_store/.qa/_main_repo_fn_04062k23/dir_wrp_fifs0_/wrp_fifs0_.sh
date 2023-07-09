#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_wrp_fifs0_/wrp_fifs0_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

wrp_fifs0_() {

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
\$1
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
    #? USE wrp_fifs0_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_wrp_fifs0_() {
        echo_wrp_fifs0_=0
        debug_wrp_fifs0_=0
        unset errmes_wrp_fifs0_
        unset outmes_wrp_fifs0_
        # any1_wrp_fifs0_=0
        qq_exit_wrp_fifs0_=0
        # unset any2_wrp_fifs0_
    }
    unset_autoargs_wrp_fifs0_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_wrp_fifs0_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_wrp_fifs0_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_wrp_fifs0_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_wrp_fifs0_: "$errmes_wrp_fifs0_""
        echo "$outmes_wrp_fifs0_: "$outmes_wrp_fifs0_""
    fi
    exit_wrp_fifs0_() {
        unset_autoargs_wrp_fifs0_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_wrp_fifs0_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_wrp_fifs0_() {
    #     :
    # }
    # fedora_wrp_fifs0_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_wrp_fifs0_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_wrp_fifs0_
    # fi
    unset_autoargs_wrp_fifs0_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# wrp_fifs0_ @

unset filename
