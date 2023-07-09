#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_gpull_/gpull_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

wrp_fifs1_ rm -rf /home/st/REPOBARE/_repo/tgu -cd1
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>>res
gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>>res

gpull_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose &>>res

cd "$idir"

unset filename
