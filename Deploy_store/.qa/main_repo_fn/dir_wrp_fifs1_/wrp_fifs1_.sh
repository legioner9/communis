#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_wrp_fifs1_/wrp_fifs1_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

wrp_fifs1_() {

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

    if [ "tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
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
            MAIN: wrapper for fn {flow_chars} {dist}
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1 name bash_fn {singl word}
            \$2 [, flow_chars] {singl string [first char] = "-" }
            \$3 dist {arg 2}
            \$4 ... [,-f1, -nf1, -e1, -ne1, -d1, -nd1]
            TAGS:
            FLOW: 
            -nf1 -> [n]ot exist file in place {arg 1}
            -e file or dir
            -f file
            -d dir
            [, -qq_exit_] if mast be exit
            DEBUG:
            EXAMP: wrp_fifs1_ rm file -f1 [, -qq_exit]
            WARN: flow_chars NOT coincdide function keys${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions $RETURN_WITH_EXIT
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

        amount_arg $# 2 10 "in wrp_fifs1_ :: $*"

        bfn="$1"

        innrer_arg=()

        #f

        #f1
        local f1=f1_"$FNN"
        local f1_"$FNN"=0
        innrer_arg+=("$f1=1")

        local cf1=cf1_"$FNN"
        local cf1_"$FNN"=0
        innrer_arg+=("$cf1=1")

        #nf1
        local nf1=nf1_"$FNN"
        local nf1_"$FNN"=0
        innrer_arg+=("$nf1=1")

        local cnf1=cnf1_"$FNN"
        local cnf1_"$FNN"=0
        innrer_arg+=("$cnf1=1")

        #f2
        local f2=f2_"$FNN"
        local f2_"$FNN"=0
        innrer_arg+=("$f2=1")

        local cf2=cf2_"$FNN"
        local cf2_"$FNN"=0
        innrer_arg+=("$cf2=1")

        #nf2
        local nf2=nf2_"$FNN"
        local nf2_"$FNN"=0
        innrer_arg+=("$nf2=1")

        local cnf2=cnf2_"$FNN"
        local cnf2_"$FNN"=0
        innrer_arg+=("$cnf2=1")

        #d

        #d1
        local d1=d1_"$FNN"
        local d1_"$FNN"=0
        innrer_arg+=("$d1=1")

        local cd1=cd1_"$FNN"
        local cd1_"$FNN"=0
        innrer_arg+=("$cd1=1")

        #nd1
        local nd1=nd1_"$FNN"
        local nd1_"$FNN"=0
        innrer_arg+=("$nd1=1")

        local cnd1=cnd1_"$FNN"
        local cnd1_"$FNN"=0
        innrer_arg+=("$cnd1=1")

        #d2
        local d2=d2_"$FNN"
        local d2_"$FNN"=0
        innrer_arg+=("$d2=1")

        local cd2=cd2_"$FNN"
        local cd2_"$FNN"=0
        innrer_arg+=("$cd2=1")

        #nd2
        local nd2=nd2_"$FNN"
        local nd2_"$FNN"=0
        innrer_arg+=("$nd2=1")

        local cnd2=cnd2_"$FNN"
        local cnd2_"$FNN"=0
        innrer_arg+=("$cnd2=1")

        #e

        #e1
        local e1=e1_"$FNN"
        local e1_"$FNN"=0
        innrer_arg+=("$e1=1")

        local ce1=ce1_"$FNN"
        local ce1_"$FNN"=0
        innrer_arg+=("$ce1=1")

        #ne1
        local ne1=ne1_"$FNN"
        local ne1_"$FNN"=0
        innrer_arg+=("$ne1=1")

        local cne1=cne1_"$FNN"
        local cne1_"$FNN"=0
        innrer_arg+=("$cne1=1")

        #e2
        local e2=e2_"$FNN"
        local e2_"$FNN"=0
        innrer_arg+=("$e2=1")

        local ce2=ce2_"$FNN"
        local ce2_"$FNN"=0
        innrer_arg+=("$ce2=1")

        #ne2
        local ne2=ne2_"$FNN"
        local ne2_"$FNN"=0
        innrer_arg+=("$ne2=1")

        local cne2=cne2_"$FNN"
        local cne2_"$FNN"=0
        innrer_arg+=("$cne2=1")

        # echo p1 f1 ${!f1} $f1_cp__
        # echo p1 nf1 ${!nf1} $nf1_cp__

        local src
        local dist
        local flow
        local flag
        local trig=1

        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        # echo -e "${BLUE}--- garg_ $1__ ${ARGS[@]} ---${NORMAL}" #sistem info mesage

        local _edeb=echo_"$FNN"
        local echo_"$FNN"=0
        local _debag=deb_"$FNN"
        local deb_"$FNN"=0

        qq_exit_wrp_fifs1_=0

        # garg_ "$FNN" "${ARGS[@]}"
        garg_ "$FNN" "${ARGS[@]}" 1>/dev/null

        QQ_EXIT=${qq_exit_wrp_fifs1_}

        echo_deb_ ${!_edeb} "cntl echo_deb_ mode in ${FNN}"
        if [ ${!_debag} -eq 1 ]; then
            echo "DEBUG MODE in ${FNN}"
        fi

        # echo p2 f1 ${!f1} $f1_cp__
        # echo p2 nf1 ${!nf1} $nf1_cp__

        arg1=$1
        arg2=$2
        arg3=$3

        # echo -e "${GREEN}\$arg1 = $arg1${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg2 = $arg2${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg3 = $arg3${NORMAL}" #print variable
        # echo -e "${GREEN}\$arg4 = $arg4${NORMAL}" #print variable

        if [ ${arg2:0:1} == "-" ]; then # $2 - flow

            if [ ${arg3:0:1} != "-" ]; then # $3 - arg => $3 - exist
                flow=$arg2
                src=$arg3

                flag="with_flow"
            fi

            if [ ${arg3:0:1} == "-" ]; then # $3 - not arg
                plt_pause "arg3: $arg3 not arg"
                echo "arg3: $arg3 not arg" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ ${arg2:0:1} != "-" ]; then # $2 - already arg
            src=$arg2

            flag="without_flow"
        fi

        # echo -e "${GREEN}\$flow = $flow${NORMAL}" #print variable
        # echo -e "${GREEN}\$src = $src${NORMAL}" #print variable
        # echo -e "${GREEN}\$dist = $dist${NORMAL}" #print variable

        # src

        #f
        if [ -n "${!f1}" ] && [ "${!f1}" -eq 1 ]; then
            if ! [ -f $src ]; then
                plt_pause "$src not exist file" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO"
                echo "$src not exist file" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ -n "${!cf1}" ] && [ "${!cf1}" -eq 1 ]; then
            if ! [ -f $src ]; then
                trig=$(($trig * 0))
            fi
        fi

        if [ -n ${!nf1} ] && [ ${!nf1} -eq 1 ]; then
            if [ -f $src ]; then
                plt_pause "$src exist file" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO"
                echo "$src exist file" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ -n ${!cnf1} ] && [ ${!cnf1} -eq 1 ]; then
            if [ -f $src ]; then
                trig=$(($trig * 0))
            fi
        fi

        #d
        if [ -n ${!d1} ] && [ ${!d1} -eq 1 ]; then
            if ! [ -d $src ]; then
                plt_pause "$src not exist dir" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO"
                echo "$src not exist dir" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ -n ${!cd1} ] && [ ${!cd1} -eq 1 ]; then
            if ! [ -d $src ]; then
                trig=$(($trig * 0))
            fi
        fi

        if [ -n ${!nd1} ] && [ ${!nd1} -eq 1 ]; then
            if [ -d $src ]; then
                plt_pause "$src exist dir" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO"
                echo "$src exist dir" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ -n ${!cnd1} ] && [ ${!cnd1} -eq 1 ]; then
            if [ -d $src ]; then
                trig=$(($trig * 0))
            fi
        fi

        #e
        if [ -n ${!e1} ] && [ ${!e1} -eq 1 ]; then
            if ! [ -e $src ]; then
                plt_pause "$src not exist" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO"
                echo "$src not exist" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ -n ${!ce1} ] && [ ${!ce1} -eq 1 ]; then
            if ! [ -e $src ]; then
                trig=$(($trig * 0))
            fi
        fi

        if [ -n ${!ne1} ] && [ ${!ne1} -eq 1 ]; then
            if [ -e $src ]; then
                plt_pause "$src exist" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO"
                echo "$src exist" "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".sh "$LINENO" 1>&2
                return "$RETURN_WITH_QQ_EXIT"
            fi
        fi

        if [ -n ${!cne1} ] && [ ${!cne1} -eq 1 ]; then
            if [ -e $src ]; then
                trig=$(($trig * 0))
            fi
        fi
        # echo p3 f1 ${!f1} $f1_cp__
        # echo p3 nf1 ${!nf1} $nf1_cp__

        # flags

        if [ "$flag" == "with_flow" ] && [ "$trig" -eq 1 ]; then
            # echo -e "${BLUE}--- $bfn $flow $src ---${NORMAL}" #sistem info mesage
            echo_deb_ ${!_edeb} "$bfn $flow $src"
            $bfn $flow $src
            return 0
        fi

        if [ "$flag" == "without_flow" ] && [ "$trig" -eq 1 ]; then
            # echo -e "${BLUE}--- $bfn $src ---${NORMAL}" #sistem info mesage
            echo_deb_ ${!_edeb} "$bfn $src"
            $bfn $src
            return 0
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# wrp_fifs1_ @

unset filename
