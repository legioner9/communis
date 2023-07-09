#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_tsf_sfs_/tsf_sfs_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/test.var -verbose -develop1 1>/dev/null
>res

cat ~/test_tmp/test_file >> res

cd "$idir"

unset filename