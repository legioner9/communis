#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_mm_rbl_cat_ext_/mm_rbl_cat_ext_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

mm_rbl_cat_ext_() { # --grep [match]

    # local grep_mm_rbl_cat_ext_

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
    grep_mm_rbl_cat_ext_=""

    garg_ ${FUNCNAME[0]} $@

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
            MAIN: menu with rbl all cat for .ext (.word .cexa) , bfn -h with --grep
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            if args non => flow menu
            if args (1|2|...) => exec {n} rbl
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

    if [ "1" == "$1" ]; then
        rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/word_c_libs.dirs word $grep_mm_rbl_cat_ext_
        return 0
    fi

    if [ "2" == "$1" ]; then
        rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_mipt.dirs cexa "$grep_mm_rbl_cat_ext_"
        return 0
    fi

    if [ "3" == "$1" ]; then
        rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_nbase.dirs cexa $grep_mm_rbl_cat_ext_
        return 0
    fi

    if [ "4" == "$1" ]; then
        rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_fpmi.dirs cexa $grep_mm_rbl_cat_ext_
        return 0
    fi

    if [ "5" == "$1" ]; then
        rbl_cat_bfn_ $grep_mm_rbl_cat_ext_
        return 0
    fi

    if [ "6" == "$1" ]; then
        rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_mipt.dirs tod "$grep_mm_rbl_cat_ext_"
        return 0
    fi
    flumen_tempus

    if [ "7" == "$1" ]; then
        rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/flumen_tempus.dirs flu "$grep_mm_rbl_cat_ext_"
        return 0
    fi

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

        arr=()
        res=()
        arr+=("leave menu")
        res+=("return 0")

        #1
        arr+=("exec [tst_ word] mm_rbl_cat_ext_ 1")
        res+=("rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/word_c_libs.dirs word")
        #2
        arr+=("mipt [.cexa] mm_rbl_cat_ext_ 2")
        res+=("rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_mipt.dirs cexa")
        #3
        arr+=("nbase [.cexa] mm_rbl_cat_ext_ 3")
        res+=("rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_nbase.dirs cexa")
        #4
        arr+=("fpmi [.cexa] mm_rbl_cat_ext_ 4")
        res+=("rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_fpmi.dirs cexa")
        #5
        arr+=("rbl_cat_bfn_ [match] :: -h in bash fns mm_rbl_cat_ext_ 5 --grep [match]")
        res+=("rbl_cat_bfn_")
        #6
        arr+=("mipt [.cexa] mm_rbl_cat_ext_ 6")
        res+=("rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/cexa_c_mipt.dirs tod")
        #7
        arr+=("flumen tempus [.flu] mm_rbl_cat_ext_ 7")
        res+=("rbl_cat_ext_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat/flumen_tempus.dirs flu")
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
            mm_rbl_cat_ext_
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            mm_rbl_cat_ext_
            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            mm_rbl_cat_ext_
            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            mm_rbl_cat_ext_
            ;;

        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            mm_rbl_cat_ext_
            ;;

        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            mm_rbl_cat_ext_
            ;;

        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            mm_rbl_cat_ext_
            ;;

        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            mm_rbl_cat_ext_
            ;;

        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            mm_rbl_cat_ext_
            ;;

        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            mm_rbl_cat_ext_

            ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            mm_rbl_cat_ext_
            ;;

        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            mm_rbl_cat_ext_
            ;;

        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            mm_rbl_cat_ext_
            ;;

        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            mm_rbl_cat_ext_
            ;;

        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            mm_rbl_cat_ext_
            ;;

        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            mm_rbl_cat_ext_
            ;;

        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            mm_rbl_cat_ext_
            ;;

        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            mm_rbl_cat_ext_
            ;;

        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            mm_rbl_cat_ext_
            ;;

        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            mm_rbl_cat_ext_

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

        ;;

    esac

}

# mm_rbl_cat_ext_ @

unset filename
