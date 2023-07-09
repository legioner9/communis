#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/gpush_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

rr_
wrp_fifs1_ rm -rf /home/st/REPOBARE/_repo/tgu -cd1
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>> res
gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>> res

gpull_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>> res
echo 1 >>/home/st/REPOBARE/_repo/tgu/readme.md
gadd_file_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>> res
gcom_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" --autocommit "first commit" -verbose &>> res

wrp_fifs1_ rm -rf ${PATH_TOSHIBA_EXT}/REPOBARE/_bare/tgu -cd1
wrp_fifs1_ rm -rf ${PATH_MY_ONE}/REPOBARE/_bare/tgu -cd1
wrp_fifs1_ rm -rf /home/st/REPOBARE/_bare/tgu -cd1

gpush_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>> res

cd "$idir"

unset filename