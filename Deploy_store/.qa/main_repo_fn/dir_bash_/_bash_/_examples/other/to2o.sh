#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_examples/other/to2o.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

export _edeb=echo_$gname
export echo_$gname=0

export _debug=debug_$gname
export debug_$gname=0

garg_ $gname $@ 1>/dev/null

echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
    echo "DEBUG MODE in $gname"
fi

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------

to2o(){ # $1 is octal
    printf '%o\n' $1
}

to2o 017
# 17
to2o 0x1f
# 37
to2o 19
# 23

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
