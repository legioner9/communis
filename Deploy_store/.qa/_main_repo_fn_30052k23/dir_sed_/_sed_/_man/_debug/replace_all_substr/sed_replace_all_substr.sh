#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_man/_debug/replace_all_substr/sed_replace_all_substr.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
str="_this is replacer_"
sed -i 's/000000/'"$str"'/gI' ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_man/_debug/replace_all_substr/txt
unset filename