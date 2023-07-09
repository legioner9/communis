#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_s_t_/_s_t_/_debug/record.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# cat /dev/null > ${PATH_MAIN_REPO_FN_DIR}/dir_s_t_/_s_t_/_out/_res.res

unset _f2a_
f2a ${PATH_MAIN_REPO_FN_DIR}/dir_s_t_/_s_t_/_out/_res.res

unset item_2
for item_2 in "${_f2a_[@]}";do
echo -e "${GREEN}\$item_2 = $item_2${NORMAL}" #print variable

done

unset filename