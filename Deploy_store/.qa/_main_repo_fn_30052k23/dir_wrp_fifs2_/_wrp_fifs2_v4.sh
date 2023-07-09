#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_wrp_fifs2_/wrp_fifs2_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

wrp_fifs2_() {

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
            MAIN: wrapper for fn {flow_chars} {src} {dist}
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1 name bash_fn {singl word}
            \$2 [, flow_chars] {singl string [first char] = "-" }
            \$3 src {arg 1}
            \$4 dist {arg 2}
            \$5 ... [,-f1, -nf1, -e1, -ne1, -d1, -nd1, -f2, -nf2, -e2, -ne2, -d2, -nd2]
            TAGS:
            FLOW: 
            -nf2 -> [n]ot exist file in place {arg 2}
            -e file or dir
            -f file
            -d dir
            DEBUG:
            . '${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cp__/cp__tst/exec.tst'
            EXAMP: wrp_fifs2_ cp \"-f -r\" d1/ d2/ -e1 -nd2 
            WARN: flow_chars NOT coincdide function keys${NORMAL}"
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

        # in_args=($*)
        # echo -e "${GREEN}\${in_args[@]} = ${in_args[*]}${NORMAL}" #print variable
        # echo -e "${GREEN}\$@ = $*${NORMAL}"                       #print variable

        amount_arg $# 3 10

        bfn="$1"

        #f

        #f1
        local f1=f1_"$bfn"__
        local f1_"$bfn"__=0

        local cf1=cf1_"$bfn"__
        local cf1_"$bfn"__=0

        #nf1
        local nf1=nf1_"$bfn"__
        local nf1_"$bfn"__=0

        local cnf1=cnf1_"$bfn"__
        local cnf1_"$bfn"__=0

        #f2
        local f2=f2_"$bfn"__
        local f2_"$bfn"__=0

        local cf2=cf2_"$bfn"__
        local cf2_"$bfn"__=0

        #nf2
        local nf2=nf2_"$bfn"__
        local nf2_"$bfn"__=0

        local cnf2=cnf2_"$bfn"__
        local cnf2_"$bfn"__=0

        #d

        #d1
        local d1=d1_"$bfn"__
        local d1_"$bfn"__=0

        local cd1=cd1_"$bfn"__
        local cd1_"$bfn"__=0

        #nd1
        local nd1=nd1_"$bfn"__
        local nd1_"$bfn"__=0

        local cnd1=cnd1_"$bfn"__
        local cnd1_"$bfn"__=0

        #d2
        local d2=d2_"$bfn"__
        local d2_"$bfn"__=0

        local cd2=cd2_"$bfn"__
        local cd2_"$bfn"__=0

        #nd2
        local nd2=nd2_"$bfn"__
        local nd2_"$bfn"__=0

        local cnd2=cnd2_"$bfn"__
        local cnd2_"$bfn"__=0

        #e

        #e1
        local e1=e1_"$bfn"__
        local e1_"$bfn"__=0

        local ce1=ce1_"$bfn"__
        local ce1_"$bfn"__=0

        #ne1
        local ne1=ne1_"$bfn"__
        local ne1_"$bfn"__=0

        local cne1=cne1_"$bfn"__
        local cne1_"$bfn"__=0

        #e2
        local e2=e2_"$bfn"__
        local e2_"$bfn"__=0

        local ce2=ce2_"$bfn"__
        local ce2_"$bfn"__=0

        #ne2
        local ne2=ne2_"$bfn"__
        local ne2_"$bfn"__=0

        local cne2=cne2_"$bfn"__
        local cne2_"$bfn"__=0

        # echo p1 f1 ${!f1} $f1_cp__
        # echo p1 nf1 ${!nf1} $nf1_cp__

        local src
        local dist
        local flow
        local flag
        local trig=1

        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        # echo -e "${BLUE}--- garg_ $1__ ${ARGS[@]} ---${NORMAL}" #sistem info mesage
        garg_ "$1"__ "${ARGS[@]}"

        # echo p2 f1 ${!f1} $f1_cp__
        # echo p2 nf1 ${!nf1} $nf1_cp__

        arg1=$1
        arg2=$2
        arg3=$3
        arg4=$4

        # echo -e "${GREEN}\$arg1 = $arg1${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg2 = $arg2${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg3 = $arg3${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg4 = $arg4${NORMAL}" #print variable

        if [ ${arg2:0:1} == "-" ]; then # $1 - flow

            if [ ${arg3:0:1} != "-" ] && [ -n $arg4 ]; then # $2 - arg => $3 - exist
                flow=$arg2
                src=$arg3
                dist=$arg4

                flag="with_flow"
            fi

            if [ ${arg3:0:1} == "-" ] && [ -z $arg4 ]; then # $2 - not arg or $3 - not exist
                qq_exit "arg3: $arg3 not arg or arg4: $arg4 not exist"
            fi
        fi

        if [ ${arg2:0:1} != "-" ]; then # $1 - already arg
            src=$arg2
            dist=$arg3

            flag="without_flow"
        fi

        # echo -e "${GREEN}\$flow = $flow${NORMAL}" #print variable
        # echo -e "${GREEN}\$src = $src${NORMAL}" #print variable
        # echo -e "${GREEN}\$dist = $dist${NORMAL}" #print variable

        # src
        #f
        if [ -n "${!f1}" ] && [ "${!f1}" -eq 1 ]; then
            if ! [ -f $src ]; then
                qq_exit "$src not exist file" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        if [ -n ${!nf1} ] && [ ${!nf1} -eq 1 ]; then
            if [ -f $src ]; then
                qq_exit "$src exist file" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi
        #d
        if [ -n ${!d1} ] && [ ${!d1} -eq 1 ]; then
            if ! [ -d $src ]; then
                qq_exit "$src not exist dir" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        if [ -n ${!nd1} ] && [ ${!nd1} -eq 1 ]; then
            if [ -d $src ]; then
                qq_exit "$src exist dir" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi
        #e
        if [ -n ${!e1} ] && [ ${!e1} -eq 1 ]; then
            if ! [ -e $src ]; then
                qq_exit "$src not exist" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        if [ -n ${!ne1} ] && [ ${!ne1} -eq 1 ]; then
            if [ -e $src ]; then
                qq_exit "$src exist" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        # dist
        #f
        if [ -n "${!f2}" ] && [ "${!f2}" -eq 1 ]; then
            if ! [ -f $dist ]; then
                qq_exit "$dist not exist file" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        if [ -n "${!nf2}" ] && [ "${!nf2}" -eq 1 ]; then
            if [ -f $dist ]; then
                qq_exit "$dist exist file" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi
        #d
        if [ -n "${!d2}" ] && [ "${!d2}" -eq 1 ]; then
            if ! [ -d $dist ]; then
                qq_exit "$dist not exist dir" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        if [ -n "${!nd2}" ] && [ "${!nd2}" -eq 1 ]; then
            if [ -d $dist ]; then
                qq_exit "$dist exist dir" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi
        #e
        if [ -n ${!e2} ] && [ ${!e2} -eq 1 ]; then
            if ! [ -e $dist ]; then
                qq_exit "$dist not exist" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi

        if [ -n ${!ne2} ] && [ ${!ne2} -eq 1 ]; then
            if [ -e $dist ]; then
                qq_exit "$dist exist" "$PATH_FN"/dir_"$FNN"/"$FNN".sh "$LINENO"
            fi
        fi
        # echo p3 f1 ${!f1} $f1_cp__
        # echo p3 nf1 ${!nf1} $nf1_cp__

        # flags

        if [ "$flag" == "with_flow" ]; then
            echo -e "${BLUE}--- $bfn $flow $src $dist ---${NORMAL}" #sistem info mesage
            $bfn $flow $src $dist
            return 0
        fi

        if [ "$flag" == "without_flow" ]; then
            echo -e "${BLUE}--- $bfn $src $dist ---${NORMAL}" #sistem info mesage
            $bfn $src $dist
            return 0
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# wrp_fifs2_ @

unset filename
