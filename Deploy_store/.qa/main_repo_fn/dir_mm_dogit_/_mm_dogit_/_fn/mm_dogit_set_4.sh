#!/bin/bash
#. "$HOME/.bashrc"
filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_set_4.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

mm_dogit_set_4() {
    FNN=${FUNCNAME[0]}
    echo -e "${CYAN}--- ${FNN}}() $* ---${NORMAL}" #started functions
    garg_ ${FNN} $@ 1>/dev/null
    d_name=$(dirname ${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_set_4.sh)
    # wrp_fifs1_ cd ${d_name} -d
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

    mm_dogit_ 11
    mm_dogit_ 12

    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
