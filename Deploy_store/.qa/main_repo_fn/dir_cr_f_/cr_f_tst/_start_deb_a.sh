#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/cr_f_tst/_start_deb_a.sh" 

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)

# echo "$(prs_f -d $filename)"

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

# rr_
rm a
echo "$1" > a
cat a
cr_f_ $(prs_f -d $filename)/a --vi0 weqwe --vr0 "$1"

cat a

cd "$idir"

unset filename