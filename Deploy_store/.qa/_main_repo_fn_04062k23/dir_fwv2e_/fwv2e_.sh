#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_fwv2e_/fwv2e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fwv2e_() {

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
            MAIN: echo file with glob variables
            NAME: ${FUNCNAME[0]}()
            ARGS:
            CNTL: [, -echo, -deb ...]
            TAGS:
            FLOW:
            \$1 full_path fale.list with variables
            DEBUG:
            file://${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_using/v1/creo_fs_2.sh
            EXAMP:
            cat fale.list
                \"\$rdir\"/res
                --tml
                \"\$rdir\"/f.tml 
                --vi0 
                \"\$filename\" 
                --vr0 
                \"{vph0}\"${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    amount_arg $# 1 1 "in $FNN :: $*"
    # USE fwv2e_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_fwv2e_=0
    deb_fwv2e_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_fwv2e_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
    if [ $deb_fwv2e_ -eq 1 ]; then
        echo "DEBUG MODE in ${FUNCNAME[0]}"
    fi

    for item in $(f2e "$1"); do

        echo $(eval echo "$item")

    done

    # altlinux_fwv2e_() {
    #     :
    # }

    # fedora_fwv2e_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_fwv2e_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_fwv2e_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# fwv2e_ @

unset filename
