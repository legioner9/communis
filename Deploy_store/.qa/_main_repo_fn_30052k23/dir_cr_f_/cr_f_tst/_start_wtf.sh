#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_f_/cr_f_tst/_start_wtf.sh" 

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

. '${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_f_/cr_f_tst/_wtf_vi_iter_value.sh' &> _wtf_vi_iter_value.result

cd "$idir"

unset filename