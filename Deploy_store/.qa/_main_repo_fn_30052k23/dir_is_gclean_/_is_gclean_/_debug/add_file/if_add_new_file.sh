#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_is_gclean_/_is_gclean_/_debug/add_file/if_add_new_file.sh"

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

gpull_ _deb

cd ${PATH_CURR_REPO}/tgu
is_gclean_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose -echo
echo -e "${RED}--- $? ---${NORMAL}" #exit 1
gs
echo -e "${BLUE}--- echo a > file.a ---${NORMAL}" #sistem info mesage

echo a > file.a
gs 

# On branch master
# Your branch is up to date with 'origin/master'.

# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#         file.a

# nothing added to commit but untracked files present (use "git add" to track)

match_str="Untracked files"
gs | is_rl_siev_and "${match_str}"
echo -e "${RED}--- gs | is_rl_siev_and "${match_str}": return $? ---${NORMAL}" #exit 1

# if [[ $(gs | is_rl_siev_and )]]
is_gclean_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose -echo
echo -e "${RED}--- $? ---${NORMAL}" #exit 1

echo -e "${BLUE}--- git add . ---${NORMAL}" #sistem info mesage

git add .
is_gclean_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose -echo
echo -e "${RED}--- $? ---${NORMAL}" #exit 1
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
