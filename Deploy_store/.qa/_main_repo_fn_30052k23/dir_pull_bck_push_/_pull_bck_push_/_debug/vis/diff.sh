#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_pull_bck_push_/_pull_bck_push_/_debug/vis/diff.sh"

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
cd ${PATH_COMMUNIS}

match_str="Untracked files"

if [ -z "$(git diff | cat)" ] && ! gs | is_rl_siev_and "${match_str}"; then
    echo -e "${GREEN}--- git add nothing ---${NORMAL}" #sistem info mesage
else
    echo -e "${ULINE}git add .${NORMAL}" #repit commands
    git add .

    echo -e "${ULINE}git commit${NORMAL}" #repit commands
    git commit
fi
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
