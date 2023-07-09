#!/bin/bash

. "$HOME/.bashrc"

filename="$PATH_OS/.qa/sis_git.2/_debag/delete_all_menu.deb.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

delete_all_menu

unset filename