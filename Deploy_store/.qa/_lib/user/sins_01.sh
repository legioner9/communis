#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/sins_01.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

sins_01() {
    if [ -z "$1" ] || { [ -z "${2##*$1*}" ] && [ -n "$2" ]; }; then
        echo 1
        return 0
    else
        echo 0
        return 1
    fi
}

cd "$idir"

unset filename
