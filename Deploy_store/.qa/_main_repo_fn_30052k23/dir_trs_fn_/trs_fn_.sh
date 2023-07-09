#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_trs_fn_/trs_fn_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

trs_fn_() {

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
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        if [ -f "$ORIGO_DIR"/"$FNN"tst/exec.tst ]; then
            . "${ORIGO_DIR}/${FNN}tst/exec.tst"
            return 0
        else
            echo "not file: ${ORIGO_DIR}/${FNN}tst/exec.tst"
            return 1
        fi
    fi
    file_utst="${ORIGO_DIR}"/"${FNN}"extst/dir_1/start_check_extst.uts
    if [ "_utst" == "$1" ]; then
        if [ -f ${ORIGO_DIR}/${FNN}tst/${FNN}extst/dir_1/start_check_extst.utst ]; then
            . "${ORIGO_DIR}/${FNN}extst/dir_1/start_check_extst.utst"
            return 0
        else
            echo "not file: ${ORIGO_DIR}/${FNN}extst/dir_1/start_check_extst.utst"
            return 1
        fi
    fi
    if [ "_lst" == "$1" ]; then
        edit_ ${PATH_FN}/dir_${FNN}/${FNN}.lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ ${PATH_FN}/dir_${FNN}/
        return 0
    fi
    if [ "_deb" == "$1" ]; then
        . ${PATH_FN}/dir_${FNN}/_${FNN}/_default/default_deb.sh
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: [tr]u[s]t [f]u[n]ction based on ${FNN} _tst, ${FNN} _utst
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
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
    #? USE trs_fn_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_trs_fn_() {
        echo_trs_fn_=0
        debug_trs_fn_=0
        unset errmes_trs_fn_
        unset outmes_trs_fn_
        # any1_trs_fn_=0
        qq_exit_trs_fn_=0
        # unset any2_trs_fn_
    }
    unset_autoargs_trs_fn_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_trs_fn_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_trs_fn_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_trs_fn_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_trs_fn_: "$errmes_trs_fn_""
        echo "$outmes_trs_fn_: "$outmes_trs_fn_""
    fi
    exit_trs_fn_() {
        unset_autoargs_trs_fn_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_trs_fn_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_trs_fn_() {
    #     :
    # }
    # fedora_trs_fn_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_trs_fn_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_trs_fn_
    # fi
    unset_autoargs_trs_fn_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# trs_fn_ @

unset filename
