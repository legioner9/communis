#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_g_s_m_/g_s_m_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

g_s_m_() {
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
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable

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
        # find ${PATH_MAIN_REPO_FN_DIR} -type f -name "*.man"
        # find ${PATH_MAIN_REPO_FN_DIR} -type f -name "*.man" | xargs grep ^#
        # ${PATH_MAIN_REPO_FN_DIR}/dir_s_w_/_s_w_/_man/man_1.man:# man
        # find ${PATH_MAIN_REPO_FN_DIR} -type f -name "*.man" | xargs grep -n ^#
        # ${PATH_MAIN_REPO_FN_DIR}/dir_s_w_/_s_w_/_man/man_1.man:1:# man

        PF=${PATH_MAIN_REPO_FN_DIR}
        # PF=${PATH_MAIN_REPO_FN_DIR}/dir_zz_/_zz_/_man/

        # arr=( $(find "$PF" -type f -name "*.man" | xargs -0 file grep -n "^#" file) )

        # find "$PF" -type f -name "*.man" | xargs grep -n "$1"

        unset item
        _g_s_m_=()

        IFS=$'\n'

        # for item in $(find "$PF" -type f -name "*.man" | xargs grep -n "^#"); do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

        # done

        find_files=$(find "$PF" -type f -name "*.man")

        if [ -n "$find_files" ]; then

            for file_name in $find_files; do
                # echo -e "${GREEN}\$file_name = $file_name${NORMAL}" #print variable

                gre_file=$(grep -n "$1" $file_name)

                if [ -n "$gre_file" ]; then

                    for gre in $gre_file; do
                        # echo -e "${GREEN}\$gre = $gre${NORMAL}" #print variable
                        IFS=$':' read -r -a gre_arr <<<"$gre"
                        num=${gre_arr[0]}
                        str=${gre_arr[1]}

                        # echo -e "${GREEN}\$num = $num${NORMAL}" #print variable
                        # echo -e "${GREEN}\$str = $str${NORMAL}" #print variable
                        _g_s_m_+=("$file_name"%@"$num"%@"$str")

                    done
                    # else
                    # echo -e "${RED}---gre_file not found---${NORMAL}" #sistem info mesage
                fi

            done
            # else
            # echo -e "${RED}---find_files not found---${NORMAL}" #sistem info mesage
        fi

        # PS3="eligendi actiones: "

        # unset item

        # select item in "${_g_s_m_[@]}"; do

        #     dilectus=$item
        #     break

        # done

        # echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable

        # IFS=$'%@' read -r -a dilectus_arr <<<"$dilectus"

        # echo -e "${GREEN}\${dilectus_arr[@]} = ${dilectus_arr[*]}${NORMAL}" #print variable

        # echo -e "${ULINE}edit_ ${dilectus_arr[0]} ${dilectus_arr[2]}${NORMAL}" #repit commands

        # edit_ ${dilectus_arr[0]} ${dilectus_arr[2]}

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

# g_s_m_ @

unset filename
