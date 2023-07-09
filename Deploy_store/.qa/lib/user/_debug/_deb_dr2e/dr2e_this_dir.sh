#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_deb_dr2e/dr2e_this_dir.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

dr2e ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_debug/_deb_dr2e

cd "$idir"

unset filename

#start safe loop
IFS='
'

for item in $(ls);do
  if [ -z $item ]; then
    break
  fi
var="$(is_space_01 "$item")"

if [ "$var" -eq 0 ]; then
# safe from space code:
   ev

fi

done

IFS=$IIFS
# end safe loop
