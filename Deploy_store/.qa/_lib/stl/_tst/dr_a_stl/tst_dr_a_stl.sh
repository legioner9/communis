#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/dr_a_stl/tst_dr_a_stl.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

. ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/dr_a_stl.sh

dr_a_stl "test"

unset filename