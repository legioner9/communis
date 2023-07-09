#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_pj_j_simp_/cr_pj_j_simp_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_pj_j_simp_() {

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
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: create java project
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1 name {_jpjs} project
\$2 mst_dir for create project
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: (return 1| exit 1| -qq_exit| )
DEBUG:
$ORIGO_DIR/_cr_pj_j_simp_/_debug/deb_0.sh
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE cr_pj_j_simp_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_cr_pj_j_simp_() {
        echo_cr_pj_j_simp_=0
        debug_cr_pj_j_simp_=0
        unset errmes_cr_pj_j_simp_
        unset outmes_cr_pj_j_simp_
        # any1_cr_pj_j_simp_=0
        qq_exit_cr_pj_j_simp_=0
        # unset any2_cr_pj_j_simp_
    }
    unset_autoargs_cr_pj_j_simp_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_cr_pj_j_simp_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_cr_pj_j_simp_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_cr_pj_j_simp_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_cr_pj_j_simp_: $errmes_cr_pj_j_simp_"
        echo "$outmes_cr_pj_j_simp_: $outmes_cr_pj_j_simp_"
    fi
    exit_cr_pj_j_simp_() {
        unset_autoargs_cr_pj_j_simp_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_cr_pj_j_simp_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    amount_arg $# 1 10
    PD=$(pwd)
    fn_name="$1"

    qq_pause "In ${PD} by create j_simple_project with name ${fn_name}_jps , continue with that params ?"

    DDD=${PD}/${fn_name}_jpjs
    TML=${ORIGO_DIR}/_cr_pj_j_simp_/_tml
    TML_DIR=${ORIGO_DIR}/_cr_pj_j_simp_/_tml/_tml_dir

    exl_ --list ${PATH_EXL_DIR}/cr_fs_pj_j_simp.exl

    javac ${FN_JAVA} -d ${DDD}/out/production/${fn_name}

    wrp_fifs1_ cd ${DDD}/out/production/${fn_name} -d1

    java ${fn_name}

    # ------
    # ------

    if [ ${debug_cr_pj_j_simp_} -eq 1 ]; then
        edit_ ${DDD}
    fi

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_cr_pj_j_simp_() {
    #     :
    # }
    # fedora_cr_pj_j_simp_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_pj_j_simp_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_pj_j_simp_
    # fi
    unset_autoargs_cr_pj_j_simp_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# cr_pj_j_simp_ @

unset filename
