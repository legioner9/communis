#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_gpush_/_gpush_/_default/default_deb.sh"

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
arg_string="--tml ${PATH_VAR_DIR}/git/hsc_alt/main.var --name tgu -verbose"
wrp_fifs1_ rm -rf /home/st/REPOBARE/_repo/tgu -cd1
gclone_ "${arg_string}"
gadd_remote_ "${arg_string}"

gpull_ "${arg_string}"
echo 1 >>/home/st/REPOBARE/_repo/tgu/readme.md
gadd_file_ "${arg_string}"
# gcom_ "${arg_string}" --autocommit "first_commit"
gcom_ "${arg_string}"

wrp_fifs1_ rm -rf /run/media/st/TOSHIBA_EXT/REPOBARE/_bare/tgu -cd1
wrp_fifs1_ rm -rf /run/media/st/MY_ONE/REPOBARE/_bare/tgu -cd1
wrp_fifs1_ rm -rf /home/st/REPOBARE/_bare/tgu -cd1

gpush_ "${arg_string}"
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
