#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_upg_path_/_upg_path_/_default/default_deb.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

# idir=$(pwd)
# rdir="$(prs_f -d $filename)"
# gname="$(prs_f -n $filename)" # name without .ext
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# export _edeb=echo_$gname
# export echo_$gname=0

# export _debug=debug_$gname
# export debug_$gname=0

# garg_ $gname $@ 1>/dev/null

# echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
# if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
#     echo "DEBUG MODE in $gname"
# fi

idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
#
export _edeb=echo_$gname
export echo_$gname=0
#
export _debug=debug_$gname
export debug_$gname=0
#
garg_ $gname $@ 1>/dev/null
#
echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
echo "DEBUG MODE in $gname"
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
rr_
wrp_fifs1_ rm the.path

echo ${HOME}/.apt >> the.path
echo ${FONSH_PATH}/.git/COMMIT_EDITMSG >> the.path
echo ${PATH_CANONS_DIR}/.exllist.md >> the.path

upg_path_ the.path
cat the.path
plt_pause "correct replase abspath?"

wrp_fifs1_ rm the.path

echo ${HOME}/.apt >> the.path
echo ${FONSH_PATH}/.git/COMMIT_EDITMSG >> the.path
echo ${PATH_CANONS_DIR}/.exllist.md >> the.path

upg_path_ ${PATH_MAIN_REPO_FN_DIR}/dir_upg_path_/_upg_path_/_default/the.path
cat the.path
plt_pause "correct replase abspath?"

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
