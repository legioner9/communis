#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_gadd_file_/gadd_file_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gadd_file_() {

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
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1

    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
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

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE gadd_file_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gadd_file_() {
        echo_gadd_file_=0
        debug_gadd_file_=0
        unset errmes_gadd_file_
        unset outmes_gadd_file_

        unset name_gadd_file_
        unset tml_gadd_file_

        # any1_gadd_file_=0
        qq_exit_gadd_file_=0
        # unset any2_gadd_file_
    }
    unset_autoargs_gadd_file_

    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gadd_file_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gadd_file_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gadd_file_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_gadd_file_}: ${errmes_gadd_file_}"
        echo "\${outmes_gadd_file_}: ${outmes_gadd_file_}"
    fi
    exit_gadd_file_() {
        unset_autoargs_gadd_file_
        plt_pause "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gadd_file_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_gadd_file_}

    #* enterpritation file

    if [ ${debug_gadd_file_} -eq 1 ]; then
        exl_ --list "${tml_gadd_file_}" -qq_exit
    else
        exl_ --list "${tml_gadd_file_}" -qq_exit 1>/dev/null
    fi
    #? mast unset variables interpret from "${tml_gpush_}"

    #* echo all vars
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume
    if [ ${debug_gadd_file_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gadd_file_}"
    else
        agv2e nv_from_tml_ "${tml_gadd_file_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* curr_repo_dir: fs directoria repo
    curr_repo_dir=${dir_repo}/${name_repo}

    wrp_fifs1_ cd ${curr_repo_dir} -d1

    #! nothing_commit global var for gcom_
    if is_ginname_ --tml "${tml_gadd_file_}" --name ${name_gadd_file_}; then
        if ! is_gclean_ --tml "${tml_gadd_file_}" --name ${name_gadd_file_}; then
            echo -e "${HLIGHT}--- git add . in ${curr_repo_dir} ---${NORMAL}" #start files
            git add .
            nothing_commit=1
            if [ $? -ne 0 ]; then
                plt_pause "be return 1 <- Fail: ${FUNCNAME[0]} in ${FNLOCK}"
                return 1
            fi

            return 0
        else
            echo -e "${GREEN}--- git add nothing ---${NORMAL}" #sistem info mesage
            return 0
        fi

    else
        plt_pause "be return 1 <- is_ginname_ error: name not ${name_gadd_file_}"
        return 1
    fi
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gadd_file_() {
    #     :
    # }
    # fedora_gadd_file_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gadd_file_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gadd_file_
    # fi
    unset_autoargs_gadd_file_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gadd_file_ @

unset filename
