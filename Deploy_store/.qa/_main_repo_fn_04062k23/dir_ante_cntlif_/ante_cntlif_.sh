#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_ante_cntlif_/ante_cntlif_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

ante_cntlif_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    local FN_OUT_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN/_$FNN/_out
    local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    local FN_ERR_FILE="${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/_${FNN}/_out/err.res"
    wrp_fifs1_ rm -f "${FN_ERR_FILE}" -cf1
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null
    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
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
        edit_ ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/
        return 0
    fi
    if [ "_deb" == "$1" ]; then
        . ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/_${FNN}/_default/default_deb.sh
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ante --ptr_if add to main flow
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1
CNTLS:
required
optional 
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -echo, -debug, -verbose, --ptr_if {ptr_from_if: if true fn be work, else be ignored}, --ptr_sem {ptr_with_semapore for arg wate_sem, free_sem usnig insidefunction} --errmes {if_error_case}, --outmes {free_message}, ...
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
    #? USE ante_cntlif_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_ante_cntlif_() {
        echo_ante_cntlif_=0
        debug_ante_cntlif_=0
        verbose_ante_cntlif_=0
        develop1_ante_cntlif_=0
        unset errmes_ante_cntlif_
        unset outmes_ante_cntlif_
        unset ptr_if_ante_cntlif_
        unset ptr_sem_ante_cntlif_
        # any1_ante_cntlif_=0
        # unset any2_ante_cntlif_
    }
    unset_autoargs_ante_cntlif_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FNN} $@
    } && {
        garg_ ${FNN} $@ 1>/dev/null
    }
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    # start ---------------------------- if ptr block-------------------------------------------

    # _ptr_if=${ptr_if_ante_cntlif_}
    ptr_value=${ptr_if_ante_cntlif_}

    if [[ -n ${ptr_value} ]] && [[ ${ptr_value} -ne 1 ]]; then
        if [ -n ${develop1_ante_cntlif_} ] && [ ${develop1_ante_cntlif_} -eq 1 ]; then
            echo -e "${RED}--- $FNN() $* be ignored ---${NORMAL}" #started functions
        fi
        return 0
    fi

    # end ---------------------------- if ptr block-------------------------------------------

    echo_deb_ ${echo_ante_cntlif_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_ante_cntlif_} ] && [ ${debug_ante_cntlif_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_ante_cntlif_}: ${errmes_ante_cntlif_}"
        echo "\${outmes_ante_cntlif_}: ${outmes_ante_cntlif_}"
    fi
    if [ -n ${develop1_ante_cntlif_} ] && [ ${develop1_ante_cntlif_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ -n ${verbose_ante_cntlif_} ] && [ ${verbose_ante_cntlif_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_ante_cntlif_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_ante_cntlif_
        plt_pause "$1: be return ${arg1} <- Fail: message in ${FNLOCK}"
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
    exit_reg_ante_cntlif_() {
        local arg1="$1"
        unset_autoargs_ante_cntlif_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_ante_cntlif_ $1
    #! strongly return 0 -> exit_reg_ante_cntlif_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_ante_cntlif_.res
    # COMMAND &>>${FN_OUT_DIR}/com_ante_cntlif_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_ante_cntlif_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_ante_cntlif_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_ante_cntlif_ "runtime error:: COMMAND ${addr}"
    #     fi
    # fi
    #! amount args
    # is_amount_arg ${NARGS} min_equ max_equ
    # if [ $? -ne 0 ]; then
    #     qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN} in ${FNLOCK}"
    #     return 1
    # fi
    #! normalize ptr_path -> absolut path
    # ptr_path=$1
    # ptr_path=$(abs_path $PPWD "ptr_path") #ptr args
    #! variables for cr_f_dir_insert_
    # fn_name=$(prs_f -n ${arg_path})
    # root_path=$(prs_f -d ${arg_path})
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_ante_cntlif_() {
    #     :
    # }
    # fedora_ante_cntlif_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_ante_cntlif_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_ante_cntlif_
    # fi
    unset_autoargs_ante_cntlif_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# ante_cntlif_ @

unset filename
