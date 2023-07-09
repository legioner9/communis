#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f2e_/f2e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f2e_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

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
            MAIN: cat file without (# | EMPTY)
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1 cat_path file
            \$2 control char (eg. p@fget in manc flow)
            CNTL: [, -echo, -deb ...]
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
    # USE f2e_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_f2e_=0
    deb_f2e_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_f2e_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
    if [ $deb_f2e_ -eq 1 ]; then
        echo "DEBUG MODE in ${FUNCNAME[0]}"
    fi

    IFS='
'
    if [ -f "$1" ]; then

        if [ -n "$2" ]; then

            for item in $(cat "$1"); do

                if [ -z $item ]; then
                    return 0
                fi

                # echo $item
                fs=${item:0:1}
                fs2=${item:1:1}

                if [ "$fs" == "#" ] && [ "$item" != "" ] && [ "$fs2" == "$2" ]; then
                    res_item=${item:2}
                    echo "$res_item"
                fi

            done

        elif [ -z "$2" ]; then

            for item in $(cat "$1"); do

                # echo $item
                fs=${item:0:1}
                if [ "$fs" != "#" ] && [ "$item" != "" ]; then
                    echo "$item"
                fi

            done

        fi

    else
        qq_exit "\$1=$1 : not a file" " $filename ${FNN}" "$LINENO"
    fi

    IFS=$IIFS

    # altlinux_f2e_() {
    #     :
    # }

    # fedora_f2e_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_f2e_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_f2e_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# f2e_ @

unset filename
