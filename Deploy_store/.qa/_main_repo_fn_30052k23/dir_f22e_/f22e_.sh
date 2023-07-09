#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_f22e_/f22e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f22e_() {

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
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

    c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null
    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        local tst_file="$ORIGO_DIR"/"$FNN"tst/exec.tst
        if [ -f ${tst_file} ]; then
            . "${tst_file}"
            return $?
        else
            echo -e "${RED}--- not file: ${tst_file} ---${NORMAL}" #exit 1
            return 1
        fi
    fi
    if [ "_extst_1" == "$1" ]; then
        local utst_file=${ORIGO_DIR}/${FNN}extst/extst_1/start_exec.tst
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
    if [ "_mdeb" == "$1" ]; then
        ${FNN}mdeb
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: [f]ile [2]to [2]version (eval each line fn before echo) [e]cho
NAME: ${FNN}()
WHERE?:(only in root dir)N
WHAT?: any stile path 
ARGS: 
\$1 file path (any stile)
    if string_head=#: string be skip
\$2 mean 
    if string_head=#\$2: be echo string_tail
u ]
CNTLS:
required
optional 
CNTL inspect : -h, _man, _tst, _extst_1 [,_extst_2 ...], _go, _deb, -mdeb, _list
CNTL defaut: -echo, -debug, -verbose, --ptr_if {ptr_from_if: if true fn be work, else be ignored}, --ptr_sem {ptr_with_semapore for arg wate_sem, free_sem usnig insidefunction} --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -develop1, ... for special development mode, NOT to product
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: (process | subprocess (no read pause only plt_err return $errno) | interpritator)
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
WARN: 
DEBUG:
${FNN} _deb, ${FNN} _mdeb
EXAMP:
${FNN} -<>
${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE f22e_() -echo -deb
    local echo_
    local debug_
    local verbose_
    local develop1_
    local errmes_
    local outmes_
    local ptr_if_
    local ptr_sem_
    unset_autoargs_f22e_() {
        echo_=0
        debug_=0
        verbose_=0
        develop1_=0
        unset errmes_
        unset outmes_
        unset ptr_if_
        unset ptr_sem_
        # any1_=0
        # unset any2_
    }
    unset_autoargs_f22e_
    # [[ 1 -eq ${verbose} ]] || {
    #     garg_ ${FNN} $@
    # } && {
    #     garg_ ${FNN} $@ 1>/dev/null
    # }
    if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    local g_args=($(garg2e_ "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(garg2e_ "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    # start ---------------------------- if ptr block-------------------------------------------
    local ptr_value=${ptr_if_}
    if [[ -n ${ptr_value} ]] && [[ ${ptr_value} -ne 1 ]]; then
        if [ -n ${develop1_} ] && [ ${develop1_} -eq 1 ]; then
            echo -e "${RED}--- $FNN() $* be ignored ---${NORMAL}" #started functions
        fi
        return 0
    fi
    # end ---------------------------- if ptr block-------------------------------------------
    #
    echo_deb_ ${echo_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_} ] && [ ${debug_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_}: ${errmes_}"
        echo "\${outmes_}: ${outmes_}"
    fi
    if [ -n ${develop1_} ] && [ ${develop1_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ -n ${verbose_} ] && [ ${verbose_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_f22e_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_f22e_
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
    exit_reg_f22e_() {
        local arg1="$1"
        unset_autoargs_f22e_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_ $1
    #! strongly return 0 -> exit_reg_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_f22e_.res
    # COMMAND &>>${FN_OUT_DIR}/com_f22e_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_f22e_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_f22e_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_f22e_ "runtime error:: COMMAND ${addr}"
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
    file_path=$1
    file_path=$(abs_path $PPWD "file_path") #ptr args

    char=$2

    # echo -e "${GREEN}\$file_path = $file_path${NORMAL}" #print variable/

    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\$file_path = $file_path${NORMAL}" #print variable/

    IFS='
'
    if [ -f "${file_path}" ]; then

        for item in $(cat "${file_path}"); do

            # echo $item
            fs=${item:0:1}
            if [ "$fs" != "#" ] && [ -n "$item" ]; then

                eval echo ${item}

            fi

        done

    else

        exl_exit "\$1=$1 : not a file" " $filename ${FNN}" "$LINENO"
        return 1
    fi

    IFS=$IIFS
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_f22e_() {
    #     :
    # }
    # fedora_f22e_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_f22e_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_f22e_
    # fi
    unset_autoargs_f22e_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# f22e_ @

unset filename
