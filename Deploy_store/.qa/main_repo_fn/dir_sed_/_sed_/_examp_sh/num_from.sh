#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_examp_sh/num_from.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#@@

start=#@@

sed -n '/^\'$start'/=' "${PATH_MAIN_REPO_FN_DIR}/dir_sed_/_sed_/_examp_sh/num_from.sh"

#up_lib_git ${FUNCNAME[0]}

unset filename