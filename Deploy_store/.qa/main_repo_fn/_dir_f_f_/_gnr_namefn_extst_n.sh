#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_gnr_namefn_extst_n.sh"

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
#-------------------------------

[ -z "$1" ] && {
    plt_exit "\$1 empty first arg mast be name dir (like namefn_extst_num) in ${rdir}"
    return 1
}

plt_pause "do that? create $1 (like namefn_extst_num) cr_tst_sys_ in ${rdir}"

wrp2_ rm --_cxf ${rdir}/${gname}.tmp.exl

echo -e "
wrp2_ cd --_xxd ${rdir}

wrp2_ mkdir --_xnd ${rdir}/"$1"

wrp2_ cd --_xxd ${rdir}/"$1"

cr_tst_sys_ --name_dir extst_1 --ext extst" > ${rdir}/${gname}.tmp.exl

exl_ --list ${rdir}/${gname}.tmp.exl

wrp2_ rm --_cxf ${rdir}/${gname}.tmp.exl

# cr_tst_dir_ --name_dir ex"$1"_tst --ext extst
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
