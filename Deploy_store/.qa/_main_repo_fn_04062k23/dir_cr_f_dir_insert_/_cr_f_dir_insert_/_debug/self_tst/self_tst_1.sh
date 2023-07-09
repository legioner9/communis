#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_dir_insert_/_cr_f_dir_insert_/_debug/self_tst/self_tst_1.sh"

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
echo -e "# create tst flow at dis_tst and dis2_tst
# rename exec._{ext} to exec.{ext}
# . start_check_distst.sh for tst all files" >howuse.man
echo -e "# in deb_1.sh
## delete dir_1
## create directory "dir_1/dis" with envariment for exec._distst process
## create directory "dir_1/dis2" with envariment for exec._distst process
## create check_distst.list in dir_1
## create start_check_distst.sh in dir_1" >whatshappenig.man
#rr_
#wrp_fifs1_ rm -rf dir_1 -cd1
wrp_fifs1_ mkdir dir_1 -cnd1
wrp_fifs1_ cd dir_1 -d1
cr_tst_dir_ --name dis --ext distst
cr_tst_dir_ --name dis2 --ext distst
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
