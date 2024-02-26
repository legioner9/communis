#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_COMMUNIS}/Deploy_store/.qa/lib/user/_debug/_deb_rl_siev_or2e/deb_1.sh"

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
# f2e ${PATH_VAR_DIR}/git/hsc_alt/main.var

# f2e ${PATH_VAR_DIR}/git/hsc_alt/main.var | rl_siev_or_2e '='

echo -e "${BLUE}--- cat dat_1 ---${NORMAL}" #sistem info mesage
cat dat_1

echo ------ rl_siev_or2e b g
f2e dat_1 | rl_siev_or2e b g

echo ------ rl_siev_or2e a
f2e dat_1 | rl_siev_or2e a

echo ------ rl_siev_or2e f_ b_
f2e dat_1 | rl_siev_or2e f_ b_

#{body}

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
