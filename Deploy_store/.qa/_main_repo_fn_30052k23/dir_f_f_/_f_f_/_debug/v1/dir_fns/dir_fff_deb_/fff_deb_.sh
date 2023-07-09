#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/dir_fns/dir_fff_deb_/fff_deb_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fff_deb_() {

    local FNN=${FUNCNAME[0]}
    # local ORIGO_DIR=$PATH_FN/dir_$FNN === ${FN_DIR}
    local FN_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/dir_fns #? contane dir of function
    local FLN=$0
    local ARGS=($@)
    local NARGS=$#
    local ARGS1=$1
    local ARGS2=$2
    local ARGS3=$3
    local PPWD=$PWD
    #? ${FNN}mdeb function - menu for debug flows
    local RATIS_DIR=$(prs_f -d $PPWD) #? ratis is dir of generating kit function
    # $PATH_FN/dir_$FNN/ === $ORIGO_DIR === $FN_DIR
    local FN_CONT_DIR=${FN_DIR}/dir_${FNN}/_${FNN} #? dir with fn's any contant
    local FN_FN_DIR=${FN_CONT_DIR}/_fn             #? dir with fn's subfunction
    local FN_TMP_DIR=${FN_CONT_DIR}/_tmp           #? dir with fn's tmp
    local FN_DEBUG_DIR=${FN_CONT_DIR}/_debug       #? dir with fn's free debug flow
    local FN_CONFIG_DIR=${FN_CONT_DIR}/_config     #? dir with fn's config
    local FN_DEFAULT_DIR=${FN_CONT_DIR}/_default   #? dir with fn's default behavviour
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    # local FN_ERR_FILE="${FN_DIR}/_${FNN}/_out/err.res"
    # wrp_fifs1_ rm -f "${FN_ERR_FILE}" -cf1
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || {
        echo -e "${CYAN}---$FNN() ${ARGS[*]} ---${NORMAL}"                      #started functions
        echo -e "${GREEN}\${FN_DIR}/dir_${FNN} = ${FN_DIR}/dir_${FNN}${NORMAL}" #print variable
        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}"                               #print variable
    }
    #{def_const_reciver}

    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- c_up "${FN_FN_DIR}" 1>/dev/null ---${NORMAL}" #start files
    c_up "${FN_FN_DIR}" 1>/dev/null
    if [ "_man" == "$1" ]; then
        [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- edit_ ${FN_DIR}/"$FNN".man ---${NORMAL}" #start files
        edit_ ${FN_DIR}/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        local tst_file="${FN_DIR}"/"$FNN"tst/exec.tst
        if [ -f ${tst_file} ]; then
            [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- . "${tst_file}" ---${NORMAL}" #start files
            . "${tst_file}"
            return $?
        else
            echo -e "${RED}--- not file: ${tst_file} ---${NORMAL}" #exit 1
            return 1
        fi
    fi
    if [ "_extst_1" == "$1" ]; then
        local utst_file=${FN_DIR}/${FNN}extst/extst_1/start_exec.tst
        if [ -f ${utst_file} ]; then
            [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- . "${utst_file}" ---${NORMAL}" #start files
            . "${utst_file}"
            return $?
        else
            echo -e "${RED}--- not file: ${utst_file} ---${NORMAL}" #exit 1
            return 1
        fi
    fi
    if [ "_lst" == "$1" ]; then
        [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- edit_ ${FN_DIR}/${FNN}.lst ---${NORMAL}" #start files
        edit_ ${FN_DIR}/dir_${FNN}/${FNN}.lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- edit_ ${FN_DIR}/ ---${NORMAL}" #start files
        edit_ ${FN_DIR}/dir_${FNN}
        return 0
    fi
    if [ "_deb" == "$1" ]; then
        [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- . ${FN_CONT_DIR}/_default/default_deb.sh ---${NORMAL}" #start files
        . ${FN_CONT_DIR}/_default/default_deb.sh
        return 0
    fi
    if [ "_mdeb" == "$1" ]; then
        [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- ${FNN}mdeb() ---${NORMAL}" #start files
        ${FNN}mdeb
        return 0
    fi
    #{cntl_default}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTLS:
required
optional -verbose (not garg parsed, for echo main param function) 
CNTL inspect : -h, _man, _tst, _extst_1 [,_extst_2 ...], _go, _deb, _mdeb, _list
CNTL defaut: -_echo, -_debug, --_ptr_if {ptr_from_if: if true fn be work, else be ignored}, --ptr_sem {ptr_with_semapore for arg wate_sem, free_sem usnig insidefunction} --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -_develop1, ... for special development mode, NOT to product
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
    #{cntl_help}
    #{ctrl_args_reciver}

    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- wrp_fifs1_ cd $PPWD -d1 1>/dev/null ---${NORMAL}" #start files
    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null
    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE fff_deb_() -echo -deb
    local echo_
    local debug_
    local verbose_
    local develop1_
    local errmes_
    local outmes_
    local ptr_if_
    local ptr_sem_
    unset_autoargs_fff_deb_() {
        echo_=0
        debug_=0
        develop1_=0
        unset errmes_
        unset outmes_
        unset ptr_if_
        unset ptr_sem_
        # any1_=0
        # unset any2_
    }
    unset_autoargs_fff_deb_
    # [[ 1 -eq ${verbose} ]] || {
    #     garg_ ${FNN} $@
    # } && {
    #     garg_ ${FNN} $@ 1>/dev/null
    # }
    if ! garg2e2_ "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    #? g_args with cntl=value
    local g_args=($(garg2e2_ "${ARGS[@]}"))
    #? e_args is {ARGS[@]} without cntl and cmtl_value - as it's free
    local e_args=($(earg2e2_ "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(garg2e2_ "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done
    #{garg}
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
    #{ptr_if}
    echo_deb_ ${echo_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_} ] && [ ${debug_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_}: ${errmes_}"
        echo "\${outmes_}: ${outmes_}"
    fi
    if [ -n ${develop1_} ] && [ ${develop1_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    #{see_cntl}
    exit_err_fff_deb_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_fff_deb_
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
    exit_reg_fff_deb_() {
        local arg1="$1"
        unset_autoargs_fff_deb_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #{def_exit}
    #! strongly return 1 -> exit_err_ $1
    #! strongly return 0 -> exit_reg_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_fff_deb_.res
    # COMMAND &>>${FN_OUT_DIR}/com_fff_deb_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_fff_deb_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_fff_deb_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_fff_deb_ "runtime error:: COMMAND ${addr}"
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
    #! search in array
    # [[ " ${arr[*]} " =~ " $1 " ]] && echo "true" || echo "false"
    #! ${array[@]:1} all from 1 member arr
    #{hints}
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_fff_deb_() {
    #     :
    # }
    # fedora_fff_deb_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_fff_deb_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_fff_deb_
    # fi
    unset_autoargs_fff_deb_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null
    #{init_body_reciver}

}

# fff_deb_ @

unset filename
