#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_arr3e_/arr3e_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

arr3e_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # TODO that

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi
    if [ "_lst" == "$1" ]; then
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
ARGS: strogly first args
\${#arr_1[@]} 
\${arr_1[@]} 
\${#arr_2[@]} 
\${arr_2[@]}

CNTL: [, -echo, -debug ...]
-p[1][2][3] <=> comm -[1][2][3]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE arr3e_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    echo_arr3e_=0
    debug_arr3e_=0
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_arr3e_} "cntl echo_deb_ mode in ${FNN}"
    if [ ${debug_arr3e_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNN}"
    fi



    declare -a argv=("${@}")                          # All arguments in one big array
    declare -i len_1=${argv[0]}                       # Length of first array passad
    declare -a arr_1=("${argv[@]:1:len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}             # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):len_2}") # Second array
    declare -i totlen=${#argv[@]}                     # Length of argv array (len_1+len_2+2)

    # Show passed arrays
    echo -en "arr_1: "
    echo "${arr_1[@]}"
    echo -en "arr_2: "
    echo "${arr_2[@]}"

    path_arr_1=/home/st/TMP/arr_$(rnd3e_ 100 200)
    path_arr_2=/home/st/TMP/arr_$(rnd3e_ 100 200)

    printf -- '%s\n' ${arr_1[@]} > $path_arr_1
    printf -- '%s\n' ${arr_2[@]} > $path_arr_2

    #-------------------------------------------------

    #-------------------------------------------------

    wrp_fifs1_ "rm -f" $path_arr_1 -f1 1>/dev/null
    wrp_fifs1_ "rm -f" $path_arr_2 -f1 1>/dev/null

    # export arg_2_arr

    # arr_1=("1" "2" "3" "8")

    # arr_2=("1" "2" "5" "7")

    # arg_2_arr ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

    # echo -en "_arg_2_arr_: "

    # unset _arg_2_arr_

    # unset filename
    # unset arr_1
    # unset arr_2

    # altlinux_arr3e_() {
    #     :
    # }

    # fedora_arr3e_() {
    #     :
    # }

    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_arr3e_
    # fi

    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_arr3e_
    # fi

    #!function body======================
    #!function body===============================================
    #!function body===================================================================

    cd "$PPWD"

}

# arr3e_ @

unset filename
