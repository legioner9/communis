#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/agv3u.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

agv3u() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname "$HOME"/rel_path_file_with_fn)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: [a]r[g]en [v]ariables [3]treat [u]nset their
            NAME: ${FUNCNAME[0]}()
            ARGS: all args: \"\$@\" is generator variables name ec.: \$1=f2e \$2=\${PATH_VAR_DIR}/git/var.list 
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

    # amount_arg $# 1 1

    for key in $($@); do
        # echo $key
        # val=$(eval echo \$$key)
        eval $key=""
    done

}

cd "$idir"

unset filename
