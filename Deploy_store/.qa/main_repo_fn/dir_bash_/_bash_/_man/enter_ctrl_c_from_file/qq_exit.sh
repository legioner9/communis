#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/enter_ctrl_c_from_file/exa_1.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

qq_exit "fons" "$filename" "$LINENO"
# qq_exit "fons" "$filename" "$LINENO"



cd "$idir"

unset filename