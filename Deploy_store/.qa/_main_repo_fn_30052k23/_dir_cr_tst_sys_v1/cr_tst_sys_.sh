#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_cr_tst_sys_/cr_tst_sys_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_tst_sys_() {

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
MAIN: create in $(pwd) sysdir for test like _cr_tst_dir_/_debug/v1/deb_1.sh
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
DEBUG:
EXAMP:
    cr_tst_sys_ --dir dir_1 --ext extst${NORMAL}"
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
    #? USE cr_tst_sys_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_cr_tst_sys_() {
        echo_cr_tst_sys_=0
        debug_cr_tst_sys_=0
        unset errmes_cr_tst_sys_
        unset outmes_cr_tst_sys_
        # any1_cr_tst_sys_=0
        qq_exit_cr_tst_sys_=0
        # unset any2_cr_tst_sys_
    }
    unset_autoargs_cr_tst_sys_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_cr_tst_sys_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_cr_tst_sys_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_cr_tst_sys_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_cr_tst_sys_: "$errmes_cr_tst_sys_""
        echo "$outmes_cr_tst_sys_: "$outmes_cr_tst_sys_""
    fi
    exit_cr_tst_sys_() {
        unset_autoargs_cr_tst_sys_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_cr_tst_sys_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------
    echo -e "# create tst flow at ex1_tst and ex2_tst
# rename exec._{ext} to exec.{ext}
# . start_check_extst._utst for tst all files.{ext}
TODO ifs up_err_ as ifs tst and will .utst->.tst for global tests" >howuse.man

    echo -e "# in deb_1.sh

## delete dir_1
## create (cr_tst_dir_) directory \"dir_1/ex1_tst\" with envariment for exec._extst process
## create (cr_tst_dir_) directory \"dir_1/ex2_tst\" with envariment for exec._extst process
## create check_distst.list in dir_1
## create start_check_distst.sh in dir_1" >whatshappenig.man

    # rr_
    # wrp_fifs1_ rm -rf dir_1 -cd1
    wrp_fifs1_ mkdir dir_1 -cnd1

    wrp_fifs1_ cd dir_1 -d1
    

    cr_tst_dir_ --name ex1 --ext extst
    cr_tst_dir_ --name ex2 --ext extst
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_cr_tst_sys_() {
    #     :
    # }
    # fedora_cr_tst_sys_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_tst_sys_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_tst_sys_
    # fi
    unset_autoargs_cr_tst_sys_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# cr_tst_sys_ @

unset filename
