#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_examples/pure_sh_bible/count_ddfsh"

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

count_df() {
    # Usage: count /path/to/dir/*
    #        count /path/to/dir/*/
    [ -e "$1" ] &&
        printf '%s\n' "$#" ||
        printf '%s\n' 0
}

count_df ~/*
ls ~

# # Count all files in dir.
# $ count ~/Downloads/*
# 232

# # Count all dirs in dir.
# $ count ~/Downloads/*/
# 45

# # Count all jpg files in dir.
# $ count ~/Pictures/*.jpg
# 64

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
