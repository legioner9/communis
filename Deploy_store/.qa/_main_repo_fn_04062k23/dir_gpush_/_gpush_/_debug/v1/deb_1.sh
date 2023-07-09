#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_debug/v1/deb_1.sh"

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

str_pushing_again="(e.g., 'git pull ...') before pushing again"

cat ${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_out/str_pushing_again.res |  is_rl_siev_and2e "${str_pushing_again}"
echo $?
cat ${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_out/str_pushing_again.res |  is_rl_siev_and2e "${str_pushing_again}"x
echo $?
wrp_fifs1_ rm -rf ${PATH_TOSHIBA_EXT}/REPOBARE/_bare/tgu -cd1
wrp_fifs1_ rm -rf ${PATH_MY_ONE}/REPOBARE/_bare/tgu -cd1
wrp_fifs1_ rm -rf ${HOME}/REPOBARE/_bare/tgu -cd1

gpush_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
