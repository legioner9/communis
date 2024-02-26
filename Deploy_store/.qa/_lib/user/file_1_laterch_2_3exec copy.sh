#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/file_1_laterch_2_3exec.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

file_1_laterch_2_3exec() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
        return 0
    fi

    d_name=$(dirname "$HOME"/rel_path_file_with_fn)
    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
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

    t_orig=$(date +%s -r "$1")
    # echo -e "${GREEN}\$t_orig = $t_orig${NORMAL}" #print variable
    t_copy=$(date +%s -r "$2")
    # echo -e "${GREEN}\$t_copy = $t_copy${NORMAL}" #print variable

    if [ "$t_orig" -gt "$t_copy" ]; then
        echo -e "${GREEN}\$3 = $3${NORMAL}" #print variable
        $3
    fi

}

cd "$idir"

unset filename
