#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_is_gclean_/_is_gclean_/_debug/del_file/if_del_file.sh"

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
echo -e "${BLUE}--- wrp_fifs1_ rm readme.md -f1 ---${NORMAL}" #sistem info mesage

wrp_fifs1_ rm readme.md -f1

gs 

# On branch master
# Your branch is up to date with 'origin/master'.

# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git restore <file>..." to discard changes in working directory)
#         deleted:    readme.md

# no changes added to commit (use "git add" and/or "git commit -a")


# match_str=
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
