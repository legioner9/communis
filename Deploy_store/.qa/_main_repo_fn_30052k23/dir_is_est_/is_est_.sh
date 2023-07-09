#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_is_est_/is_est_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

is_est_() {

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
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: plt_exit if condition not true
NAME: ${FNN}()
ARGS: 
\$1
CNTLS:

-d check is_dir
-f check is_file
-e check is_exist
-n check is_no_empty
-z check is_empty

CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, -verbose, --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -develop1, ... for special development mode, NOT to product
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: arr of condition at \${PATH_VAR_DIR}/is_est_/key_equal_fn.var
RETURN: return 0 if condition true, else return 1
ERROR: return 2 if error fatal to process e.c. syntax error 
WARN: 
DEBUG:
EXAMP:
    is_est <upath_dir> -d
    ${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE is_est_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_is_est_() {
        echo_is_est_=0
        debug_is_est_=0
        verbose_is_est_=0
        develop1_is_est_=0
        d_is_est_=0
        f_is_est_=0
        e_is_est_=0
        n_is_est_=0
        z_is_est=0
        unset errmes_is_est_
        unset outmes_is_est_
        # any1_is_est_=0
        qq_exit_is_est_=0
        # unset any2_is_est_
    }
    unset_autoargs_is_est_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FNN} $@
    } && {
        garg_ ${FNN} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_is_est_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_is_est_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_is_est_} ] && [ ${debug_is_est_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_is_est_}: ${errmes_is_est_}"
        echo "\${outmes_is_est_}: ${outmes_is_est_}"
    fi
    if [ -n ${develop1_is_est_} ] && [ ${develop1_is_est_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ -n ${verbose_is_est_} ] && [ ${verbose_is_est_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_is_est_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_is_est_
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
    exit_reg_is_est_() {
        local arg1="$1"
        unset_autoargs_is_est_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_is_est_ $1
    #! strongly return 0 -> exit_reg_is_est_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_is_est_.res
    # COMMAND &>>${FN_OUT_DIR}/com_is_est_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_is_est_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_is_est_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_is_est_ "runtime error:: COMMAND ${addr}"
    #     fi
    # fi
    #! amount args
    # is_amount_arg ${NARGS} min_equ max_equ
    # if [ $? -ne 0 ]; then
    #     qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN} in ${FNLOCK}"
    #     return 1
    # fi
    #! arg_path -> absolut path
    # arg_path=any_path
    # arg_path=$(abs_path $PPWD "arg_path") ptr args!!!
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    arg_path=$1
    arg_path=$(abs_path $PPWD "arg_path")

    # echo -e "${GREEN}\$arg_path = $arg_path${NORMAL}" #print variable

    if ! is_root "$arg_path"; then
        unset_autoargs_is_est_
        echo " \$arg_path: \"$arg_path\" not root path :: \$errmes_est: $errmes_est" >&2
        return 1
    fi

    if [ -z "${d_is_est_}" ] && [ -z "${f_is_est_}" ] && [ -z "${e_is_est_}" ] && [ -z "${n_is_est_}" ] && [ -z "${z_is_est_}" ]; then
        unset_autoargs_is_est_
        echo "not present ( -d | -f | -e | -n | -z ):: \$errmes_est: $errmes_est" >&2
        return 1
    fi

    # key="d"

    # fn(){
    #   eval [ \${${key}_is_est_} -eq 1 ] && ! [ -${key} "$arg_path" ]
    # }

    #! .exl -> .sh
    # exl_ --list ${PATH_VAR_DIR}/is_est_/key_equal_fn.var 1>/dev/null
    . ${PATH_VAR_DIR}/is_est_/key_equal_fn.sh

    #? define all cntls arr_cntl
    arr_cntl=($(ine_tail_ ${PATH_VAR_DIR}/is_est_/key_equal_fn.var "#>"))
    # echo -e "${GREEN}\${arr_cntl[@]} = ${arr_cntl[*]}${NORMAL}" #print variable

    unset curr_cntl
    unset arg

    for arg in ${ARGS[@]}; do

        # echo -e "${GREEN}\$arg = $arg${NORMAL}"             #print variable
        # echo -e "${GREEN}\${arg:0:1} = ${arg:0:1}${NORMAL}" #print variable
        # echo -e "${GREEN}\${arg:1} = ${arg:1}${NORMAL}"     #print variable

        if [[ -n "${arg:1}" ]] && [[ ${arr_cntl[@]} =~ ${arg:1} ]]; then
            # echo -e "${BLUE}--- $arg ---${NORMAL}" #sistem info mesage
            curr_cntl="${arg:1}"
            # echo -e "${GREEN}\$curr_cntl = $curr_cntl${NORMAL}" #print variable
        fi
    done

    # echo -e "${GREEN}\$curr_cntl = $curr_cntl${NORMAL}" #print variable

    if [[ -z "${curr_cntl}" ]]; then
        plt_exit "is_est_ return 2 : [ ${ARGS[@]} ] not current mast be once contane [ ${arr_cntl[@]} ] args $FNLOCK"
        return 2
    fi

    flag=0
    # echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable

    for cntl in ${arr_cntl[@]}; do
        # echo -e "${GREEN}\$cntl = $cntl${NORMAL}" #print variable
        if [[ "${curr_cntl}" == "${cntl}" ]]; then
            # echo "${curr_cntl}" == "${cntl}"
            flag=1
            # echo -e "${GREEN}\$flag = $flag_r${NORMAL}" #print variable

            if eval eval \$$cntl; then
                unset_autoargs_is_est_
                eval mes=\$${cntl}_message
                # plt_exit " \$arg_path: \"$arg_path\" $mes :: \$errmes_est: $errmes_est $FNLOCK"
                echo -e "${RED}--- " \$arg_path: \"$arg_path\" $mes :: \$errmes_est: $errmes_est $FNLOCK" ---${NORMAL}" >&2 #exit 1
                return 1
            fi
        fi
    done

    # echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable

    if [ ${flag} -eq 0 ]; then
        #? syntax error : fatal
        plt_exit "is_est_ return 2: [ ${ARGS[@]} ] not current mast be once contane [ ${arr_cntl[@]} ] args $FNLOCK"
        return 2
    fi

    # if [ ${f_is_est_} -eq 1 ] && ! [ -f "$arg_path" ]; then
    #     unset_autoargs_is_est_
    #     plt_exit_ " \$arg_path: \"$arg_path\" not file :: \$errmes_est: $errmes_est"
    #     return 1
    # fi

    # if [ ${e_is_est_} -eq 1 ] && ! [ -e "$arg_path" ]; then
    #     unset_autoargs_is_est_
    #     plt_exit_ " \$arg_path: \"$arg_path\" not exist :: \$errmes_est: $errmes_est"
    #     return 1
    # fi

    # if [ ${n_is_est_} -eq 1 ] && ! [ -n "$arg_path" ]; then
    #     unset_autoargs_is_est_
    #     plt_exit_ " \$arg_path: \"$arg_path\" empty var :: \$errmes_est: $errmes_est"
    #     return 1
    # fi

    # if [ ${f_is_est_} -eq 1 ] && ! [ -z "$arg_path" ]; then
    #     unset_autoargs_is_est_
    #     plt_exit_ " \$arg_path: \"$arg_path\" not empty var :: \$errmes_est: $errmes_est"
    #     return 1
    # fi

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_is_est_() {
    #     :
    # }
    # fedora_is_est_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_is_est_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_is_est_
    # fi
    unset_autoargs_is_est_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# is_est_ @

unset filename
