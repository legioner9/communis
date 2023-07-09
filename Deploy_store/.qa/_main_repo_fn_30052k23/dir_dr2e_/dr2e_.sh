#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_dr2e_/dr2e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

dr2e_() {

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
            MAIN: ls recurce files without (_) exclude .dot_files  [ , only that extend_file] 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1 start recurce dir for echo
            \$2 exend for search
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
    # USE dr2e_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_dr2e_=0
    debug_dr2e_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ $echo_dr2e_ "cntl echo_deb_ mode in ${FNN}"
    if [ $debug_dr2e_ -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi

    if ! [ -d "$1" ]; then
        qq_exit_ "arg 1: $1 is not dir " " $filename ${FNN}" "$LINENO"
    fi

    if [ -n "$2" ]; then

        IFS='
'
        for item in $(ls "$1"); do
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            if [ -z "$item" ]; then
                break
            fi

            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            var="$(is_space_01 "$item")"
            # echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
            if [ "$var" -eq 0 ]; then

                if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ] && [ "$(prs_f -e "$1/$item")" == "$2" ]; then
                    echo "$1/$item"
                fi
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    dr2e_ "$1/$item" "$2"
                fi
            fi
        done

        IFS=$IIFS

    elif [ -z "$2" ]; then

        IFS='
'
        for item in $(ls "$1"); do
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            if [ -z "$item" ]; then
                break
            fi

            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            var="$(is_space_01 "$item")"
            # echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
            if [ "$var" -eq 0 ]; then

                if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    echo "$1/$item"
                fi
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    dr2e_ "$1/$item"
                fi
            fi
        done

        IFS=$IIFS

    fi

    # altlinux_dr2e_() {
    #     :
    # }

    # fedora_dr2e_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_dr2e_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_dr2e_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# dr2e_ @

unset filename
