#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_ante_cntlif_/_ante_cntlif_/_default/default_deb.sh"

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

ante_cntlif_ -develop1

ptr_from_if=0
echo -e "${GREEN}\$ptr_from_if = $ptr_from_if${NORMAL}" #print variable
echo -e "${RED}--- be ignored ---${NORMAL}" #exit 1
ante_cntlif_ --ptr_if ptr_from_if -develop1
ptr_from_if=1
echo -e "${GREEN}\$ptr_from_if = $ptr_from_if${NORMAL}" #print variable
echo -e "${RED}--- mast work ---${NORMAL}" #exit 1
ante_cntlif_ --ptr_if ptr_from_if -develop1

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
