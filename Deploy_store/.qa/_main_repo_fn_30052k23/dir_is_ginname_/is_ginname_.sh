#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_is_ginname_/is_ginname_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

is_ginname_() {

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
MAIN: in root dir extract addr from pull_net_strong or pull_local_strong from --tml files and compare with $(grem2url "\$remote")
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
    #? USE is_ginname_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_is_ginname_() {
        echo_is_ginname_=0
        debug_is_ginname_=0
        unset errmes_is_ginname_
        unset outmes_is_ginname_

        unset tml_is_ginname_
        unset name_is_ginname_

        # any1_is_ginname_=0
        qq_exit_is_ginname_=0
        # unset any2_is_ginname_
    }
    unset_autoargs_is_ginname_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    # garg_ ${FUNCNAME[0]} $@
    QQ_EXIT=${qq_exit_is_ginname_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_is_ginname_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_is_ginname_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\$errmes_is_ginname_: "$errmes_is_ginname_""
        echo "\$outmes_is_ginname_: "$outmes_is_ginname_""
    fi
    exit_is_ginname_() {
        unset_autoargs_is_ginname_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_is_ginname_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #* >>>>>>>>>> create variable $name_repo to use at ${tml_gclone_} enterpritation file >>>>>>>>>>
    name_repo=${name_is_ginname_}
    #* enterpritation file - resive global variables containg at file

    if [ ${debug_is_ginname_} -eq 1 ]; then
        exl_ --list "${tml_is_ginname_}" -qq_exit
    else
        exl_ --list "${tml_is_ginname_}" -qq_exit 1>/dev/null
    fi

    #* echo all vars for controls
    # gadd_remote_all_var2e
    #? nv_from_tml_ "${tml_gadd_remote_}" echo name var from "${tml_gadd_remote_}" -> agv2e echo name=volume
    if [ ${debug_is_ginname_} -eq 1 ]; then
        agv2e nv_from_tml_ "${tml_is_ginname_}"
    else
        agv2e nv_from_tml_ "${tml_is_ginname_}" 1>/dev/null
    fi

    #* <<<<<<<<<< create variable $name_repo to use at ${tml_gclone_} enterpritation file <<<<<<<<<<

    #* fsiev2e: call only variables wich name contane "pull" "strong" - they value is pair addr<>remote >>>>>>>>>>
    for var_name in $(fsiev2e ${PATH_VAR_DIR}/git/var.list "pull" "strong"); do
        echo_deb_ ${echo_is_ginname_} "\${var_name} = ${var_name}"

        var_val=$(eval echo \$$var_name)
        echo_deb_ ${echo_is_ginname_} "\${var_name} = ${var_name}"

        if [ -n "$var_val" ]; then

            #* var_val is addr1<>remote1[]addr2<>remote2
            #* echo $var_val
            #* pair is addr<>remote
            for pair in $(s2e "${var_val}" '><'); do

                echo_deb_ ${echo_is_ginname_} "\${pair} = ${pair}"

                addr=$(sn2e "${pair}" '<>' 0)
                remote=$(sn2e "${pair}" '<>' 1)
                grem=$(grem2url "$remote")

                echo_deb_ ${echo_is_ginname_} "\${addr} = ${addr}"
                echo_deb_ ${echo_is_ginname_} "\${remote} = ${remote}"
                echo_deb_ ${echo_is_ginname_} "\${grem} = ${grem}"

                if [ -z "${grem}" ]; then
                    return 1
                fi

                if [ ${addr} == "$(grem2url "$remote")" ]; then
                    return 0
                else
                    return 1
                fi

            done

        fi

    done
    #* fsiev2e: call only variables wich name contane "clone" "pull" "push" - they value is pair addr<>remote <<<<<<<<<<

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_is_ginname_() {
    #     :
    # }
    # fedora_is_ginname_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_is_ginname_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_is_ginname_
    # fi
    unset_autoargs_is_ginname_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# is_ginname_ @

unset filename
