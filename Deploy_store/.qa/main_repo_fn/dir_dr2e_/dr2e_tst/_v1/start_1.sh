#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_dr2e_/dr2e_tst/_v1/start_1.sh"

# echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

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

work_dir=$(pwd)/_v1

echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} ---${NORMAL}" #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir}
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} a ---${NORMAL}" #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir} a
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} b ---${NORMAL}" #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir} b
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} c ---${NORMAL}" #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir} c
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir}/not_exist a ---${NORMAL}" #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir}/not_exist a


#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
