#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_s_w_/s_w_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

s_w_() {
    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable
    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

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

        cd_h "$PPWD"

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

        # all .man
        # find $PATH_FN -type f -name "*.man"
        # find $PATH_FN -type f -name "*.man" | xargs grep ^#
        # ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_s_w_/_s_w_/_man/man_1.man:# man
        # find $PATH_FN -type f -name "*.man" | xargs grep -n ^#
        # ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_s_w_/_s_w_/_man/man_1.man:1:# man

        # выдачер:issuer просеиватель: shifter просмотрщик результатов: seer

        echo -e "${BLUE}---GLOB API _g_s_m_---${NORMAL}" #sistem info mesage

        echo -e "${CYAN}---g_s_m_() $* ---${NORMAL}" #started functions

        g_s_m_ $1

        ch_g_s_m_

        if [ "$flag_null" = "false" ]; then

            # shifter_w_() { # $1:mask for shift

            #     _shiter_md_=()

            #     if [ -n "$1" ]; then
            #         ARG=$1
            #     else
            #         ARG=""
            #     fi

            #     echo -e "${BLUE}---Mask = $1---${NORMAL}" #sistem info mesage

            #     echo -e "${GREEN}\$ARG = $ARG${NORMAL}" #print variable

            #     for ((i = 0; i < ${#_g_s_m_[@]}; i++)); do
            #         echo -e "${GREEN}\${_g_s_m_[$i]} = ${_g_s_m_[$i]}${NORMAL}" #print variable
            #         if string_contain_ "$ARG" "${_g_s_m_[$i]}"; then

            #             _shiter_md_+=("${_g_s_m_[$i]}")

            #             # echo -e "${ULINE}unset ${_g_s_m_[$i]}${NORMAL}" #repit commands
            #             # unset ${_g_s_m_[$i]}
            #         fi

            #     done
            #     _g_s_m_=()
            #     _g_s_m_=("${_shiter_md_[@]}")

            # }

            _recurce_() {
                ques_arg_ shifter_w_
                ch_g_s_m_
                ques_ _recurce_
                ques_ s_w_
            }

            _recurce_
        fi

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

# s_w_ @

unset filename
