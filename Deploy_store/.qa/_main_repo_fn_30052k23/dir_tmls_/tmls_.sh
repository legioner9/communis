#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_tmls_/tmls_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

tmls_() {

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
            MAIN: list of standart .tml for cr_f_ and other
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
        # USE tmls_() -echo -deb
        echo_tmls_=0
        deb_tmls_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_tmls_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
        if [ $deb_tmls_ -eq 1 ]; then
            echo "DEBUG MODE in ${FUNCNAME[0]}"
        fi

        arr=()
        res=()
        arr+=("leave menu")
        res+=("echo bye)))")
        arr+=("simple .sh file")
        res+=("echo ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_f_/_cr_f_/_tml/sh.tml")
        # arr+=("aaaaaaa")
        # res+=("bbbbbbb")
        # arr+=("aaaaaaa")
        # res+=("bbbbbbb")
        # arr+=("aaaaaaa")
        # res+=("bbbbbbb")
        # arr+=("aaaaaaa")
        # res+=("bbbbbbb")

        PS3="eligendi actiones: "

        select item in "${arr[@]}"; do

            dilectus=$item
            break

        done

        case $dilectus in

        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}

            ;;
        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            tmls_
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            tmls_
            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            tmls_
            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            tmls_
            ;;

        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            tmls_
            ;;

        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            tmls_
            ;;

        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            tmls_
            ;;

        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            tmls_
            ;;

        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            tmls_
            ;;

        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            tmls_

            ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            tmls_
            ;;

        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            tmls_
            ;;

        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            tmls_
            ;;

        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            tmls_
            ;;

        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            tmls_
            ;;

        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            tmls_
            ;;

        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            tmls_
            ;;

        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            tmls_
            ;;

        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            tmls_
            ;;

        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            tmls_

            ;;

        \
            \
            *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
            ;;
        esac

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        cd "$PPWD"

        ;;

    esac

}

# tmls_ @

unset filename
