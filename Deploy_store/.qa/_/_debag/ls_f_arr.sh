#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_/_debag/ls_m.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git
cd /home/st/.qa/include_libs/_incl_lib_1/common/text_to_console
list=(*.sh)
echo -e "${GREEN}\${list[@]} = ${list[*]}${NORMAL}" #print variable
unset res
for item in *.sh ;do
    echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
     res+=("${item%.*}")
done

echo -e "${GREEN}\${res[@]} = ${res[*]}${NORMAL}" #print variable

unset filename