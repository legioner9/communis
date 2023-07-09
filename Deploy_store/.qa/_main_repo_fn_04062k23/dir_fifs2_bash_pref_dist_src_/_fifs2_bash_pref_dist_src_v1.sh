#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_fifs2_bash_pref_dist_src_/fifs2_bash_pref_dist_src_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fifs2_bash_pref_dist_src_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: provide fifs2 interface after exec garg_ with (-f1|-f2|-d1|-d2|-nf1|-nf2|-nd1|-nd2) 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
                \$1: \${FUNCNAME[0]
                \$2: dist (-f2, -d2)
                \$3: src (-f1, -d1)
            TAGS:
            FLOW:${PATH_MAIN_REPO_FN_DIR}/dir_cp__/_cp__with_ptototype_fifs2.sh${NORMAL}"
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
        # amount_arg $# min_args max_args
        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null

        amount_arg $# 3 3

        local pref=$1
        local dist=$2
        local src=$3

        # src

        local f1=f1_$pref
        if [ -n "${!f1}" ] && [ "${!f1}" -eq 1 ]; then
            if ! [ -f $src ]; then
                qq_exit "$src not exist file"
            fi
        fi

        local nf1=nf1_$pref
        if [ -n ${!nf1} ] && [ ${!nf1} -eq 1 ]; then
            if [ -f $src ]; then
                qq_exit "$src exist file"
            fi
        fi

        local d1=d1_$pref
        if [ -n ${!d1} ] && [ ${!d1} -eq 1 ]; then
            if ! [ -d $srs ]; then
                qq_exit "$src not exist dir"
            fi
        fi

        local nd1=nd1_$pref
        if [ -n ${!nd1} ] && [ ${!nd1} -eq 1 ]; then
            if [ -d $src ]; then
                qq_exit "$src exist dir"
            fi
        fi

        # dist

        local f2=f2_$pref
        if [ -n ${!f2} ] && [ ${!f2} -eq 1 ]; then
            if ! [ -f $dist ]; then
                qq_exit "$dist not exist file"
            fi
        fi

        local nf2=nf2_$pref
        if [ -n ${!nf2} ] && [ ${!nf2} -eq 1 ]; then
            if [ -f $dist ]; then
                qq_exit "$dist exist file"
            fi
        fi

        local d2=d2_$pref
        if [ -n ${!d2} ] && [ ${!d2} -eq 1 ]; then
            if ! [ -d $dist ]; then
                qq_exit "$dist not exist dir"
            fi
        fi

        local nd2=nd2_$pref
        if [ -n ${!nd2} ] && [ ${!nd2} -eq 1 ]; then
            if [ -d $dist ]; then
                qq_exit "$dist exist dir"
            fi
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# fifs2_bash_pref_dist_src_ @

unset filename
