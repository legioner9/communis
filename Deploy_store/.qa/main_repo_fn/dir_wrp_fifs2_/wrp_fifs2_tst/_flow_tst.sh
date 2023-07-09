#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_wrp_fifs2_/wrp_fifs2_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>src
>dist # dist NOT older src

wrp_fifs2_ cp "-r -f" src dist -f1 -co21 -echo # not work

>src # dist older src

wrp_fifs2_ cp "-r -f" src dist -e2 -co21 -echo # by work

cd "$idir"

unset filename
