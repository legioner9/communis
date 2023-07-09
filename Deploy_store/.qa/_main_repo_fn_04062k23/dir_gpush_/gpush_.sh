#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/gpush_.sh"

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gpush_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    local FN_ERR_FILE="${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/_${FNN}/_out/err.res"
    wrp_fifs1_ rm -f "${FN_ERR_FILE}" -cf1
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functio
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        if [ -f "$ORIGO_DIR"/"$FNN"tst/exec.tst ]; then
            . "${ORIGO_DIR}/${FNN}tst/exec.tst"
            return 0
        else
            echo "not file: ${ORIGO_DIR}/${FNN}tst/exec.tst"
            return 1
        fi
    fi
    file_utst="${ORIGO_DIR}"/"${FNN}"extst/dir_1/start_check_extst.uts
    if [ "_utst" == "$1" ]; then
        if [ -f ${ORIGO_DIR}/${FNN}tst/${FNN}extst/dir_1/start_check_extst.utst ]; then
            . "${ORIGO_DIR}/${FNN}extst/dir_1/start_check_extst.utst"
            return 0
        else
            echo "not file: ${ORIGO_DIR}/${FNN}extst/dir_1/start_check_extst.utst"
            return 1
        fi
    fi
    if [ "_lst" == "$1" ]; then
        edit_ ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/
        return 0
    fi
    if [ "_deb" == "$1" ]; then
        . ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/_${FNN}/_default/default_deb.sh
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo_deb_ ${echo_gpush_} "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: [g]it [push] {--name} name repo, {--tml} file template
NAME: ${FUNCNAME[0]}()
ARGS: 
\$1
CNTLS:
CNTL inspect : -h, _man, _tst, _utst, _go, _deb, _list
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: ( return 1 | exit 1 | -qq_exit && return 1 | )
WARN: 
DEBUG:
    modeling fail if strong push to MY_ONE, but that impossible (remove flash)
        . ${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_debug/main_strong_my_one/deb_2.sh
EXAMP:
     gpush_ --tml \"${PATH_VAR_DIR}/git/hsc_alt/main.var\" --name \"tgu\"${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    # echo_deb_ ${echo_gpush_} "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE gpush_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gpush_() {
        echo_gpush_=0
        debug_gpush_=0
        unset errmes_gpush_
        unset outmes_gpush_

        unset name_gpush_
        unset tml_gpush_

        # any1_gpush_=0
        qq_exit_gpush_=0
        # unset any2_gpush_
    }
    unset_autoargs_gpush_
    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gpush_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gpush_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gpush_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_gpush_: "$errmes_gpush_""
        echo "$outmes_gpush_: "$outmes_gpush_""
    fi
    exit_gpush_() {
        unset_autoargs_gpush_
        exl_pause "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gpush_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_gpush_}

    #* enterpritation file
    if [ ${debug_gpush_} -eq 1 ]; then
        exl_ --list "${tml_gpush_}" -qq_exit
    else
        exl_ --list "${tml_gpush_}" -qq_exit 1>/dev/null
    fi
    #? mast unset variables interpret from "${tml_gpush_}"

    #* echo all vars
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume

    if [ ${debug_gpush_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gpush_}"
    else
        agv2e nv_from_tml_ "${tml_gpush_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* curr_repo_dir: fs directoria repo
    curr_repo_dir=${dir_repo}/${name_repo}
    echo_deb_ ${echo_gpush_} "${GREEN}\$curr_repo_dir = $curr_repo_dir${NORMAL}" #print variable

    #* if repo dir not exist -> clone add_repo push-CARP
    if ! [ -d ${curr_repo_dir} ]; then

        #! mast be correct define name_repo, tml_file, exl_file, arg_string

        #* name_repo allready exist

        #* tml_file
        tml_file="${tml_gpush_}"

        #* exl_file is clone add_repo push-CARP -> dogit_carp_name.exl
        exl_file="${PATH_EXL_DIR}/git/dogit_carp_name.exl"

        #* arg_string - standart: --tml --name with CNTLs
        #? arg_string="--tml ${tml_file} --name ${name_repo} -verbose -echo -debug -develop1
        arg_string="--tml ${tml_file} --name ${name_repo} -verbose"

        #* start dogit_carp_name.exl
        exl_ --list "${exl_file}"

    fi

    echo_deb_ ${echo_gpush_} "${BLUE}--- wrp_fifs1_ cd ${curr_repo_dir} -d1 ---${NORMAL}" #sistem info mesage
    wrp_fifs1_ cd ${curr_repo_dir} -d1

    #* check pwd tracking in git
    if ! is_gindir_; then

        plt_pause "$(pwd) is not git repo"
        return ${RETURN_WITH_QQ_EXIT}

    fi

    #! TODO: hardcore treat without parse .var file
    arr_names=()
    arr_names+=("push_net_strong")
    arr_names+=("push_local_strong")
    arr_names+=("push_net")
    arr_names+=("push_local")

    local_flag=0
    strong_flag=0

    for name in ${arr_names[@]}; do
        local_flag=0
        strong_flag=0
        echo_deb_ ${echo_gpush_} "${GREEN}\$name = $name${NORMAL}" #print variable
        var=$(eval echo \$$name)
        echo_deb_ ${echo_gpush_} "${GREEN}\$var = $var${NORMAL}" #print variable

        if is_sins "local" "$name"; then
            #* local repo flow
            local_flag=1
        fi

        echo_deb_ ${echo_gpush_} "\$local_flag = $local_flag"

        if is_sins "strong" "$name"; then
            #* strong repo flow
            strong_flag=1
        fi

        echo_deb_ ${echo_gpush_} "\$strong_flag = $strong_flag"

        if [ -n "${var}" ]; then

            for str in $(s2e "${var}" '><'); do

                if [ -n "${str}" ]; then
                    echo_deb_ ${echo_gpush_} "${GREEN}\$str = $str${NORMAL}" #print variable
                    addr=$(sn2e "${str}" '<>' 0)
                    echo_deb_ ${echo_gpush_} "${GREEN}\$addr = $addr${NORMAL}" #print variable
                    remote=$(sn2e "${str}" '<>' 1)
                    echo_deb_ ${echo_gpush_} "${GREEN}\$remote = $remote${NORMAL}" #print variable
                fi

                if [ ${local_flag} -eq 1 ]; then
                    bare_addr=${addr}
                    echo_deb_ ${echo_gpush_} "${GREEN}\$bare_addr = $bare_addr${NORMAL}" #print variable
                    if ! [ -d ${bare_addr} ]; then
                        # dir bare not exist
                        echo_deb_ ${echo_gpush_} "${BLUE}--- mkdir -p ${bare_addr} ---${NORMAL}" #sistem info mesage
                        if ! mkdir -p "${bare_addr}" &>/dev/null; then
                            # impossible create dir bare
                            if [ ${strong_flag} -eq 1 ]; then
                                # strong condition: exit
                                #! check this case: . ${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_debug/main_strong_my_one/deb_2.sh
                                plt_pause "${bare_addr} not mkdir"
                                return 1
                            else
                                # strong condition: exit
                                echo_deb_ ${echo_gpush_} "${RED}--- "${bare_addr}" not avalable ---${NORMAL}" #exit 1
                            fi

                        else
                            wrp_fifs1_ cd "${bare_addr}" -d1

                            echo -e "${HLIGHT}--- git init --bare ---${NORMAL}" #start files
                            git init --bare 1>/dev/null && {

                                echo -e "${BLUE}--- Success git init --bare in ${bare_addr} ---${NORMAL}" #sistem info mesage
                            } || {

                                if [ ${strong_flag} -eq 1 ]; then
                                    plt_pause "${bare_addr} not mkdir"
                                    return 1
                                else
                                    echo -e "${RED}--- fail git init --bare in ${bare_addr} ---${NORMAL}" >&2
                                    continue
                                fi
                            }
                        fi
                    fi

                    if [ -d ${bare_addr}/refs ]; then
                        echo_deb_ ${echo_gpush_} "${BLUE}--- wrp_fifs1_ cd ${curr_repo_dir} -d1 ---${NORMAL}" #sistem info mesage
                        wrp_fifs1_ cd ${curr_repo_dir} -d1
                        echo -e "${HLIGHT}--- git push ${remote} master ---${NORMAL}" #start files
                        #! pointI
                        git push ${remote} master 2>${FN_ERR_FILE} && {

                            echo -e "${BLUE}--- Success: git push ${remote} master ---${NORMAL}" #sistem info mesage

                        } || {
                            cat "${FN_ERR_FILE}"
                            #! see cace: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/_${FNN}/_out/str_pushing_again.res
                            str_pushing_again="(e.g., 'git pull ...') before pushing again"x

                            if [ ${strong_flag} -eq 1 ]; then
                                if cat "${FN_ERR_FILE}" | is_rl_siev_and "${str_pushing_again}"; then
                                    plt_pause "fail: git push ${remote} master -> REMOVE ${addr} ,push to ${remote} again"
                                    return 1
                                fi
                            fi

                            if [ ${strong_flag} -ne 1 ]; then
                                if cat "${FN_ERR_FILE}" | is_rl_siev_and "${str_pushing_again}"; then
                                    echo -e "${RED}--- "NOT successe: git push ${remote} master - ${addr} ,push to ${remote} again" ---${NORMAL}" >REMOVE #exit 1
                                    continue
                                fi
                            fi

                            if [ ${strong_flag} -eq 1 ]; then
                                plt_pause "fail: git push ${remote} master"
                                return 1
                            else
                                echo "fail: git push ${remote} master" >&2
                                continue
                            fi
                        }
                    fi

                else

                    #? ${local_flag} -eq 0 - use net repo

                    if [ ${strong_flag} -eq 1 ] && ! is_ping; then
                        plt_pause "${remote}::  ${bare_addr} net not avalable"
                        return 1
                    fi

                    echo -e "${HLIGHT}--- git push ${remote} master ---${NORMAL}" #start files
                    git push ${remote} master && {

                        echo -e "${BLUE}--- Success: git push ${remote} master ---${NORMAL}" #sistem info mesage

                    } || {

                        if [ ${strong_flag} -eq 1 ]; then
                            exl_pause "fail: git push ${remote} master"
                            return 1
                        else
                            echo -e "${RED}--- fail: git push ${remote} master ---${NORMAL}" >&2
                            continue
                        fi
                    }
                fi

            done

        fi

    done

    #! unset variables from ${tml_gpush_} file
    agv3u nv_from_tml_ ${tml_gpush_}
    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gpush_() {
    #     :
    # }
    # fedora_gpush_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gpush_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gpush_
    # fi
    unset_autoargs_gpush_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gpush_ @

unset filename
