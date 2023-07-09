#!/usr/bin/env bash

filename="$HOME/{path_file}"
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------
name_repo=$(prs_f -n $(git config --get remote.origin.url))

git config core.hooksPath .githooks

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
# cd "$idir"
unset filename
unset PW
unset idir
#{ish}
cd $PLT_PATH
git config core.hooksPath .githooks