#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_tsf_sfs_/_tsf_sfs_/_default/default_deb.sh"

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

wrp_fifs1_ mkdir ~/test_tmp -cnd1
echo test_string >~/test_tmp/test_file

tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/test.var -verbose -bcp
wrp_fifs1_ rm -rf ~/test_tmp -d1
wrp_fifs1_ file ~/test_tmp -nd1

tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/test.var -verbose -dpl
# tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/test.var  -echo -debug -verbose -bcp -develop2
# tsf_sfs_ --var ${PATH_VAR_DIR}/tsf_sfs_/test.var  -echo -debug -verbose -dpl

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
