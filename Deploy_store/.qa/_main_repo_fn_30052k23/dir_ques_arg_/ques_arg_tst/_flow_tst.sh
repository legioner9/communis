#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_ques_arg_/ques_arg_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# ques_arg_ ls < pre > res
ques_arg_ ls < dat > res



cd "$idir"

unset filename