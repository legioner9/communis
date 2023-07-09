#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg_/_garg_/_debug/tst_in_fn/exa_1.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

cp__(){
    garg_  ${FUNCNAME[0]} $@
    echo -e "${GREEN}\$f1_cp__ = $f1_cp__${NORMAL}" #print variable
}

cp__ a b -f1 -nf2


cd "$idir"

unset filename