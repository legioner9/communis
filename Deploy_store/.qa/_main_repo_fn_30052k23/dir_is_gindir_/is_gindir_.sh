#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_is_gindir_/is_gindir_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

is_gindir_() {

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
MAIN: 
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
    #? USE is_gindir_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_is_gindir_() {
        echo_is_gindir_=0
        debug_is_gindir_=0
        unset errmes_is_gindir_
        unset outmes_is_gindir_
        # any1_is_gindir_=0
        qq_exit_is_gindir_=0
        # unset any2_is_gindir_
    }
    unset_autoargs_is_gindir_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_is_gindir_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_is_gindir_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_is_gindir_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_is_gindir_: "$errmes_is_gindir_""
        echo "$outmes_is_gindir_: "$outmes_is_gindir_""
    fi
    exit_is_gindir_() {
        unset_autoargs_is_gindir_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_is_gindir_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # substr_pos="nothing to commit, working tree clean"
    substr_neg="not a git repository"

    check_indir=$(git status 2>&1 | rl_siev_and2e "${substr_neg}")
    # echo -e "${GREEN}\$check_indir = $check_indir${NORMAL}" #print variable

    if [ -n "${check_indir}" ]; then
        # echo 0
        return 1 #? errno
    fi

    # echo 1
    return 0 #? success

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_is_gindir_() {
    #     :
    # }
    # fedora_is_gindir_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_is_gindir_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_is_gindir_
    # fi
    unset_autoargs_is_gindir_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# is_gindir_ @

unset filename
