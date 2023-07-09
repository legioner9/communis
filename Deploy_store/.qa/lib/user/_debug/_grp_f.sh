#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/grp_f.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

grp_f() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/grp_f.sh") # FILENAME==="filename"
    path_ext=$PPW/$FNN
    # echo $path_ext

    # amount_arg $# 1 1

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN}
    ${FUNCNAME[0]}() help: 
    MAIN: [gr]e[p] defend (without . _) recurce search [_f]ile system
    NAME: ${FUNCNAME[0]}()
    ARGS: 
    \$1 
    -h  :: help
    -a  :: echo files and dirs
    -f  :: echo files
    -d  :: echo dirs
    \$2     :: root dir
    [, \$3] :: match
    FLOW:        
                ${NORMAL}"
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

    amount_arg $# 2 3
    param_flow="$1"
    root_dir="$2"
    match="$3"

    empty_match() {
        if [ -z "$match" ]; then
            echo 0
        elif [ -n "$match" ]; then
            echo 1
        fi
    }

    for item in $(da2e $root_dir); do
        if [ "-a" == "$param_flow" ]; then

            if [ -n "$match" ]; then
                if grep -q $match <<<$item; then
                    echo $root_dir/$item
                fi
            else
                echo $root_dir/$item
            fi

            if [ -d $root_dir/$item ]; then
                grp_f "$param_flow" "$root_dir/$item" "$match"
            fi

        elif [ "-f" == "$param_flow" ]; then

            if [ -f $root_dir/$item ]; then

                if [ -n "$match" ]; then
                    if grep -q $match <<<$item; then
                        echo $root_dir/$item
                    fi
                else
                    echo $root_dir/$item
                fi

            fi

            if [ -d $root_dir/$item ]; then
                grp_f "$param_flow" "$root_dir/$item" "$match"
            fi

        elif [ "-d" == "$param_flow" ]; then

            if [ -d $root_dir/$item ]; then

                if [ -n "$match" ]; then
                    if grep -q $match <<<$item; then
                        echo $root_dir/$item
                    fi
                else
                    echo $root_dir/$item
                fi

            fi

            if [ -d $root_dir/$item ]; then
                grp_f "$param_flow" "$root_dir/$item" "$match"
            fi
        elif [ "-e" == "$param_flow" ]; then

            echo $root_dir/$item

            if [ -d $root_dir/$item ]; then
                grp_f "$param_flow" "$root_dir/$item" "$match"
            fi
        else
            grp_f -h

        fi
    done

}

cd "$idir"

unset filename
