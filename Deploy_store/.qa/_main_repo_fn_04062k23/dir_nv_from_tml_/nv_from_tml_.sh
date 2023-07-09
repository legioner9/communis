#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_nv_from_tml_/nv_from_tml_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

nv_from_tml_() {

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
MAIN: echo name variables from tml file 
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1 tml.file as for exl_
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
DEBUG:
EXAMP: nv_from_tml_ \"${PATH_VAR_DIR}/git/hsc_alt/main.var\"${NORMAL}"
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
    #? USE nv_from_tml_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_nv_from_tml_() {
        echo_nv_from_tml_=0
        debug_nv_from_tml_=0
        unset errmes_nv_from_tml_
        unset outmes_nv_from_tml_
        # any1_nv_from_tml_=0
        qq_exit_nv_from_tml_=0
        # unset any2_nv_from_tml_
    }
    unset_autoargs_nv_from_tml_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_nv_from_tml_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_nv_from_tml_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_nv_from_tml_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_nv_from_tml_: "$errmes_nv_from_tml_""
        echo "$outmes_nv_from_tml_: "$outmes_nv_from_tml_""
    fi
    exit_nv_from_tml_() {
        unset_autoargs_nv_from_tml_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_nv_from_tml_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    for word in $(f2e "$1"); do
        if [ $(sins_01 "=" $word) -eq 1 ]; then
            echo $(sn2e $word '=' 0)
        fi
    done

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_nv_from_tml_() {
    #     :
    # }
    # fedora_nv_from_tml_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_nv_from_tml_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_nv_from_tml_
    # fi
    unset_autoargs_nv_from_tml_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# nv_from_tml_ @

unset filename
