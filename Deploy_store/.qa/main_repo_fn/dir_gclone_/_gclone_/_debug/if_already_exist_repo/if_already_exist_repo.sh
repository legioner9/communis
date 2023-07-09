#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gclone_/_gclone_/_debug/if_already_exist_repo/if_already_exist_repo.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

rr_

gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose -echo -debug -develop1


cd "$idir"

unset filename