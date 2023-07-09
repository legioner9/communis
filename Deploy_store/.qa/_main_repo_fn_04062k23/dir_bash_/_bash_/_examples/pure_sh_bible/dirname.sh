#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_examples/pure_sh_bible/dirname.sh"

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

dirname() {
    # Usage: dirname "path"

    # If '$1' is empty set 'dir' to '.', else '$1'.
    dir=${1:-.}

    # Strip all trailing forward-slashes '/' from
    # the end of the string.
    #
    # "${dir##*[!/]}": Remove all non-forward-slashes
    # from the start of the string, leaving us with only
    # the trailing slashes.
    # "${dir%%"${}"}": Remove the result of the above
    # substitution (a string of forward slashes) from the
    # end of the original string.
    dir=${dir%%"${dir##*[!/]}"}

    # If the variable *does not* contain any forward slashes
    # set its value to '.'.
    [ "${dir##*/*}" ] && dir=.

    # Remove everything *after* the last forward-slash '/'.
    dir=${dir%/*}

    # Again, strip all trailing forward-slashes '/' from
    # the end of the string (see above).
    dir=${dir%%"${dir##*[!/]}"}

    # Print the resulting string and if it is empty,
    # print '/'.
    printf '%s\n' "${dir:-/}"
}

# $ dirname ~/Pictures/Wallpapers/1.jpg
# /home/black/Pictures/Wallpapers/

# $ dirname ~/Pictures/Downloads/
# /home/black/Pictures/

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
