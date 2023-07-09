#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mm_tsf_fsf_/_mm_tsf_fsf_/_fn/mm_tsf_fsf_codium_bcp_tosh_alt.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

mm_tsf_fsf_codium_bcp_tosh_alt() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mm_tsf_fsf_/_mm_tsf_fsf_/_fn/mm_tsf_fsf_codium_bcp_tosh_alt.sh")

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
    # tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/codium_toshiba_alt/vscode-oss.var (-bcp | -dpl)
    # tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/codium_toshiba_alt/vscodium.var (-bcp | -dpl)

    tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/codium_tosh_alt/vscode-oss.var -bcp -verbose
    tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/codium_tosh_alt/vscodium.var -bcp -verbose

}

cd "$idir"

unset filename
