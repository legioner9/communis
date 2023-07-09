#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_man/_debug/replace_all_substr/sed_replace_all_substr.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
str="_this is replacer_"
sed -i 's/000000/'"$str"'/gI' "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_man/_debug/replace_all_substr/txt
unset filename