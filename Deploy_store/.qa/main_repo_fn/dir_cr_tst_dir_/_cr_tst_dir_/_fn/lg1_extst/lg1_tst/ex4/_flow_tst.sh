#!/usr/bin/env bash
filename=${PATH_CURR_REPO}/communis/Deploy_store/.qa/main_repo_fn/dir_cr_tst_dir_/_cr_tst_dir_/_fn/lg1_extst/lg1_tst/ex4/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
