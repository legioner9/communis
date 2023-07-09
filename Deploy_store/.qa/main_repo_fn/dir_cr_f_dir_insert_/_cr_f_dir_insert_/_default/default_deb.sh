#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_dir_insert_/_cr_f_dir_insert_/_default/default_deb.sh"

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
wrp_fifs1_ rm z_file -cf1

echo "{zzz20}" > z_file
echo "{fn_name}" >> z_file
echo "{root_path}" >> z_file

filename="z_file"

cr_f_dir_insert_ --name ${filename} --dir_insert ${PATH_INSERT_DIR}/obs_quis_

cat z_file 

wrp_fifs1_ rm z_file -cf1

echo "{zzz20}" > z_file
echo "{fn_name}" >> z_file
echo "{root_path}" >> z_file

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_dir_insert_/_cr_f_dir_insert_/_default/z_file"

cr_f_dir_insert_ --name ${filename} --dir_insert ${PATH_INSERT_DIR}/obs_quis_
# cr_f_ z_file --vi0 '\/home/st' --vr0 "/home/st"

cat z_file 


#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
