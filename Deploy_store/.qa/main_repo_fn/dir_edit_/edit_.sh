#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_edit_/edit_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

edit_() {
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
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"              #print variable
    echo -e "${GREEN}file = $0${NORMAL}"                 #print variable
    echo -e "${GREEN}args = $*${NORMAL}"                 #print variable

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

        # incude fn_libs------------------------------------------
        # c_up "$ORIGO_DIR/_$FNN/_sh"

        # UP in_file_variables------------------------------------
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

        if [ -n "$1" ]; then
            echo -e "${ULINE}THIS_ARG1=$1${NORMAL}" #repit commands
            THIS_ARG1="$1"
        else
            echo -e "${ULINE}THIS_ARG1=$PPWD${NORMAL}" #repit commands
            THIS_ARG1="$PPWD"
        fi

        # if ! gvim -v $THIS_ARG1; then
        #     code $THIS_ARG1
        # fi
        # code -g ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_man/man_1.man:10

        if [ "$PLT_COGOS" == "fedora" ]; then
            if test_c "code"; then
                echo -e "${BLUE}---code -"$2" "$THIS_ARG1"---${NORMAL}" #sistem info mesage
                # code -g "$THIS_ARG1":"$2" : 0
                code $2 "$THIS_ARG1"

            elif test_c "gvim"; then
                echo -e "${ULINE}gvim -v +"$2" "$THIS_ARG1"${NORMAL}" #repit commands
                gvim -v +"$2" "$THIS_ARG1"

            elif test_c "vim"; then
                vim "$THIS_ARG1"
            else
                qq_exit "win editor not enabled"
            fi

        fi

        if [ "$PLT_COGOS" == "altlinux" ]; then

            if test_c "codium"; then
                echo -e "${ULINE} codium "$THIS_ARG1"${NORMAL}" #repit commands
                codium $2 "$THIS_ARG1"

            elif test_c "gvim"; then
                echo -e "${ULINE}gvim -v +"$2" "$THIS_ARG1"${NORMAL}" #repit commands
                gvim -v +"$2" "$THIS_ARG1"

            elif test_c "vim"; then
                vim "$THIS_ARG1"
            else
                qq_exit "win editor not enabled"
            fi

        fi

        echo -e "${BLUE}---editor leav---${NORMAL}" #sistem info mesage

        # echo -e "${BLUE}---Exec $FNN (y) ?---${NORMAL}" #sistem info mesage
        # unset y
        # read -r y
        # if [ "$y" = "y"]; then
        #     edit_ $1 $2
        # fi

        # ques_ "edit_ $1 $2"

        if [ -n "$3" ]; then
            echo -e "${BLUE}---$3 exist ---${NORMAL}" #sistem info mesage
            "$3"
        else

            echo -e "${BLUE}---\$3 not exist ---${NORMAL}" #sistem info mesage
            # echo -e "${BLUE}---$3 empty ---${NORMAL}"      #sistem info mesage
            # ques_ "edit_ $1 $2"
        fi

        #======================
        #===============================================
        #===================================================================
        #!function body end--------------------------------------------
        ;;

    esac

}

# edit_ @

unset filename
