#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/bd_communis_.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

bd_communis_() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/bd_communis_.sh)
    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "go" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".sh
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi

    amount_arg $# 1 1

    # create dir for bckp

    ${_ehh} mkdir ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/code
    ${_ehh} mkdir ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/dot_home_files
    ${_ehh} mkdir ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/dot_home_dirs
    ${_ehh} mkdir ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/dot_git_communis
    ${_ehh} mkdir ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/any_files
    ${_ehh} mkdir ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/any_dirs

    # ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/code/own_plt/
    # /home/st/REPOBARE/_repo/communis/Deploy_store/plt_bd/main_store/code/own_plt

    if [ "$1" == "-b" ] || [ "$1" == "-d" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ $1 ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3 ---${NORMAL}" #sistem info mesage
        bckp_list_ "$1" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3
        echo -e "${BLUE}--- bckp_list_ $1 ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 $PLT_NAME ---${NORMAL}" #sistem info mesage
        bckp_list_ "$1" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 "$PLT_NAME"

    elif [ "$1" == "-dp" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ -d ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 $PLT_NAME ---${NORMAL}" #sistem info mesage
        bckp_list_ "-d" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 "$PLT_NAME"

    elif [ "$1" == "-bp" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ -b ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 $PLT_NAME ---${NORMAL}" #sistem info mesage
        bckp_list_ "-b" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 "$PLT_NAME"

    elif [ "$1" == "-dc" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ -d ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3 ---${NORMAL}" #sistem info mesage
        bckp_list_ "-d" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3

    elif [ "$1" == "-bc" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ -b ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3 ---${NORMAL}" #sistem info mesage
        bckp_list_ "-b" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3

    elif [ "$1" == "-bcdp" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ -b ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3 ---${NORMAL}" #sistem info mesage
        bckp_list_ "-b" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3
        echo -e "${BLUE}--- bckp_list_ -d ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 $PLT_NAME ---${NORMAL}" #sistem info mesage
        bckp_list_ "-d" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 "$PLT_NAME"

    elif [ "$1" == "-o" ]; then
        bd_communis_ -dcbp

    elif [ "$1" == "-dcbp" ]; then
        bd_communis_ -h
        echo -e "${BLUE}--- bckp_list_ -d ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3 ---${NORMAL}" #sistem info mesage
        bckp_list_ "-d" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/common.list2 @ 3
        echo -e "${BLUE}--- bckp_list_ -b ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 $PLT_NAME ---${NORMAL}" #sistem info mesage
        bckp_list_ "-b" ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/plt_name.list2 @ 3 "$PLT_NAME"

    elif [ "$1" == "-i" ]; then
        bd_communis_ -dc

    elif [ "$1" == "-h" ]; then
        echo -e "${BLUE}--- 
-b bcbp     :: bckp all     >> first host flow
-d dcdp     :: depl all
-i (-dc)    ::              >> once init system
-o (-dcbp)  ::              >> second host flow
-bc         :: bckp common  
-dc         :: depl common  
-bp         :: bckp plt     
-dp         :: depl plt     
-bcdp
-dcbp
---${NORMAL}" #sistem info mesage
    else
        qq_exit "bd_communis_: arg $1 is not (-b|-d|-i)"
    fi

}

unset filename
