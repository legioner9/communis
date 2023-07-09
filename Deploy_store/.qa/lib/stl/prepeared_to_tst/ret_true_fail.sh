#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/ret_true_fail.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

ret_true_fail() {
    # $1 flag default = 1 is TRUE if = 0 is FAIL
    # $2 = filename where run 
    if [ 0 -eq $1 ]; then
        echo "IN $2 tst FAIL" >&2
    fi

    if [ 1 -eq $1 ]; then
        echo "IN $2 tst TRUE"
    fi
}

unset filename
