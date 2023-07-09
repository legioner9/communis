#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_rnd3e_/rnd3e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

rnd3e_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # TODO that

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
MAIN: \$RANDOM min max
NAME: ${FUNCNAME[0]}()
ARGS:
\$1 min
\$2 max
CNTL: [, -echo, -debug ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    amount_arg $# 2 2 "in $FNN :: $*"
    #? USE rnd3e_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_rnd3e_=0
    debug_rnd3e_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_rnd3e_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_rnd3e_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi

    if [ "$2" -lt "$1" ]; then
        qq_exit "irritum \$1: \"$1\" < \$2: \"$2\" fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    fi

    num=0

    while [ "$num" -le "$1" ]; do

        num="$RANDOM"
        let "num %= $2"

    done

    echo "$num"

    # altlinux_rnd3e_() {
    #     :
    # }

    # fedora_rnd3e_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_rnd3e_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_rnd3e_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# rnd3e_ @

unset filename
