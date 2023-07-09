#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/gpull_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gpull_() {

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
    local FNLOCK="${FNN}, with_args: ${ARGS[*]}, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        tst_file="$ORIGO_DIR"/"$FNN"tst/exec.tst
        if [ -f ${tst_file} ]; then
            . "$ORIGO_DIR"/"$FNN"tst/exec.tst
            return $?
        else
            echo -e "${RED}--- not file ${tst_file} ---${NORMAL}" #exit 1
            return 1
        fi
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi
    if [ "_deb" == "$1" ]; then
        . ${ORIGO_DIR}/_"$FNN"/_default/default_deb.sh
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: [g]it [pull] {--name} name repo, {--tml} file template
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: (return 1| exit 1| -qq_exit| )
DEBUG: 
    . ${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/v1/deb_1.sh
EXAMP:
    gpull_ --tml \"${PATH_VAR_DIR}/git/hsc_alt/main.var\" --name \"tgu\"${NORMAL}${NORMAL}"
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
    #? USE gpull_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gpull_() {
        echo_gpull_=0
        debug_gpull_=0
        unset errmes_gpull_
        unset outmes_gpull_

        unset name_gpull_
        unset tml_gpull_

        # any1_gpull_=0
        qq_exit_gpull_=0
        # unset any2_gpull_
    }
    unset_autoargs_gpull_
    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }

    QQ_EXIT=${qq_exit_gpull_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gpull_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gpull_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_gpull_: "$errmes_gpull_""
        echo "$outmes_gpull_: "$outmes_gpull_""
    fi
    exit_gpull_() {
        unset_autoargs_gpull_
        plt_exit "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gpull_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_gpull_}
    #* enterpritation file

    if [ ${debug_gpull_} -eq 1 ]; then
        exl_ --list "${tml_gpull_}" -qq_exit
    else
        exl_ --list "${tml_gpull_}" -qq_exit 1>/dev/null
    fi
    #* echo all vars
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume

    if [ ${debug_gpull_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gpull_}"
    else
        agv2e nv_from_tml_ "${tml_gpull_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* curr_repo_dir: fs directoria repo
    curr_repo_dir=${dir_repo}/${name_repo}
    echo_deb_ ${echo_gpull_} "${GREEN}\$curr_repo_dir = $curr_repo_dir${NORMAL}" #print variable

    wrp_fifs1_ cd ${curr_repo_dir} -d1

    #* check pwd tracking in git
    if ! is_ginname_ --tml "${tml_gpull_} "--name "${name_gpull_}"; then

        plt_exit "$(pwd) is not git repo"
        return ${RETURN_WITH_QQ_EXIT}

    fi

    not_avail_net=0

    if ! is_ping; then
        not_avail_net=1
    fi

    #* >>>>>>>>>> get all pull net strong variables >>>>>>>>>>

    name_pns=$(nv_from_tml_ "${tml_gpull_}" | rl_siev_and2e pull net strong)
    echo_deb_ ${echo_gpull_} "${GREEN}\$name_pns = $name_pns${NORMAL}" #print variable
    curr_pns=$(eval echo \$$name_pns)
    echo_deb_ ${echo_gpull_} "${GREEN}\$curr_pns = $curr_pns${NORMAL}" #print variable
    pull_addr_pns=$(sn2e "${curr_pns}" '<>' 0)
    echo_deb_ ${echo_gpull_} "${GREEN}\$pull_addr_pns = $pull_addr_pns${NORMAL}" #print variable
    pull_remote_pns=$(sn2e "${curr_pns}" '<>' 1)
    echo_deb_ ${echo_gpull_} "${GREEN}\$pull_remote_pns = $pull_remote_pns${NORMAL}" #print variable
    #* <<<<<<<<<< get all pull net strong variables <<<<<<<<<<

    #* >>>>>>>>>> get all pull local strong variables >>>>>>>>>>
    name_pls=$(nv_from_tml_ "${tml_gpull_}" | rl_siev_and2e pull "local" strong)
    echo_deb_ ${echo_gpull_} "${GREEN}\$name_pls = $name_pls${NORMAL}" #print variable
    curr_pls=$(eval echo \$$name_pls)
    echo_deb_ ${echo_gpull_} "${GREEN}\$curr_pls = $curr_pls${NORMAL}" #print variable
    pull_addr_pls=$(sn2e "${curr_pls}" '<>' 0)
    echo_deb_ ${echo_gpull_} "${GREEN}\$pull_addr_pls = $pull_addr_pls${NORMAL}" #print variable
    pull_remote_pls=$(sn2e "${curr_pls}" '<>' 1)
    echo_deb_ ${echo_gpull_} "${GREEN}\$pull_remote_pls = $pull_remote_pls${NORMAL}" #print variable
    #* <<<<<<<<<< get all pull local strong variables <<<<<<<<<<

    #* condition pull_remote_pns || pull_remote_pls exist >>>>>>>>>>
    #? debug that block . ${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/exist_remote_deb/deb_2.sh
    if [ -n "${pull_remote_pns}" ] && [ -n "${pull_remote_pls}" ]; then
        plt_exit "collision both curr_pns=${curr_pns} and curr_pls=${curr_pls} is exist"
        return ${RETURN_WITH_QQ_EXIT}
    fi

    if [ -z "${pull_remote_pns}" ] && [ -z "${pull_remote_pls}" ]; then
        plt_exit "collision both curr_pns=${curr_pns} and curr_pls=${curr_pls} not exist"
        return ${RETURN_WITH_QQ_EXIT}
    fi

    if [ -n "${pull_remote_pns}" ] && [ -z "${pull_remote_pls}" ]; then
        pull_remote_curr="${pull_remote_pns}"
    fi

    if [ -z "${pull_remote_pns}" ] && [ -n "${pull_remote_pls}" ]; then
        pull_remote_curr="${pull_remote_pls}"
    fi
    echo_deb_ ${echo_gpull_} "${GREEN}\$pull_remote_curr = $pull_remote_curr${NORMAL}" #print variable
    #* condition pull_remote_pns || pull_remote_pls exist <<<<<<<<<<

    #* block git pull >>>>>>>>>>
    #? for emulate fail: git pull ${pull_remote_curr}x master
    echo -e "${HLIGHT}--- git pull ${pull_remote_curr} master ---${NORMAL}" #start files
    git pull ${pull_remote_curr} master
    errno_pull=$?

    if [ ${errno_pull} -ne 0 ]; then
        plt_exit "Fail: git pull ${pull_remote_curr} master"
        return ${RETURN_WITH_QQ_EXIT}
    else
        echo -e "${BLUE}--- Success git pull ${pull_remote_curr} master to ${curr_repo_dir} ---${NORMAL}" #sistem info mesage
    fi
    #* block git pull <<<<<<<<<<

    agv3u nv_from_tml_ ${tml_gpull_}

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gpull_() {
    #     :
    # }
    # fedora_gpull_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gpull_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gpull_
    # fi
    unset_autoargs_gpull_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gpull_ @

unset filename
