#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_eng_var.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

is_eng_var() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_eng_var.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: [a]r[g]en [v]ariables echof: \"key=var\" 
            NAME: ${FUNCNAME[0]}()
            ARGS: all args: \"\$@\" is generator variables name ec.: \$1=f2e \$2=\${PATH_VAR_DIR}/git/var.list 
            FLOW:
            EXAMP: fv2e f2e \${PATH_VAR_DIR}/git/var.list${NORMAL}"
        return 0
    fi

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

    # amount_arg $# 1 1

    #? EXAMP: agv2e f2e ${PATH_VAR_DIR}/git/var.list
    #? EXAMP: agv2e nv_from_tml_ "${PATH_VAR_DIR}/git/hsc_alt/main.var"

    # if [[ "${URL}"  = *[!A-Za-z0-9\&./=_:?-]* ]]
    # then
    #   echo "That URL is NOT allowed."
    # else
    #   echo "That URL is allowed"
    # fi

    if [[ "$1" = *[!A-Za-z0-9_]* ]]; then
        return 1
    else
        return 0
    fi

}

cd "$idir"

unset filename
