#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_gcom_/gcom_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gcom_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    local FN_OUT_DIR=$PATH_FN/dir_$FNN/_$FNN/_out
    local FN_ERR_FILE="${PATH_FN}/dir_${FNN}/_${FNN}/_out/err.res"
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]}, filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1

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
CNTLS: --autocommit (in debug mode git commit -m first_commit)
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
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

    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE gcom_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gcom_() {
        echo_gcom_=0
        debug_gcom_=0
        unset errmes_gcom_
        unset outmes_gcom_

        unset tml_gcom_
        unset name_gcom_
        unset autocommit_gcom_

        # any1_gcom_=0
        qq_exit_gcom_=0
        # unset any2_gcom_
    }
    unset_autoargs_gcom_
    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gcom_}

    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}

    echo_deb_ ${echo_gcom_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gcom_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\$errmes_gcom_: "$errmes_gcom_""
        echo "\$outmes_gcom_: "$outmes_gcom_""
    fi
    exit_gcom_() {
        unset_autoargs_gcom_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }

    exit_err_gcom_() { #* $1 error message
        unset_autoargs_gcom_
        qq_pause "$1: be return 1 <- Fail: message in ${FNLOCK}"
        echo "$1: be return 1 <- Fail: message in ${FNLOCK}" 1>&2
        return 1
    }
    #! MAST BE AFTER exit_gcom_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_gcom_}

    #* enterpritation file
    if [ ${debug_gcom_} -eq 1 ]; then
        exl_ --list "${tml_gcom_}" -qq_exit
    else
        exl_ --list "${tml_gcom_}" -qq_exit 1>/dev/null
    fi
    #? mast unset variables interpret from "${tml_gpush_}"

    #* echo all vars
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume
    if [ ${debug_gcom_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gcom_}"
    else
        agv2e nv_from_tml_ "${tml_gcom_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* curr_repo_dir: fs directoria repo
    curr_repo_dir=${dir_repo}/${name_repo}

    wrp_fifs1_ cd ${curr_repo_dir} -d1

    if is_ginname_ --tml "${tml_gcom_}" --name ${name_gcom_}; then

        # if ! is_gcached_ --tml "${tml_gcom_}" --name ${name_gcom_} ; then
        if [ ${nothing_commit} -eq 1 ]; then

            #! nothing_commit glibal var to gcom_
            nothing_commit=0
            if [[ -z "${autocommit_gcom_}" ]]; then

                echo -e "${HLIGHT}--- git commit in ${curr_repo_dir} ---${NORMAL}" #start files
                git commit </dev/tty
                # wait
                # qq_pause "wait gcom_"
                errnum=$?

            else

                echo -e "${HLIGHT}--- git commit -m ${autocommit_gcom_} in ${curr_repo_dir} ---${NORMAL}" #start files
                git commit -m "${autocommit_gcom_}"
                errnum=$?
            fi

            if [ ${errnum} -ne 0 ]; then
                echo -e "${RED}--- runtime soft error \${errnum}=${errnum}:: return 2 :: git commit at ${addr} ---${NORMAL}"
                return 2
            fi

        else

            echo -e "${GREEN}--- Nothing to commit in ${curr_repo_dir} ---${NORMAL}" #sistem info mesage

        fi

    else

        echo -e "${RED}--- is_ginname_ error: name not ${name_gcom_} ---${NORMAL}" #exit 1
        return 1

    fi

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gcom_() {
    #     :
    # }
    # fedora_gcom_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gcom_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gcom_
    # fi
    unset_autoargs_gcom_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gcom_ @

unset filename
