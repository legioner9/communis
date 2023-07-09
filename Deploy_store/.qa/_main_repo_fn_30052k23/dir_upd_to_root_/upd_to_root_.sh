#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_upd_to_root_/upd_to_root_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

upd_to_root_() {

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
            CNTL: [, -echo, -deb ...]
            TAGS:
            FLOW:
            DEBUG:
            EXAMP:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    # echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    # echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    # echo -e "${GREEN}args = $*${NORMAL}"             #print variable

    # echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    arr=()
    res=()
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")

    case $1 in

    "_0")
        echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
        magic_nm_ "$FNN"

        ;;

    *)
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        cd_h "$PPWD" 1>/dev/null

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        amount_arg $# 1 2
        # USE upd_to_root_() -echo -deb

        # path_name="$1"

        # if [ $(is_root_01 "$1") -ne 1 ]; then
        #     path_name=$PPWD/$path_name
        # fi

        echo_upd_to_root_=0
        deb_upd_to_root_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_upd_to_root_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
        if [ $deb_upd_to_root_ -eq 1 ]; then
            echo "DEBUG MODE in ${FUNCNAME[0]}"
        fi

        local dir="$1"
        local add="$2"

        if [ "$(is_root_01_ $dir)" -eq 0 ]; then
            qq_exit "in ${FUNCNAME[0]}: \$dir: $dir is NOT root" "$filename" "$LINENO"
        fi

        if [ -n "$add" ] && [ "$(is_root_01_ $add)" -eq 1 ]; then
            qq_exit "in ${FUNCNAME[0]} : \$add: $add is root" "$filename" "$LINENO"
        fi

        if [ "$(is_root_01_ $dir)" -eq 1 ]; then

            if [ -n "$add" ]; then
                echo "$dir"/"$add"
            fi

            if [ -z "$add" ]; then
                echo "$dir"
            fi

        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        cd "$PPWD"

        ;;

    esac

}

# upd_to_root_ @

unset filename
