#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_err_/err_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

err_() {

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
    # snip itis "fn: ${FNN}, with_args: $*, filename: $filename, line:_$LINENO"
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
MAIN: check \$? error
NAME: ${FUNCNAME[0]}()
ARGS:  \$1: (-i|-p|-e), \$2: $?, \$3: message
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
        err_ -i : red info err_: \$3
        err_ -p : qq_pause err_: \$3
        err_ -e : qq_exit err_: \$3
DEBUG:
EXAMP: err_ -i \$? "message"${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in err_ $filename $LINENO" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE err_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_err_() {
        echo_err_=0
        debug_err_=0
        unset errmes_err_
        unset outmes_err_
        # any1_err_=0
        # unset any2_err_
    }
    unset_autoargs_err_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_err_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_err_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_err_: "$errmes_err_""
        echo "$outmes_err_: "$outmes_err_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    params=( -i -p -e -n )

    if ! [[ " ${params[*]} " =~ " $1 " ]]; then
        qq_exit "\$1=$1: not equal (-i|-p|-e|-n)" " $filename ${FNN}" "$LINENO"
    fi

    if [ 0 -ne $2 ]; then

        if [ "-i" == "$1" ]; then
            echo -e "${RED}--- err_: $3 ---${NORMAL}" #exit 1
            return 0
        fi
        if [ "-p" == "$1" ]; then
            qq_pause "err_: $3"
            return 0
        fi
        if [ "-e" == "$1" ]; then
            qq_exit "err_: $3"
            return 0
        fi
        if [ "-n" == "$1" ]; then
            return 0
        fi
    fi

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_err_() {
    #     :
    # }
    # fedora_err_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_err_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_err_
    # fi
    unset_autoargs_err_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in err_ $filename $LINENO" 1>/dev/null

}

# err_ @

unset filename
