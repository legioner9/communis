#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug/_tst_dr_a.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

cd "${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug/" || qq_exit

dr_a() { # $1 root_dir $2 extence
    #    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname "$HOME"/rel_path_file_with_fn)
    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
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

    cd "$1" || qq_exit

    local dir
    dir=$(pwd)
    if [ -n "$2" ]; then
        for item in *; do

            local item_path=$dir/$item
            if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "$2" ]; then

                echo "$item_path"

            elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

                dr_a "$item_path" "$2"

            fi

        done

    elif [ -z "$2" ]; then

        for item in *; do

            local item_path=$dir/$item
            if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]; then

                echo "$item_path"

            elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

                dr_a "$item_path"

            fi
        done
    fi

}

dr_a "${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug/" "rrr"

unset filename
