#!/bin/bash

#. "$HOME/.bashrc"

filename="${PLT_PATH}/.s/stash/every_itime_sh/copy_precommit.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

wrp2_ cp -uf --_xxf ${PLT_PATH}/.s/stash/store/pre-commit ${PLT_PATH}/.githooks

cd "$idir"

unset filename