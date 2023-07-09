#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gcom_/_gcom_/_debug/free_debug/commit_return.sh"

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

fnfn_() {
    # echo -e "${BLUE}--- fnfn_() ---${NORMAL}" #sistem info mesage

    # wrp_fifs1_ cd ${PATH_CURR_REPO}/tgu -d1
    # echo 1 >>readme.md
    # gadd_file_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose

    gcom_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu" -verbose

    return 1
}

fnfnfn_() {
    echo -e "${BLUE}--- fnfnfn_() ---${NORMAL}" #sistem info mesage

   eval fnfn_
    return 1
}

fnfnfn_

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
