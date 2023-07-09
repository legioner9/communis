#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_dr1f2e_/dr1f2e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

dr1f2e_() {

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
    # local FNLOCK="fn: ${FNN}, with_args: $*, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    local FNLOCK="${FNN}, with_args: $1 $2 $3 $4,filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"

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
MAIN: start [d]ir [r]ecurce [1] see in itter_files.ifs full_path [f]ile  [2]to [e]stdout
NAME: ${FUNCNAME[0]}()
ARGS:
\$1 full_path start from dir
CNTL: [, -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
RETURN: stdout fpath 
ERROR: -qq_exit
DEBUG: . ${PATH_MAIN_REPO_FN_DIR}/dir_dr1f2e_/_dr1f2e_/_debug/v2/deb_1.sh
EXAMP: dr1f2e_ \${PATH_MAIN_REPO_FN_DIR}/dir_dr1f2e_/_dr1f2e_/_debug/v2/d0 -qq_exit${NORMAL}"
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
    #? USE dr1f2e_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_dr1f2e_() {
        echo_dr1f2e_=0
        debug_dr1f2e_=0
        unset errmes_dr1f2e_
        unset outmes_dr1f2e_
        # any1_dr1f2e_=0
        qq_exit_dr1f2e_=0
        # unset any2_dr1f2e_
    }
    unset_autoargs_dr1f2e_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_dr1f2e_}
    #! use qq_exit_: qq_exit DPRK
    #
    #? qq_exit_ "message in ${FNLOCK}"
    #? echo "message in ${FNLOCK}" 1>&2
    #? return 1
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_dr1f2e_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_dr1f2e_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_dr1f2e_: "$errmes_dr1f2e_""
        echo "$outmes_dr1f2e_: "$outmes_dr1f2e_""
    fi

    exit_dr1f2e_() {
        unset_autoargs_dr1f2e_
        qq_exit_ "${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    if ! ls -A $1 &>/dev/null; then

        exit_dr1f2e_
        return 1

    fi

    for item in $(ls -A $1); do

        path=$1/${item}

        if [ -f "${path}" ]; then
            echo "${path}"
        fi

        if [ -d "${path}" ]; then
            dr1f2e_ "${path}"
        fi

    done

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_dr1f2e_() {
    #     :
    # }
    # fedora_dr1f2e_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_dr1f2e_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_dr1f2e_
    # fi
    unset_autoargs_dr1f2e_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# dr1f2e_ @

unset filename
