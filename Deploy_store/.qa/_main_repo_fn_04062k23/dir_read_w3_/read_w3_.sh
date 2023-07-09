#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_read_w3_/read_w3_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

read_w3_() {

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
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS:
--ptr [p1]
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
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
    #? USE read_w3_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_read_w3_() {
        echo_read_w3_=0
        debug_read_w3_=0
        unset errmes_read_w3_
        unset outmes_read_w3_

        unset ptr_read_w3_
        # any1_read_w3_=0
        # unset any2_read_w3_
    }
    unset_autoargs_read_w3_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    echo_deb_ ${echo_read_w3_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_read_w3_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_read_w3_: "$errmes_read_w3_""
        echo "$outmes_read_w3_: "$outmes_read_w3_""
    fi

    # ITERATIONS=3 # How many times to get input.
    # icount=1
    # my_read() {
    #     # Called with my_read varname,
    #     #+ outputs the previous value between brackets as the default value,
    #     #+ then asks for a new value.
    #     local local_var
    #     echo -n "Enter a value "
    #     eval 'echo -n "[$'$1'] "' # Previous value.
    #     # eval echo -n "[\$$1] " # Easier to understand,
    #     #+ but loses trailing space in user prompt.
    #     read local_var
    #     [ -n "$local_var" ] && eval $1=\$local_var
    #     # "And-list": if "local_var" then set "$1" to its value.
    # }
    # echo
    # while [ "$icount" -le "$ITERATIONS" ]; do
    #     my_read var
    #     echo "Entry #$icount = $var"
    #     let "icount += 1"
    #     echo
    # done

    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    if [ -z $ptr_read_w3_ ]; then
        qq_exit " --ptr mast be exist" " $filename ${FNN}" "$LINENO"
    fi

    local previous_var

    echo -n "Enter a value "
    eval 'echo -n "[$'$ptr_read_w3_'] "'

    read -r previous_var
    [ -n "$previous_var" ] && eval $ptr_read_w3_=\$previous_var

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_read_w3_() {
    #     :
    # }
    # fedora_read_w3_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_read_w3_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_read_w3_
    # fi
    unset_autoargs_read_w3_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in read_w3_ $filename $LINENO"

}

# read_w3_ @

unset filename
