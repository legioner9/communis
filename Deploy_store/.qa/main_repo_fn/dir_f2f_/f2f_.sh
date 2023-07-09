#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f2f_/f2f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f2f_() {

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
            MAIN: insert [f]ile {\$1} [2]to [f]ile {\$2} into pre_place {\$3}
            NAME: ${FUNCNAME[0]}()
            ARGS:
            CNTL: [, -echo, -deb ...]
            TAGS:
            FLOW:
            DEBUG:
            EXAMP:
                f2f_ file_for_insert res 00000${NORMAL}"
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
        amount_arg $# 3 3
        # USE f2f_() -echo -deb
        echo_f2f_=0
        deb_f2f_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_f2f_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
        if [ $deb_f2f_ -eq 1 ]; then
            echo "DEBUG MODE in ${FUNCNAME[0]}"
        fi

        file_for_insert="$1"
        file_with_preplacer="$2"
        pre_placer="$3"

        if [ -f "$1" ]; then
            IFS='
'

            for str in $(cat "$1"); do
                # echo_deb_ $echo_f2f_ "\$str = $str" #print variable
                # echo -e $str
                # if [ -z $str ]; then
                #     str=""
                # fi

                echo_deb_ $echo_f2f_ "sed -i '/'$3'/i '$str'' $2"

                if grep "$3" "$2"; then

                    sed -i '/'"$3"'/i '"$str"'' "$2"

                else

                    plt_info "$3 not contane in $2"

                fi

            done

            IFS=$IIFS
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# f2f_ @

unset filename
