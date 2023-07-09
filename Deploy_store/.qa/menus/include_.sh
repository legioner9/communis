#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/.include"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

c_up "$PATH_OS/.qa/menus/_set_menu"
c_up "$PATH_OS/.qa/menus/_set_os_"

unset filename