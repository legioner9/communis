#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_wrp_fifs1_/wrp_fifs1_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# wrp_fifs1_ < dat > res

touch ac
ls
wrp_fifs1_ rm ac -f1 -echo
ls

touch ac
ls
wrp_fifs1_ rm ac -e1 -echo
ls

touch ac
rm ac
wrp_fifs1_ rm ac -cf1 -echo

touch ac
rm ac
wrp_fifs1_ rm ac -echo


cd "$idir"

unset filename