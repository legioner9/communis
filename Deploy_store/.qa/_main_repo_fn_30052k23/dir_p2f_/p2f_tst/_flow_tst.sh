#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_p2f_/p2f_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

cntl_c_cpjs | p2f_
cntl_c_cpjs | p2f_ --pwd vas
cntl_c_cpjs | p2f_ --pwd /vas --path /dut
cntl_c_cpjs | p2f_ --pwd /vas --path dut


cd "$idir"

unset filename
