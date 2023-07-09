#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gflow_/gflow_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gflow_() {

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
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS: [g]it work[flow] menu - debug and demonstration gish using
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
    #? USE gflow_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_gflow_() {
        echo_gflow_=0
        debug_gflow_=0
        unset errmes_gflow_
        unset outmes_gflow_
        # any1_gflow_=0
        qq_exit_gflow_=0
        # unset any2_gflow_
    }
    unset_autoargs_gflow_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_gflow_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_gflow_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_gflow_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_gflow_: "$errmes_gflow_""
        echo "$outmes_gflow_: "$outmes_gflow_""
    fi
    exit_gflow_() {
        unset_autoargs_gflow_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_gflow_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    
        echo -e "${BLUE}--- exec ${FNN} (num_menu - 1) ---${NORMAL}" #started functions
        arr=()
        res=()
        arr+=("leave menu")
        res+=("echo bye)))")
        # arr+=("aaaaaaaaa")
        # res+=("bbbbbbbbb)")
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
            gflow_ "$@"
            ;;
    
        "${arr[2]}")
            echo -e "${CYAN}--- ${res[2]} ---${NORMAL}" #started functions
            ${res[2]}
            gflow_ "$@"
            ;;
    
        "${arr[3]}")
            echo -e "${CYAN}--- ${res[3]} ---${NORMAL}" #started functions
            ${res[3]}
            gflow_ "$@"
            ;;
    
        "${arr[4]}")
            echo -e "${CYAN}--- ${res[4]} ---${NORMAL}" #started functions
            ${res[4]}
            gflow_ "$@"
            ;;
    
        "${arr[5]}")
            echo -e "${CYAN}--- ${res[5]} ---${NORMAL}" #started functions
            ${res[5]}
            gflow_ "$@"
            ;;
    
        "${arr[6]}")
            echo -e "${CYAN}--- ${res[6]} ---${NORMAL}" #started functions
            ${res[6]}
            gflow_ "$@"
            ;;
    
        "${arr[7]}")
            echo -e "${CYAN}--- ${res[7]} ---${NORMAL}" #started functions
            ${res[7]}
            gflow_ "$@"
            ;;
    
        "${arr[8]}")
            echo -e "${CYAN}--- ${res[8]} ---${NORMAL}" #started functions
            ${res[8]}
            gflow_ "$@"
            ;;
    
        "${arr[9]}")
            echo -e "${CYAN}--- ${res[9]} ---${NORMAL}" #started functions
            ${res[9]}
            gflow_ "$@"
            ;;
    
        "${arr[10]}")
            echo -e "${CYAN}--- ${res[10]} ---${NORMAL}" #started functions
            ${res[10]}
            gflow_ "$@"
    
            ;;
        "${arr[11]}")
            echo -e "${CYAN}--- ${res[11]} ---${NORMAL}" #started functions
            ${res[11]}
            gflow_ "$@"
            ;;
    
        "${arr[12]}")
            echo -e "${CYAN}--- ${res[12]} ---${NORMAL}" #started functions
            ${res[12]}
            gflow_ "$@"
            ;;
    
        "${arr[13]}")
            echo -e "${CYAN}--- ${res[13]} ---${NORMAL}" #started functions
            ${res[13]}
            gflow_ "$@"
            ;;
    
        "${arr[14]}")
            echo -e "${CYAN}--- ${res[14]} ---${NORMAL}" #started functions
            ${res[14]}
            gflow_ "$@"
            ;;
    
        "${arr[15]}")
            echo -e "${CYAN}--- ${res[15]} ---${NORMAL}" #started functions
            ${res[15]}
            gflow_ "$@"
            ;;
    
        "${arr[16]}")
            echo -e "${CYAN}--- ${res[16]} ---${NORMAL}" #started functions
            ${res[16]}
            gflow_ "$@"
            ;;
    
        "${arr[17]}")
            echo -e "${CYAN}--- ${res[17]} ---${NORMAL}" #started functions
            ${res[17]}
            gflow_ "$@"
            ;;
    
        "${arr[18]}")
            echo -e "${CYAN}--- ${res[18]} ---${NORMAL}" #started functions
            ${res[18]}
            gflow_ "$@"
            ;;
    
        "${arr[19]}")
            echo -e "${CYAN}--- ${res[19]} ---${NORMAL}" #started functions
            ${res[19]}
            gflow_ "$@"
            ;;
    
        "${arr[20]}")
            echo -e "${CYAN}--- ${res[20]} ---${NORMAL}" #started functions
            ${res[20]}
            gflow_ "$@"
    
            ;;
    
        *)
            echo -e "${BLUE}---error dilectus ---${NORMAL}" #sistem info mesage
            ;;
        esac

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_gflow_() {
    #     :
    # }
    # fedora_gflow_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_gflow_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_gflow_
    # fi
    unset_autoargs_gflow_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# gflow_ @

unset filename
