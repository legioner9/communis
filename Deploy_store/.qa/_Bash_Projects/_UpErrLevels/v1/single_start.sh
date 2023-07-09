#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/_Bash_Projects/_UpErrLevels/v1/single_start.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

if [ "$(ret_true_fail_ 1 any_files)" ] ; then
    echo "IN file://$filename tst TRUE" 
else
    echo "IN file://$filename tst FAIL" >&2
fi

# echo $?

# if  [ "$(ret_true_fail_ 1 $filename)" 2>/dev/null ]  ; then
#     echo "IN0 "$filename" tst FAIL" >&2
# else
#     echo "IN0 "$filename" tst TRUE"
# fi

cd "$idir"

unset filename
