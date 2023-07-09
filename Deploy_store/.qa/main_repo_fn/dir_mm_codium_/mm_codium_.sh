#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_codium_/mm_codium_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

mm_codium_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    local FN_OUT_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN/_$FNN/_out
    # local NARGS=$#
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

    c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null
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
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: codium bcp, dpl
NAME: ${FUNCNAME[0]}()
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
    #? USE mm_codium_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_mm_codium_() {
        echo_mm_codium_=0
        debug_mm_codium_=0
        verbose_mm_codium_=0
        develop1_mm_codium_=0
        unset errmes_mm_codium_
        unset outmes_mm_codium_
        # any1_mm_codium_=0
        qq_exit_mm_codium_=0
        # unset any2_mm_codium_
    }
    unset_autoargs_mm_codium_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FNN} $@
    } && {
        garg_ ${FNN} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_mm_codium_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_mm_codium_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_mm_codium_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_mm_codium_}: ${errmes_mm_codium_}"
        echo "\${outmes_mm_codium_}: ${outmes_mm_codium_}"
    fi
    if [ ${develop1_mm_codium_} -eq 1 ]; then
        echo "develop1 MODE in ${FNLOCK}"
    fi
    if [ ${verbose_mm_codium_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi
    exit_err_mm_codium_() { #* $1 error message
        unset_autoargs_mm_codium_
        qq_pause "$1: be return 1 <- Fail: message in ${FNLOCK}"
        echo "$1: be return 1 <- Fail: message in ${FNLOCK}" 1>&2
        return 1
    }
    exit_reg_mm_codium_() {
        unset_autoargs_mm_codium_
        return 0
    }
    #! strongly return 1 -> exit_err_mm_codium_ $1
    #! strongly return 0 -> exit_reg_mm_codium_
    #! treat error for inner functions
    # >${FN_OUT_DIR}/com_mm_codium_.res
    # COMMAND &>>${FN_OUT_DIR}/com_mm_codium_.res
    # if [ $? -ne 0 ]; then
    #     if [ 1 -eq ${verbose} ]; then
    #         cat ${FN_OUT_DIR}/com_mm_codium_.res
    #     fi
    #     #? runtime error allowed locally
    #     error_allowed_locall_string="STRING"
    #     if cat ${FN_OUT_DIR}/COMMAND_mm_codium_.res | is_rl_siev_and ${error_allowed_locall_string}; then
    #         continue
    #     else
    #         exit_err_mm_codium_ "runtime error:: COMMAND ${addr}"
    #     fi
    # fi
    #! amount args
    # is_amount_arg $# x x
    # if [ $? -ne 0 ]; then
    #     qq_pause "is_amount_arg:: be return 1 <- Fail: ${FUNCNAME[0]} in ${FNLOCK}"
    #     return 1
    # fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    echo -e "${BLUE}--- exec ${FNN} (num_menu - 1) ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    
    arr+=("define files, dir")
    res+=("mm_codium_define_files_dirs")

    arr+=("to_zip inplace codium dirs")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/zip_inplace_alt.exl'")
    arr+=("copy zip to TOSHIBA_EXT alt ")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/cp_zip_to_toshiba_ext_alt.exl'")

    arr+=("PROC bcp to TOSHIBA_EXT alt ")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/proc_bcp_to_flash_toshiba_ext_alt.exl'")

    arr+=("tld(~) dir exist in system alt")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/tld_dir_exist_in_system_alt.exl'")
    arr+=("copy zip from TOSHIBA_EXT alt")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/cp_zip_from_toshiba_ext_alt.exl'")
    arr+=("rm files from sys, unzip inplace alt")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/unzip_inplace_alt.exl'")

    arr+=("PROC dpl to system from TOSHIBA_EXT alt ")
    res+=("exl_ --list '${PATH_EXL_DIR}/codium_bcp_dpl_alt/proc_dpl_to_sys_from_toshiba_ext_alt.exl'")

    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
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
        mm_codium_ "$@"
        ;;

    "${arr[2]}")
        echo -e "${CYAN}--- ${res[2]} ---${NORMAL}" #started functions
        ${res[2]}
        mm_codium_ "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}--- ${res[3]} ---${NORMAL}" #started functions
        ${res[3]}
        mm_codium_ "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}--- ${res[4]} ---${NORMAL}" #started functions
        ${res[4]}
        mm_codium_ "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}--- ${res[5]} ---${NORMAL}" #started functions
        ${res[5]}
        mm_codium_ "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}--- ${res[6]} ---${NORMAL}" #started functions
        ${res[6]}
        mm_codium_ "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}--- ${res[7]} ---${NORMAL}" #started functions
        ${res[7]}
        mm_codium_ "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}--- ${res[8]} ---${NORMAL}" #started functions
        ${res[8]}
        mm_codium_ "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}--- ${res[9]} ---${NORMAL}" #started functions
        ${res[9]}
        mm_codium_ "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}--- ${res[10]} ---${NORMAL}" #started functions
        ${res[10]}
        mm_codium_ "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}--- ${res[11]} ---${NORMAL}" #started functions
        ${res[11]}
        mm_codium_ "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}--- ${res[12]} ---${NORMAL}" #started functions
        ${res[12]}
        mm_codium_ "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}--- ${res[13]} ---${NORMAL}" #started functions
        ${res[13]}
        mm_codium_ "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}--- ${res[14]} ---${NORMAL}" #started functions
        ${res[14]}
        mm_codium_ "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}--- ${res[15]} ---${NORMAL}" #started functions
        ${res[15]}
        mm_codium_ "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}--- ${res[16]} ---${NORMAL}" #started functions
        ${res[16]}
        mm_codium_ "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}--- ${res[17]} ---${NORMAL}" #started functions
        ${res[17]}
        mm_codium_ "$@"
        ;;

    "${arr[18]}")
        echo -e "${CYAN}--- ${res[18]} ---${NORMAL}" #started functions
        ${res[18]}
        mm_codium_ "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}--- ${res[19]} ---${NORMAL}" #started functions
        ${res[19]}
        mm_codium_ "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}--- ${res[20]} ---${NORMAL}" #started functions
        ${res[20]}
        mm_codium_ "$@"

        ;;

    *)
        echo -e "${BLUE}---error dilectus ---${NORMAL}" #sistem info mesage
        ;;
    esac

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_mm_codium_() {
    #     :
    # }
    # fedora_mm_codium_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_mm_codium_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_mm_codium_
    # fi
    unset_autoargs_mm_codium_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# mm_codium_ @

unset filename
