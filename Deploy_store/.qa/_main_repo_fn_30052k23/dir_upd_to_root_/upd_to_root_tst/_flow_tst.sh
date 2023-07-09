#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_upd_to_root_/upd_to_root_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# upd_to_root_ < dat > res

upd_to_root_ $(pwd) a

cntl_c_cpjs | upd_to_root_
cntl_c_cpjs | upd_to_root_ /d /z
cntl_c_cpjs | upd_to_root_ d

cd "$idir"

unset filename