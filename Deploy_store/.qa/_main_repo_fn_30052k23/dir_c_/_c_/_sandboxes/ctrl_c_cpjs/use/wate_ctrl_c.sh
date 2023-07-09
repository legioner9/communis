#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_sandboxes/ctrl_c_cpjs/use/wate_ctrl_c.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

qq_exit "Wait ctrl_c"

cd "$idir"

unset filename