#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/zip/flow_1/zip_unzip.sh"

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

wrp_fifs1_ rm -f d_1.zip 1>/dev/null
wrp_fifs1_ rm -fr d_1 -d1 1>/dev/null
echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls
wrp_fifs2_ cp -fr _d_1  d_1 -d1 -cnd2 1>/dev/null
echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls 
wrp_fifs2_ zip -r d_1.zip d_1 -cnf1 -d2 1>/dev/null
echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls
wrp_fifs1_ rm -fr d_1 -d1 1>/dev/null
echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls
wrp_fifs1_ unzip d_1.zip -cf1 1>/dev/null
echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
