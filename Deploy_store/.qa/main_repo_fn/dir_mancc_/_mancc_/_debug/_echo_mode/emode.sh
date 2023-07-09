#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/_mancc_/_debug/_echo_mode/emode.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

res=$(mancc_ run)
echo -e "${GREEN}\$res = $res${NORMAL}" #print variable

unset filename
