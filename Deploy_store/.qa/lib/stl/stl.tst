#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/stl.tst"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

cd ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl || qq_exit "not exist ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl "
flag=1
arr_fails=()
for item in $(d_a_stl "sh"); do
    name=$(prs_f -n "$item")

    # echo -e "${ULINE}"$name" "test"${NORMAL}" #repit commands
    # "$name" "test"

    if ! [ "$("$name" "test")" ]; then
        # echo "stl lib in $name FAIL tst" >&2
        arr_fails+=("$name")
        flag=0
    fi

done

if [ 1 -eq "$flag" ]; then
    echo -e "stl lib PASS tst" #sistem info mesage
fi

if [ 0 -eq "$flag" ]; then
    echo -e "stl lib FAIL in [ ${arr_fails[*]} ] tst" >&2 #sistem info mesage
fi

# prs_f "test"
# d_a_stl "test"
# echo "trow error" >&2

unset filename
