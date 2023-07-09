#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_f_/_cr_f_/_debug/v2/start_deb_b.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

# rr_

rm b

cr_f_ $(prs_f -d $filename)/b --v0 weqwe999 --tml $(prs_f -d $filename)/tml_b --f0 $(prs_f -d $filename)/into_b

cd "$idir"

unset filename