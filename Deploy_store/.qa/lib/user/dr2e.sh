#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/dr2e.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

dr2e() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/dr2e.sh") # FILENAME==="filename"
    path_ext=$PPW/$FNN

    # amount_arg $# 1 1

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
        return 0
    fi

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

    amount_arg $# 1 2

    if [ -n "$2" ]; then

        IFS='
'
        for item in $(ls "$1"); do
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            if [ -z "$item" ]; then
                break
            fi

            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            var="$(is_space_01 "$item")"
            # echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
            if [ "$var" -eq 0 ]; then

                if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ] && [ "$(prs_f -e "$1/$item")" == "$2" ]; then
                    echo "$1/$item"
                fi
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    dr2e "$1/$item" "$2"
                fi
            fi
        done

        IFS=$' \t\n'

    elif [ -z "$2" ]; then

        IFS='
'
        for item in $(ls "$1"); do
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            if [ -z "$item" ]; then
                break
            fi

            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            var="$(is_space_01 "$item")"
            # echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
            if [ "$var" -eq 0 ]; then

                if [ -f "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    echo "$1/$item"
                fi
                if [ -d "$1/$item" ] && [ "${item:0:1}" != "_" ]; then
                    dr2e "$1/$item"
                fi
            fi
        done

        IFS=$' \t\n'

    fi

}

cd "$idir"

unset filename
