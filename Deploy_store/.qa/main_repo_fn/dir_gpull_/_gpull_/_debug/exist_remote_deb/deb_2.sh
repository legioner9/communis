#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/exist_remote_deb/deb_2.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

rr_
rm -rf /home/st/REPOBARE/_repo/tgu
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
gpull_ --tml "${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/exist_remote_deb/main_only_net.var" --name "tgu"

rm -rf /home/st/REPOBARE/_repo/tgu
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
gpull_ --tml "${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/exist_remote_deb/main_only_local.var" --name "tgu"

rm -rf /home/st/REPOBARE/_repo/tgu
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
echo | gpull_ --tml "${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/exist_remote_deb/main_all_exist.var" --name "tgu"

rm -rf /home/st/REPOBARE/_repo/tgu
gclone_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
gadd_remote_ --tml "${PATH_VAR_DIR}/git/hsc_alt/main.var" --name "tgu"
echo | gpull_ --tml "${PATH_MAIN_REPO_FN_DIR}/dir_gpull_/_gpull_/_debug/exist_remote_deb/main_all_empty.var" --name "tgu"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null



cd "$idir"

unset filename