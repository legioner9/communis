#!/bin/bash

#. "$HOME/.bashrc"

# filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/lc_0.tst"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

unset filename

# echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable
flag=1

# if ! diff -q "$etl_2" "$cmp_2" >/dev/null; then
#     flag=0
# fi

# echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable

if [ 0 -eq "$flag" ]; then
    echo "ANY files lc_0 fail" >&2
else
    echo "ALL files lc_0 true"
fi
