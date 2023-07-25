#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_dir_insert_/cr_f_dir_insert_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_f_dir_insert_() {

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
MAIN: create file from  --name, --dir_insert[, --tml]
NAME: ${FNN}()
WHERE?:(only in root dir)N
WHAT?: any stile path name (if name no rout in pwd dir/(dirpath name) | if name root name instead)
ARGS: 
\$1
CNTLS:
    required --name, --dir_insert; 
    optional --tml
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, -verbose, --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -develop1, ... for special development mode, NOT to product
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
    default flow:
    be upg_path_ 
    be insert {path_file} any style
    be insert {fn_name} as file name without ext
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
    #? USE cr_f_dir_insert_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_cr_f_dir_insert_() {
        echo_cr_f_dir_insert_=0
        debug_cr_f_dir_insert_=0
        verbose_cr_f_dir_insert_=0
        develop1_cr_f_dir_insert_=0
        unset errmes_cr_f_dir_insert_
        unset outmes_cr_f_dir_insert_

        unset tml_cr_f_dir_insert_
        unset dir_insert_cr_f_dir_insert_
        unset name_cr_f_dir_insert_

        # any1_cr_f_dir_insert_=0
        qq_exit_cr_f_dir_insert_=0
        # unset any2_cr_f_dir_insert_
    }
    unset_autoargs_cr_f_dir_insert_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FNN} $@
    } && {
        garg_ ${FNN} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_cr_f_dir_insert_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_cr_f_dir_insert_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_cr_f_dir_insert_} ] && [ ${debug_cr_f_dir_insert_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_cr_f_dir_insert_}: ${errmes_cr_f_dir_insert_}"
        echo "\${outmes_cr_f_dir_insert_}: ${outmes_cr_f_dir_insert_}"
    fi
    if [ -n ${develop1_cr_f_dir_insert_} ] && [ ${develop1_cr_f_dir_insert_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ -n ${verbose_cr_f_dir_insert_} ] && [ ${verbose_cr_f_dir_insert_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_cr_f_dir_insert_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_cr_f_dir_insert_
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
    exit_reg_cr_f_dir_insert_() {
        local arg1="$1"
        unset_autoargs_cr_f_dir_insert_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_cr_f_dir_insert_ $1
    #! strongly return 0 -> exit_reg_cr_f_dir_insert_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_cr_f_dir_insert_.res
    # COMMAND &>>${FN_OUT_DIR}/com_cr_f_dir_insert_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_cr_f_dir_insert_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_cr_f_dir_insert_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_cr_f_dir_insert_ "runtime error:: COMMAND ${addr}"
    #     fi
    # fi
    #! amount args
    # is_amount_arg ${NARGS} min_equ max_equ
    # if [ $? -ne 0 ]; then
    #     qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN} in ${FNLOCK}"
    #     return 1
    # fi
    #! arg_path -> absolut path
    # arg_path=$1
    # arg_path=$(abs_path $PPWD "arg_path") #ptr arg
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    tml=${tml_cr_f_dir_insert_}
    dir_insert=${dir_insert_cr_f_dir_insert_}
    name=${name_cr_f_dir_insert_}

    # normalize name -> file_path

    echo -e "${GREEN}\$name = $name${NORMAL}" #print variable

    path_file=$name
    path_file=$(abs_path $PPWD "path_file") #ptr arg

    echo -e "${GREEN}\$path_file = $path_file${NORMAL}" #print variable

    plt_pause "do it? create ${name} in ${PPWD} tml: ${tml} dir_insert: ${dir_insert}"

    fn_name=$(prs_f -n ${path_file})
    root_path=$(prs_f -d ${path_file})

    if [ -n ${tml} ]; then
        wrp_fifs2_ cp ${tml} ${path_file} -f1 -nf2
    fi

    for item in $(d2e ${dir_insert} "insert"); do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

        name_insert=$(prs_f -n ${item})
        echo -e "${GREEN}\$name_insert = $name_insert${NORMAL}" #print variable

        "${_ehh}" cr_f_ ${path_file} --fi0 ${dir_insert}/${name_insert}.insert --fr0 {${name_insert}}

    done

    #? default insert

    "${_ehh}" cr_f_ ${path_file} --vi0 ${fn_name} --vr0 {fn_name}
    "${_ehh}" cr_f_ ${path_file} --vi0 ${root_path} --vr0 {root_path}
    #HOME
    # cr_f_ ${path_file} --vi0 '\/home/st' --vr0 "/home/st"
    # exl_ --list ${PATH_EXL_DIR}/upg_path.exl
    "${_ehh}" upg_path_ ${path_file}

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_cr_f_dir_insert_() {
    #     :
    # }
    # fedora_cr_f_dir_insert_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_f_dir_insert_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_f_dir_insert_

    # fi
    unset_autoargs_cr_f_dir_insert_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null
    #! $PPWD - root dir

}

# cr_f_dir_insert_ @

unset filename
