#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_fs_/fs_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fs_() {
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
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable

    unset _fs_path_file_

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
        echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

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

        cd_h "$PPWD"

        #!end choiсe_arg_from_arr>>>>>>>>>>>>>
        #===================================================================
        #===============================================
        #======================
        if [ "-c" = "$1" ]; then
            THIS_ARG1=$PPWD
        elif [ -n "$1" ]; then
            THIS_ARG1=$1
        else
            THIS_ARG1=$PPWD
        fi

        echo -e "${GREEN}\$THIS_ARG1 = $THIS_ARG1${NORMAL}" #print variable

        cd_h "$THIS_ARG1"

        arr=()
        arr+=("..")
        arr+=("<exit fs_>")
        arr+=("<mkdir>")
        arr+=("<touch>")
        arr+=("<echo_to>")
        arr+=("<cd>")

        unset $item
        for item in *; do
            arr+=($item)
        done

        PS3="eligendi actiones: "
        unset $item

        echo -e "${GREEN}\$PWD = $PWD${NORMAL}" #print variable

        select item in "${arr[@]}"; do

            dilectus=$item
            break

        done

        case $dilectus in

        "..")
            echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
            echo -e "${CYAN}---${res[0]}---${NORMAL}"         #started functions
            cd ..
            fs_ "$PWD"
            ;;

        "<exit fs_>")
            qq_pause "exit fs_ to \"$2\"?" "$filename" "$LINENO"
            $2

            ;;

        "<mkdir>")
            qq_pause "mkdir in $PWD ?" "$filename" "$LINENO"
            ques_arg_ mkdir
            fs_ "$PWD"
            ;;

        "<touch>")
            qq_pause "touch in $PWD ?" "$filename" "$LINENO"
            ques_arg_ touch
            fs_ "$PWD"
            ;;

        "<echo_to>")
            qq_pause "Enter (A B) where echo A > B"
            ques_arg_ "echo_to"
            fs_ "$PWD"
            ;;

        "<cd>")
            qq_pause "cd in $PWD ?" "$filename" "$LINENO"
            ques_arg_ "cd"
            fs_ "$PWD"
            ;;

        *)
            echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
            path=$PWD/$dilectus

            if [ -d $path ]; then

                "$FNN" $path

            elif [ -f $path ]; then

                unset ret_
                ret_="fs_ $path"
                if [ "-c" = "$1" ]; then

                    _fs_path_file_=$path
                    export _fs_path_file_

                else

                    edit_ $path $ret_

                fi
                # "$FNN" "$PPWD"

            fi
            ;;

        esac

        # echo -e "${RED}---Repeat $FNN (y)?---${NORMAL}" #exit 1
        # unset y
        # read -r y
        # if [ "y" = "$y" ]; then

        #     "$FNN" "$THIS_ARG1"

        # fi
        #======================
        #===============================================
        #===================================================================

        #! Recurs exit after last args ($2)
        if [ -n "$2" ]; then
            echo -e "${BLUE}---$2 start! exist ---${NORMAL}" #sistem info mesage
            "$2"

        fi

        #!function body end--------------------------------------------
        ;;

    esac

}

# fs_ @

unset filename
