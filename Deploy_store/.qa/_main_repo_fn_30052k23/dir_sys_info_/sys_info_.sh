#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_sys_info_/sys_info_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

sys_info_() {

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
    # snip itis "fn: ${FNN}, with_args: $*, filename: $filename, line:_$LINENO"
    #{def_const_reciver}

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
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: menu system info 
NAME: ${FUNCNAME[0]}()
ARGS:
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE sys_info_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_sys_info_() {
        echo_sys_info_=0
        debug_sys_info_=0
        unset errmes_sys_info_
        unset outmes_sys_info_
        # any1_sys_info_=0
        # unset any2_sys_info_
    }
    unset_autoargs_sys_info_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_sys_info_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_sys_info_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_sys_info_: "$errmes_sys_info_""
        echo "$outmes_sys_info_: "$outmes_sys_info_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    sys_info_lshw_tree_() {

        # echo -e "${BLUE}--- enter name kern module information for search: ---${NORMAL}" #sistem info mesage

        # unset arg
        # arg=$(v_read_)

        echo -e "${RED}--- sudo lshw | grep \* ---${NORMAL}" #exit 1
        sudo lshw | grep \*
        echo -e "${RED}--- end ---${NORMAL}" #exit 1

    }

    arr=()
    res=()
    arr+=("leave menu - * chageble to time, ")
    res+=("echo bye)))")
    arr+=("cpuinfo: /proc/cpuinfo")
    res+=("cat /proc/cpuinfo")
    arr+=("version: /proc/version")
    res+=("cat /proc/version")
    arr+=("hostname*: /proc/sys/kernel/hostname")
    res+=("cat /proc/sys/kernel/hostname")
    arr+=("open once time file-max*: /proc/sys/fs/file-max")
    res+=("cat /proc/sys/fs/file-max")
    arr+=("ip_forward*: /proc/sys/net/ipv4/ip_forward")
    res+=("cat /proc/sys/net/ipv4/ip_forward")
    arr+=("kernel modules: /proc/modules")
    res+=("cat /proc/modules")
    arr+=("lspci")
    res+=("lspci")
    arr+=("lsusb")
    res+=("lsusb")
    arr+=("lscpu")
    res+=("lscpu")
    arr+=("lsscsi: hdd, optical, cd-rom")
    res+=("lsscsi -s")
    arr+=("lshw all dev info (tree wiew)")
    res+=("sys_info_lshw_tree_")
    arr+=("lshw all short")
    res+=("sudo lshw -short")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")
    # arr+=("11111")
    # res+=("22222")

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        dilectus=$item
        break

    done

    case $dilectus in

    "${arr[0]}")
        echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
        ${res[0]}

        ;;
    "${arr[1]}")
        echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
        ${res[1]}
        sys_info_ "$@"
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        sys_info_ "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        sys_info_ "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        ${res[4]}
        sys_info_ "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        ${res[5]}
        sys_info_ "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        sys_info_ "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        ${res[7]}
        sys_info_ "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        ${res[8]}
        sys_info_ "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
        ${res[9]}
        sys_info_ "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
        ${res[10]}
        sys_info_ "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
        ${res[11]}
        sys_info_ "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
        ${res[12]}
        sys_info_ "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
        ${res[13]}
        sys_info_ "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
        ${res[14]}
        sys_info_ "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
        ${res[15]}
        sys_info_ "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        ${res[16]}
        sys_info_ "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        ${res[17]}
        sys_info_ "$@"
        ;;

    "${arr[18]}")
        echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
        ${res[18]}
        sys_info_ "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        ${res[19]}
        sys_info_ "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        ${res[20]}
        sys_info_ "$@"

        ;;

    \
        \
        *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_sys_info_() {
    #     :
    # }
    # fedora_sys_info_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_sys_info_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_sys_info_
    # fi
    unset_autoargs_sys_info_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in sys_info_ $filename $LINENO"

}

# sys_info_ @

unset filename
