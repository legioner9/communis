#!/bin/bash
#. "${HOME}/.bashrc"
filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/fDs.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

fDs() {
    FNN=${FUNCNAME[0]}
    echo -e "${CYAN}--- ${FNN}}() $* ---${NORMAL}" #started functions
    garg_ ${FNN} $@ 1>/dev/null
    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/fDs.sh)
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: delit in \$1 files \$2 substring
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

    if ! is_amount_arg $# 2 2; then
        plt_exit "from fDs : AMOUNT_ARGS : \$# = '$#'"
    fi

    #{is_am}

    if [ -f "$1" ]; then
        echo -e "${HLIGHT}--- sed 's/'$2'//g' $1 ---${NORMAL}" #start files
        eval sed 's/$2//g' "$1"
    else
        plt_exit "from fDs : NOT_FILE : '$1' "
    fi
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
