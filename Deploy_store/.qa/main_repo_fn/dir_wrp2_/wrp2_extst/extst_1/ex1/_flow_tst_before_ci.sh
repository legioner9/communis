#!/bin/bash

#. "$HOME/.bashrc"

filename=${PATH_MAIN_REPO_FN_DIR}/dir_wrp2_/wrp2_extst/extst_1/ex1/_flow_tst.sh

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

#? --_xxx /tmp

ret2e wrp2_ file --_xxd /tmp &>>res
echo | wrp2_ file --_xxd /tmp &>>res

ret2e wrp2_ file --_xnd /tmp &>>res
echo | wrp2_ file --_xnd /tmp &>>res

ret2e wrp2_ file --_cxd /tmp &>>res
echo | wrp2_ file --_cxd /tmp &>>res

ret2e wrp2_ file --_cnd /tmp &>>res
echo | wrp2_ file --_cnd /tmp &>>res

#? --_xxx /tmp --xxf ^/bin"
echo "start with --xxf ^/bin" &>>res

ret2e wrp2_ file --_xxd /tmp --_xxd ^/bin &>>res
echo | wrp2_ file --_xxd /tmp --_xxd ^/bin &>>res

ret2e wrp2_ file --_xnd /tmp --_xxd ^/bin &>>res
echo | wrp2_ file --_xnd /tmp --_xxd ^/bin &>>res

ret2e wrp2_ file --_cxd /tmp --_xxd ^/bin &>>res
echo | wrp2_ file --_cxd /tmp --_xxd ^/bin &>>res

ret2e wrp2_ file --_cnd /tmp --_xxd ^/bin &>>res
echo | wrp2_ file --_cnd /tmp --_xxd ^/bin &>>res

echo "end with --xxf ^/bin" &>>res

#? --_xxx /tmp --xxf ^/binx"
echo "start with --xxf ^/binx" &>>res

ret2e wrp2_ file --_xxd /tmp --_xxd ^/binx &>>res
echo | wrp2_ file --_xxd /tmp --_xxd ^/binx &>>res

ret2e wrp2_ file --_xxd /tmp --_xxd /binx &>>res
echo | wrp2_ file --_xxd /tmp --_xxd /binx &>>res

ret2e wrp2_ file --_xnd /tmp --_xxd ^/binx &>>res
echo | wrp2_ file --_xnd /tmp --_xxd ^/binx &>>res

ret2e wrp2_ file --_cxd /tmp --_xxd ^/binx &>>res
echo | wrp2_ file --_cxd /tmp --_xxd ^/binx &>>res

ret2e wrp2_ file --_cnd /tmp --_xxd ^/binx &>>res
echo | wrp2_ file --_cnd /tmp --_xxd ^/binx &>>res

echo "end with --xxf ^/binx" &>>res

#? --_xxx /tmpx

ret2e wrp2_ file --_xxd /tmpx &>>res
echo | wrp2_ file --_xxd /tmpx &>>res

ret2e wrp2_ file --_xnd /tmpx &>>res
echo | wrp2_ file --_xnd /tmpx &>>res

ret2e wrp2_ file --_cxd /tmpx &>>res
echo | wrp2_ file --_cxd /tmpx &>>res

ret2e wrp2_ file --_cnd /tmpx &>>res
echo | wrp2_ file --_cnd /tmpx &>>res

ret2e wrp2_ file --_xxf ~/.bashrc &>>res
echo | wrp2_ file --_xxf ~/.bashrc &>>res

ret2e wrp2_ file --_xnf ~/.bashrc &>>res
echo | wrp2_ file --_xnf ~/.bashrc &>>res

ret2e wrp2_ file --_cxf ~/.bashrc &>>res
echo | wrp2_ file --_cxf ~/.bashrc &>>res

ret2e wrp2_ file --_cxf ~/.bashrc &>>res
echo | wrp2_ file --_cxf ~/.bashrc &>>res

ret2e wrp2_ file --_xxf ~/.bashrcx &>>res
echo | wrp2_ file --_xxf ~/.bashrcx &>>res

ret2e wrp2_ file --_xnf ~/.bashrcx &>>res
echo | wrp2_ file --_xnf ~/.bashrcx &>>res

ret2e wrp2_ file --_cxf ~/.bashrcx &>>res
echo | wrp2_ file --_cxf ~/.bashrcx &>>res

ret2e wrp2_ file --_cnf ~/.bashrcx &>>res
echo | wrp2_ file --_cnf ~/.bashrcx &>>res

cd "$idir"

unset filename
