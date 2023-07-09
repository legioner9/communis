#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_examples/pure_sh_bible/loop_var_var.sh"

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

# Loop from var-var.
start=0
end=50

while [ "$start" -le "$end" ]; do
    printf '%s\n' "$start"
    start=$((start+1))
done

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
