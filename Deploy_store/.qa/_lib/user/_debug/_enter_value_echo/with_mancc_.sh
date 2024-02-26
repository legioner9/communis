#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_enter_value_echo/with_mancc_.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

echo -e "${BLUE}--- ENTER mancc_ arg ---${NORMAL}" #sistem info mesage
res=$(mancc_ $(enter_value_echo))
echo -e "${GREEN}\$res = $res${NORMAL}" #print variable 

unset filename