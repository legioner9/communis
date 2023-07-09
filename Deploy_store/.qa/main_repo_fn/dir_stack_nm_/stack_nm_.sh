#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_stack_nm_/stack_nm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

stack_nm_() {
    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
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
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = "$@"${NORMAL}"             #print variable

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
    #     echo -e "${CYAN}---${fn[3]}---${NORMAL}" #started functions
    #     ${fn[3]}
    # ;;

    *)
        echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

        # incude fn_libs !!! from $1 fn ------------------------------------------
        # c_up "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1_/_sh"

        # UP in_file_variables------------------------------------
        # path_dir_in=$ORIGO_DIR/_$FNN/_in=$ORIGO_DIR/_$FNN/_in
        path_dir_stack=${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_stack

        cd_h $path_dir_stack

        unset _f2a_
        unset item
        args_arr_name=()
        for item in *; do
            ext=${item##*.}
            name=${item%.*}
            cname=${name:1}
            # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
            # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
            if [ $ext = "var" ]; then
                args_arr_name+=($cname)
                # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
                f2a $path_dir_stack/$item
                echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable

                declare $cname="${_f2a_[*]}"

                unset _f2a_
                unset item
            fi

        done

        echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

        #!function body start--------------------------------------------

        echo -e "${GREEN}\$arr_ = $arr_${NORMAL}" #print variable
        echo -e "${GREEN}\$fn_ = $fn_${NORMAL}"   #print variable

        IFS=', ' read -r -a arr <<<"${arr_[0]}"
        IFS=', ' read -r -a fn <<<"${fn_[0]}"

        echo -e "${GREEN}\${fn[@]} = ${fn[*]}${NORMAL}"   #print variable
        echo -e "${GREEN}\${arr[@]} = ${arr[*]}${NORMAL}" #print variable

        # !choiсe_arg_from_arr>>>>>>>>>>>>>>>>>

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

        PS3="eligendi actiones: "

        # select item in "${arr[@]}"; do

        #     dilectus=$item
        #     break

        # done

        for ((i = 0; i < ${#fn[@]}; i++)); do
            echo -e "${BLUE}---${fn[i]} ${arr[i]}---${NORMAL}" #sistem info mesage
            ${fn[i]} "${arr[i]}"

        done

        # _case_() { # $1=delectus
        #     # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

        #     case $1 in

        #     "${arr[0]}")
        #         # echo -e "${CYAN}---${fn[0]}---${NORMAL}" #started functions
        #         echo -e "${BLUE}---${fn[0]} ${arr[0]}---${NORMAL}" #sistem info mesage
        #         ${fn[0]} "${arr[0]}"
        #         ;;

        #     "${arr[1]}")
        #         # echo -e "${CYAN}---${fn[1]}---${NORMAL}" #started functions
        #         echo -e "${BLUE}---${fn[1]} ${arr[1]}---${NORMAL}" #sistem info mesage
        #         ${fn[1]} "${arr[1]}"
        #         ;;

        #     # "${arr[2]}")
        #     #     echo -e "${CYAN}---${fn[2]}---${NORMAL}" #started functions
        #     #     ${fn[2]}
        #     # ;;

        #     *)
        #         echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        #         ;;

        #     esac
        # }

        # _case_ $dilectus

        # case $dilectus in

        # "${arr[0]}")
        #     echo -e "${CYAN}---${fn[0]}---${NORMAL}" #started functions
        #     ${fn[1]}
        #     ${fn[0]}
        #     menu_nm_ "$1"
        #     ;;

        # "${arr[1]}")
        #     echo -e "${CYAN}---${fn[1]}---${NORMAL}" #started functions
        #     ${fn[1]}
        #     menu_nm_ "$1"
        #     ;;

        # "${arr[2]}")
        #     echo -e "${CYAN}---${fn[2]}---${NORMAL}" #started functions
        #     ${fn[2]}
        #     menu_nm_ "$1"
        #     ;;

        # "${arr[3]}")
        #     echo -e "${CYAN}---${fn[3]}---${NORMAL}" #started functions
        #     ${fn[3]}
        #     menu_nm_ "$1"
        #     ;;

        # *)
        #     echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        #     ;;

        # esac

        #======================
        #===============================================
        #===================================================================
        #!function body end--------------------------------------------
        ;;

    esac

}

# menu_nm_ @

unset filename
