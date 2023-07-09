#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_sh_/cr_sh_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_sh_() {

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

    if [ "_mdeb" == "$1" ]; then
        cr_sh_mdeb
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: create .ext from dir_cr_f_/_cr_f_/_tml/sh.tml
            NAME: ${FUNCNAME[0]}()
            ARGS: 
                \$1 full path_name with .ext
                 or short path_name -> \$PPWD/\$path_name
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
    c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

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
        # USE cr_sh_() -echo -deb
        echo_cr_sh_=0
        deb_cr_sh_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_cr_sh_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
        if [ $deb_cr_sh_ -eq 1 ]; then
            echo "DEBUG MODE in ${FUNCNAME[0]}"
        fi

        path_name="$1"

        if [ $(is_root_01_ "$1") -ne 1 ]; then
            path_name=$PPWD/$path_name
        fi

        plt_pause "create $path_name from ${PATH_TML_DIR}/cr_sh_/sh.tml ?"

        # copy tml
        cr_f_ "$path_name" --tml "${PATH_TML_DIR}/cr_sh_/sh.tml"
        # insert head and body
        header=${PATH_INSERT_DIR}/cr_sh_/header.insert
        cr_f_ "$path_name" --fi0 ${header} --fr0 "{header}" \
            --fi1 "${PATH_MAIN_REPO_FN_DIR}/dir_cr_sh_/_cr_sh_/_insert_files/fn_body" --fr1 "#{fn_body}"
        # replace in body and header
        cr_f_ "$path_name" --vi0 "$path_name" --vr0 v000

        cr_f_ "$path_name" --vi0 '\/home/st' --vr0 "/home/st"

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        cd "$PPWD"

        ;;

    esac

}

# cr_sh_ @

unset filename
