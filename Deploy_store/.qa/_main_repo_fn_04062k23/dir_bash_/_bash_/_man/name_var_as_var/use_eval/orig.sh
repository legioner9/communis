#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/name_var_as_var/use_eval/orig.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

a="bbb"

# eval $a="ccc"
read $a <<< "ccc"

# echo $bbb
echo ${!a}
read $a <<< 0

echo ${!a}
echo $bbb

cd "$idir"

unset filename