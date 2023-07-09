#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_fwv2e_/fwv2e_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# fwv2e_ < dat > res
var1=11111
var2=22222
fwv2e_ var.list > res

cd "$idir"

unset filename