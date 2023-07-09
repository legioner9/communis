#!/usr/bin/env bash
filename=${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex3_tst/_res_d/dir_nnn2_/_nnn2_/_debug/self_tst/dir_1/dis/_flow_tst.sh
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
