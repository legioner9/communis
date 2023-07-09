#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gindir_01_/gindir_01_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gindir_01_() {

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
MAIN: if pwd in git repo return 1(true) owerwise return 0(false)
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
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
    #? USE gindir_01_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gindir_01_() {
        echo_gindir_01_=0
        debug_gindir_01_=0
        unset errmes_gindir_01_
        unset outmes_gindir_01_
        # any1_gindir_01_=0
        qq_exit_gindir_01_=0
        # unset any2_gindir_01_
    }
    unset_autoargs_gindir_01_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_gindir_01_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gindir_01_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gindir_01_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_gindir_01_: "$errmes_gindir_01_""
        echo "$outmes_gindir_01_: "$outmes_gindir_01_""
    fi
    exit_gindir_01_() {
        unset_autoargs_gindir_01_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gindir_01_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # substr_pos="nothing to commit, working tree clean"
    substr_neg="not a git repository"

    check_indir=$(git status 2>&1 | rl_siev_and2e "${substr_neg}")
    # echo -e "${GREEN}\$check_indir = $check_indir${NORMAL}" #print variable

    if [ -n "${check_indir}" ]; then
        echo 0 #? false
        # return 1 #? errno
    fi

    echo 1 #? true
    # return 0 #? success

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gindir_01_() {
    #     :
    # }
    # fedora_gindir_01_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gindir_01_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gindir_01_
    # fi
    unset_autoargs_gindir_01_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gindir_01_ @

unset filename
