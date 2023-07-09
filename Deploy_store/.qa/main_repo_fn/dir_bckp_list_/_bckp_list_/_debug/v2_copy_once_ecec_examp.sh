#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy_once_ecec_examp.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

rm -fr ${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy
cp -fr ${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy_copy ${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy

bckp_list_ -b ${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy/exa_bckp_2_tail.list2 @ 3 "$PLT_NAME"
bckp_list_ -d ${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy/exa_bckp_2_tail.list2 @ 3 "$PLT_NAME"

echo -e "${RED}--- ONCE exec RESULT in ${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/_bckp_list_/_debug/v2_copy ---${NORMAL}" #exit 1

unset filename