#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_tsf_sfs_/tsf_sfs_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

tsf_sfs_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    local FN_OUT_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN/_$FNN/_out
    local FN_EXL_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN/_$FNN/_exl
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
MAIN: [t]ran[sf]er files [s]ysfs -> [f]lashfs -> [s]ysfs as mm_codium_
NAME: ${FNN}()
ARGS: 
\$1
CNTLS: --var \${PATH_VAR_DIR}/tsf_sfs_/&&&.var, (-bcp | -dpl)
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, -verbose, --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -develop1, -develop2 ... for special development mode, NOT to product
    -develop1 for _tst
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
DEBUG:
EXAMP:
    tsf_sfs_ --var \${PATH_VAR_DIR}/tsf_sfs_/test.var (-bcp | -dpl)

${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE tsf_sfs_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_tsf_sfs_() {
        echo_tsf_sfs_=0
        debug_tsf_sfs_=0
        verbose_tsf_sfs_=0
        develop1_tsf_sfs_=0
        bcp_tsf_sfs_=0
        dpl_tsf_sfs_=0
        without_pause_tsf_sfs_=0 #? inner variables NOT from args
        unset errmes_tsf_sfs_
        unset outmes_tsf_sfs_
        unset var_tsf_sfs_
        # any1_tsf_sfs_=0
        qq_exit_tsf_sfs_=0
        # unset any2_tsf_sfs_
    }
    unset_autoargs_tsf_sfs_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FNN} $@
    } && {
        garg_ ${FNN} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_tsf_sfs_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_tsf_sfs_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ -n ${debug_tsf_sfs_} ] && [ ${debug_tsf_sfs_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_tsf_sfs_}: ${errmes_tsf_sfs_}"
        echo "\${outmes_tsf_sfs_}: ${outmes_tsf_sfs_}"
    fi
    if [ -n ${develop1_tsf_sfs_} ] && [ ${develop1_tsf_sfs_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi

    if [ -n ${verbose_tsf_sfs_} ] && [ ${verbose_tsf_sfs_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_tsf_sfs_() { #* $1 error message
        local arg1="$1"
        unset_autoargs_tsf_sfs_
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
    exit_reg_tsf_sfs_() {
        local arg1="$1"
        unset_autoargs_tsf_sfs_
        if [ -z "${arg1}" ]; then
            return 0
        fi
        if is_num "${arg1}" && [ "${arg1}" -lt 128 ] && [ "${arg1}" -ge 0 ]; then
            return "${arg1}"
        else
            return 0
        fi
    }
    #! strongly return 1 -> exit_err_tsf_sfs_ $1
    #! strongly return 0 -> exit_reg_tsf_sfs_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_tsf_sfs_.res
    # COMMAND &>>${FN_OUT_DIR}/com_tsf_sfs_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_tsf_sfs_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_tsf_sfs_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_tsf_sfs_ "runtime error:: COMMAND ${addr}"
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

    # $src = /home/st/.vscode-oss
    # $dest = /home/st/.vscode-oss
    # $bag = ${PATH_TOSHIBA_EXT}/Codium_zip/alt
    # $src_d = /home/st
    # $dest_d = /home/st
    # $src_ne = .vscode-oss
    # $dest_ne = .vscode-oss

    exl_ --list ${var_tsf_sfs_}

    #! ${name_flash} ${flow} ${prf} <=

    if [ -n ${develop1_tsf_sfs_} ] && [ ${develop1_tsf_sfs_} -eq 1 ]; then

        echo -e "${GREEN}\$src = $src${NORMAL}"       #print variable
        echo -e "${GREEN}\$dest_d = $dest_d${NORMAL}" #print variable
        echo -e "${GREEN}\$bag = $bag${NORMAL}"       #print variable
    fi
    src_d=$(prs_f -d $src)
    # dest_d=$(prs_f -d $dest)

    src_ne=$(prs_f -ne $src)
    # dest_ne=$(prs_f -ne $dest)
    dest_ne="${src_ne}"

    if [ -n ${develop1_tsf_sfs_} ] && [ ${develop1_tsf_sfs_} -eq 1 ]; then

        echo -e "${GREEN}\$src_d = $src_d${NORMAL}"   #print variable
        echo -e "${GREEN}\$dest_d = $dest_d${NORMAL}" #print variable

        echo -e "${GREEN}\$src_ne = $src_ne${NORMAL}"   #print variable
        echo -e "${GREEN}\$dest_ne = $dest_ne${NORMAL}" #print variable

        wrp_fifs1_ mkdir ~/test_tmp -cnd1
        echo test_string >~/test_tmp/test_file

        without_pause_tsf_sfs_=1
        exl_ --list ${FN_EXL_DIR}/zip_inplace.exl
        exl_ --list ${FN_EXL_DIR}/cp_zip_to_flash.exl
        exl_ --list ${FN_EXL_DIR}/cp_zip_from_flash.exl
        exl_ --list ${FN_EXL_DIR}/tld_dir_exist_in_system.exl
        exl_ --list ${FN_EXL_DIR}/unzip_inplace.exl

        exit_reg_tsf_sfs_ 0
        return 0
    fi

    sarg=$((${bcp_tsf_sfs_} + ${dpl_tsf_sfs_}))

    if [[ ${sarg} -ne 1 ]]; then
        exit_err_tsf_sfs_ 1
        plt_exit "(-bcp | -dpl): -bcp=$bcp_tsf_sfs_ , -dpl=$dpl_tsf_sfs_"
    fi

    echo_deb_ ${echo_tsf_sfs_} "${GREEN}\$sarg = $sarg${NORMAL}" #print variable

    if [[ ${bcp_tsf_sfs_} -eq 1 ]]; then

        echo -e "${HLIGHT}--- exl_ --list ${FN_EXL_DIR}/zip_inplace.exl ---${NORMAL}" #start files
        exl_ --list ${FN_EXL_DIR}/zip_inplace.exl
        echo -e "${HLIGHT}--- exl_ --list ${FN_EXL_DIR}/cp_zip_to_flash.exl ---${NORMAL}" #start files
        exl_ --list ${FN_EXL_DIR}/cp_zip_to_flash.exl
        unset_autoargs_tsf_sfs_
        return 0
    fi

    if [[ ${dpl_tsf_sfs_} -eq 1 ]]; then

        echo -e "${HLIGHT}--- exl_ --list ${FN_EXL_DIR}/cp_zip_from_flash.exl ---${NORMAL}" #start files
        exl_ --list ${FN_EXL_DIR}/cp_zip_from_flash.exl
        echo -e "${HLIGHT}--- exl_ --list ${FN_EXL_DIR}/tld_dir_exist_in_system.exl ---${NORMAL}" #start files
        exl_ --list ${FN_EXL_DIR}/tld_dir_exist_in_system.exl
        echo -e "${HLIGHT}--- exl_ --list ${FN_EXL_DIR}/unzip_inplace.exl ---${NORMAL}" #start files
        exl_ --list ${FN_EXL_DIR}/unzip_inplace.exl
        unset_autoargs_tsf_sfs_
        return 0
    fi
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_tsf_sfs_() {
    #     :
    # }
    # fedora_tsf_sfs_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_tsf_sfs_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_tsf_sfs_
    # fi
    unset_autoargs_tsf_sfs_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# tsf_sfs_ @

unset filename
