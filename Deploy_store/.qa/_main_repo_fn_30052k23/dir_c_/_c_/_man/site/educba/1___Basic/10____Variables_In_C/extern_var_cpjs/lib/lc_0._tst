#!/bin/bash

#. "$HOME/.bashrc"

# filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/lc_0.tst"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

unset filename

flag=1

for item in $(dr_a_stl "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/_tst" "tts"); do

    if [ ! "$(. "$item")" ]; then
        flag=0
    fi
     
done


if [ 0 -eq "$flag" ]; then
    echo "ANY files lc_0 fail" >&2
else
    echo "ALL files lc_0 true"
fi
