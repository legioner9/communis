#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/str_cont.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

if string_contain_ $1 $2 ;then
echo -e "${GREEN}\$true${NORMAL}" #print variable
else echo -e "${GREEN}\$false${NORMAL}" #print variable
fi
unset filename