#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/_Bash_Projects/_UpErrLevels/v1/up_level_start.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

# (. ${COMMUNIS_PATH}/Deploy_store/.qa/_Bash_Projects/_UpErrLevels/v1/single_start.sh)

if [ "$(. ${COMMUNIS_PATH}/Deploy_store/.qa/_Bash_Projects/_UpErrLevels/v1/single_start.sh)" ]; then
    echo "IN file://$filename tst TRUE"
else
    echo "IN file://$filename tst FAIL" >&2
fi

cd "$idir"

unset filename