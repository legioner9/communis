#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg2e2_/garg2e2_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

garg2e2_() {

    local FNN=${FUNCNAME[0]}
    # local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN === ${FN_DIR}
    local FN_DIR=${PATH_MAIN_REPO_FN_DIR} #? contane dir of function
    local FLN=$0
    local ARGS=("$@")
    local NARGS=$#
    local ARGS1=$1
    local ARGS2=$2
    local ARGS3=$3
    local PPWD=$PWD
    #? ${FNN}mdeb function - menu for debug flows
    local RATIS_DIR=$(prs_f -d $PPWD) #? ratis is dir of generating kit function
    # ${PATH_MAIN_REPO_FN_DIR}/dir_$FNN/ === $ORIGO_DIR === $FN_DIR
    local FN_CONT_DIR=${FN_DIR}/dir_${FNN}/_${FNN} #? dir with fn's any contant
    local FN_FN_DIR=${FN_CONT_DIR}/_fn             #? dir with fn's subfunction
    local FN_TMP_DIR=${FN_CONT_DIR}/_tmp           #? dir with fn's tmp
    local FN_TMP_DIR=${FN_CONT_DIR}/_debug         #? dir with fn's free debug flow
    local FN_TMP_DIR=${FN_CONT_DIR}/_config        #? dir with fn's config
    local FN_TMP_DIR=${FN_CONT_DIR}/_default       #? dir with fn's default behavviour
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    # local FN_ERR_FILE="${FN_DIR}/_${FNN}/_out/err.res"
    # wrp_fifs1_ rm -f "${FN_ERR_FILE}" -cf1
    local verbose=0
    # [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    # [[ 1 -eq ${verbose} ]] || {
    #     echo -e "${CYAN}---$FNN() $* ---${NORMAL}"   #started functions
    #     echo -e "${GREEN}$FN_DIR = $FN_DIR${NORMAL}" #print variable
    #     echo -e "${GREEN}$PPWD = $PPWD${NORMAL}"     #print variable
    # }
    #{def_const_reciver}

    # [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- c_up "${FN_FN_DIR}" 1>/dev/null ---${NORMAL}" #start files

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
        edit_ ${FN_DIR}/${FNN}.lst
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
MAIN: parser \$@ : if ( -_char ) in args -> echo char_=1 , if ( --_char value ) -> echo char_=value
NAME: ${FNN}()
ARGS: 
\$@
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
    #{cntl_help}
    #{ctrl_args_reciver}

    # [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}--- wrp_fifs1_ cd $PPWD -d1 1>/dev/null ---${NORMAL}" #start files

    ifs2pause "garg2e2_: A1"

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null
    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE garg2e2_() -echo -deb
    local echo_
    local debug_
    local verbose_
    local develop1_
    local errmes_
    local outmes_
    local ptr_if_
    local ptr_sem_
    unset_autoargs_garg2e2_() {
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
    unset_autoargs_garg2e2_
    # [[ 1 -eq ${verbose} ]] || {
    #     garg_ ${FNN} $@
    # } && {
    #     garg_ ${FNN} $@ 1>/dev/null
    # }
    # if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
    #     plt_exit " ${FNN} return 1: ${FNLOCK}"
    #     return 1
    # fi
    # local g_args=($(garg2e_ "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(garg2e_ "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
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
    # echo_deb_ ${echo_} "cntl echo_deb_ mode in ${FNLOCK}"
    # if [ -n ${debug_} ] && [ ${debug_} -eq 1 ]; then
    #     echo "DEBUG MODE in ${FNLOCK}"
    #     echo "\${errmes_}: ${errmes_}"
    #     echo "\${outmes_}: ${outmes_}"
    # fi
    # if [ -n ${develop1_} ] && [ ${develop1_} -eq 1 ]; then
    #     echo "develop1 MODE in ${FNLOCK}"
    # fi
    # if [ -n ${verbose_} ] && [ ${verbose_} -eq 1 ]; then
    #     echo "verbose MODE in ${FNLOCK}"
    # fi
    # #{see_cntl}
    # exit_err_garg2e2_() { #* $1 error message
    #     local arg1="$1"
    #     unset_autoargs_garg2e2_
    #     plt_pause "$1: be return ${arg1} <- Fail: message in ${FNLOCK}"
    #     echo "$1: be return ${arg1} <- Fail: message in ${FNLOCK}" 1>&2
    #     if [ -z "${arg1}" ]; then
    #         return 1
    #     fi
    #     if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 1 ]; then
    #         return "${arg1}"
    #     else
    #         return 1
    #     fi
    # }
    # exit_reg_garg2e2_() {
    #     local arg1="$1"
    #     unset_autoargs_garg2e2_
    #     if [ -z "${arg1}" ]; then
    #         return 0
    #     fi
    #     if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
    #         return "${arg1}"
    #     else
    #         return 0
    #     fi
    # }
    #{def_exit}
    #! strongly return 1 -> exit_err_ $1
    #! strongly return 0 -> exit_reg_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_garg2e2_.res
    # COMMAND &>>${FN_OUT_DIR}/com_garg2e2_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_garg2e2_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_garg2e2_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_garg2e2_ "runtime error:: COMMAND ${addr}"
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
    #{hints}
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    local flag=0
    local cl_item
    local item_i

    for item_i in "$@"; do
        # echo -e "${GREEN}\$item_i = $item_i${NORMAL}" #print variable

        if [ "$flag" -eq 2 ] && [ "${item_i:0:2}" == "-_" ]; then
            flag=0
        fi

        if [ $flag -eq 0 ]; then # expectation F_symbol
            # echo -e "${GREEN} 0 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

            # item_i="${!i}"
            if [ "${item_i:0:2}" == "-_" ] && [ "${item_i:2:2}" != "-" ] && [ "${item_i:2:2}" != "?" ]; then
                cl_item=${item_i:2}

                name_i="$cl_item"

                # echo -e "${GREEN} 1 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                # one=1
                # eval $name_i=$one
                echo "${name_i}_=1"

                flag=0

                # echo -e "${GREEN} 2 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                continue
            fi
            if [ "${item_i:0:3}" == "--_" ]; then

                # echo -e "${GREEN} 3 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                cl_item=${item_i:3}
                cl_item=${cl_item##^}
                name_i="$cl_item"
                # echo $name_i
                flag=1

                # echo -e "${GREEN} 4 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                continue
            fi
            if [ "${item_i:0:3}" == "-_?" ]; then

                # echo -e "${GREEN} 5 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                cl_item=${item_i:3}
                cl_item=${cl_item##^}
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
                echo "${name_i}_=${item_i##^}"
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
            if [ ${item_i:0:2} != "-_" ] && [ -n $name_i ]; then
                # eval $name_i=$item_i
                echo "${name_i}_=${item_i##^}"
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
    # altlinux_garg2e2_() {
    #     :
    # }
    # fedora_garg2e2_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_garg2e2_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_garg2e2_
    # fi
    unset_autoargs_garg2e2_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null
    #{init_body_reciver}

}

# garg2e2_ @

unset filename
