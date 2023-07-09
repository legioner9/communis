#!/bin/bash

#. "$HOME/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# >res

# . deb_1.sh < dat &>> res

wrp2_ rm -rfv --_cxd ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_dir_for_nnn/dir_nnn2_

echo | f_f_arg_ --_name_fn nnn2_ --_dir_fns ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_dir_for_nnn --_flow 1

# meld ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_dir_for_nnn/dir_nnn2_ ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_examp_fn/dir_nnn2_ &

cd "$idir"

unset filename