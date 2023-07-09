#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_up_err_/_up_err_/_debug/v1/exec_deb.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null
echo -e "${BLUE}--- rr_ ---${NORMAL}" #sistem info mesage
rr_

str_exec="up_err_ tst ${PATH_CONFIG_DIR}/.tst -deb"
echo -e "${BLUE}--- $str_exec ---${NORMAL}" #sistem info mesage
$str_exec



cd "$idir"

unset filename