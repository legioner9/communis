#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_rnd3e_/rnd3e_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

for ((i = 0; i < 10; i++)); do
    if [ $(rnd3e_ 10 100) -le 100 ] && [ $(rnd3e_ 10 100) -ge 10 ]; then
        echo 1 >>res
    fi
done

cntl_c_cpjs | rnd3e_ 20 10 >>res

cd "$idir"

unset filename
