#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_fonsh_/fonsh_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fonsh_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    local FN_OUT_DIR=$PATH_FN/dir_$FNN/_$FNN/_out
    local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    local FN_ERR_FILE="${PATH_FN}/dir_${FNN}/_${FNN}/_out/err.res"
    wrp_fifs1_ rm -f "${FN_ERR_FILE}" -cf1
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null
    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        tst_file="$ORIGO_DIR"/"$FNN"tst/exec.tst
        if [ -f ${tst_file} ]; then
            . "${tst_file}"
            return $?
        else
            echo -e "${RED}--- not file: ${tst_file} ---${NORMAL}" #exit 1
            return 1
        fi
    fi
    if [ "_utst" == "$1" ]; then
        utst_file=${ORIGO_DIR}/${FNN}tst/${FNN}extst/dir_1/start_check_extst.utst
        if [ -f ${utst_file} ]; then
            . "${utst_file}"
            return $?
        else
            echo -e "${RED}--- not file: ${utst_file} ---${NORMAL}" #exit 1
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
    if [ "_dir" == "$1" ]; then
        edit_ ${FONSH_PATH}
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
ARGS: 
\$1
CNTLS:
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, -verbose, --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -develop1, ... for special development mode, NOT to product
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

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE fonsh_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_fonsh_() {
        echo_fonsh_=0
        debug_fonsh_=0
        verbose_fonsh_=0
        develop1_fonsh_=0
        unset errmes_fonsh_
        unset outmes_fonsh_
        # any1_fonsh_=0
        qq_exit_fonsh_=0
        # unset any2_fonsh_
    }
    unset_autoargs_fonsh_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FNN} $@
    } && {
        garg_ ${FNN} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_fonsh_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_fonsh_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_fonsh_} ] && [ ${debug_fonsh_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_fonsh_}: ${errmes_fonsh_}"
        echo "\${outmes_fonsh_}: ${outmes_fonsh_}"
    fi
    if [ -n ${develop1_fonsh_} ] && [ ${develop1_fonsh_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ -n ${verbose_fonsh_} ] && [ ${verbose_fonsh_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_fonsh_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_fonsh_
        qq_pause "$1: be return ${arg1} <- Fail: message in ${FNLOCK}"
        echo "$1: be return ${arg1} <- Fail: message in ${FNLOCK}" 1>&2
        if [ -z "${arg1}" ]; then
            return 1
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 1 ]; then
            return "${arg1}"
        else
            return 1
        fi
    }
    exit_reg_fonsh_() {
        local arg1="$1"
        unset_autoargs_fonsh_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_fonsh_ $1
    #! strongly return 0 -> exit_reg_fonsh_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_fonsh_.res
    # COMMAND &>>${FN_OUT_DIR}/com_fonsh_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_fonsh_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_fonsh_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_fonsh_ "runtime error:: COMMAND ${addr}"
    #     fi
    # fi
    #! amount args
    # is_amount_arg ${NARGS} min_equ max_equ
    # if [ $? -ne 0 ]; then
    #     qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN} in ${FNLOCK}"
    #     return 1
    # fi
    #! arg_path -> absolut path
    # arg_path=$(abs_path $(pwd) arg_path)
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    echo -e "${BLUE}--- exec ${FNN} (num_menu - 1) ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")

    if [ $(num_01 $1) -eq 1 ] && [ $1 -le ${#arr[@]} ]; then

        num_res=$(($1 - 1))
        eval \${res[${num_res}]}
        return 0

    fi

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        dilectus=$item
        break

    done

    case $dilectus in

    "${arr[0]}")
        echo -e "${CYAN}--- ${res[0]} ---${NORMAL}" #started functions
        ${res[0]}

        ;;
    "${arr[1]}")
        echo -e "${CYAN}--- ${res[1]} ---${NORMAL}" #started functions
        ${res[1]}
        00000 "$@"
        ;;

    "${arr[2]}")
        echo -e "${CYAN}--- ${res[2]} ---${NORMAL}" #started functions
        ${res[2]}
        00000 "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}--- ${res[3]} ---${NORMAL}" #started functions
        ${res[3]}
        00000 "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}--- ${res[4]} ---${NORMAL}" #started functions
        ${res[4]}
        00000 "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}--- ${res[5]} ---${NORMAL}" #started functions
        ${res[5]}
        00000 "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}--- ${res[6]} ---${NORMAL}" #started functions
        ${res[6]}
        00000 "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}--- ${res[7]} ---${NORMAL}" #started functions
        ${res[7]}
        00000 "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}--- ${res[8]} ---${NORMAL}" #started functions
        ${res[8]}
        00000 "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}--- ${res[9]} ---${NORMAL}" #started functions
        ${res[9]}
        00000 "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}--- ${res[10]} ---${NORMAL}" #started functions
        ${res[10]}
        00000 "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}--- ${res[11]} ---${NORMAL}" #started functions
        ${res[11]}
        00000 "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}--- ${res[12]} ---${NORMAL}" #started functions
        ${res[12]}
        00000 "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}--- ${res[13]} ---${NORMAL}" #started functions
        ${res[13]}
        00000 "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}--- ${res[14]} ---${NORMAL}" #started functions
        ${res[14]}
        00000 "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}--- ${res[15]} ---${NORMAL}" #started functions
        ${res[15]}
        00000 "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}--- ${res[16]} ---${NORMAL}" #started functions
        ${res[16]}
        00000 "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}--- ${res[17]} ---${NORMAL}" #started functions
        ${res[17]}
        00000 "$@"
        ;;

    "${arr[18]}")
        echo -e "${CYAN}--- ${res[18]} ---${NORMAL}" #started functions
        ${res[18]}
        00000 "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}--- ${res[19]} ---${NORMAL}" #started functions
        ${res[19]}
        00000 "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}--- ${res[20]} ---${NORMAL}" #started functions
        ${res[20]}
        00000 "$@"

        ;;

    *)
        echo -e "${BLUE}---error dilectus ---${NORMAL}" #sistem info mesage
        ;;
    esac
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_fonsh_() {
    #     :
    # }
    # fedora_fonsh_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_fonsh_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_fonsh_
    # fi
    unset_autoargs_fonsh_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# fonsh_ @

unset filename
