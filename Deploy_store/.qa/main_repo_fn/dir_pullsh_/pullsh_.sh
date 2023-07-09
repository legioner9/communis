#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_pullsh_/pullsh_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

pullsh_() {

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
MAIN: interface: pull push bckp from repo to any accodinn tasks at file.pullsh
NAME: ${FUNCNAME[0]}()
ARGS: 
$1
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: (return 1| exit 1| -qq_exit| )
DEBUG:
. ${PATH_MAIN_REPO_FN_DIR}/dir_pullsh_/_pullsh_/_debug/v1/deb_1.sh
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
    #? USE pullsh_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_pullsh_() {
        echo_pullsh_=0
        debug_pullsh_=0
        unset errmes_pullsh_
        unset outmes_pullsh_
        # any1_pullsh_=0
        qq_exit_pullsh_=0
        # unset any2_pullsh_
    }
    unset_autoargs_pullsh_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_pullsh_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_pullsh_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_pullsh_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_pullsh_: "$errmes_pullsh_""
        echo "$outmes_pullsh_: "$outmes_pullsh_""
    fi
    exit_pullsh_() {
        unset_autoargs_pullsh_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_pullsh_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # create menu choice dirs from $PATH_PULLSH_DIR - dir is processflow

    pullsh_all_var2e() {
        echo -e "${BLUE}--- all_var2e() ---${NORMAL}"   #sistem info mesage
        echo -e "${HLIGHT}--- enter vars: ---${NORMAL}" #start files
        for key in $(f2e ${PATH_PULLSH_DIR}/point.list); do
            # echo $key
            #   val=$(eval echo \$$key)
            echo $key=$(eval echo \$$key)
        done
    }

    pullsh_all_var3u() {
        echo -e "${BLUE}--- all_var3u() ---${NORMAL}" #sistem info mesage

        for key in $(f2e ${PATH_PULLSH_DIR}/point.list); do
            eval $key=""
        done
        all_var2e
    }

    pullsh_pull_net_strong() {

        # create dirs if not exist
        wrp_fifs1_ mkdir -p ${dir_repo}/${name_repo} -cnd1
        wrp_fifs1_ mkdir -p ${dir_bare}/${name_repo} -cnd1

        # cd in repo dir [, clone ]
        wrp_fifs1_ cd ${dir_repo} -d1

        # if repo not exist: clone flow
        if ! [ -d {dir_repo}/${name_repo}/.git ]; then
            echo -e "${HLIGHT}--- ${dir_repo}/${name_repo} repo not exsist, clone flow: ---${NORMAL}" #start files

            addr_clone=$(sn2e ${clone_net} '<>' 0)
            echo -e "${GREEN}\$addr_clone = $addr_clone${NORMAL}" #print variable
            remote_clone=$(sn2e ${clone_net} '<>' 1)
            echo -e "${GREEN}\$remote_clone = $remote_clone${NORMAL}" #print variable

            echo -e "${BLUE}--- git clone ${addr_clone} ---${NORMAL}" #sistem info mesage
            if ! git clone ${addr_clone}; then
                qq_pause "git clone ${addr_clone}: fail" " $filename ${FNN}" "$LINENO"
            fi

            # git clone

        fi
        # wrp_fifs1_ git clone

    }

    PS3="eligendi actiones: processflow git > "

    select flow_dir in $(dd2e "${PATH_PULLSH_DIR}/sets"); do
        echo ${flow_dir}
        break
    done

    path_flow_dir="${PATH_PULLSH_DIR}/sets/${flow_dir}"

    # file_name with treat repo_name in path_flow_dir

    for file_name in $(d2e ${path_flow_dir}); do
        echo ${file_name}
        path_file=${path_flow_dir}/${file_name}

        echo "${path_file}"
        # unset all vars
        all_var3u
        # extract all vars from file
        exl_ --list "${path_file}"
        # control check: echo all vars
        all_var2e

        # ? pull section
        if [ -n "${pull_net_strong}" ] && [ -z "${pull_local_strong}" ]; then

            echo -e "${HLIGHT}--- flow: pull_net_strong ---${NORMAL}" #start files

            pullsh_pull_net_strong

        elif [ -z "${pull_net_strong}" ] && [ -n "${pull_local_strong}" ]; then

            echo flow: pull_local_strong
            echo -e "${HLIGHT}--- flow: flow: pull_local_strong ---${NORMAL}" #start files

        elif [ -z "${pull_net_strong}" ] && [ -z "${pull_local_strong}" ]; then

            qq_exit "empty pull flow"

        fi

    done

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_pullsh_() {
    #     :
    # }
    # fedora_pullsh_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_pullsh_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_pullsh_
    # fi
    unset_autoargs_pullsh_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# pullsh_ @

unset filename
