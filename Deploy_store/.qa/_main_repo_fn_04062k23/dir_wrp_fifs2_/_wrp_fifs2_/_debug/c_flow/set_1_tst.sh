#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_wrp_fifs2_/_wrp_fifs2_/_debug/c_flow/set_1_tst.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

rr_
echo
echo a b
touch a
# rm a
touch b
# rm b

wrp_fifs2_ cp a b -cf1 

# echo a !b
# touch a
# # rm a
# touch b
# rm b
# echo -
# wrp_fifs2_ cp a b -cf1 
# echo -
# wrp_fifs2_ cp a b -cnf2 
# echo -
# wrp_fifs2_ cp a b -cf1 -cf2 
# echo -
# wrp_fifs2_ cp a b -ce1 
# echo -
# wrp_fifs2_ cp a b -ce2 
# echo -
# wrp_fifs2_ cp a b -ce1 -cne2 
# echo -


# echo
cd "$idir"

unset filename