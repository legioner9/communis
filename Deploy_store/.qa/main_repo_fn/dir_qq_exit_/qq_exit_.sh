#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_qq_exit_/qq_exit_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

qq_exit_() {

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
    # snip itis "fn:_${FNN},_with_args:_$*,_filename:_$filename,_line:_$LINENO"
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
MAIN: exit or ^C
NAME: ${FUNCNAME[0]}()
ARGS:
--ret1  0 if exit_1 mode
        1 if return_1 mode
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP: qq_exit_ message --ret1 1 ${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE qq_exit_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_qq_exit_() {
        echo_qq_exit_=0
        debug_qq_exit_=0
        unset errmes_qq_exit_
        unset outmes_qq_exit_
        # any1_qq_exit_=0
        # unset any2_qq_exit_
        ret1_qq_exit_=0
    }
    unset_qq_exit_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    if [[ 1 -eq "$QQ_EXIT" ]]; then
        # "EXIT 1 in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        QQ_EXIT=0
        return 1
    fi

    if [[ 1 -eq ${ret1_qq_exit_} ]]; then
        unset_qq_exit_
        return 1
    fi
    echo_deb_ ${echo_qq_exit_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_qq_exit_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_qq_exit_: "$errmes_qq_exit_""
        echo "$outmes_qq_exit_: "$outmes_qq_exit_""
    fi

    qq_point() {

        echo -e "${RED}---message: $1---${NORMAL}"
        echo -e "${RED}---file: $2---${NORMAL}"
        echo -e "${RED}---line: $3---${NORMAL}"

    }

    qq_point "$1" "$2" "$3"

    read -p "Press enter to exit 1 or ^C for interrapt"

    exit 1

    # altlinux_qq_exit_() {
    #     :
    # }
    # fedora_qq_exit_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_qq_exit_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_qq_exit_
    # fi
    unset_qq_exit_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    {init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# qq_exit_ @

unset filename
