#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_rbl_cat_bfn_/rbl_cat_bfn_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

rbl_cat_bfn_() { 

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

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
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: \$1 = match for grep
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

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

        local match="$1"

        list_for_search="$PATH_FN"/dir_"$FNN"/"$FNN".lst
        ext_file="sh"

        local tail_path
        for tail_path in $(f2e $list_for_search); do

            if [ -z $tail_path ]; then
                break
            fi

            # echo -e "${GREEN}\$tail_path = $tail_path${NORMAL}" #print variable

            if [ $(is_root_01 "$tail_path") -eq 0 ]; then
                root_path="$HOME/$tail_path"
            else
                root_path="$tail_path"
            fi

            echo -e "${GREEN}\$root_path = $root_path${NORMAL}" #print variable
            local full_path
            for full_path in $(dr2e "$root_path" "$ext_file"); do

                if [ -z $full_path ]; then
                    break
                fi
                bfn=$(prs_f -n $full_path)
                if $bfn -h ; then
                # if $bfn -h | grep $1 > /dev/null; then
                    echo -e "${GREEN}file://$full_path${NORMAL}" #print variable
                    echo -e "${BLUE} --- ${NORMAL}"              #sistem info mesage

                    $bfn -h
                    echo -e "${BLUE}
 --- ${NORMAL}" #sistem info mesage
                fi
            done
        done

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# rbl_cat_bfn_ @

unset filename
