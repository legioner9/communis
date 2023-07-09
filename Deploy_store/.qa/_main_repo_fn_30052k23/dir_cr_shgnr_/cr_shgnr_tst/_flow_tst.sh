#!/bin/bash

#. "$HOME/.bashrc"

filename=${PATH_MAIN_REPO_FN_DIR}/dir_cr_shgnr_/cr_shgnr_tst/_flow_tst.sh

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

echo -e "${BLUE}--- idir=$(prs_f -d $filename) ---${NORMAL}" #sistem info mesage
idir="$(prs_f -d $filename)"

echo -e "
wrp2_ cd --_xxd "${idir}"/_deb/res

rm -rf "${idir}"/_deb/res/*

cr_shgnr_ 1 dir_xxx1

cr_shgnr_ 2 sys_xxx2

wrp2_ cd --_xxd "${idir}"/_deb

wrp2_ . --_xxf "${idir}"/_deb/res/_gnr_dir_xxx1.sh aaa

wrp2_ . --_xxf "${idir}"/_deb/res/_gnr_sys_xxx2.sh aaa
" >"${idir}"/_deb/_flow_tst.tmp.exl

exl_ --list "${idir}"/_deb/_flow_tst.tmp.exl

wrp2_ rm --_cxf "${idir}"/_deb/_flow_tst.tmp.exl

cd "$idir"

unset filename
