#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_examp_sh/num_from.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#@@

start=#@@

sed -n '/^\'$start'/=' "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_sed_/_sed_/_examp_sh/num_from.sh"

#up_lib_git ${FUNCNAME[0]}

unset filename