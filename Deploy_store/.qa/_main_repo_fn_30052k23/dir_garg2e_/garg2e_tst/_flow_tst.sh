#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_garg2e_/garg2e_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

echo  "garg2e_ -a -b --af aff --bf bff" &>>res #sistem info mesage
echo  | garg2e_ -a -b --af aff --bf bff &>>res 

echo  "garg2e_ -rr --csa"  &>>res  #sistem info mesag
echo  | garg2e_ -rr --csa &>>res 

echo  "garg2e_ -rr --csa --ergre" &>>res  #sistem info mesag
echo  | garg2e_ -rr --csa --ergre &>>res 


cd "$idir"

unset filename