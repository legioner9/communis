#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_EXL_DIR}/git/_deb/start_deb_tgu.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

rr_

#! define global variables for exl_
tml_file="${PATH_VAR_DIR}/git/hsc_alt/main.var"
name_repo="tgu"

str_pushing_again="(e.g., 'git pull ...') before pushing again"

cat ${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_out/str_pushing_again.res |  is_rl_siev_and "${str_pushing_again}"
echo $?
cat ${PATH_MAIN_REPO_FN_DIR}/dir_gpush_/_gpush_/_out/str_pushing_again.res |  is_rl_siev_and "${str_pushing_again}"x
echo $?

# gpush_ --tml "${tml_file}" --name "${name_repo}" -verbose
# gadd_remote_ --tml "${tml_file}" --name "${name_repo}" -verbose
# gpull_ --tml "${tml_file}" --name "${name_repo}" -verbose
gpush_ --tml "${tml_file}" --name "${name_repo}" -verbose

# exl_ --list "${PATH_EXL_DIR}/git/_deb/deb_tgu.exl"



cd "$idir"

unset filename