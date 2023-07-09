#!/bin/bash

#. "$HOME/.bashrc"

filename=${PATH_MAIN_REPO_FN_DIR}/dir_wrp2_/wrp2_extst/extst_1/ex1/_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res
echo "--_xxd /tmp" &>> res
echo | wrp2_ file --_xxd /tmp &>> res
echo "--_xnd /tmp" &>> res
echo | wrp2_ file --_xnd /tmp &>> res
echo "--_cxd /tmp" &>> res
echo | wrp2_ file --_cxd /tmp &>> res
echo "--_cnd /tmp" &>> res
echo | wrp2_ file --_cnd /tmp &>> res


echo "--_xxd /tmpx" &>> res
echo | wrp2_ file --_xxd /tmpx &>> res
echo "--_xnd /tmpx" &>> res
echo | wrp2_ file --_xnd /tmpx &>> res
echo "--_cxd /tmpx" &>> res
echo | wrp2_ file --_cxd /tmpx &>> res
echo "--_cnd /tmpx" &>> res
echo | wrp2_ file --_cnd /tmpx &>> res


echo "--_xxf ~/.bashrc" &>> res
echo | wrp2_ file --_xxf ~/.bashrc &>> res
echo "--_xnf ~/.bashrc" &>> res
echo | wrp2_ file --_xnf ~/.bashrc &>> res
echo "--_cxf ~/.bashrc" &>> res
echo | wrp2_ file --_cxf ~/.bashrc &>> res
echo "--_cnf ~/.bashrc" &>> res
echo | wrp2_ file --_cnf ~/.bashrc &>> res

echo "--_xxf ~/.bashrcx" &>> res
echo | wrp2_ file --_xxf ~/.bashrcx &>> res
echo "--_xnf ~/.bashrcx" &>> res
echo | wrp2_ file --_xnf ~/.bashrcx &>> res
echo "--_cxf ~/.bashrcx" &>> res
echo | wrp2_ file --_cxf ~/.bashrcx &>> res
echo "--_cnf ~/.bashrcx" &>> res
echo | wrp2_ file --_cnf ~/.bashrcx &>> res

cd "$idir"

unset filename