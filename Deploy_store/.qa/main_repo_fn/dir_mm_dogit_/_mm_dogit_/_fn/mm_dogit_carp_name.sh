#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_carp_name.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

mm_dogit_carp_name() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_carp_name.sh)

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

    #*--------------------------------------------------------------------------------------------------------------------------
    is_amount_arg $# 2 2

    if [ $? -ne 0 ]; then
        qq_pause "is_amount_arg:: be return 1 <- Fail: ${FUNCNAME[0]}"
        return 1
    fi

    #? interpritator $1 to tml_file
    name_repo=$1

    #? interpritator $2 to tml_file
    if [[ "main.var" == $2 ]]; then
        tml_file="${PATH_VAR_DIR}/git/hsc_alt/main.var"
    fi

    exl_file="${PATH_EXL_DIR}/git/dogit_carp_name.exl"

    # qq_pause "local bare directories for name_repo: <${name_repo}> be delete continue or exit?"

    file_res="${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_out/mm_dogit_carp_name.res"

    # arg_string="--tml ${tml_file} --name ${name_repo} -verbose -echo -debug -develop1"
    arg_string="--tml ${tml_file} --name ${name_repo}"

    # exl_ --list "${exl_file}" &>"$file_res"
    exl_ --list "${exl_file}"

    #*--------------------------------------------------------------------------------------------------------------------------

}

cd "$idir"

unset filename
