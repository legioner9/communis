#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_f_/_cr_f_/_debug/v1/start_deb.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

root=$(pwd)

garg_ $(prs_f -n $filename) $@ 1>/dev/null

ins_var="55555555555555555555"

ins_f11111="drt!@# ha"
echo $ins_f11111 > $root/f11111.ins

# cr_f_ $root/0.tml $root/res --v0 $ins_00000 --f0 $root/f00000.ins --tml $root/0.tml # $1 name_file $2 tml_file --v0 $value_to_00000
cr_f_ $root/res --v0 $ins_var --f0 $root/f00000.ins --f1 $root/f11111.ins --tml $root/0.tml # $1 name_file $2 tml_file --v0 $value_to_00000

# f2f $root/f00000.ins $root/res_copy f00000


cd "$idir"

unset filename