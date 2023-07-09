#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg2e_/garg2e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

garg2e_() {

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
    # [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
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
        echo -e "${BLUE}--- edit_ ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/ ---${NORMAL}" #sistem info mesage
        edit_ ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/
        return 0
    fi
    if [ "_deb" == "$1" ]; then
        . ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/_${FNN}/_default/default_deb.sh
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
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
FLOW: subprocess
RETURN: result>stdout, return 0
ERROR: errmes>stderr, return 1 
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
    #? USE garg2e_() -echo -deb
    unset_autoargs_garg2e_() {
        echo_garg2e_=0
        debug_garg2e_=0
        verbose_garg2e_=0
        develop1_garg2e_=0
        unset errmes_garg2e_
        unset outmes_garg2e_
        unset ptr_if_garg2e_
        unset ptr_sem_garg2e_
        # any1_garg2e_=0
        # unset any2_garg2e_
    }
    unset_autoargs_garg2e_
    # [[ 1 -eq ${verbose} ]] || {
    #     garg_ ${FNN} $@
    # } && {
    #     garg_ ${FNN} $@ 1>/dev/null
    # }
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    # start ---------------------------- if ptr block-------------------------------------------
    if [[ -n "${ptr_if_garg2e_}" ]]; then
        _ptr_if=${ptr_if_garg2e_}
        eval ptr_value=\$$_ptr_if
        if [[ -n ${ptr_value} ]] && [[ ${ptr_value} -ne 1 ]]; then
            if [ -n ${develop1_garg2e_} ] && [ ${develop1_garg2e_} -eq 1 ]; then
                plt_err "${RED}--- $FNN() $* be ignored ---${NORMAL}" #started functions
                return 0
            fi
        fi
    fi
    # end ---------------------------- if ptr block-------------------------------------------
    #
    echo_deb_ ${echo_garg2e_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_garg2e_} ] && [ ${debug_garg2e_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_garg2e_}: ${errmes_garg2e_}"
        echo "\${outmes_garg2e_}: ${outmes_garg2e_}"
    fi
    if [ -n ${develop1_garg2e_} ] && [ ${develop1_garg2e_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ -n ${verbose_garg2e_} ] && [ ${verbose_garg2e_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_garg2e_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_garg2e_
        # plt_pause "$1: be return ${arg1} <- Fail: message in ${FNLOCK}"
        plt_err "$1: be return ${arg1} <- Fail: message in ${FNLOCK}"
        if [ -z "${arg1}" ]; then
            return 1
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 1 ]; then
            return "${arg1}"
        else
            return 1
        fi
    }
    exit_reg_garg2e_() {
        local arg1="$1"
        unset_autoargs_garg2e_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_garg2e_ $1
    #! strongly return 0 -> exit_reg_garg2e_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_garg2e_.res
    # COMMAND &>>${FN_OUT_DIR}/com_garg2e_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_garg2e_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_garg2e_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_garg2e_ "runtime error:: COMMAND ${addr}"
    #     fi
    # fi
    #! amount args
    # is_amount_arg ${NARGS} min_equ max_equ
    # if [ $? -ne 0 ]; then
    #     plt_pause "is_amount_arg:: be return 1 <- Fail: ${FNLOCK}"
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
    local flag=0
    # unset item_i
    local cl_item
    local item_i

    for item_i in "$@"; do
        # echo -e "${GREEN}\$item_i = $item_i${NORMAL}" #print variable

        if [ "$flag" -eq 2 ] && [ "${item_i:0:1}" == "-" ]; then
            flag=0
        fi

        if [ $flag -eq 0 ]; then # expectation F_symbol
            # echo -e "${GREEN} 0 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

            # item_i="${!i}"
            if [ "${item_i:0:1}" == "-" ] && [ "${item_i:1:1}" != "-" ] && [ "${item_i:1:1}" != "?" ]; then
                cl_item=${item_i:1}

                name_i="$cl_item"

                # echo -e "${GREEN} 1 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                # one=1
                # eval $name_i=$one
                echo "$name_i=1"

                flag=0

                # echo -e "${GREEN} 2 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                continue
            fi
            if [ "${item_i:0:2}" == "--" ]; then

                # echo -e "${GREEN} 3 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                cl_item=${item_i:2}
                name_i="$cl_item"
                # echo $name_i
                flag=1

                # echo -e "${GREEN} 4 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                continue
            fi
            if [ "${item_i:0:2}" == "-?" ]; then

                # echo -e "${GREEN} 5 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                cl_item=${item_i:2}
                name_i="$cl_item"
                flag=2

                # echo -e "${GREEN} 6 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                continue
            fi
        fi
        if [ $flag -eq 1 ]; then
            # expectation value

            # echo -e "${GREEN} 7 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

            if [ "${item_i:0:1}" == "-" ]; then # param is flow_symbol - not a value
                # plt_exit "$item_i not value - that flow_symbol"
                plt_err "garg2e_: return 1 $item_i not value - that flow_symbol"
                return 1
            fi
            if [ -n "$name_i" ]; then
                # eval $name_i=$item_i
                echo "$name_i=$item_i"
            fi
            flag=0

            # echo -e "${GREEN} 8 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

        fi
        if [ $flag -eq 2 ]; then
            # expectation value

            # echo -e "${GREEN} 9 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

            # if [ ${item_i:0:1} == "-" ]; then # param is flow_symbol - not a value
            #     unset name_i
            #     # continue
            # fi
            if [ ${item_i:0:1} != "-" ] && [ -n $name_i ]; then
                # eval $name_i=$item_i
                echo "$name_i=$item_i"
            fi
            flag=0

            # echo -e "${GREEN} 10 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

        fi
    done
    if [ $flag -eq 1 ]; then
        plt_err "garg2e_: return 1 $item_i flow_symbol withut value"
        return 1
    fi
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_garg2e_() {
    #     :
    # }
    # fedora_garg2e_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_garg2e_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_garg2e_
    # fi
    unset_autoargs_garg2e_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# garg2e_ @

unset filename
