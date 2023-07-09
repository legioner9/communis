#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_sth_fd_/sth_fd_.sh"

# echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

sth_fd_() {

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
            ARGS:
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

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

    # "${arr[3]}")
    #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
    #     ${res[3]}
    # ;;

    *)
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        # echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++

        # # incude fn_libs------------------------------------------
        # c_up "$ORIGO_DIR/_$FNN/_sh"

        # # UP in_file_variables------------------------------------
        # path_dir_in=$ORIGO_DIR/_$FNN/_in

        # cd_h $path_dir_in

        # unset _f2a_
        # unset item
        # args_arr_name=()
        # for item in *; do
        #     ext=${item##*.}
        #     name=${item%.*}
        #     cname=${name:1}
        #     # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
        #     # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
        #     if [ $ext = "var" ]; then
        #         args_arr_name+=($cname)
        #         # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        #         # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
        #         f2a $path_dir_in/$item
        #         # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable

        #         declare $cname="${_f2a_[*]}"

        #         unset _f2a_
        #         unset item
        #     fi

        # done

        # echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

        # #!function body start--------------------------------------------
        # echo -e "${GREEN}\${res_[@]} = ${res_[*]}${NORMAL}" #print variable
        # echo -e "${GREEN}\${arr_[@]} = ${arr_[*]}${NORMAL}" #print variable

        # IFS=', ' read -r -a arr <<<"${arr_[0]}"
        # IFS=', ' read -r -a res <<<"${res_[0]}"

        # unset item
        # echo "arr:"
        # for item in ${arr[@]}; do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # done

        # unset item
        # echo "res:"
        # for item in ${res[@]}; do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # done
        # unset item

        #EXTEND++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        cd_h "$PPWD" 1>/dev/null

        #!choiсe_arg_from_arr>>>>>>>>>>>>>>>>>

        # PS3="eligendi actiones (var): "
        # select item in "${var[@]}";do
        #     var_=$item
        #     break
        # done

        # PS3="eligendi actiones (tml): "
        # select item in "${tml[@]}";do
        #     tml_=$item
        #     break
        # done

        #!end choiсe_arg_from_arr>>>>>>>>>>>>>

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        # amount_arg $# x

        amount_arg $# 2 2
        arg1="$1"

        # if_d_h "$arg1" 1>/dev/null

        dir_name=$(basename "$arg1")
        root_dir=$(dirname "$arg1")

        # echo $dir_name $root_dir

        if [ ! -d "$arg1".sth ]; then
            mkdir "$arg1".sth
            if [ -d "$arg1" ]; then
                touch "$arg1".sth/0
            fi

        fi

        # echo -e "${HLIGHT}--- cp -rf $arg1 $arg1.sth/$dir_name.$(mdate_) ---${NORMAL}" #start files
        cp -rf "$arg1" "$arg1".sth/"$dir_name"."$(mdate_)"

        #         IFS='
        # '

        sth_d_echo_count() {
            amount_bckp_dir=0
            for name in $(day2e "$arg1".sth); do
                # echo -e "${GREEN}\$name = $name${NORMAL}" #print variable
                # echo "$(prs_f -n "$name")"
                amount_bckp_dir="$((amount_bckp_dir + 1))"
            done
            echo "$amount_bckp_dir"
            unset amount_bckp_dir
        }

        # sth_d_echo_count

        arg2="$2"

        max_amount_bckp=$((arg2 + 1))

        while [ "$max_amount_bckp" -le "$(sth_d_echo_count)" ]; do
            # while [ 3 -le "$(sth_d_echo_count)" ]; do

            for name in $(day2e "$arg1".sth); do
                # echo -e "${GREEN}\$name =: $name${NORMAL}" #print variable
                # echo -e "${HLIGHT}--- rm -rf $arg1.sth/$name ---${NORMAL}" #start files
                rm -rf "$arg1".sth/"$name"
                break
            done

        done

        #! print result bckp
        # for name in $(day2e "$arg1".sth); do
        #     echo -e "${GREEN}$name${NORMAL}" #print variable
        # done

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        #! Recurs exit after last args ($2)
        # if [ -n "$2" ]; then
        #     echo -e "${BLUE}---$2 start! exist ---${NORMAL}" #sistem info mesage
        #     "$2"

        # fi

        #!function body end--------------------------------------------
        ;;

    esac

}

# sth_fd_ @

unset filename
