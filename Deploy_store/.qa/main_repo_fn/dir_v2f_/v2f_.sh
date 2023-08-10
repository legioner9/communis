#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_v2f_/v2f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

v2f_() {

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
            MAIN: insert [v]alue {\$1} [2]to [f]ile {\$2} into pre_place {\$3}
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            \$1 name_file \$2 tml_file --v0 \$value_to_00000
            \$1 value for insert
            \$2 path_dest_file 
            \$3 pre_place
            CNTL: [, -echo, -deb ...]
            TAGS:
            FLOW: {sed -i 's/v00000/'\$v0_cr_f_'/g' \"\$root/\$path_dest_file\"}
            DEBUG:
            EXAMP:${NORMAL}"
        return 0
    fi

    echo -e "${CYAN}---$FNN() $@ ---${NORMAL}" #started functions
    # echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    # echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    # echo -e "${GREEN}args = $*${NORMAL}"             #print variable

    # echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    # c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null/

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
        amount_arg $# 3 10
        # USE v2f_() -echo -deb
        echo_v2f_=0
        deb_v2f_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_v2f_ "cntl echo_deb_ in $FNN() $@"
        if [ $deb_v2f_ -eq 1 ]; then
            echo "DEBUG MODE in $FNN() $@"
        fi

        inserter="$1"
        path_file_preplace="$2"
        pre_placer="$3"

        echo -e "${GREEN}\$inserter = $inserter${NORMAL}"                     #print variable
        echo -e "${GREEN}\$path_file_preplace = $path_file_preplace${NORMAL}" #print variable
        echo -e "${GREEN}\$pre_placer = $pre_placer${NORMAL}"                 #print variable

        echo_deb_ $echo_v2f_ "--- sed -i 's|'$pre_placer'|'$inserter'|g' $path_file_preplace ---}" #sistem info mesage

        if grep "$pre_placer" "$path_file_preplace" 1>/dev/null ; then
            sed -i 's|'"$pre_placer"'|'"$inserter"'|g' "$path_file_preplace"
        # else
        #     plt_info "$pre_placer not contane in $path_file_preplace"
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# v2f_ @

unset filename
