#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_p2v_/p2v_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

p2v_() {

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
MAIN: take value from ptr at level (--level (1|2|3))
NAME: ${FUNCNAME[0]}()
ARGS:
--ptr [p1]
--level (1|2|3)
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:
    p2v_ --ptr [p1] --level [1,2,3]${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE p2v_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_p2v_() {
        echo_p2v_=0
        debug_p2v_=0
        unset errmes_p2v_
        unset outmes_p2v_
        unset ptr_p2v_
        unset level_p2v_
        # any1_p2v_=0
        # unset any2_p2v_
    }
    unset_autoargs_p2v_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    # garg_ ${FUNCNAME[0]} $@ 
    echo_deb_ ${echo_p2v_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_p2v_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_p2v_: "$errmes_p2v_""
        echo "$outmes_p2v_: "$outmes_p2v_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* p1=v1_p2
    #* v1_p2=v2_p3
    #* v2_p3=v3

    #? echo ${p1} # v1_p2
    #? eval echo \"\$${p1}\" #v2_p3
    #? eval eval echo \\\"\\\$\${${p1}}\\\"  # v3

    # $ptr_p2v_
    # $level_p2v_

    if [[ 1 -eq $level_p2v_ ]]; then
        echo ${ptr_p2v_}
        return 0
    fi

    if [[ 2 -eq $level_p2v_ ]]; then
        eval echo \"\$${ptr_p2v_}\"
        return 0
    fi

    if [[ 3 -eq $level_p2v_ ]]; then
        eval eval echo \\\"\\\$\${${ptr_p2v_}}\\\"
        return 0
    fi

    qq_exit "--level mast be (1,2,3)" " $filename ${FNN}" "$LINENO"

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_p2v_() {
    #     :
    # }
    # fedora_p2v_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_p2v_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_p2v_
    # fi
    unset_autoargs_p2v_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in p2v_ $filename $LINENO"

}

# p2v_ @

unset filename
