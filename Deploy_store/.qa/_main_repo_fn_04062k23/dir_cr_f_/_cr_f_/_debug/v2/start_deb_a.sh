#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_debug/v2/start_deb_a.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

# rr_

echo v00000 > a
echo v00000 >> a

cr_f_ $(prs_f -d $filename)/a --v0 weqwe

cd "$idir"

unset filename