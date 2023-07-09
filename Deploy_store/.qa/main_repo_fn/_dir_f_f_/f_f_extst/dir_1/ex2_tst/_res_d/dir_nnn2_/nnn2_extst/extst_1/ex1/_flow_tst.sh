#!/usr/bin/env bash
filename=${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex2_tst/_res_d/dir_nnn2_/nnn2_extst/extst_1/ex1/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

>res

cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
