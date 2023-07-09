#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_is_gcached_/_is_gcached_/_default/default_deb.sh"

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
is_gcached_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose
echo -e "${RED}--- $? ---${NORMAL}" #exit 1

echo -e "${BLUE}--- echo a >> ${PATH_CURR_REPO}/tgu/readme.md ---${NORMAL}" #sistem info mesage

echo a >> ${PATH_CURR_REPO}/tgu/readme.md
is_gcached_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose
echo -e "${RED}--- $? ---${NORMAL}" #exit 1

echo -e "${BLUE}--- git add . ---${NORMAL}" #sistem info mesage

git add .
is_gcached_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose
echo -e "${RED}--- $? ---${NORMAL}" #exit 1

echo -e "${BLUE}--- git commit -m first commit ---${NORMAL}" #sistem info mesage

git commit -m "first commit"
is_gcached_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose
echo -e "${RED}--- $? ---${NORMAL}" #exit 1
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
