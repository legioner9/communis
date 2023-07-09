#!/bin/bash

#. "/home/st/.bashrc"



echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

cd ${PATH_MAIN_REPO_FN_DIR}/dir_cpp_/_cpp_/_man/cppstudio.com/lang_c/1_Основы_программирования
echo "$(pwd)"
if ! [ -d $(pwd)/res_cpp_/ ];then
echo -e "${BLUE}---not exist---${NORMAL}" #sistem info mesage
else echo -e "${BLUE}---exist---${NORMAL}" #sistem info mesage
fi

unset filename