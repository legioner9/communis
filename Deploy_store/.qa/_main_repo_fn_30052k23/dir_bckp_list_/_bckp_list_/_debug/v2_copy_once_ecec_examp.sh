#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy_once_ecec_examp.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

rm -fr ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy
cp -fr ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy_copy ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy

bckp_list_ -b ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy/exa_bckp_2_tail.list2 @ 3 "$PLT_NAME"
bckp_list_ -d ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy/exa_bckp_2_tail.list2 @ 3 "$PLT_NAME"

echo -e "${RED}--- ONCE exec RESULT in ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bckp_list_/_bckp_list_/_debug/v2_copy ---${NORMAL}" #exit 1

unset filename