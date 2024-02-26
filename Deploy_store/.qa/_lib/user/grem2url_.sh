#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/grem2url.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

grem2url() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/grem2url.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: git config --get remote.\${remote_name}.url echo \${remote_url}
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:
    
            ${NORMAL}"
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

    amount_arg $# 1 1

    # [branch "master"]
    # remote = origin
    # merge = refs/heads/master

    # git config --get branch.master.remote
    # origin
    # git config --get branch.master.merge
    # refs/heads/master

    # [remote "origin"]
    # url = git@github.com:legioner9/tgu.git
    # fetch = +refs/heads/*:refs/remotes/origin/*

    res=$(eval git config --get remote."$1".url)

    if [ -n "${res}" ]; then
        echo "${res}"
        return 0
    else
        return 1
    fi

}

cd "$idir"

unset filename
