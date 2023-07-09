#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/stl_.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

stl_() {
    if [ "test" == "$1" ]; then
        echo "from stl_ allways TRUE"
    else
        echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        edit_ "${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/stl.man"
    fi
}

#up_lib_git ${FUNCNAME[0]}

unset filename
echo -e "${GREEN}\${array[@]} = ${array[*]}${NORMAL}" #print variable
