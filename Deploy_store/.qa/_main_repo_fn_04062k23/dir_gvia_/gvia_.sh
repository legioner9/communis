#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gvia_/gvia_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gvia_() {

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
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
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
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: see gvia_ _man
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
    c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE gvia_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gvia_() {
        echo_gvia_=0
        debug_gvia_=0
        unset errmes_gvia_
        unset outmes_gvia_
        # any1_gvia_=0
        qq_exit_gvia_=0
        # unset any2_gvia_
    }
    unset_autoargs_gvia_
    [[ 1 -eq ${verbose} ]] || {
        garg_ ${FUNCNAME[0]} $@
    } && {
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    }
    QQ_EXIT=${qq_exit_gvia_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gvia_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gvia_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "\${errmes_gvia_}: ${errmes_gvia_}"
        echo "\${outmes_gvia_}: ${outmes_gvia_}"
    fi
    exit_gvia_() {
        unset_autoargs_gvia_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gvia_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    #! res - is functions from "$ORIGO_DIR/_$FNN/_fn/"

    echo -e "${BLUE}--- exec ${FNN} (num_menu - 1) ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("owerlook gish")
    res+=("gvia_owerlook_gish")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb)")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb)")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb)")

    if [ $(num_01 $1) -eq 1 ] && [ $1 -lt ${#arr[@]} ]; then

        eval \${res[$1]}
        return 0

    fi

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        dilectus=$item
        break

    done

    case $dilectus in

    "${arr[0]}")
        echo -e "${CYAN}--- ${res[0]} ---${NORMAL}" #started functions
        ${res[0]}

        ;;
    "${arr[1]}")
        echo -e "${CYAN}--- ${res[1]} ---${NORMAL}" #started functions
        ${res[1]}
        gvia_ "$@"
        ;;

    "${arr[2]}")
        echo -e "${CYAN}--- ${res[2]} ---${NORMAL}" #started functions
        ${res[2]}
        gvia_ "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}--- ${res[3]} ---${NORMAL}" #started functions
        ${res[3]}
        gvia_ "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}--- ${res[4]} ---${NORMAL}" #started functions
        ${res[4]}
        gvia_ "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}--- ${res[5]} ---${NORMAL}" #started functions
        ${res[5]}
        gvia_ "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}--- ${res[6]} ---${NORMAL}" #started functions
        ${res[6]}
        gvia_ "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}--- ${res[7]} ---${NORMAL}" #started functions
        ${res[7]}
        gvia_ "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}--- ${res[8]} ---${NORMAL}" #started functions
        ${res[8]}
        gvia_ "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}--- ${res[9]} ---${NORMAL}" #started functions
        ${res[9]}
        gvia_ "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}--- ${res[10]} ---${NORMAL}" #started functions
        ${res[10]}
        gvia_ "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}--- ${res[11]} ---${NORMAL}" #started functions
        ${res[11]}
        gvia_ "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}--- ${res[12]} ---${NORMAL}" #started functions
        ${res[12]}
        gvia_ "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}--- ${res[13]} ---${NORMAL}" #started functions
        ${res[13]}
        gvia_ "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}--- ${res[14]} ---${NORMAL}" #started functions
        ${res[14]}
        gvia_ "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}--- ${res[15]} ---${NORMAL}" #started functions
        ${res[15]}
        gvia_ "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}--- ${res[16]} ---${NORMAL}" #started functions
        ${res[16]}
        gvia_ "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}--- ${res[17]} ---${NORMAL}" #started functions
        ${res[17]}
        gvia_ "$@"
        ;;

    "${arr[18]}")
        echo -e "${CYAN}--- ${res[18]} ---${NORMAL}" #started functions
        ${res[18]}
        gvia_ "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}--- ${res[19]} ---${NORMAL}" #started functions
        ${res[19]}
        gvia_ "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}--- ${res[20]} ---${NORMAL}" #started functions
        ${res[20]}
        gvia_ "$@"

        ;;

    *)
        echo -e "${BLUE}---error dilectus ---${NORMAL}" #sistem info mesage
        ;;
    esac

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gvia_() {
    #     :
    # }
    # fedora_gvia_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gvia_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gvia_
    # fi
    unset_autoargs_gvia_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gvia_ @

unset filename
