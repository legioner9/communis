#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/time_conditions/time_variant/cp_early.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

echo -e "${BLUE}--- date +%s -r 0 ---${NORMAL}" #sistem info mesage

date +%s -r 0

t_orig=$(date +%s -r orig)
echo -e "${GREEN}\$t_orig = $t_orig${NORMAL}" #print variable
t_copy=$(date +%s -r copy)
echo -e "${GREEN}\$t_copy = $t_copy${NORMAL}" #print variable

# if [ "$t_orig" -gt "$t_copy" ]; then
#     echo "copy early orig: be copied"
#     cp -f orig copy
# fi

orig=${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/time_conditions/time_variant/orig
copy=${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/time_conditions/time_variant/copy

file_1_laterch_2_3exec $orig $copy "cp -f $orig $copy"

cd "$idir"

unset filename
