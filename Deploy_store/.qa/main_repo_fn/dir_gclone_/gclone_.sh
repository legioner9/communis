#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gclone_/gclone_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gclone_() {

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
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]}, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
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
MAIN: [g]it [clone] {--name} name repo, {--tml} file template
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
    . ${PATH_MAIN_REPO_FN_DIR}/dir_gclone_/_gclone_/_debug/v1/deb_1.sh
EXAMP:
    gclone_ --tml \"${PATH_VAR_DIR}/git/hsc_alt/main.var\" --name \"tgu\"${NORMAL}"
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
    #? USE gclone_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gclone_() {
        echo_gclone_=0
        debug_gclone_=0
        unset errmes_gclone_
        unset outmes_gclone_
        # any1_gclone_=0
        qq_exit_gclone_=0

        unset tml_gclone_
        unset name_gclone_

        # unset any2_gclone_
    }
    unset_autoargs_gclone_
    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gclone_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gclone_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gclone_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\$errmes_gclone_: "$errmes_gclone_""
        echo "\$outmes_gclone_: "$outmes_gclone_""
    fi

    exit_gclone_() {
        unset_autoargs_gclone_
        exl_pause "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }

    exit_err_gclone_() { #* $1 error message
        unset_autoargs_gclone_
        exl_pause "$1: be return 1 <- Fail: message in ${FNLOCK}"
        echo "$1: be return 1 <- Fail: message in ${FNLOCK}" 1>&2
        return 1
    }

    #! MAST BE AFTER exit_gclone_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* up variables to memory >>>>>>>>>>
    #* create variable $name_repo to use at ${tml_gclone_} enterpritation file
    name_repo="${name_gclone_}"
    #* enterpritation file
    if [ ${debug_gclone_} -eq 1 ]; then
        exl_ --list "${tml_gclone_}" -qq_exit
    else
        exl_ --list "${tml_gclone_}" -qq_exit 1>/dev/null
    fi

    #* echo all vars
    if [ ${debug_gclone_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gclone_}"
    else
        agv2e nv_from_tml_ "${tml_gclone_}" 1>/dev/null
    fi

    #* up variables to memory <<<<<<<<<<

    #* cd to dir with repo
    wrp_fifs1_ cd "${dir_repo}" -d1

    #* if not exist ${name_repo} - clone into dir: {dir_repo}/${name_repo} >>>>>>>>>>>>>>>>>>
    if ! [ -d "${dir_repo}/${name_repo}"/.git ]; then
        echo -e "${HLIGHT}--- ${dir_repo}/${name_repo} repo not exsist, clone flow: ---${NORMAL}" #start files

        if [ -n "${clone_net}" ]; then

            if ! is_ping; then
                # qq_exit_ "is_ping fail: the net is not available" " $filename ${FNN}" "$LINENO"
                # return "${RETURN_WITH_QQ_EXIT}"
                exit_err_gclone_ "environment error: ping not avalable"
            fi

            echo_deb_ ${echo_gclone_} "${GREEN}\$clone_net = $clone_net${NORMAL}" #print variable
            addr_clone=$(sn2e ${clone_net} '<>' 0)
            echo_deb_ ${echo_gclone_} "${GREEN}\$addr_clone = $addr_clone${NORMAL}" #print variable
            remote_clone=$(sn2e ${clone_net} '<>' 1)
            echo_deb_ ${echo_gclone_} "${GREEN}\$remote_clone = $remote_clone${NORMAL}" #print variable

        fi

        if [ -n "${clone_local}" ]; then

            echo_deb_ ${echo_gclone_} -e "${GREEN}\$clone_local = $clone_net${NORMAL}" #print variable
            addr_clone=$(sn2e ${clone_local} '<>' 0)
            echo_deb_ ${echo_gclone_} -e "${GREEN}\$addr_clone = $addr_clone${NORMAL}" #print variable
            remote_clone=$(sn2e ${clone_local} '<>' 1)
            echo_deb_ ${echo_gclone_} -e "${GREEN}\$remote_clone = $remote_clone${NORMAL}" #print variable

        fi
        echo -e "${HLIGHT}--- git clone ${addr_clone} ---${NORMAL}" #sistem info mesage

        #* if clone fail -> escalate RETURN_WITH_QQ_EXIT >>>>>>>>>>
        if ! git clone "${addr_clone}"; then
            # qq_exit_ "git clone ${addr_clone}: fail $filename ${FNN} $LINENO"
            # return "${RETURN_WITH_QQ_EXIT}"
            exit_err_gclone_ "runtime error: git clone ${addr_clone}"
        fi
        #* if clone fail -> escalate RETURN_WITH_QQ_EXIT <<<<<<<<<<

        else
        echo -e "${BLUE}--- info: ignoring::directory not empty git clone ${addr_clone} ---${NORMAL}" #sistem info mesage

    fi
    #* if not exist ${name_repo} - clone into dir: {dir_repo}/${name_repo} <<<<<<<<<<<<<<<<<

    #* gclose_all_var3u
    agv3u nv_from_tml_ ${tml_gclone_}

    #* DEBUG check unset - echo all vars
    # agv2e nv_from_tml_ ${tml_gclone_}

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gclone_() {
    #     :
    # }
    # fedora_gclone_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gclone_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gclone_
    # fi
    unset_autoargs_gclone_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gclone_ @

unset filename
