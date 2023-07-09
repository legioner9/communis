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
        amount_arg $# 2 10

        bfn=cp

        f1=f1_"$bfn"__
        local f1_"$bfn"__=0
        # f1_cp__=1
        # echo p1 ${!f1} $f1_cp__
        local nf1_cp__=0
        local f2_cp__=0
        local nf2_cp__=0

        local d1_cp__=0
        local nd1_cp__=0
        local d2_cp__=0
        local nd2_cp__=0

        local src
        local dist
        local flow
        local flag

        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        garg_ ${FUNCNAME[0]} $@

        echo p1 ${!f1} $f1_cp__

        arg1=$1
        arg2=$2
        arg3=$3

        # echo -e "${GREEN}\$arg1 = $arg1${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg2 = $arg2${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg3 = $arg3${NORMAL}" #print variable

        if [ ${arg1:0:1} == "-" ]; then # $1 - flow

            if [ ${arg2:0:1} != "-" ] && [ -n $arg3 ]; then # $2 - arg => $3 - exist
                flow=$arg1
                src=$arg2
                dist=$arg3

                flag="with_flow"
            fi

            if [ ${arg2:0:1} == "-" ] && [ -z $arg3 ]; then # $2 - not arg or $3 - not exist
                qq_exit "arg2: $arg2 not arg or arg3: $arg2 not exist"
            fi
        fi

        if [ ${arg1:0:1} != "-" ]; then # $1 - already arg
            src=$arg1
            dist=$arg2

            flag="without_flow"
        fi

        # src

        if [ -n "${!f1}" ] && [ "${!f1}" -eq 1 ]; then
            if ! [ -f $src ]; then
                qq_exit "$src not exist file"
            fi
        fi

        if [ -n $nf1_cp__ ] && [ $nf1_cp__ -eq 1 ]; then
            if [ -f $src ]; then
                qq_exit "$src exist file"
            fi
        fi

        if [ -n $d1_cp__ ] && [ $d1_cp__ -eq 1 ]; then
            if ! [ -d $srs ]; then
                qq_exit "$src not exist dir"
            fi
        fi

        if [ -n $f1_cp__ ] && [ $nd1_cp__ -eq 1 ]; then
            if [ -d $src ]; then
                qq_exit "$src exist dir"
            fi
        fi

        # dist

        if [ -n $f2_cp__ ] && [ $f2_cp__ -eq 1 ]; then
            if ! [ -f $dist ]; then
                qq_exit "$dist not exist file"
            fi
        fi

        if [ -n $nf2_cp__ ] && [ $nf2_cp__ -eq 1 ]; then
            if [ -f $dist ]; then
                qq_exit "$dist exist file"
            fi
        fi

        if [ -n $d2_cp__ ] && [ $d2_cp__ -eq 1 ]; then
            if ! [ -d $dist ]; then
                qq_exit "$dist not exist dir"
            fi
        fi

        if [ -n $nd2_cp__ ] && [ $nd2_cp__ -eq 1 ]; then
            if [ -d $dist ]; then
                qq_exit "$dist exist dir"
            fi
        fi

        # flags

        if [ "$flag" == "with_flow" ]; then
            echo -e "${BLUE}--- cp $flow $src $dist ---${NORMAL}" #sistem info mesage
            cp $flow $src $dist
            return 0
        fi

        if [ "$flag" == "without_flow" ]; then
            echo -e "${BLUE}--- cp $src $dist ---${NORMAL}" #sistem info mesage
            cp $src $dist
            return 0
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# cp__ @

unset filename
