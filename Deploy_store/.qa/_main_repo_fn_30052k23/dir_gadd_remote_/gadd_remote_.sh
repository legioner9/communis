#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_gadd_remote_/gadd_remote_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gadd_remote_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    local FN_OUT_DIR=$PATH_FN/dir_$FNN/_$FNN/_out
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
    if [ "_deb" == "$1" ]; then
        . ${PATH_FN}/dir_${FNN}/_${FNN}/_default/default_deb.sh
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: [g]it [add] [remote] from file.var
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
    --tml current file with var
    --name name repo
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
DEBUG: 
    . ${PATH_MAIN_REPO_FN_DIR}/dir_gadd_remote_/_gadd_remote_/_debug/v1/deb_1.sh
EXAMP:
    gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"${NORMAL}"
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
    #? USE gadd_remote_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gadd_remote_() {
        echo_gadd_remote_=0
        debug_gadd_remote_=0
        unset errmes_gadd_remote_
        unset outmes_gadd_remote_
        # any1_gadd_remote_=0
        qq_exit_gadd_remote_=0

        unset tml_gadd_remote_
        unset name_gadd_remote_

        develop1_gadd_remote_=0
        verbose_gadd_remote_=0
        # unset any2_gadd_remote_
    }
    unset_autoargs_gadd_remote_
    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gadd_remote_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gadd_remote_} "cntl echo_deb_ mode in ${FNLOCK}"

    if [ ${debug_gadd_remote_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\$errmes_gadd_remote_: $errmes_gadd_remote_"
        echo "\$outmes_gadd_remote_: $outmes_gadd_remote_"
    fi

    if [ ${develop1_gadd_remote_} -eq 1 ]; then
        echo "development1 MODE in ${FNLOCK}"
    fi

    if [ ${verbose_gadd_remote_} -eq 1 ]; then
        echo "verbose MODE in ${FNLOCK}"
    fi

    exit_gadd_remote_() {
        unset_autoargs_gadd_remote_
        plt_exit "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    exit_err_gadd_remote_() { #* $1 error message
        unset_autoargs_gadd_remote_
        plt_pause "$1: be return 1 <- Fail: message in ${FNLOCK}"
        echo "$1: be return 1 <- Fail: message in ${FNLOCK}" 1>&2
        return 1
    }
    #! strongly return 1 -> exit_err_gadd_remote_ $1
    #! strongly return 0 -> exit_reg_gadd_remote_
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_gadd_remote_}
    #* enterpritation file - resive global variables containg at file
    if [ ${debug_gadd_remote_} -eq 1 ]; then
        exl_ --list "${tml_gadd_remote_}" -qq_exit
    else
        exl_ --list "${tml_gadd_remote_}" -qq_exit 1>/dev/null
    fi
    #* echo all vars for controls
    # gadd_remote_all_var2e
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume
    if [ ${debug_gadd_remote_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gadd_remote_}"
    else
        agv2e nv_from_tml_ "${tml_gadd_remote_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    # you are in repo dir
    wrp_fifs1_ cd ${dir_repo}/${name_repo}

    IFS='
'

    #* fsiev2e: call only variables wich name contane "clone" "pull" "push" - they value is pair addr<>remote >>>>>>>>>>
    for key in $(fsiev2e ${PATH_VAR_DIR}/git/var.list "clone" "pull" "push"); do
        #* DEBUG echo $key
        # val=$(eval echo \$$key)
        val=$(eval echo \$$key)

        if [ -n "$val" ]; then

            # val is addr1<>remote1[]addr2<>remote2
            # echo $val
            # pair is addr<>remote
            for pair in $(s2e "${val}" '><'); do
                #* DEBUG echo -e "${GREEN}\$pair = $pair${NORMAL}" #print variable
                addr=$(sn2e "${pair}" '<>' 0)
                remote=$(sn2e "${pair}" '<>' 1)

                if [ ${develop1_gadd_remote_} -eq 1 ]; then
                    echo -e "${HLIGHT}--- git config --get remote.${remote}.url ---${NORMAL}" #start files"
                    git config --get remote.${remote}.url
                fi

                curr_url_at_remote=$(git config --get remote.${remote}.url)

                if [ ${develop1_gadd_remote_} -eq 1 ]; then
                    echo -e "${GREEN}\$remote = $remote${NORMAL}"                         #print variable
                    echo -e "${GREEN}\$curr_url_at_remote = $curr_url_at_remote${NORMAL}" #print variable
                    echo -e "${GREEN}\$addr = $addr${NORMAL}"                             #print variable
                fi

                #? warning ant continue ( prevent git remote add )
                if [ -n "${curr_url_at_remote}" ]; then
                    if ! [ "${curr_url_at_remote}" == "${addr}" ]; then
                        plt_pause "be continue:: Warning at remote: ${remote} exist url: ${curr_url_at_remote} not be overwriting ${addr}"
                        continue
                    fi
                fi

                echo -e "${HLIGHT}--- git remote add "${remote}" "${addr}" &>/dev/null ---${NORMAL}" #sistem info mesage

                >${FN_OUT_DIR}/remote_add.res
                git remote add "${remote}" "${addr}" &>>${FN_OUT_DIR}/remote_add.res

                if [ $? -ne 0 ]; then
                    if [ 1 -eq ${verbose_gadd_remote_} ]; then
                        cat ${FN_OUT_DIR}/remote_add.res
                    fi
                    #? runtime error allowed locally
                    str_already_exists="already exists"

                    if cat ${FN_OUT_DIR}/remote_add.res | is_rl_siev_and ${str_already_exists}; then
                        continue
                    else
                        exit_err_gadd_remote_ "runtime error:: git remote add ${remote} ${addr}"
                    fi
                fi

            done

        fi

    done
    #* fsiev2e: call only variables wich name contane "clone" "pull" "push" - they value is pair addr<>remote <<<<<<<<<<

    IFS=$IIFS

    #* check all remotes in repo
    echo -e "${BLUE}--- git remote -v in ${pair} ---${NORMAL}" #sistem info mesage
    git remote -v

    #* unset all git variables
    agv3u nv_from_tml_ "${tml_gadd_remote_}"
    #* echo all vars for controls
    #* DEBUG agv2e nv_from_tml_ "${tml_gadd_remote_}"

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gadd_remote_() {
    #     :
    # }
    # fedora_gadd_remote_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gadd_remote_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gadd_remote_
    # fi
    unset_autoargs_gadd_remote_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gadd_remote_ @

unset filename
