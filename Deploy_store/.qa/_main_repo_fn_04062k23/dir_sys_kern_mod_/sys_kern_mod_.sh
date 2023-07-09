#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_sys_kern_mod_/sys_kern_mod_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

sys_kern_mod_() {

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
    # snip itis "fn: ${FNN}, with_args: $*, filename: $filename, line:_$LINENO"
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
MAIN: 
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
    #? USE sys_kern_mod_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_sys_kern_mod_() {
        echo_sys_kern_mod_=0
        debug_sys_kern_mod_=0
        unset errmes_sys_kern_mod_
        unset outmes_sys_kern_mod_
        # any1_sys_kern_mod_=0
        # unset any2_sys_kern_mod_
    }
    unset_autoargs_sys_kern_mod_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_sys_kern_mod_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_sys_kern_mod_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_sys_kern_mod_: "$errmes_sys_kern_mod_""
        echo "$outmes_sys_kern_mod_: "$outmes_sys_kern_mod_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    sys_kern_mod_lsmod_grep_() {

        echo -e "${BLUE}--- enter name kern module installing for search: ---${NORMAL}" #sistem info mesage

        unset arg
        arg=$(v_read_)

        echo -e "${RED}--- start: lsmod | grep $arg ---${NORMAL}" #exit 1
        lsmod | grep $arg
        echo -e "${RED}--- end ---${NORMAL}" #exit 1

    }

    sys_kern_mod_modinfo_grep_() {

        echo -e "${BLUE}--- enter name kern module information for search: ---${NORMAL}" #sistem info mesage

        unset arg
        arg=$(v_read_)

        echo -e "${RED}--- modinfo $arg ---${NORMAL}" #exit 1
        sudo modinfo $arg
        echo -e "${RED}--- end ---${NORMAL}" #exit 1

    }

    sys_kern_mod_modprobe_grep_() {

        echo -e "${BLUE}--- enter name kern module for prob: ---${NORMAL}" #sistem info mesage

        unset arg
        arg=$(v_read_)

        echo -e "${RED}--- sudo modprobe $arg ---${NORMAL}" #exit 1
        sudo modprobe $arg
        echo -e "${RED}--- end ---${NORMAL}" #exit 1

    }

    sys_kern_mod_modprobe_rm_grep_() {

        echo -e "${BLUE}--- enter name kern module for prob rm: ---${NORMAL}" #sistem info mesage

        unset arg
        arg=$(v_read_)

        qq_pause "sudo modprobe -r $arg ?" " $filename ${FNN}" "$LINENO"

        echo -e "${RED}--- sudo modprobe -r $arg ---${NORMAL}" #exit 1
        sudo modprobe -r $arg
        echo -e "${RED}--- end ---${NORMAL}" #exit 1

    }

    sys_kern_mod_insmod_grep_() {

        echo -e "${BLUE}--- enter full_path for kern module for insmod: ---${NORMAL}" #sistem info mesage

        unset arg
        arg=$(v_read_)

        echo -e "${RED}--- sudo insmod $arg ---${NORMAL}" #exit 1
        sudo insmod $arg
        echo -e "${RED}--- end ---${NORMAL}" #exit 1

    }

    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("all modules: lsmod")
    res+=("lsmod")
    arr+=("is module ... run?")
    res+=("sys_kern_mod_lsmod_grep_")
    arr+=("information about ... module")
    res+=("sys_kern_mod_modinfo_grep_")
    arr+=("modprobe ...")
    res+=("sys_kern_mod_modprobe_grep_")
    arr+=("modprobe rm ...")
    res+=("sys_kern_mod_modprobe_rm_grep_")
    arr+=("insmod ...")
    res+=("sys_kern_mod_insmod_grep_")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")

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
        sys_kern_mod_
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        sys_kern_mod_
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        sys_kern_mod_
        ;;

    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        ${res[4]}
        sys_kern_mod_
        ;;

    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        ${res[5]}
        sys_kern_mod_
        ;;

    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        sys_kern_mod_
        ;;

    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        ${res[7]}
        sys_kern_mod_
        ;;

    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        ${res[8]}
        sys_kern_mod_
        ;;

    "${arr[9]}")
        echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
        ${res[9]}
        sys_kern_mod_
        ;;

    "${arr[10]}")
        echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
        ${res[10]}
        sys_kern_mod_

        ;;
    "${arr[11]}")
        echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
        ${res[11]}
        sys_kern_mod_
        ;;

    "${arr[12]}")
        echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
        ${res[12]}
        sys_kern_mod_
        ;;

    "${arr[13]}")
        echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
        ${res[13]}
        sys_kern_mod_
        ;;

    "${arr[14]}")
        echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
        ${res[14]}
        sys_kern_mod_
        ;;

    "${arr[15]}")
        echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
        ${res[15]}
        sys_kern_mod_
        ;;

    "${arr[16]}")
        echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        ${res[16]}
        sys_kern_mod_
        ;;

    "${arr[17]}")
        echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        ${res[17]}
        sys_kern_mod_
        ;;

    "${arr[18]}")
        echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
        ${res[18]}
        sys_kern_mod_
        ;;

    "${arr[19]}")
        echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        ${res[19]}
        sys_kern_mod_
        ;;

    "${arr[20]}")
        echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        ${res[20]}
        sys_kern_mod_

        ;;

    \
        \
        *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_sys_kern_mod_() {
    #     :
    # }
    # fedora_sys_kern_mod_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_sys_kern_mod_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_sys_kern_mod_
    # fi
    unset_autoargs_sys_kern_mod_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in sys_kern_mod_ $filename $LINENO"

}

# sys_kern_mod_ @

unset filename
