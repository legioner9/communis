#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_up_hostos_/up_hostos_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

up_hostos_() {

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

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    # amount_arg $# min_args max_args
    # USE up_hostos_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_up_hostos_=0
    deb_up_hostos_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_up_hostos_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
    if [ $deb_up_hostos_ -eq 1 ]; then
        echo "DEBUG MODE in ${FUNCNAME[0]}"
    fi

    if [ -f "$HOME/.hostos" ]; then
            HOSTOS=$(cat "$HOME/.hostos")
            if [ -n "$HOSTOS" ]; then
                # echo "HOSTOS may be strong: fedora, altlinux"
                if [ "$HOSTOS" != "fedora" ] && [ "$HOSTOS" != "altlinux" ]; then
                    read -p "HOSTOS NOT = fedora or altlinux: Enter to exit or ^C to interrapt"
                    exit 1
                fi
                echo "HOSTOS=$HOSTOS"
            else
                read -p "HOSTOS is empty: Enter to exit or ^C to interrapt"
                exit 1
            fi
        else
            read -p "$HOME/.HOSTOS not exist: Enter to exit or ^C to interrapt"
            exit 1
        fi

        export HOSTOS


    # altlinux_up_hostos_() {
    #     :
    # }

    # fedora_up_hostos_() {
    #     :
    # }

    # if [ $HOSTOS == "altlinux" ]; then
    #     altlinux_up_hostos_
    # fi

    # if [ $HOSTOS == "fedora" ]; then
    #     fedora_up_hostos_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# up_hostos_ @

unset filename
