#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_tst_/_tst_/_debug/deb.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

if $(tst_) 1>/dev/null; then
    echo "FALSE"
else
    echo "TRUE"
fi

cd "$idir"

unset filename
