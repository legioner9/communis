#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_k2v_/k2v_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

k2v_ "file.kv" '^^' "www" &>>res
k2v_ "file.kv" '^^' "wwwx" &>>res

cd "$idir"

unset filename
