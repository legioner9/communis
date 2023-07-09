#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_gdel_local_bare_/gdel_local_bare_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gdel_local_bare_() {

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
    local FN_ERR_FILE="${PATH_FN}/dir_${FNN}/_${FNN}/_out/err.res"
    wrp_fifs1_ rm -f "${FN_ERR_FILE}" -cf1
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null
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
MAIN: delite all local bare
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

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE gdel_local_bare_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gdel_local_bare_() {
        echo_gdel_local_bare_=0
        debug_gdel_local_bare_=0
        unset errmes_gdel_local_bare_
        unset outmes_gdel_local_bare_
        # any1_gdel_local_bare_=0
        qq_exit_gdel_local_bare_=0
        # unset any2_gdel_local_bare_
    }
    unset_autoargs_gdel_local_bare_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gdel_local_bare_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gdel_local_bare_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gdel_local_bare_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_gdel_local_bare_}: ${errmes_gdel_local_bare_}"
        echo "\${outmes_gdel_local_bare_}: ${outmes_gdel_local_bare_}"
    fi
    exit_gdel_local_bare_() {
        unset_autoargs_gdel_local_bare_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gdel_local_bare_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_gdel_local_bare_}

    #* enterpritation file
    if [ ${debug_gdel_local_bare_} -eq 1 ]; then
        exl_ --list "${tml_gdel_local_bare_}" -qq_exit
    else
        exl_ --list "${tml_gdel_local_bare_}" -qq_exit 1>/dev/null
    fi
    #? mast unset variables interpret from "${tml_gdel_local_bare_}"

    #* echo all vars
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume
    if [ ${debug_gdel_local_bare_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_gdel_local_bare_}"
    else
        agv2e nv_from_tml_ "${tml_gdel_local_bare_}" 1>/dev/null
    fi
    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* curr_repo_dir: fs directoria repo
    curr_repo_dir=${dir_repo}/${name_repo}
    echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$curr_repo_dir = $curr_repo_dir${NORMAL}" #print variable

    echo_deb_ ${echo_gdel_local_bare_} "${BLUE}--- wrp_fifs1_ cd ${curr_repo_dir} -d1 ---${NORMAL}" #sistem info mesage
    wrp_fifs1_ cd ${curr_repo_dir} -d1

    #* check pwd tracking in git
    if ! is_gindir_; then

        qq_exit_ "$(pwd) is not git repo"
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
        echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$name = $name${NORMAL}" #print variable
        var=$(eval echo \$$name)
        echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$var = $var${NORMAL}" #print variable

        if is_sins "local" "$name"; then
            #* local repo flow
            local_flag=1
        fi

        echo_deb_ ${echo_gdel_local_bare_} "\$local_flag = $local_flag"

        if is_sins "strong" "$name"; then
            #* strong repo flow
            strong_flag=1
        fi

        echo_deb_ ${echo_gdel_local_bare_} "\$strong_flag = $strong_flag"

        if [ -n "${var}" ]; then

            for str in $(s2e "${var}" '><'); do

                if [ -n "${str}" ]; then
                    echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$str = $str${NORMAL}" #print variable
                    addr=$(sn2e "${str}" '<>' 0)
                    echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$addr = $addr${NORMAL}" #print variable
                    remote=$(sn2e "${str}" '<>' 1)
                    echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$remote = $remote${NORMAL}" #print variable
                fi

                if [ ${local_flag} -eq 1 ]; then
                    bare_addr=${addr}
                    echo_deb_ ${echo_gdel_local_bare_} "${GREEN}\$bare_addr = $bare_addr${NORMAL}" #print variable

                    echo -e "${BLUE}--- wrp_fifs1_ rm -rI ${addr} -d1 ---${NORMAL}" #sistem info mesage
                    wrp_fifs1_ rm -r ${addr} -cd1

                fi

            done

        fi

    done

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gdel_local_bare_() {
    #     :
    # }
    # fedora_gdel_local_bare_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gdel_local_bare_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gdel_local_bare_
    # fi
    unset_autoargs_gdel_local_bare_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gdel_local_bare_ @

unset filename
