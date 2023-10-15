#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/mm_dogit_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

mm_dogit_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

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
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, -verbose, --errmes {if_error_case}, --outmes {free_message}, ...
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

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE mm_dogit_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_mm_dogit_() {
        echo_mm_dogit_=0
        debug_mm_dogit_=0
        unset errmes_mm_dogit_
        unset outmes_mm_dogit_
        # any1_mm_dogit_=0
        qq_exit_mm_dogit_=0
        # unset any2_mm_dogit_
    }
    unset_autoargs_mm_dogit_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_mm_dogit_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_mm_dogit_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_mm_dogit_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_mm_dogit_}: ${errmes_mm_dogit_}"
        echo "\${outmes_mm_dogit_}: ${outmes_mm_dogit_}"
    fi
    exit_mm_dogit_() {
        unset_autoargs_mm_dogit_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_mm_dogit_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    echo -e "${BLUE}--- exec ${FNN} num_menu ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")

    arr+=("define files, dir")
    res+=("mm_dogit_define_files_dirs")

    #? Rota init
    arr+=("!fix(3) clone add_repo push pull add_file com push-CARPPAFCP ROTA.list main.var")
    res+=("mm_dogit_carppafcp_list ROTA.list main.var")

    #? PPAFCP
    arr+=("pull push add_file com push-PPAFCP tgu main.var")
    res+=("mm_dogit_ppafcp_name tgu main.var")

    arr+=("pull push add_file com push-PPAFCP CLR.list main.var")
    res+=("mm_dogit_ppafcp_list CLR.list main.var")

    arr+=("pull push add_file com push(main_bcp_local_)-PPAFCP MBL.list MBL.var")
    res+=("mm_dogit_ppafcp_list MBL.list MBL.var")

    #? CARP
    arr+=("clone add_repo push-CARP tgu main.var")
    res+=("mm_dogit_carp_name tgu main.var")

    arr+=("clone add_repo push-CARP CLR.list main.var")
    res+=("mm_dogit_carp_list CLR.list main.var")

    arr+=("clone add_repo push(main_bcp_local_)-CARP MBL.list MBL.var")
    res+=("mm_dogit_carp_list MBL.list MBL.var")

    #? CARPPAFCP
    arr+=("clone add_repo push pull add_file com push-CARPPAFCP tgu main.var")
    res+=("mm_dogit_carppafcp_name tgu main.var")

    arr+=("clone add_repo push pull add_file com push-CARPPAFCP CLR.list main.var")
    res+=("mm_dogit_carppafcp_list CLR.list main.var")

    arr+=("clone add_repo push pull add_file com push(main_bcp_local_)-CARPPAFCP MBL.list MBL.var")
    res+=("mm_dogit_carppafcp_list MBL.list MBL.var")

    arr+=("clone add_repo push pull add_file com push(once_bcp_local_)-CARPPAFCP OBL.list OBL.var")
    res+=("mm_dogit_carppafcp_list OBL.list OBL.var")

    #? DLB
    arr+=("del local bare - DLB tgu main.var")
    res+=("mm_dogit_dlb_name tgu main.var")

    arr+=("del local bare - DLB dlb.list main.var")
    res+=("mm_dogit_dlb_list dlb.list main.var")

    #? set
    arr+=("mm_dogit_ 5 + 6")
    res+=("mm_dogit_set_1")

    arr+=("bcp_before_gitpush_plt file + mm_dogit_ 5")
    res+=("mm_dogit_set_5")

    arr+=("bcp_before_gitpush_plt file")
    res+=("mm_dogit_set_6")

    arr+=("dpl_after_pull_plt file")
    res+=("mm_dogit_set_7")

    arr+=("bcp_before_gitpush_plt file + mm_dogit_ 5 + 6")
    res+=("mm_dogit_set_2")

    arr+=("dpl_after_pull_plt file + mm_dogit_ 5 + 6")
    res+=("mm_dogit_set_3")

    arr+=("mm_dogit_ 11 + 12 (before 5 + 6)")
    res+=("mm_dogit_set_4")

    arr+=("edit_ curr_list_repo_CLR.list")
    res+=("edit_ ${PATH_LISTS_DIR}/git/hsc_alt/curr_list_repo_CLR.list")

    arr+=("edit_ once_bcp_local_OBL.list")
    res+=("edit_ ${PATH_LISTS_DIR}/git/hsc_alt/once_bcp_local_OBL.list")

    arr+=("edit_ main_bcp_local_MBL.list")
    res+=("edit_ ${PATH_LISTS_DIR}/git/hsc_alt/main_bcp_local_MBL.list")

    arr+=("edit_ ${PLT_PATH}/.d/.config/.tst")
    res+=("edit_ ${PLT_PATH}/.d/.config/.tst")

    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")

    echo -e "${BLUE}--- exec ${FNN} (num_menu) ---${NORMAL}" #started functions

    if [ "$(num_01 "$1")" -eq 1 ] && [ $1 -le ${#arr[@]} ]; then
        num_res=$(($1 - 1))
        ${res[${num_res}]}
        return 0
    fi
    PS3="eligendi actiones: "
    select item in "${arr[@]}"; do
        for ((i = 0; i < 1000; i++)); do
            if [[ ${item} == ${arr[$i]} ]]; then
                ${res[$i]}
                ${FNN} $@
            fi
            if [[ ${item} == ${arr[0]} ]]; then
                ${res[$i]}
            fi
        done
    done
    #{zzz20}

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_mm_dogit_() {
    #     :
    # }
    # fedora_mm_dogit_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_mm_dogit_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_mm_dogit_
    # fi
    unset_autoargs_mm_dogit_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# mm_dogit_ @

unset filename
