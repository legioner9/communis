#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/dr_a_stl.sh"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

dr_a_stl() { # $1 root_dir $2 extence
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
        ${FUNCNAME[0]}_test
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

                dr_a_stl "$item_path" "$2"

            fi

        done

    elif [ -z "$2" ]; then

        for item in *; do

            local item_path=$dir/$item
            if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]; then

                echo "$item_path"

            elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

                dr_a_stl "$item_path"

            fi
        done
    fi

}

dr_a_stl_test() {

    post=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/dr_a_stl/contane.post
    pre=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/dr_a_stl/contane.pre

    rm "$post" 2>/dev/null

    dr_a_stl "${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/dr_a_stl/" "rrr" >"$post"

    flag=1
    if ! diff -q "$post" "$pre" >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        echo "ANY dr_a_stl fail" >&2
    else
        echo "ALL dr_a_stl true"
    fi
}

unset filename
