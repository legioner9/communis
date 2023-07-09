#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/_Bash_Projects/_UpErrLevels/v2_up_1_level/start_tsa.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

if [ "$(up_err_ tsa ${COMMUNIS_PATH}/Deploy_store/.qa/_Bash_Projects/_UpErrLevels/v2_up_1_level/path_tsa.list)" ]; then
    echo "IN file://$filename tst TRUE"
else
    echo "IN file://$filename tst FAIL" >&2
fi


cd "$idir"

unset filename
