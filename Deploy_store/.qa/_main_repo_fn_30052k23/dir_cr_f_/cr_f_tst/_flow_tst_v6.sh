#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_cr_f_/cr_f_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

# rr_

rm b
dir_root=$(prs_f -d $filename)
cr_f_ "$dir_root/b" --vi99 "weqwe999" --vr99 "eeeee" --tml "$dir_root/tml_b" --fi0 "$dir_root/into_b"

cd "$idir"

unset filename