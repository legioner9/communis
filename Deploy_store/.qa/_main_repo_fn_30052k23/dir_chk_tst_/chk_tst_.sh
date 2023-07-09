#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_chk_tst_/chk_tst_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

chk_tst_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    if [ "man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
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
            MAIN: {qq_exit if tst_ fail}
            NAME: ${FUNCNAME[0]}()
            ARGS: no
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
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

        bsh_() {
            . ${HOME}/.bashrc
        }

        bsh_ 1>/dev/null

        # arr_dir_for_check_all_tst=()
        # readarray -t arr_dir_for_check_all_tst <"$PATH_TST_FILE"

        if [ "$(up_err_ tst ${PATH_CONFIG_DIR}/.tst)" ]; then
            echo -e "${BLUE}---INIT0 patch with EXIT 0---${NORMAL}" #sistem info mesage
            # exit 0
        else
            echo -e "${RED}---INIT0 patch with EXIT 1---${NORMAL}" #sistem info mesage
            # exit 1
            qq_exit "tst_ FAIL"
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# chk_tst_ @

unset filename
