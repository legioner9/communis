#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_cp__/cp__.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cp__() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: modificated bash [cp] function with fifs_bash.ifs
            NAME: ${FUNCNAME[0]}()
            ARGS: [ flow_chars {singl word}, ] arg1 arg2 [, (-e1|-e2|-ne1|-ne2)]
            TAGS:
            FLOW:${NORMAL}"
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

        # out_args=($@)

        # echo -e "${GREEN}\$@ = $@${NORMAL}"                         #print variable
        # echo -e "${GREEN}\${out_args[@]} = ${out_args[*]}${NORMAL}" #print variable


        wrp_fifs2_ cp $*

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# cp__ @

unset filename
