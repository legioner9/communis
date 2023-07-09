#!/bin/bash
#. "$HOME/.bashrc"
filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mm_cr_f_dir_insert_/_mm_cr_f_dir_insert_/_debug/deb_cr_shfn_/root_dir/e.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

e() {
    FNN=${FUNCNAME[0]}
    echo -e "${CYAN}--- ${FNN}}() $* ---${NORMAL}" #started functions
    garg_ ${FNN} $@ 1>/dev/null
    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_shfn_/_cr_shfn_/_tml/_deb/sh.sh)
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
ARGS: 
FLOW:
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}
    if [ "_man" == "$1" ]; then
        edit_ "${d_name}/${FNN}".man
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${d_name}/${FNN}".sh
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${d_name}/${FNN}".lst
        return 0
    fi
    if [ "_test" == "$1" ]; then
        ${FNN}test
        return 0
    fi
    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
