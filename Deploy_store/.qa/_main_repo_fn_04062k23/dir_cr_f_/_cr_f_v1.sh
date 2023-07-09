#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/cr_f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_f_() {

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
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1 result_file
            CNTL: [, -echo, -deb ...]
            insert into v00000 [--v0 \$value_for_insert] for insert {v2f_ \"\$v0_cr_f_\" \"\$result_file\" v00000} [ v2f_ \$value_for_insert \$result_file \$preplacer]
            insert into f00000 [--f0 \$path_file_as_insert] for insert {f2f_ \"\$f0_cr_f_\" \"\$result_file\" f00000} [ f2f_ \$path_file_as_insert \$result_file \$preplacer]
            pre_fors_copy path_tml_file into result_file [ --tml \$path_tml_file ] { wrp_fifs2 cp -f \$path_tml_file \$result_file -f1 }
            TAGS:
            FLOW:
            DEBUG: ${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_debug/v1
            EXAMP: cr_f_ \$result_file \$tml_file  --v0 \$insert_into_v00000 ${NORMAL}"
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
        # USE cr_f_() -echo -deb

        echo_cr_f_=0
        deb_cr_f_=0

        unset tml_cr_f_

        unset v0_cr_f_
        unset v1_cr_f_
        unset v2_cr_f_
        unset v3_cr_f_
        unset v4_cr_f_

        unset f0_cr_f_
        unset f1_cr_f_
        unset f2_cr_f_
        unset f3_cr_f_
        unset f4_cr_f_

        garg_ ${FUNCNAME[0]} $@
        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_cr_f_ "cntl echo_deb_ in ${FUNCNAME[0]}"
        if [ $deb_cr_f_ -eq 1 ]; then
            echo # DEBUG MODEe
        fi

        # tml_file="$1"
        res_file="$1"

        if [ -n "$tml_cr_f_" ]; then
            wrp_fifs2_ cp $tml_cr_f_ $res_file -f1 -nf2
        fi

        if [ -n "$v0_cr_f_" ]; then
            echo_deb_ $echo_cr_f_ "--- v2f_ $v0_cr_f_ $res_file v00000 ---" #sistem info mesage
            v2f_ $v0_cr_f_ $res_file v00000
        fi

        if [ -n "$v1_cr_f_" ]; then
            echo_deb_ $echo_cr_f_ "--- v2f_ $v1_cr_f_ $res_file v11111 ---" #sistem info mesage
            v2f_ $v1_cr_f_ $res_file v11111
        fi

        if [ -n "$v2_cr_f_" ]; then
            echo_deb_ $echo_cr_f_ "--- v2f_ $v2_cr_f_ $res_file v22222 ---" #sistem info mesage
            v2f_ $v2_cr_f_ $res_file v22222
        fi

        if [ -n "$f0_cr_f_" ]; then
            # f2f_ $f0_cr_f_ $res_file f00000 -echo
            f2f_ "$f0_cr_f_" "$res_file" f00000
        fi

        if [ -n "$f1_cr_f_" ]; then
            # f2f_ $f0_cr_f_ $res_file f00000 -echo
            f2f_ "$f1_cr_f_" "$res_file" f11111
        fi

        unset tml_cr_f_

        unset v0_cr_f_
        unset v1_cr_f_
        unset v2_cr_f_
        unset v3_cr_f_
        unset v4_cr_f_

        unset f0_cr_f_
        unset f1_cr_f_
        unset f2_cr_f_
        unset f3_cr_f_
        unset f4_cr_f_

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# cr_f_ @

unset filename
