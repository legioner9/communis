#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mm_cr_f_dir_insert_/_mm_cr_f_dir_insert_/_debug/deb_cr_shfn_/deb_1.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)"/root_dir || plt_exit "$(prs_f -d $filename)/root_dir not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

rr_

wrp_fifs1_ rm -f ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mm_cr_f_dir_insert_/_mm_cr_f_dir_insert_/_debug/deb_cr_shfn_/root_dir/e.sh -cf1

echo e.sh | mm_cr_f_dir_insert_ 2


cd "$idir"

unset filename
