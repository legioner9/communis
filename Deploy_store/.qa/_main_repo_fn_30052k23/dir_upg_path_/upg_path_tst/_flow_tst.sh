#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_upg_path_/upg_path_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# >res

# upg_path_ < dat &>> res

cp -f file_to_upg.init file_to_upg.res
upg_path_ file_to_upg.res

cd "$idir"

unset filename