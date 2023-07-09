#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_debug/rm_cp_altstor/rm_cp.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

rm -fr /run/media/st/MY_ONE/ALT_store/
cp -rf ${COMMUNIS_PATH}/Store/ALT_store/ /run/media/st/MY_ONE/

cd "$idir"

unset filename
