#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/d_a_stl.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

d_a_stl() { # $1 : dir for search
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    PPW=$(pwd)

    # unset _d_a_stl_

    if [ "test" == "$1" ]; then
        d_a_stl_test "$@"

    elif [ -n "$1" ]; then

        for item in *; do

            if [ -f "$item" ] && [ "${item:0:1}" != "_" ] && [ "$(prs_f -e "$item")" == "$1" ]; then
                echo "$item"
            fi

        done

    elif [ -z "$1" ]; then

        for item in *; do

            if [ -f "$item" ] && [ "${item:0:1}" != "_" ]; then
                echo "$item"
            fi

        done

    fi

}

d_a_stl_test() {

    etl_1=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_etl_d_a_stl_1
    etl_2=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_etl_d_a_stl_2

    cmp_1=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_cmp_d_a_stl_1
    cmp_2=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_cmp_d_a_stl_2

    cd "${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_debug_d_a_stl" || qq_pause "DIR not exist ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_debug_d_a_stl"

    rm "$cmp_1"
    rm "$cmp_2"

    d_a_stl >"$cmp_1"
    d_a_stl "g" >"$cmp_2"

    flag=1

    if ! diff -q "$etl_1" "$cmp_1" >/dev/null; then
        flag=0
    fi

    # echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable

    if ! diff -q "$etl_2" "$cmp_2" >/dev/null; then
        flag=0
    fi

    # echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable

    if [ 0 -eq "$flag" ]; then
        echo "ANY files _etl_d_a_stl != _cmp_d_a_stl" >&2
    else
        echo "ALL files _etl_d_a_stl = _cmp_d_a_stl"
    fi

    # if diff -q "$etl_2" "$cmp_2" >/dev/null; then
    #     echo "files _etl_d_a_stl_2 = _cmp_d_a_stl_2" >&1
    # else
    #     echo "files _etl_d_a_stl_2 != _cmp_d_a_stl_2" >&2
    # fi

}

unset filename
