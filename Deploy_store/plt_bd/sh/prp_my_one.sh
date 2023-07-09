#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/prp_my_one.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

prp_my_one() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/prp_my_one.sh)
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

    if_d_h "/run/media/st/MY_ONE/"

    mkdir_ "/run/media/st/MY_ONE/_git_communis/"
    mkdir_ "/run/media/st/MY_ONE/_git_communis/bd_bare_communis"

    cd_h "/run/media/st/MY_ONE/_git_communis/bd_bare_communis"
    if [ ! -d /run/media/st/MY_ONE/_git_communis/bd_bare_communis/.git ]; then
        git init --bare
    fi

}

unset filename
