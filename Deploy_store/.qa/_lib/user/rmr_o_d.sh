#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/rmr_o_d.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

rmr_o_d() { # $1 root dir
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/
    path_ext=$PPW$FNN

    if [ "man" == "$1" ]; then
        edit_ "$path_ext".man
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$path_ext".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PPW"
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
        return 0
    fi

    cd $1 || qq_exit "rmr_o_d: $1 is not dir"
    # echo -e "${GREEN}\$1 = $1${NORMAL}" #print variable

    for item in $(da2e "$1"); do
        item_path=$1/$item
        # echo -e "${GREEN}\$item_path = $item_path${NORMAL}" #print variable
        if [ -f "$item_path" ]; then
            ext=$(prs_f -e "$item_path")
            if [ "o" == "$ext" ] || [ "d" == "$ext" ]; then
                # echo -e "${GREEN}\$item_path = $item_path${NORMAL}" #print variable
                rm -f "$item_path"
            fi
        else
            if [ -d "$item_path" ]; then
                rmr_o_d "$item_path"
            fi
        fi
    done

}

cd "$idir"

unset filename
