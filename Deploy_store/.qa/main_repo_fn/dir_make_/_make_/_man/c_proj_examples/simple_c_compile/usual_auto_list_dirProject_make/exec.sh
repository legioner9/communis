#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/c_proj_examples/simple_c_compile/usual_auto_list_dirProject_make/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
# echo "PD0 = $(pwd)"
PD="$(prs_f -d "$filename")"

c_to_h_ -u

c_src=${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib/lc_0.c
c_dist=$PD/lib/lc_0.c

if [ "$c_dist" -ot "$c_src" ]; then

    cp -u $(prs_f -d "$c_src")/*.* "$PD"/lib/

fi

cd "$PD" || qq_exit
make -f auto.mk

./main.bexe

# make -f auto.mk clear

unset filename
