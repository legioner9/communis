#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_err_/err_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"
>res

echo | err_ -i $? "message" >> res
echo | err_ -d $? "message" >> res
ls null &>/dev/null
echo | err_ -i $? "message" >> res
ls null &>/dev/null
echo | err_ -p $? "message" >> res
ls null &>/dev/null
echo | err_ -e $? "message" >> res
ls null &>/dev/null
echo | err_ -n $? "message" >> res

cd "$idir"

unset filename