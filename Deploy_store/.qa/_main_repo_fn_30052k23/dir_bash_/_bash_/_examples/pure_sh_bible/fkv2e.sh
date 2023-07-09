#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_examples/pure_sh_bible/fkv2e.sh"

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

while IFS='=' read -r key val; do
    # Skip over lines containing comments.
    # (Lines starting with '#').
    [ "${key##\#*}" ] || continue

    # '$key' stores the key.
    # '$val' stores the value.
    # printf '%s: %s\n' "$key" "$val"

    # Alternatively replacing 'printf' with the following
    # populates variables called '$key' with the value of '$val'.
    #
    # NOTE: I would extend this with a check to ensure 'key' is
    #       a valid variable name.
    # export "$key=$val"
    #
    # Example with error handling:
    export "$key=$val" 2>/dev/null ||
        printf 'warning %s is not a valid variable name\n' "$key"
done < "file"

# $ var="'Hello', \"World\""
# $ trim_quotes "$var"
# Hello, World

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
