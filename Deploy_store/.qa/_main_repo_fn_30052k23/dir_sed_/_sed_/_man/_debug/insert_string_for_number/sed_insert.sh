#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_man/_debug/insert_for_number/sed_insert.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

sed -i '8a8 This is Line 8' ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_man/_debug/insert_string_for_number/txt
sed -i '8 i 8 This is Line 8' ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_man/_debug/insert_string_for_number/txt
cat ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_man/_debug/insert_string_for_number/txt
unset filename