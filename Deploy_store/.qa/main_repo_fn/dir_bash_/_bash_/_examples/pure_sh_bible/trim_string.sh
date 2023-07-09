#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_examples/pure_sh_bible/trim_string.sh"

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

trim_string() {
    # Usage: trim_string "   example   string    "

    # Remove all leading white-space.
    # '${1%%[![:space:]]*}': Strip everything but leading white-space.
    # '${1#${XXX}}': Remove the white-space from the start of the string.
    trim=${1#${1%%[![:space:]]*}}

    # Remove all trailing white-space.
    # '${trim##*[![:space:]]}': Strip everything but trailing white-space.
    # '${trim%${XXX}}': Remove the white-space from the end of the string.
    trim=${trim%${trim##*[![:space:]]}}

    printf '%s\n' "$trim"
}

# $ trim_string "    Hello,  World    "
# Hello,  World

# $ name="   John Black  "
# $ trim_string "$name"
# John Black

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------
trim_string "  dscd   csdcsa    "
trim_string "  6    "


cd "$idir"

unset filename
