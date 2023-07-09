#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_magic_nm_/magic_nm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

magic_nm_() {
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
    echo -e "${GREEN}args = $@${NORMAL}"                 #print variable

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
        # for item in *;do
        #     ext=${item##*.}
        #     name=${item%.*}
        #     cname=${name:1}
        #     # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
        #     # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
        #     if [ $ext = "var" ];then
        #         args_arr_name+=($cname)
        #         # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        #         # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
        #         f2a $path_dir_in/$item
        #         # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable

        #         declare $cname=${_f2a_[@]}

        #         unset _f2a_
        #         unset item
        #     fi

        # done

        # echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

        # #!function body start--------------------------------------------
        # echo -e "${GREEN}\${var[@]} = ${var[*]}${NORMAL}" #print variable
        # echo -e "${GREEN}\${tml[@]} = ${tml[*]}${NORMAL}" #print variable

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

        arr=()
        arr+=("start")
        arr+=("edit")
        arr+=("vim")
        arr+=("create_for_fn")
        arr+=("man")
        arr+=("menu")
        arr+=("tag")
        arr+=("add_tag")
        # arr+=("add_free_tag")
        # arr+=("vim")
        # arr+=("vim")

        # arr+=("ls -a - отображать все файлы, включая скрытые")
        # res+=("ls -a $*")
        # arr+=("ls -a - отображать все файлы, включая скрытые")
        # res+=("ls -a $*")
        # arr+=("ls -a - отображать все файлы, включая скрытые")
        # res+=("ls -a $*")
        # arr+=("ls -a - отображать все файлы, включая скрытые")
        # res+=("ls -a $*")

        PS3="eligendi actiones: "

        select item in "${arr[@]}"; do

            dilectus=$item
            break

        done

        case $dilectus in

        "start")
            echo -e "${CYAN}---start mode---${NORMAL}" #started functions
            qq_pause "Start jj_ far enter params"
            echo "enter all params:"
            read -r params
            "$1" $params

            ;;

        "edit")
            echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
            if_d_s "${PATH_MAIN_REPO_FN_DIR}/_config/agno_tag"
            qq_pause "WARN not delete!!!Only add file and dir"
            # gvim -v "${PATH_MAIN_REPO_FN_DIR}/_config/agno_tag"
            # if ! gvim -v "${PATH_MAIN_REPO_FN_DIR}/_config/agno_tag"; then
            #     code "${PATH_MAIN_REPO_FN_DIR}/_config/agno_tag"
            # fi
            fs_ "${PATH_MAIN_REPO_FN_DIR}/_config/agno_tag"
            magic_nm_ "$1"

            ;;

        "vim")
            echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
            if_d_s "$ORIGO_DIR"
            # gvim -v "$ORIGO_DIR"
            # if ! gvim -v "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_man"; then
            #     code "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_man"
            # fi
            fs_ "${PATH_MAIN_REPO_FN_DIR}/dir_$1/"

            magic_nm_ "$1"

            ;;

        "man")
            echo -e "${CYAN}---man mode---${NORMAL}" #started functions
            if_d_s "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_man"
            # man_is "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_man"
            fs_ "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_man"

            magic_nm_ "$1"

            ;;

        "menu")
            echo -e "${CYAN}---menu mode---${NORMAL}" #started functions
            # if_f_h "$ORIGO_DIR/_$FNN/_sh/menu_$FNN.sh"
            # . "$ORIGO_DIR/_$FNN/_sh/menu_$FNN.sh"
            menu_nm_ "$1"
            magic_nm_ "$1"
            ;;

        "create_for_fn")
            echo -e "${CYAN}---menu mode---${NORMAL}" #started functions
            # if_f_h "$ORIGO_DIR/_$FNN/_sh/menu_$FNN.sh"
            # . "$ORIGO_DIR/_$FNN/_sh/menu_$FNN.sh"
            cr_for_fn_ "$1"
            magic_nm_ "$1"
            ;;

        "tag")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            tag_nm_ "$1"
            magic_nm_ "$1"
            ;;

        "add_tag")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            add_tag_nm_ "$1"
            magic_nm_ "$FNN"
            ;;

        # "add_free_tag")
        #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        #     add_free_tag_hh_
        #     magic_hh_ @
        # ;;

        # "${arr[3]}")
        #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        #     ${res[3]}
        # ;;

        *)
            echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage
            ;;

        esac

        #======================
        #===============================================
        #===================================================================
        #!function body end--------------------------------------------
        ;;

    esac

}

# magic_nm_ @

unset filename
