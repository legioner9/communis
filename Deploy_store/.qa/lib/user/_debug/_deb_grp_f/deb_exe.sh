#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_deb_grp_f/deb_exe.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

rr_

grp_f "$1" "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_deb_grp_f" "$2"

cd "$idir"

unset filename