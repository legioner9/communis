#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_cr_tst_dir_/cr_tst_dir_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_tst_dir_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: create in $(pwd) dir with NAME with exec._EXT and _flow_tst.sh
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS: --name NAME (for /NAME_tst/)  --ext EXT (for exec._EXT)
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
DEBUG:
. ${PATH_MAIN_REPO_FN_DIR}/dir_cr_tst_dir_/_cr_tst_dir_/_debug/v1/deb_1.sh
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
    #? USE cr_tst_dir_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_cr_tst_dir_() {
        echo_cr_tst_dir_=0
        debug_cr_tst_dir_=0
        unset errmes_cr_tst_dir_
        unset outmes_cr_tst_dir_
        unset name_cr_tst_dir_
        unset ext_cr_tst_dir_
        # any1_cr_tst_dir_=0
        qq_exit_cr_tst_dir_=0
        # unset any2_cr_tst_dir_
    }
    unset_autoargs_cr_tst_dir_
    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    garg_ ${FUNCNAME[0]} $@
    QQ_EXIT=${qq_exit_cr_tst_dir_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_cr_tst_dir_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_cr_tst_dir_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_cr_tst_dir_: "$errmes_cr_tst_dir_""
        echo "$outmes_cr_tst_dir_: "$outmes_cr_tst_dir_""
    fi
    exit_cr_tst_dir_() {
        unset_autoargs_cr_tst_dir_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_cr_tst_dir_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # short rename
    root_dir=$(pwd)
    name_dir="${name_cr_tst_dir_}"
    ext="${ext_cr_tst_dir_}"
    not_rewrite_flag=0

    # check exist created dir
    if [ -d "${root_dir}/${name_dir}_tst" ]; then
        qq_exit_ "Fail: ${root_dir}/${name_dir}_tst allready exist"
        return "${RETURN_WITH_QQ_EXIT}"
    fi

    # cd in root_dir
    wrp_fifs1_ cd "${root_dir}" -d1

    #* work in root_dir >>>>>>>>>>
    check_list=check_"${ext}".list
    check_list_path="${root_dir}/${check_list}"
    wrp_fifs1_ rm ${check_list} -cf1

    # create .list for up_err_
    if ! [ -f "${check_list}" ]; then
        eval echo "\${root_dir}" >check_"${ext}".list
    else
        qq_pause "Attention: ${check_list} file exist and not be rewrite"
        not_rewrite_flag=1
    fi

    # create start_check.sh with exec up_err_ args
    start_sh=start_check_"${ext}"._utst
    if ! [ -f "${start_sh}" ]; then
        cr_sh_ "${start_sh}"
    else
        qq_pause "Attention: ${start_sh} file exist and not be rewrite"
        not_rewrite_flag=1
    fi

    if [ 0 -eq ${not_rewrite_flag} ]; then

        # insert into {body} .sh
        start_sh_path="${root_dir}/${start_sh}"
        body=${ORIGO_DIR}/_$FNN/_insert_files/check_up_err.inserter

        #! before cr_f_ check exist using files
        est_ "${start_sh_path}" -f
        est_ "${body}" -f

        # replace {body} for file with {ext} {check_list_path}
        cr_f_ "${start_sh_path}" --fi0 ${body} --fr0 {body}
        # appear {ext} {check_list_path} - replace variables
        cr_f_ "${start_sh_path}" --vi0 ${ext} --vr0 {ext}
        cr_f_ "${start_sh_path}" --vi0 ${check_list_path} --vr0 {check_list_path}

    fi
    #* work in root_dir <<<<<<<<<<

    curr_dir=${root_dir}/${name_dir}_tst

    qq_pause "Create ${curr_dir} from /main_repo_fn/dir_cr_tst_dir_/_cr_tst_dir_/_tml/_tst ?"

    wrp_fifs2_ cp -rf "${ORIGO_DIR}/_cr_tst_dir_/_tml/_tst" "${curr_dir}" -d1 -nd2

    wrp_fifs1_ cd "${curr_dir}" -d1

    #* work in curr_dir >>>>>>>>>>
    # rename tml standart exec._tst
    wrp_fifs2_ mv exec._tst exec._"${ext}"

    flow_file="${curr_dir}/_flow_tst.sh"
    exec_file="${curr_dir}/exec._${ext}"

    # dpwd="${curr_dir}"=${root_dir}/${name_dir}_tst
    dpwd=$(pwd)

    # cr_f_ "${flow_file}" --vi0 "${dpwd}" --vr0 "{dpwd}"

    cr_f_ "${exec_file}" --vi0 "${dpwd}" --vr0 "{dpwd}"
    cr_f_ "${exec_file}" --vi2 "${ext}" --vr2 "{ext}"
    #* work in curr_dir <<<<<<<<<<

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_cr_tst_dir_() {
    #     :
    # }
    # fedora_cr_tst_dir_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_tst_dir_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_tst_dir_
    # fi
    unset_autoargs_cr_tst_dir_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# cr_tst_dir_ @

unset filename
