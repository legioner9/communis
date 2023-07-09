#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex2_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

num_flow=2

wrp2_ rm -rfv --_cxd ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex${num_flow}_tst/_res_d/dir_nnn2_

echo | f_f_arg_ --_name_fn nnn2_ --_dir_fns ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex${num_flow}_tst/_res_d --_flow ${num_flow}

cd "$idir"

unset filename