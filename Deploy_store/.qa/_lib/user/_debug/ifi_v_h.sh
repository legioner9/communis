#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/ifi_v_h.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
arg="ifi_v_h"
echo -e "${GREEN}\$($arg) = $($arg)${NORMAL}" #print variable

if [ 1 -eq $($arg) ]; then
    # if ifi_v_h ;then

    echo -e "${BLUE}--- EMPTY ---${NORMAL}" #sistem info mesage
else
    echo -e "${BLUE}--- FULL ---${NORMAL}" #sistem info mesage

fi

unset filename
