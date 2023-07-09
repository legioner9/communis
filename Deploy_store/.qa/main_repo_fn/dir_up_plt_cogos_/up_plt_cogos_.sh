#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_up_plt_cogos_/up_plt_cogos_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

up_plt_cogos_() {

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

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    # amount_arg $# min_args max_args
    # USE up_plt_cogos_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_up_plt_cogos_=0
    deb_up_plt_cogos_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_up_plt_cogos_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
    if [ $deb_up_plt_cogos_ -eq 1 ]; then
        echo "DEBUG MODE in ${FUNCNAME[0]}"
    fi

    if [ -f "/home/st/.plt_cogos" ]; then
        PLT_COGOS=$(cat "/home/st/.plt_cogos")
        if [ -n "$PLT_COGOS" ]; then
            # echo "PLT_COGOS may be strong: fedora, altlinux"
            if [ "$PLT_COGOS" != "fedora" ] && [ "$PLT_COGOS" != "altlinux" ]; then
                read -p "PLT_COGOS NOT = fedora or altlinux: Enter to return 1 or ^C to interrapt"
                return 1
            fi
            echo "PLT_COGOS=$PLT_COGOS"
        else
            read -p "PLT_COGOS is empty: Enter to return 1 or ^C to interrapt"
            return 1
        fi
    else
        read -p "/home/st/.PLT_COGOS not exist: Enter to return 1 or ^C to interrapt"
        return 1
    fi

    export PLT_COGOS

    # altlinux_up_plt_cogos_() {
    #     :
    # }

    # fedora_up_plt_cogos_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_up_plt_cogos_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_up_plt_cogos_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# up_plt_cogos_ @

unset filename
