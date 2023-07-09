#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_COMMUNIS}/Deploy_store/.qa/include_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

. "${PATH_CONFIG_DIR}/env.sh"

unset filename