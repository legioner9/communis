#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_hint_/hint_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

hint_() {

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

    echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/"

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

        arr=()
        res=()
        arr+=("tst_ word")
        res+=("tst_ word")
        arr+=("tst_ echo")
        res+=("tst_ echo")
        arr+=("tst_ fnm")
        res+=("tst_ fnm")
        arr+=("PATH .config/.tst")
        res+=("code ${PATH_CONFIG_DIR}/.tst")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")
        # arr+=("eeeeeeeee")
        # res+=("ttttttttt")

        PS3="eligendi actiones: "

        select item in "${arr[@]}"; do

            dilectus=$item
            break

        done

        case $dilectus in

        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}

            ;;
        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            ;;

        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            ;;

        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            ;;

        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            ;;

        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            ;;

        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            ;;

        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}

            ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            ;;

        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            ;;

        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            ;;

        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            ;;

        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            ;;

        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            ;;

        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            ;;

        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            ;;

        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            ;;

        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}

            ;;
        "${arr[21]}")
            echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
            ${res[21]}
            ;;

        "${arr[22]}")
            echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
            ${res[22]}
            ;;

        "${arr[23]}")
            echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
            ${res[23]}
            ;;

        "${arr[24]}")
            echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
            ${res[24]}
            ;;

        "${arr[25]}")
            echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
            ${res[25]}
            ;;

        "${arr[26]}")
            echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
            ${res[26]}
            ;;

        "${arr[27]}")
            echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
            ${res[27]}
            ;;

        "${arr[28]}")
            echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
            ${res[28]}
            ;;

        "${arr[29]}")
            echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
            ${res[29]}
            ;;

        "${arr[30]}")
            echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
            ${res[30]}

            ;;
        "${arr[31]}")
            echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
            ${res[31]}
            ;;

        "${arr[32]}")
            echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
            ${res[32]}
            ;;

        "${arr[33]}")
            echo -e "${CYAN}---${res[33]}---${NORMAL}" #started functions
            ${res[33]}
            ;;

        "${arr[34]}")
            echo -e "${CYAN}---${res[34]}---${NORMAL}" #started functions
            ${res[34]}
            ;;

        "${arr[35]}")
            echo -e "${CYAN}---${res[35]}---${NORMAL}" #started functions
            ${res[35]}
            ;;

        "${arr[36]}")
            echo -e "${CYAN}---${res[36]}---${NORMAL}" #started functions
            ${res[36]}
            ;;

        "${arr[37]}")
            echo -e "${CYAN}---${res[37]}---${NORMAL}" #started functions
            ${res[37]}
            ;;

        "${arr[38]}")
            echo -e "${CYAN}---${res[38]}---${NORMAL}" #started functions
            ${res[38]}
            ;;

        "${arr[39]}")
            echo -e "${CYAN}---${res[39]}---${NORMAL}" #started functions
            ${res[39]}
            ;;

        *)
            echo -e "BLUE---error dilectus---${NORMAL}" #sistem info mesage
            ;;
        esac

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

# hint_ @

unset filename
