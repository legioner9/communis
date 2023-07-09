#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug/_tst_if_d_a_stl.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

if [ "$(d_a_stl "test")" ]; then
    echo -e "${BLUE}---TRUE---${NORMAL}" #sistem info mesage
else
    echo -e "${BLUE}---FALS---${NORMAL}" #sistem info mesage
fi

unset filename
