#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_carp_list.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

mm_dogit_carp_list() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_carp_list.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi

    # amount_arg $# 1 1

    is_amount_arg $# 2 2

    if [ $? -ne 0 ]; then
        plt_exit "is_amount_arg:: be return 1 <- Fail: ${FUNCNAME[0]}"
    fi

    if [[ "main.list" == $1 ]]; then
        list_name_repo="${PATH_LISTS_DIR}/git/hsc_alt/main_list_repo_MAIN.list"
    fi

    # curr_list_repo_CLR

    if [[ "CLR.list" == $1 ]]; then
        list_name_repo="${PATH_LISTS_DIR}/git/hsc_alt/curr_list_repo_CLR.list"
    fi

    if [[ "MBL.list" == $1 ]]; then
        list_name_repo="${PATH_LISTS_DIR}/git/hsc_alt/main_bcp_local_MBL.list"
    fi

    if [[ "OBL.list" == $1 ]]; then
        list_name_repo="${PATH_LISTS_DIR}/git/hsc_alt/once_bcp_local_OBL.list"
    fi

    if [[ "main.var" == $2 ]]; then
        tml_file="${PATH_VAR_DIR}/git/hsc_alt/main.var"
    fi

    if [[ "MBL.var" == $2 ]]; then
        tml_file="${PATH_VAR_DIR}/git/hsc_alt/main_bcp_local_MBL.var"
    fi

    if [[ "OBL.var" == $2 ]]; then
        tml_file="${PATH_VAR_DIR}/git/hsc_alt/once_bcp_local_OBL.var"
    fi

    exl_file="${PATH_EXL_DIR}/git/dogit_carp_name.exl"

    # arg_string="--tml ${tml_file} --name ${name_repo} -verbose -echo -debug -develop1"
    for name_repo in $(f2e $list_name_repo); do

        arg_string="--tml ${tml_file} --name ${name_repo}"
        exl_ --list "${exl_file}"

    done

}

cd "$idir"

unset filename
