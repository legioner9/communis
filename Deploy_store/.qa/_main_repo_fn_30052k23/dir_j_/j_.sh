#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_j_/j_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

j_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

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
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            CNTL: [, -echo, -debug ...]
            TAGS:
            FLOW:
            DEBUG:
            EXAMP:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    # amount_arg $# min_args max_args "in $FNN :: $*"
    # USE j_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_j_=0
    debug_j_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_j_ "cntl echo_deb_ mode in ${FNN}"
    if [ $debug_j_ -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi

    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("edit_ \${COMMUNIS_PATH}")
    res+=("edit_ ${COMMUNIS_PATH}")
    arr+=("edit_ \$HOME/start/fonsh")
    res+=("edit_ $HOME/start/fonsh")
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
        j_
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        j_
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        j_
        ;;

    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        ${res[4]}
        j_
        ;;

    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        ${res[5]}
        j_
        ;;

    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        j_
        ;;

    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        ${res[7]}
        j_
        ;;

    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        ${res[8]}
        j_
        ;;

    "${arr[9]}")
        echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
        ${res[9]}
        j_
        ;;

    "${arr[10]}")
        echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
        ${res[10]}
        j_

        ;;
    "${arr[11]}")
        echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
        ${res[11]}
        j_
        ;;

    "${arr[12]}")
        echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
        ${res[12]}
        j_
        ;;

    "${arr[13]}")
        echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
        ${res[13]}
        j_
        ;;

    "${arr[14]}")
        echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
        ${res[14]}
        j_
        ;;

    "${arr[15]}")
        echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
        ${res[15]}
        j_
        ;;

    "${arr[16]}")
        echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        ${res[16]}
        j_
        ;;

    "${arr[17]}")
        echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        ${res[17]}
        j_
        ;;

    "${arr[18]}")
        echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
        ${res[18]}
        j_
        ;;

    "${arr[19]}")
        echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        ${res[19]}
        j_
        ;;

    "${arr[20]}")
        echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        ${res[20]}
        j_

        ;;

    \
        \
        *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac

    # altlinux_j_() {
    #     :
    # }

    # fedora_j_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_j_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_j_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# j_ @

unset filename
