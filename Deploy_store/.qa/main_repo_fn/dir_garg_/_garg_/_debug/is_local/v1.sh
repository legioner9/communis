#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg_/_garg_/_debug/is_local/v1.sh" 

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)
rdir="$(prs_f -d $filename)"
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null
#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------

garg_ fn -rr -vv


#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------



cd "$idir"

unset filename