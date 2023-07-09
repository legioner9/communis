#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

echo -e "${BLUE}--- rr_ ---${NORMAL}" #sistem info mesage
rr_
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
cd ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cp__/_cp__/_debug/v1

touch a
touch b

exestr="cp__ a b -f1 -f2"   
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr


rm a

exestr="cp__ a b -nf1 -f2"   
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr

touch a
rm b

exestr="cp__ a b -f1 -nf2"   
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr


cd "$idir"

unset filename