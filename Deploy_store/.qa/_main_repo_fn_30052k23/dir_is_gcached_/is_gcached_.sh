#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_is_gcached_/is_gcached_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

is_gcached_() {

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
MAIN: in root dir --name --tml return 0 if nothing to commit, else return 1
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
    #? USE is_gcached_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_is_gcached_() {
        echo_is_gcached_=0
        debug_is_gcached_=0
        unset errmes_is_gcached_
        unset outmes_is_gcached_

        unset name_is_gcached_
        unset tml_is_gcached_
        
        # any1_is_gcached_=0
        qq_exit_is_gcached_=0
        # unset any2_is_gcached_
    }
    unset_autoargs_is_gcached_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_is_gcached_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_is_gcached_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_is_gcached_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_is_gcached_}: ${errmes_is_gcached_}"
        echo "\${outmes_is_gcached_}: ${outmes_is_gcached_}"
    fi
    exit_is_gcached_() {
        unset_autoargs_is_gcached_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_is_gcached_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

#* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_is_gcached_}
    #* enterpritation file - resive global variables containg at file

    if [ ${debug_is_gcached_} -eq 1 ]; then
        exl_ --list "${tml_is_gcached_}" -qq_exit
    else
        exl_ --list "${tml_is_gcached_}" -qq_exit 1>/dev/null
    fi

    #* echo all vars for controls
    # gadd_remote_all_var2e
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume

    if [ ${debug_is_gcached_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_is_gcached_}"
    else
        agv2e nv_from_tml_ "${tml_is_gcached_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* >>>>>>>>>> recive name_var for pair remote-addres
    # for var_name in $(f2e ${PATH_VAR_DIR}/git/var.list | rl_siev_or2e pull push clone); do
    #     echo_deb_ ${echo_is_gclean_} "${GREEN}\$var_name = $var_name${NORMAL}" #print variable

    # done

    # git status | is_rl_siev_and
    #* "Changes to be committed" : mast commit
    #* ! "working tree clean" : mast add

    if is_ginname_ --tml "${tml_is_gcached_}" --name ${name_is_gcached_}; then
        if [ -z "$(git diff --cached | cat)" ] ; then
            return 0
        else
            return 1
        fi

    else
        qq_exit_ "is_ginname_ error: name not ${name_is_gcached_}"
    fi

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_is_gcached_() {
    #     :
    # }
    # fedora_is_gcached_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_is_gcached_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_is_gcached_
    # fi
    unset_autoargs_is_gcached_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# is_gcached_ @

unset filename
