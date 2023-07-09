#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/_gnr_extn_tst_dir.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd "$(prs_f -d $filename)" -d1
g_args=($(garg2e_ "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(garg2e_ "${ARGS[@]}"); do
    [[ 1 -eq ${verbose} ]] || echo "local $strex"
    eval $strex
done
_() {
    echo "empty _deb in $filename"
    # . $filename" arg1 arg2
}
if [ "_deb" == "$1" ]; then
    _
    return 0
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------

[ -z "$1" ] && {
    plt_exit "\$1 empty first arg mast be num ex<\$1>_tst in ${rdir}"
    return 1
}
#
plt_pause "do that? create ex$1_tst tst dir in ${rdir}"
#
cd ${rdir}
#
cr_tst_dir_ --name_dir ex"$1"_tst --ext extst
#
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
