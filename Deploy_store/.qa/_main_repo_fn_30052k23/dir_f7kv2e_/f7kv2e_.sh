#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_f7kv2e_/f7kv2e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f7kv2e_() {

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
MAIN: in [f]ile search::seven::7 [k]ey and [v]alue to::two::[2] [e]cho
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1 path_key_value.list
\$2 delim
\$3 key for search
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW:  
RETURN: stdout value accoding to key or NULL if value empty return 1 {, stdout, data:, change to ptr, }
ERROR: key not found return 1 (return 1| exit 1| -qq_exit| )
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
    #? USE f7kv2e_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_f7kv2e_() {
        echo_f7kv2e_=0
        debug_f7kv2e_=0
        unset errmes_f7kv2e_
        unset outmes_f7kv2e_
        # any1_f7kv2e_=0
        qq_exit_f7kv2e_=0
        # unset any2_f7kv2e_
    }
    unset_autoargs_f7kv2e_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_f7kv2e_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_f7kv2e_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_f7kv2e_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_f7kv2e_: "$errmes_f7kv2e_""
        echo "$outmes_f7kv2e_: "$outmes_f7kv2e_""
    fi
    exit_f7kv2e_() {
        unset_autoargs_f7kv2e_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_f7kv2e_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # $1 path_key_value.list $2 delim $3 key echo: value
    # string from file $1
    for str in $(f2e $1); do
        # extract key from str with delim $2
        local key=$(sn2e $str $2 0)
        if [ "${key}" == "$3" ]; then
            # extract value from str with delim $2
            local value=$(sn2e $str $2 1)
            echo "${key}"
            # if value not null -> echo value
            if [ -n "$value" ]; then
                echo "$value"
                return 0
                fi
            if [ -z "$value" ]; then
                echo "NULL"
                return 0
            fi
        fi
        # if key not exist -> return 1
        return 1
    done

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_f7kv2e_() {
    #     :
    # }
    # fedora_f7kv2e_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_f7kv2e_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_f7kv2e_
    # fi
    unset_autoargs_f7kv2e_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# f7kv2e_ @

unset filename
