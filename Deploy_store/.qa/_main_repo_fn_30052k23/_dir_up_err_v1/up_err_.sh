#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_up_err_/up_err_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

up_err_() {

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
            MAIN: exec recurce all [ \$1: .ext] files from list dirs from [ \$2 file_list]
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1: .ext
            \$2: file_list
            CNTL: 
            -echo { echo_deb_ }
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
        echo_up_err_=0
        deb_up_err_=0
        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        garg_ ${FUNCNAME[0]} $@
        # echo -e "${GREEN}\$echo_up_err_ = $echo_up_err_${NORMAL}" #print variable

        ext="$1"
        list_file_path="$2"
        # echo -e "${GREEN}\$ext = $ext${NORMAL}"                       #print variable
        # echo -e "${GREEN}\$list_file_path = $list_file_path${NORMAL}" #print variable
        # echo ""
        # f2e "$list_file_path"

        flag=1
        for path_dir in $(f2e $list_file_path); do
            echo_deb_ $echo_up_err_ "\$path_dir = file://$path_dir" #print variable

            for file_path in $(find_ext "$path_dir" "$ext"); do
                echo_deb_ $echo_up_err_ "\$file_path = file://$file_path" #print variable

                if [ $deb_up_err_ -eq 0 ]; then
                    if ! [ "$(. "$file_path")" ] 1>/dev/null; then
                        flag=0
                    fi
                elif [ $deb_up_err_ -eq 1 ]; then
                    if ! [ "$(. "$file_path")" ]; then
                        flag=0
                    fi
                fi
            done

        done
        if [ 1 -eq $flag ]; then
            echo "<<< up_err_ $ext file://$list_file_path  TRUE >>>" #sistem info mesage
        fi

        if [ 0 -eq $flag ]; then
            echo "<<< up_err_ $ext file://$list_file_path FAIL >>>"  >&2 #sistem info mesage
        fi

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# up_err_ @

unset filename
