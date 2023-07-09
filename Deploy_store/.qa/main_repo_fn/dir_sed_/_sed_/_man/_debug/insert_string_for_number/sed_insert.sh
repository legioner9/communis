#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_man/_debug/insert_for_number/sed_insert.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

sed -i '8a8 This is Line 8' "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_man/_debug/insert_string_for_number/txt
sed -i '8 i 8 This is Line 8' "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_man/_debug/insert_string_for_number/txt
cat "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_man/_debug/insert_string_for_number/txt
unset filename