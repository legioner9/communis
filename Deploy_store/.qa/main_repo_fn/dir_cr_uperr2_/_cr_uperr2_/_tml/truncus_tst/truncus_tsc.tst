#!/bin/bash

#. "$HOME/.bashrc"

TRUNCUS_PATH=00000

filename="$TRUNCUS_PATH/truncus_tsc.tst" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

if [ "$(up_err_ tsc 00000/path_tsc.list)" ]; then
    echo "IN file://$filename tst TRUE"
else
    echo "IN file://$filename tst FAIL" >&2
fi

cd "$idir"

unset filename